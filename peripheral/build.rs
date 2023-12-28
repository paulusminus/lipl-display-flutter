use cargo_metadata::MetadataCommand;
use lib_flutter_rust_bridge_codegen::{
    config_parse, frb_codegen, get_symbols_if_no_duplicates, RawOpts,
};
use std::{env, path::Path};

fn get_options_from_cargo() -> RawOpts {
    let path = std::env::var("CARGO_MANIFEST_DIR").unwrap();
    let meta = MetadataCommand::new()
        .manifest_path("./Cargo.toml")
        .current_dir(&path)
        .exec()
        .unwrap();

    let root = meta.root_package().unwrap();
    let rust_input_option = root.metadata["bridge"]["rust_input"].as_str().unwrap();
    let dart_output_option = root.metadata["bridge"]["dart_output"].as_str().unwrap();

    let current_dir = env::current_dir().unwrap();
    let rust_input = format!(
        "{}/{}",
        current_dir.as_os_str().to_string_lossy(),
        rust_input_option
    );
    let dart_output = format!(
        "{}/{}",
        current_dir.parent().unwrap().as_os_str().to_string_lossy(),
        dart_output_option
    );

    RawOpts {
        rust_input: vec![rust_input],
        dart_output: vec![dart_output],
        ..Default::default()
    }
}

fn main() {
    let root = Path::new("/");
    let current_dir = env::current_dir().unwrap();

    let options = get_options_from_cargo();

    for p in options.rust_input.iter() {
        println!("cargo:rerun-if-changed={}", p);
    }

    env::set_current_dir(root).unwrap();
    let configs = config_parse(options);
    let all_symbols = get_symbols_if_no_duplicates(&configs).unwrap();

    for config in configs.iter() {
        frb_codegen(config, &all_symbols).unwrap();
    }
    env::set_current_dir(current_dir).unwrap();
}
