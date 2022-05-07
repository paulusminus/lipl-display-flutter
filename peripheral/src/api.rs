use flutter_rust_bridge::StreamSink;
use futures::StreamExt;
use lipl_gatt_bluer::{
    create_runtime, listen_stream,
    message::{Command, Message},
    Error,
};

// This is the entry point of your Rust library.
// When adding new code to your project, note that only items used
// here will be transformed to their Dart equivalents.

// A plain enum without any fields. This is similar to Dart- or C-style enums.
// flutter_rust_bridge is capable of generating code for enums with fields
// (@freezed classes in Dart and tagged unions in C).
// pub enum Platform {
//     Unknown,
//     Android,
//     Ios,
//     Windows,
//     Unix,
//     MacIntel,
//     MacApple,
//     Wasm,
// }

// A function definition in Rust. Similar to Dart, the return type must always be named
// and is never inferred.
// pub fn platform() -> Platform {
// This is a macro, a special expression that expands into code. In Rust, all macros
// end with an exclamation mark and can be invoked with all kinds of brackets (parentheses,
// brackets and curly braces). However, certain conventions exist, for example the
// vector macro is almost always invoked as vec![..].
//
// The cfg!() macro returns a boolean value based on the current compiler configuration.
// When attached to expressions (#[cfg(..)] form), they show or hide the expression at compile time.
// Here, however, they evaluate to runtime values, which may or may not be optimized out
// by the compiler. A variety of configurations are demonstrated here which cover most of
// the modern oeprating systems. Try running the Flutter application on different machines
// and see if it matches your expected OS.
//
// Furthermore, in Rust, the last expression in a function is the return value and does
// not have the trailing semicolon. This entire if-else chain forms a single expression.
//     if cfg!(windows) {
//         Platform::Windows
//     } else if cfg!(target_os = "android") {
//         Platform::Android
//     } else if cfg!(target_os = "ios") {
//         Platform::Ios
//     } else if cfg!(target_arch = "aarch64-apple-darwin") {
//         Platform::MacApple
//     } else if cfg!(target_os = "macos") {
//         Platform::MacIntel
//     } else if cfg!(target_family = "wasm") {
//         Platform::Wasm
//     } else if cfg!(unix) {
//         Platform::Unix
//     } else {
//         Platform::Unknown
//     }
// }

// The convention for Rust identifiers is the snake_case,
// and they are automatically converted to camelCase on the Dart side.
// pub fn rust_release_mode() -> bool {
//     cfg!(not(debug_assertions))
// }

// fn bool_to_result(b: bool) -> Result<(), lipl_gatt_bluer::Error> {
//     if b {
//         Ok(())
//     } else {
//         Err(lipl_gatt_bluer::Error::Callback)
//     }
// }

#[derive(Clone)]
pub struct LiplDisplay {
    pub part: String,
    pub status: String,
    pub dark_mode: bool,
    pub font_size: f32,
}

impl LiplDisplay {
    // pub fn new(part: String, status: String, dark_mode: bool, font_size: f32) -> Self {
    //     Self {
    //         part,
    //         status,
    //         dark_mode,
    //         font_size,
    //     }
    // }

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

// fn handle_message(
//     sink: StreamSink<String>,
// ) -> impl Fn(lipl_gatt_bluer::message::Message) -> Result<(), lipl_gatt_bluer::Error> {
//     return move |message| {
//         serde_json::to_string(&message)
//             .map_err(|_| lipl_gatt_bluer::Error::Callback)
//             .map(|s| sink.add(s))
//             .and_then(bool_to_result)
//     };
// }

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
