export CURRENT_DIR := `pwd`

default: gen lint

gen:
    cd / && flutter_rust_bridge_codegen \
        --rust-input {{ CURRENT_DIR }}/peripheral/src/api.rs \
        --dart-output {{ CURRENT_DIR }}/lib/bridge_generated.dart
    # Uncomment this line to invoke build_runner as well
    # flutter pub run build_runner build

lint:
    cd peripheral && cargo fmt
    dart format .

clean:
    flutter clean
    cd peripheral && cargo clean
