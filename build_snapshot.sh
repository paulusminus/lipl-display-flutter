#!/bin/bash

FLUTTER_HOME=/home/paul/development/flutter

flutter build bundle

${FLUTTER_HOME}/bin/cache/dart-sdk/bin/dart \
  ${FLUTTER_HOME}/bin/cache/dart-sdk/bin/snapshots/frontend_server.dart.snapshot \
  --sdk-root ${FLUTTER_HOME}/bin/cache/artifacts/engine/common/flutter_patched_sdk_product \
  --target=flutter \
  --aot \
  --tfa \
  -Ddart.vm.product=true \
  --packages .packages \
  --output-dill build/kernel_snapshot.dill \
  --verbose \
  --depfile build/kernel_snapshot.d \
  package:lipl_display/main.dart

gen_snapshot_linux_x64_release \
  --deterministic \
  --snapshot-kind=app-aot-elf \
  --elf=build/flutter_assets/app.so \
  --strip \
  build/kernel_snapshot.dill

rsync -a --info=progress2 ./build/flutter_assets/ paul@l3a:/home/paul/lipl_display/
