../aos-build/bin/clang++ -O3 --target=aarch64-linux-gnu -march=armv8.3-a \
-I../sysroot-glibc-linaro-2.25-2018.05-aarch64-linux-gnu/usr/include \
-B../gcc-linaro-7.3.1-2018.05-x86_64_aarch64-linux-gnu \
-Wall -Wextra -fPIC -fvisibility=hidden \
--sysroot=../sysroot-glibc-linaro-2.25-2018.05-aarch64-linux-gnu -static \
$1.c -o $1
