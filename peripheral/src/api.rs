use flutter_rust_bridge::StreamSink;
use futures::StreamExt;
use lipl_gatt_bluer::{
    create_runtime, listen_stream,
    message::{Command, Message},
    Error,
};

#[derive(Clone)]
pub struct LiplDisplay {
    pub part: String,
    pub status: String,
    pub dark_mode: bool,
    pub font_size: f32,
}

impl LiplDisplay {
    fn set_part(&self, part: String) -> Self {
        Self {
            part,
            status: self.status.clone(),
            dark_mode: self.dark_mode,
            font_size: self.font_size,
        }
    }

    fn set_status(&self, status: String) -> Self {
        Self {
            part: self.part.clone(),
            status,
            dark_mode: self.dark_mode,
            font_size: self.font_size,
        }
    }

    fn set_dark_mode(&self, dark_mode: bool) -> Self {
        Self {
            part: self.part.clone(),
            status: self.status.clone(),
            dark_mode,
            font_size: self.font_size,
        }
    }

    fn set_font_size_increment(&self, increment: f32) -> Self {
        Self {
            part: self.part.clone(),
            status: self.status.clone(),
            dark_mode: self.dark_mode,
            font_size: self.font_size + increment,
        }
    }
}

pub fn gatt_listen(
    sink: StreamSink<LiplDisplay>,
    part: String,
    status: String,
    dark_mode: bool,
    font_size: f32,
    font_size_increment: f32,
) -> anyhow::Result<()> {
    let handle = std::thread::spawn(move || {
        let runtime = create_runtime()?;

        runtime.block_on(async move {
            let mut lipl_display = LiplDisplay {
                part,
                status,
                dark_mode,
                font_size,
            };
            if !sink.add(lipl_display.clone()) {
                return Err(Error::Callback);
            }

            let mut s = listen_stream().await?.boxed();
            while let Some(message) = s.next().await {
                lipl_display = match &message {
                    Message::Part(part) => lipl_display.set_part(part.clone()),
                    Message::Status(status) => lipl_display.set_status(status.clone()),
                    Message::Command(command) => match command {
                        Command::Dark => lipl_display.set_dark_mode(true),
                        Command::Light => lipl_display.set_dark_mode(false),
                        Command::Increase => {
                            lipl_display.set_font_size_increment(font_size_increment)
                        }
                        Command::Decrease => {
                            if lipl_display.font_size > 2.0 * font_size_increment {
                                lipl_display.set_font_size_increment(-font_size_increment)
                            } else {
                                lipl_display
                            }
                        }
                        _ => lipl_display,
                    },
                };
                if !sink.add(lipl_display.clone()) {
                    return Err(Error::Callback);
                }
                if &message == &Message::Command(Command::Exit)
                    || &message == &Message::Command(Command::Poweroff)
                {
                    return Err(Error::Cancelled);
                }
            }
            Ok::<(), Error>(())
        })
    });

    let result = handle.join().map_err(|_| Error::Callback)?;
    result?;
    Ok(())
}
