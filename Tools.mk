
# Toolchain 'triple'
SHARD_TOOLCHAIN_TARGET := $(SHARD_ARCH)-$(SHARD_BINARY_FORMAT)

# Absolute path to the linker
ifeq ($(OS),Windows_NT)
	LD := /d/Binaries/Binutils/bin/$(SHARD_TOOLCHAIN_TARGET)-ld.exe
	# Absolute path to the NASM executable
	NASM := /d/Binaries/NASM/nasm.exe
endif
ifeq ($(shell uname),Linux)
	LD := $(shell which ld)
	NASM := $(shell which nasm)
	QEMU := $(shell which qemu-system-$(SHARD_ARCH))
endif
