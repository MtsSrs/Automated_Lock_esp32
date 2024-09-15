# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/mts/esp/esp-idf/components/bootloader/subproject"
  "/home/mts/Documents/Projects/ESP-32/automated_door/build/bootloader"
  "/home/mts/Documents/Projects/ESP-32/automated_door/build/bootloader-prefix"
  "/home/mts/Documents/Projects/ESP-32/automated_door/build/bootloader-prefix/tmp"
  "/home/mts/Documents/Projects/ESP-32/automated_door/build/bootloader-prefix/src/bootloader-stamp"
  "/home/mts/Documents/Projects/ESP-32/automated_door/build/bootloader-prefix/src"
  "/home/mts/Documents/Projects/ESP-32/automated_door/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/mts/Documents/Projects/ESP-32/automated_door/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/mts/Documents/Projects/ESP-32/automated_door/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
