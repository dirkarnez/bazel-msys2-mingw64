export PATH="/mingw64/bin:/usr/local/bin:/usr/bin:/bin:/opt/bin:/c/Windows/System32:/c/Windows:/c/Windows/System32/WindowsPowerShell/v1.0/:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl" &&

export JAVA_HOME=/C/Users/Administrator/Downloads/openjdk-11.0.1_windows-x64_bin/jdk-11.0.1
# export BAZEL_SH=%ROOT%\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\bin\bash

cd /C/Users/Administrator/Downloads/fhir &&
gcc --version &&
ls &&
bazel query @local_config_cc//:toolchain --output=build &&
# bazel build --compiler=mingw-gcc //cc/google/fhir/...  --verbose_failures &&^
bazel build --compiler=mingw-gcc --copt=-DWIN32_LEAN_AND_MEAN //cc/google/fhir/r4:json_format  --verbose_failures
read -p "sdfsd"