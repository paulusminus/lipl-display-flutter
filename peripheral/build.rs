use lib_flutter_rust_bridge_codegen::{frb_codegen, Opts};
use std::env;
use std::path::Path;

fn main() {
    let current_dir = env::current_dir().unwrap();
    let root = Path::new("/");

    let rust_input = format!("{}/src/api.rs", current_dir.as_os_str().to_string_lossy());
    let dart_output = format!("{}/lib/bridge_generated.dart", current_dir.parent().unwrap().as_os_str().to_string_lossy());
    
    println!("cargo:rerun-if-changed={}", "src/api.rs");
    let opts = Opts {
        rust_input,
        dart_output,
        ..Default::default()
    };

    env::set_current_dir(&root).unwrap();
    frb_codegen(opts).unwrap();
    env::set_current_dir(current_dir).unwrap();
}
