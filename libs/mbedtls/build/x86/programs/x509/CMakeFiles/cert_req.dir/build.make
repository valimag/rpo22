# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Users/valimagomedov/Library/Android/sdk/cmake/3.10.2.4988404/bin/cmake

# The command to remove a file.
RM = /Users/valimagomedov/Library/Android/sdk/cmake/3.10.2.4988404/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/valimagomedov/Projects/rpo22/libs/mbedtls/mbedtls

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86

# Include any dependencies generated for this target.
include programs/x509/CMakeFiles/cert_req.dir/depend.make

# Include the progress variables for this target.
include programs/x509/CMakeFiles/cert_req.dir/progress.make

# Include the compile flags for this target's objects.
include programs/x509/CMakeFiles/cert_req.dir/flags.make

programs/x509/CMakeFiles/cert_req.dir/cert_req.c.o: programs/x509/CMakeFiles/cert_req.dir/flags.make
programs/x509/CMakeFiles/cert_req.dir/cert_req.c.o: /Users/valimagomedov/Projects/rpo22/libs/mbedtls/mbedtls/programs/x509/cert_req.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object programs/x509/CMakeFiles/cert_req.dir/cert_req.c.o"
	cd /Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86/programs/x509 && /Users/valimagomedov/Library/Android/sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/darwin-x86_64/bin/clang --target=i686-none-linux-android16 --gcc-toolchain=/Users/valimagomedov/Library/Android/sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/darwin-x86_64 --sysroot=/Users/valimagomedov/Library/Android/sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/darwin-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cert_req.dir/cert_req.c.o   -c /Users/valimagomedov/Projects/rpo22/libs/mbedtls/mbedtls/programs/x509/cert_req.c

programs/x509/CMakeFiles/cert_req.dir/cert_req.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cert_req.dir/cert_req.c.i"
	cd /Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86/programs/x509 && /Users/valimagomedov/Library/Android/sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/darwin-x86_64/bin/clang --target=i686-none-linux-android16 --gcc-toolchain=/Users/valimagomedov/Library/Android/sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/darwin-x86_64 --sysroot=/Users/valimagomedov/Library/Android/sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/darwin-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/valimagomedov/Projects/rpo22/libs/mbedtls/mbedtls/programs/x509/cert_req.c > CMakeFiles/cert_req.dir/cert_req.c.i

programs/x509/CMakeFiles/cert_req.dir/cert_req.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cert_req.dir/cert_req.c.s"
	cd /Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86/programs/x509 && /Users/valimagomedov/Library/Android/sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/darwin-x86_64/bin/clang --target=i686-none-linux-android16 --gcc-toolchain=/Users/valimagomedov/Library/Android/sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/darwin-x86_64 --sysroot=/Users/valimagomedov/Library/Android/sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/darwin-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/valimagomedov/Projects/rpo22/libs/mbedtls/mbedtls/programs/x509/cert_req.c -o CMakeFiles/cert_req.dir/cert_req.c.s

programs/x509/CMakeFiles/cert_req.dir/cert_req.c.o.requires:

.PHONY : programs/x509/CMakeFiles/cert_req.dir/cert_req.c.o.requires

programs/x509/CMakeFiles/cert_req.dir/cert_req.c.o.provides: programs/x509/CMakeFiles/cert_req.dir/cert_req.c.o.requires
	$(MAKE) -f programs/x509/CMakeFiles/cert_req.dir/build.make programs/x509/CMakeFiles/cert_req.dir/cert_req.c.o.provides.build
.PHONY : programs/x509/CMakeFiles/cert_req.dir/cert_req.c.o.provides

programs/x509/CMakeFiles/cert_req.dir/cert_req.c.o.provides.build: programs/x509/CMakeFiles/cert_req.dir/cert_req.c.o


# Object files for target cert_req
cert_req_OBJECTS = \
"CMakeFiles/cert_req.dir/cert_req.c.o"

# External object files for target cert_req
cert_req_EXTERNAL_OBJECTS = \
"/Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.o" \
"/Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o" \
"/Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o" \
"/Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o" \
"/Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.o" \
"/Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/random.c.o" \
"/Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o" \
"/Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/cipher.c.o" \
"/Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/key_management.c.o" \
"/Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/signature.c.o" \
"/Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/size.c.o"

programs/x509/cert_req: programs/x509/CMakeFiles/cert_req.dir/cert_req.c.o
programs/x509/cert_req: CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.o
programs/x509/cert_req: CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o
programs/x509/cert_req: CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o
programs/x509/cert_req: CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o
programs/x509/cert_req: CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.o
programs/x509/cert_req: CMakeFiles/mbedtls_test.dir/tests/src/random.c.o
programs/x509/cert_req: CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o
programs/x509/cert_req: CMakeFiles/mbedtls_test.dir/tests/src/drivers/cipher.c.o
programs/x509/cert_req: CMakeFiles/mbedtls_test.dir/tests/src/drivers/key_management.c.o
programs/x509/cert_req: CMakeFiles/mbedtls_test.dir/tests/src/drivers/signature.c.o
programs/x509/cert_req: CMakeFiles/mbedtls_test.dir/tests/src/drivers/size.c.o
programs/x509/cert_req: programs/x509/CMakeFiles/cert_req.dir/build.make
programs/x509/cert_req: library/libmbedx509.so
programs/x509/cert_req: library/libmbedcrypto.so
programs/x509/cert_req: programs/x509/CMakeFiles/cert_req.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable cert_req"
	cd /Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86/programs/x509 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cert_req.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
programs/x509/CMakeFiles/cert_req.dir/build: programs/x509/cert_req

.PHONY : programs/x509/CMakeFiles/cert_req.dir/build

programs/x509/CMakeFiles/cert_req.dir/requires: programs/x509/CMakeFiles/cert_req.dir/cert_req.c.o.requires

.PHONY : programs/x509/CMakeFiles/cert_req.dir/requires

programs/x509/CMakeFiles/cert_req.dir/clean:
	cd /Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86/programs/x509 && $(CMAKE_COMMAND) -P CMakeFiles/cert_req.dir/cmake_clean.cmake
.PHONY : programs/x509/CMakeFiles/cert_req.dir/clean

programs/x509/CMakeFiles/cert_req.dir/depend:
	cd /Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/valimagomedov/Projects/rpo22/libs/mbedtls/mbedtls /Users/valimagomedov/Projects/rpo22/libs/mbedtls/mbedtls/programs/x509 /Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86 /Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86/programs/x509 /Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86/programs/x509/CMakeFiles/cert_req.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : programs/x509/CMakeFiles/cert_req.dir/depend

