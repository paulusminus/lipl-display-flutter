use cargo_metadata::MetadataCommand;
use lib_flutter_rust_bridge_codegen::{frb_codegen, Opts};
use std::env;
use std::path::Path;

struct BridgeOptions {
    rust_input: String,
    dart_output: String,
}

fn get_bridge_options() -> BridgeOptions {
    let path = std::env::var("CARGO_MANIFEST_DIR").unwrap();
    let meta = 
        MetadataCommand::new()
        .manifest_path("./Cargo.toml")
        .current_dir(&path)
        .exec()
        .unwrap();

    let root = meta.root_package().unwrap();
    let rust_input_option = root.metadata["bridge"]["rust_input"].as_str().unwrap();
    let dart_output_option = root.metadata["bridge"]["dart_output"].as_str().unwrap();

    BridgeOptions { 
        rust_input: rust_input_option.into(),
        dart_output: dart_output_option.into(), 
    }
}

fn main() {
    let current_dir = env::current_dir().unwrap();
    let root = Path::new("/");

    let bridge_options = get_bridge_options();

    let rust_input = format!("{}/{}", current_dir.as_os_str().to_string_lossy(), bridge_options.rust_input);
    let dart_output = format!("{}/{}", current_dir.parent().unwrap().as_os_str().to_string_lossy(), bridge_options.dart_output);
    
    println!("cargo:rerun-if-changed={}", bridge_options.rust_input);
    let opts = Opts {
        rust_input,
        dart_output,
        ..Default::default()
    };

    env::set_current_dir(&root).unwrap();
    frb_codegen(opts).unwrap();
    env::set_current_dir(current_dir).unwrap();
}
