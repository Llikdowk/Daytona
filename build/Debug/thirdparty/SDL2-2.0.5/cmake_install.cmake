# Install script for directory: D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/Project")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/WORKSPACE/C++/Daytona/build/Debug/thirdparty/SDL2-2.0.5/libSDL2.a")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/WORKSPACE/C++/Daytona/build/Debug/thirdparty/SDL2-2.0.5/libSDL2.dll.a")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/WORKSPACE/C++/Daytona/build/Debug/thirdparty/SDL2-2.0.5/libSDL2.dll")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libSDL2.dll" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libSDL2.dll")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "D:/MinGW64/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libSDL2.dll")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/WORKSPACE/C++/Daytona/build/Debug/thirdparty/SDL2-2.0.5/libSDL2main.a")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_assert.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_atomic.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_audio.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_bits.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_blendmode.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_clipboard.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_config_android.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_config_iphoneos.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_config_macosx.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_config_minimal.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_config_pandora.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_config_psp.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_config_windows.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_config_winrt.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_config_wiz.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_copying.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_cpuinfo.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_egl.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_endian.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_error.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_events.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_filesystem.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_gamecontroller.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_gesture.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_haptic.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_hints.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_joystick.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_keyboard.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_keycode.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_loadso.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_log.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_main.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_messagebox.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_mouse.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_mutex.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_name.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_opengl.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_opengl_glext.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_opengles.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_opengles2.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_opengles2_gl2.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_opengles2_gl2ext.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_opengles2_gl2platform.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_opengles2_khrplatform.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_pixels.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_platform.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_power.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_quit.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_rect.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_render.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_revision.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_rwops.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_scancode.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_shape.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_stdinc.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_surface.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_system.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_syswm.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_test.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_test_assert.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_test_common.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_test_compare.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_test_crc32.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_test_font.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_test_fuzzer.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_test_harness.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_test_images.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_test_log.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_test_md5.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_test_random.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_thread.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_timer.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_touch.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_types.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_version.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/SDL_video.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/begin_code.h"
    "D:/WORKSPACE/C++/Daytona/thirdparty/SDL2-2.0.5/include/close_code.h"
    "D:/WORKSPACE/C++/Daytona/build/Debug/thirdparty/SDL2-2.0.5/include/SDL_config.h"
    )
endif()

