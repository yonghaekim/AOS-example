SCRIPT_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
REPODIR="${SCRIPT_ROOT}/AOS-llvm"
BUILD_DIR="${SCRIPT_ROOT}/aos-build"
cd "$BUILD_DIR"
cmake -G Ninja \
		-DCMAKE_INSTALL_PREFIX="$LLVM_INSTALL"  \
		-DCMAKE_BUILD_TYPE=Debug                \
		-DBUILD_SHARED_LIBS=On                  \
		-DLLVM_TARGETS_TO_BUILD=AArch64         \
		-DLLVM_BUILD_TOOLS=On                   \
		-DLLVM_BUILD_TESTS=Off                  \
		-DLLVM_BUILD_EXAMPLES=Off               \
		-DLLVM_BUILD_DOCS=Off                   \
		-DLLVM_INCLUDE_EXAMPLES=Off             \
		-DLLVM_ENABLE_LTO=Off                   \
		-DLLVM_ENABLE_DOXYGEN=Off               \
		-DLLVM_ENABLE_RTTI=Off                  \
		-DLLVM_ENABLE_PROJECTS="clang"          \
		-DLLVM_DEFAULT_TARGET_TRIPLE="aarch64-unknown-linux-gnu" \
		"$REPODIR/llvm"
ninja
