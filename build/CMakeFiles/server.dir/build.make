# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.19.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.19.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jjlange/CPP

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jjlange/CPP/build

# Include any dependencies generated for this target.
include CMakeFiles/server.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/server.dir/flags.make

CMakeFiles/server.dir/server.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/server.cpp.o: ../server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jjlange/CPP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/server.dir/server.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/server.dir/server.cpp.o -c /Users/jjlange/CPP/server.cpp

CMakeFiles/server.dir/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/server.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jjlange/CPP/server.cpp > CMakeFiles/server.dir/server.cpp.i

CMakeFiles/server.dir/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/server.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jjlange/CPP/server.cpp -o CMakeFiles/server.dir/server.cpp.s

# Object files for target server
server_OBJECTS = \
"CMakeFiles/server.dir/server.cpp.o"

# External object files for target server
server_EXTERNAL_OBJECTS =

server: CMakeFiles/server.dir/server.cpp.o
server: CMakeFiles/server.dir/build.make
server: /opt/homebrew/lib/libopencv_gapi.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_stitching.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_alphamat.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_aruco.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_barcode.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_bgsegm.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_bioinspired.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_ccalib.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_dnn_objdetect.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_dnn_superres.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_dpm.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_face.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_freetype.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_fuzzy.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_hfs.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_img_hash.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_intensity_transform.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_line_descriptor.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_mcc.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_quality.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_rapid.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_reg.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_rgbd.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_saliency.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_sfm.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_stereo.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_structured_light.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_superres.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_surface_matching.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_tracking.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_videostab.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_viz.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_wechat_qrcode.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_xfeatures2d.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_xobjdetect.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_xphoto.4.7.0.dylib
server: /opt/homebrew/opt/openssl/lib/libssl.dylib
server: /opt/homebrew/opt/openssl/lib/libcrypto.dylib
server: /opt/homebrew/lib/libopencv_shape.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_highgui.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_datasets.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_plot.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_text.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_ml.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_phase_unwrapping.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_optflow.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_ximgproc.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_video.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_videoio.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_imgcodecs.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_objdetect.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_calib3d.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_dnn.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_features2d.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_flann.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_photo.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_imgproc.4.7.0.dylib
server: /opt/homebrew/lib/libopencv_core.4.7.0.dylib
server: CMakeFiles/server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jjlange/CPP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/server.dir/build: server

.PHONY : CMakeFiles/server.dir/build

CMakeFiles/server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/server.dir/clean

CMakeFiles/server.dir/depend:
	cd /Users/jjlange/CPP/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jjlange/CPP /Users/jjlange/CPP /Users/jjlange/CPP/build /Users/jjlange/CPP/build /Users/jjlange/CPP/build/CMakeFiles/server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/server.dir/depend

