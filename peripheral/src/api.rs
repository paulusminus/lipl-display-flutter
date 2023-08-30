use flutter_rust_bridge::StreamSink;
use futures::StreamExt;
use lipl_display_common::{Command, Message};
use lipl_gatt_bluer::{
    create_runtime,
    listen_stream,
    Error,
};
 
#[repr(C)]
#[derive(Clone)]
pub struct LiplDisplay {
    pub part: String,
    pub status: String,
    pub dark: bool,
    pub font_size: f32,
}

impl LiplDisplay {
    fn set_part(self, part: String) -> Self {
        Self {
            part,
            ..self
        }
    }

    fn set_status(self, status: String) -> Self {
        Self {
            status,
            ..self
        }
    }

    fn set_dark_mode(self, dark: bool) -> Self {
        Self {
            dark,
            ..self
        }
    }

    fn set_font_size_increment(self, increment: f32) -> Self {
        Self {
            font_size: self.font_size + increment,
            ..self
        }
    }

    fn handle(self, message: &Message, font_size_increment: f32) -> Self {
        match &message {
            Message::Part(part) => self.set_part(part.clone()),
            Message::Status(status) => self.set_status(status.clone()),
            Message::Command(command) => match command {
                Command::Dark => self.set_dark_mode(true),
                Command::Light => self.set_dark_mode(false),
                Command::Increase => {
                    self.set_font_size_increment(font_size_increment)
                }
                Command::Decrease => {
                    if self.font_size > 2.0 * font_size_increment {
                        self.set_font_size_increment(-font_size_increment)
                    } else {
                        self
                    }
                }
                _ => self,
            },
        }
    }
}

pub fn gatt_listen(
    sink: StreamSink<LiplDisplay>,
    part: String,
    status: String,
    dark: bool,
    font_size: f32,
    font_size_increment: f32,
) -> anyhow::Result<()> {
    let handle = std::thread::spawn(move || {
        let runtime = create_runtime()?;

        runtime.block_on(async move {
            let mut lipl_display = LiplDisplay {
                part,
                status,
                dark,
                font_size,
            };
            if !sink.add(lipl_display.clone()) {
                return Err(Error::Callback);
            }

            let mut s = listen_stream().await?.boxed();
            while let Some(message) = s.next().await {
                lipl_display = lipl_display.handle(&message, font_size_increment);
                if !sink.add(lipl_display.clone()) {
                    return Err(Error::Callback);
                }
                if [Message::Command(Command::Poweroff)].contains(&message)
                {
                    login_poweroff_reboot::poweroff(1000).map_err(|_| Error::Common(lipl_display_common::Error::Poweroff))?;
                    return Err(Error::Common(lipl_display_common::Error::Cancelled));
                }
            }
            Ok::<(), Error>(())
        })
    });

    handle.join().map_err(|_| Error::Callback)?.map_err(anyhow::Error::from)
}
