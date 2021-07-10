ifdef OS
	TOOLCHAIN = +stable-i686-pc-windows-msvc
	BINARYNAME = uuid.dll
	OUPUTNAME = uuid.dll
	COPY = xcopy /f .\target\release\$(BINARYNAME) .\plugins\$(OUPUTNAME)
else
	ifeq ($(shell uname), Linux)
		TOOLCHAIN = +stable-i686-unknown-linux-gnu
		BINARYNAME = libuuid.so
		OUPUTNAME = libuuid.so
		CP_RELEASE = cp target/release/$(BINARYNAME) plugins/$(OUPUTNAME)
		CP_DEBUG = cp target/debug/$(BINARYNAME) plugins/$(OUPUTNAME)
	endif
endif

build:
	cargo $(TOOLCHAIN) build --release
	$(COPY)

test:
	sampctl package run --forceEnsure --forceBuild

clean:
	cargo clean