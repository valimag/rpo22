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
include programs/ssl/CMakeFiles/ssl_context_info.dir/depend.make

# Include the progress variables for this target.
include programs/ssl/CMakeFiles/ssl_context_info.dir/progress.make

# Include the compile flags for this target's objects.
include programs/ssl/CMakeFiles/ssl_context_info.dir/flags.make

programs/ssl/CMakeFiles/ssl_context_info.dir/ssl_context_info.c.o: programs/ssl/CMakeFiles/ssl_context_info.dir/flags.make
programs/ssl/CMakeFiles/ssl_context_info.dir/ssl_context_info.c.o: /Users/valimagomedov/Projects/rpo22/libs/mbedtls/mbedtls/programs/ssl/ssl_context_info.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object programs/ssl/CMakeFiles/ssl_context_info.dir/ssl_context_info.c.o"
	cd /Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86/programs/ssl && /Users/valimagomedov/Library/Android/sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/darwin-x86_64/bin/clang --target=i686-none-linux-android16 --gcc-toolchain=/Users/valimagomedov/Library/Android/sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/darwin-x86_64 --sysroot=/Users/valimagomedov/Library/Android/sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/darwin-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ssl_context_info.dir/ssl_context_info.c.o   -c /Users/valimagomedov/Projects/rpo22/libs/mbedtls/mbedtls/programs/ssl/ssl_context_info.c

programs/ssl/CMakeFiles/ssl_context_info.dir/ssl_context_info.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ssl_context_info.dir/ssl_context_info.c.i"
	cd /Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86/programs/ssl && /Users/valimagomedov/Library/Android/sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/darwin-x86_64/bin/clang --target=i686-none-linux-android16 --gcc-toolchain=/Users/valimagomedov/Library/Android/sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/darwin-x86_64 --sysroot=/Users/valimagomedov/Library/Android/sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/darwin-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/valimagomedov/Projects/rpo22/libs/mbedtls/mbedtls/programs/ssl/ssl_context_info.c > CMakeFiles/ssl_context_info.dir/ssl_context_info.c.i

programs/ssl/CMakeFiles/ssl_context_info.dir/ssl_context_info.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ssl_context_info.dir/ssl_context_info.c.s"
	cd /Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86/programs/ssl && /Users/valimagomedov/Library/Android/sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/darwin-x86_64/bin/clang --target=i686-none-linux-android16 --gcc-toolchain=/Users/valimagomedov/Library/Android/sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/darwin-x86_64 --sysroot=/Users/valimagomedov/Library/Android/sdk/ndk/23.0.7123448/toolchains/llvm/prebuilt/darwin-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/valimagomedov/Projects/rpo22/libs/mbedtls/mbedtls/programs/ssl/ssl_context_info.c -o CMakeFiles/ssl_context_info.dir/ssl_context_info.c.s

programs/ssl/CMakeFiles/ssl_context_info.dir/ssl_context_info.c.o.requires:

.PHONY : programs/ssl/CMakeFiles/ssl_context_info.dir/ssl_context_info.c.o.requires

programs/ssl/CMakeFiles/ssl_context_info.dir/ssl_context_info.c.o.provides: programs/ssl/CMakeFiles/ssl_context_info.dir/ssl_context_info.c.o.requires
	$(MAKE) -f programs/ssl/CMakeFiles/ssl_context_info.dir/build.make programs/ssl/CMakeFiles/ssl_context_info.dir/ssl_context_info.c.o.provides.build
.PHONY : programs/ssl/CMakeFiles/ssl_context_info.dir/ssl_context_info.c.o.provides

programs/ssl/CMakeFiles/ssl_context_info.dir/ssl_context_info.c.o.provides.build: programs/ssl/CMakeFiles/ssl_context_info.dir/ssl_context_info.c.o


# Object files for target ssl_context_info
ssl_context_info_OBJECTS = \
"CMakeFiles/ssl_context_info.dir/ssl_context_info.c.o"

# External object files for target ssl_context_info
ssl_context_info_EXTERNAL_OBJECTS = \
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

programs/ssl/ssl_context_info: programs/ssl/CMakeFiles/ssl_context_info.dir/ssl_context_info.c.o
programs/ssl/ssl_context_info: CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.o
programs/ssl/ssl_context_info: CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o
programs/ssl/ssl_context_info: CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o
programs/ssl/ssl_context_info: CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o
programs/ssl/ssl_context_info: CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.o
programs/ssl/ssl_context_info: CMakeFiles/mbedtls_test.dir/tests/src/random.c.o
programs/ssl/ssl_context_info: CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o
programs/ssl/ssl_context_info: CMakeFiles/mbedtls_test.dir/tests/src/drivers/cipher.c.o
programs/ssl/ssl_context_info: CMakeFiles/mbedtls_test.dir/tests/src/drivers/key_management.c.o
programs/ssl/ssl_context_info: CMakeFiles/mbedtls_test.dir/tests/src/drivers/signature.c.o
programs/ssl/ssl_context_info: CMakeFiles/mbedtls_test.dir/tests/src/drivers/size.c.o
programs/ssl/ssl_context_info: programs/ssl/CMakeFiles/ssl_context_info.dir/build.make
programs/ssl/ssl_context_info: library/libmbedtls.so
programs/ssl/ssl_context_info: library/libmbedx509.so
programs/ssl/ssl_context_info: library/libmbedcrypto.so
programs/ssl/ssl_context_info: programs/ssl/CMakeFiles/ssl_context_info.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ssl_context_info"
	cd /Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86/programs/ssl && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ssl_context_info.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
programs/ssl/CMakeFiles/ssl_context_info.dir/build: programs/ssl/ssl_context_info

.PHONY : programs/ssl/CMakeFiles/ssl_context_info.dir/build

programs/ssl/CMakeFiles/ssl_context_info.dir/requires: programs/ssl/CMakeFiles/ssl_context_info.dir/ssl_context_info.c.o.requires

.PHONY : programs/ssl/CMakeFiles/ssl_context_info.dir/requires

programs/ssl/CMakeFiles/ssl_context_info.dir/clean:
	cd /Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86/programs/ssl && $(CMAKE_COMMAND) -P CMakeFiles/ssl_context_info.dir/cmake_clean.cmake
.PHONY : programs/ssl/CMakeFiles/ssl_context_info.dir/clean

programs/ssl/CMakeFiles/ssl_context_info.dir/depend:
	cd /Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/valimagomedov/Projects/rpo22/libs/mbedtls/mbedtls /Users/valimagomedov/Projects/rpo22/libs/mbedtls/mbedtls/programs/ssl /Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86 /Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86/programs/ssl /Users/valimagomedov/Projects/rpo22/libs/mbedtls/build/x86/programs/ssl/CMakeFiles/ssl_context_info.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : programs/ssl/CMakeFiles/ssl_context_info.dir/depend
