#!/bin/sh
#
# configure, Marlon Mark I - 3D Printer
#
# Description:
#   Automatic configuration script.
#
# Author: Márcio Pessoa <marcio.pessoa@gmail.com>
# Contributors: none
#
# Change log:
# 2019-12-05
#         Tested on: Marlin 2.0.0.
#
# 2018-12-28
#         Tested on: Marlin 1.1.9.
#         Set: UUID.
#
# 2018-11-15
#         Tested on: Marlin 1.1.9.
#         Enable: All endstop sensors.
#
# 2018-05-11
#         Tested on: Marlin 1.1.8.
#
# 2017-11-15
#         Tested on: Marlin 1.1.6.
#         Set: Motherboard to RAMPS v1.4 EFB (Extruder, Fan, Bed)
#         Enable: Memory Monitoring
#         Enable: Print Counter
#         Enable: EEPROM
#         Enable: Speaker
#
# 2017-11-11
#         Tested on: Marlin 1.1.6.
#         Set: Printer name.
#         Set: Who made the changes.
#
# 2017-10-27
#         Tested on: Marlin 1.1.5.
#         Enable: CoreXY
#
# 2017-10-12
#         Tested on: Marlin 1.1.5.
#         Improvement: Verbose output messages.
#
# 2017-09-08
#         Tested on: Marlin 1.1.5.
#         Improvement: Invoke xc inside configure.sh.
#
# 2017-09-07
#         Tested on: Marlin 1.1.x.
#         New feature: Added version information to configure.sh output.
#
# 2017-09-04
#         Tested on: Marlin 1.1.x.
#         New feature: Get firmware updates on start up.
#
# 2017-08-22
#         Tested on: Marlin 1.1.0-RC8.
#         Improvement: Verbose messages.
#         Improvement: Added check_return() function.
#
# 2017-02-24
#         Set: Thermistor minimum temperature to 0.
#
# 2017-02-22
#         Enable: Full Graphic Smart Controller.
#         Enable: SD Card support.
#         Set: Printer name.
#
# 2016-01-16
#         Project definition.
#

# Variables
readonly WORKDIR="Marlin"

check_return() {
  return=$1
  if [ "$return" -eq 0 ]; then
    echo "Done."
  else
    echo "Fail."
    exit 1
  fi
}

get_updates() {
  file=$1
  echo "Restoring original state to:"
  echo "    $file... \\c"
  git checkout -- "$file"  # Restore original file
  check_return $?
  echo "Getting firmware updates to $WORKDIR $(git show-branch)... \\c"
  #git pull  # Get updates from Github
  git submodule sync
  check_return $?
  git submodule update --init --recursive --remote
  check_return $?
}

echo "$0"
date +'Started at: %Y-%m-%d %H:%M:%S'

cd $WORKDIR || exit
FILE="Marlin/Configuration.h"

get_updates $FILE

echo "Applying customization to:"
echo "    $FILE..."

# Enable: Memory Monitoring
echo "        Enabling all endstop sensors... \\c"
sed -i -e 's/\/\/\#define USE_XMAX_PLUG/\#define USE_XMAX_PLUG/' "$FILE"
sed -i -e 's/\/\/\#define USE_YMAX_PLUG/\#define USE_YMAX_PLUG/' "$FILE"
sed -i -e 's/\/\/\#define USE_ZMAX_PLUG/\#define USE_ZMAX_PLUG/' "$FILE"
check_return $?

# Enable: Memory Monitoring
echo "        Enabling Memory Monitoring... \\c"
sed -i -e 's/\/\/\#define M100_FREE_MEMORY_WATCHER/\#define M100_FREE_MEMORY_WATCHER/' "$FILE"
check_return $?

# Enable: Print Counter
echo "        Enabling Print Counter... \\c"
sed -i -e 's/\/\/\#define PRINTCOUNTER/\#define PRINTCOUNTER/' "$FILE"
check_return $?

# Enable: EEPROM
echo "        Enabling EEPROM... \\c"
sed -i -e 's/\/\/\#define EEPROM_SETTINGS/\#define EEPROM_SETTINGS/' "$FILE"
check_return $?

# Enable: Speaker
echo "        Enabling Speaker... \\c"
sed -i -e 's/\/\/\#define SPEAKER/\#define SPEAKER/' "$FILE"
check_return $?

# Enable: CoreXY
echo "        Enabling CoreXY... \\c"
sed -i -e 's/\/\/\#define COREXY/\#define COREXY/' "$FILE"
check_return $?

# Enable: Full Graphic Smart Controller
echo "        Enabling Full Graphic Smart Controller... \\c"
sed -i -e 's/\/\/\#define REPRAP_DISCOUNT_FULL_GRAPHIC_SMART_CONTROLLER/\#define REPRAP_DISCOUNT_FULL_GRAPHIC_SMART_CONTROLLER/' "$FILE"
check_return $?

# Enable: SD Card support
echo "        Enabling SD Card support... \\c"
sed -i -e 's/\/\/\#define SDSUPPORT/\#define SDSUPPORT/' "$FILE"
check_return $?

# Set: Motherboard to RAMPS v1.4 EFB (Extruder, Fan, Bed)
echo "        Setting Motherboard to RAMPS v1.4 EFB (Extruder, Fan, Bed)... \\c"
sed -i -e 's/  \#define MOTHERBOARD BOARD_RAMPS_14_EFB/  \#define MOTHERBOARD BOARD_RAMPS_14_EFB/' "$FILE"
check_return $?

# Set: Thermistor minimum temperature to 0
echo "        Setting Thermistor minimum temperature to 0... \\c"
sed -i -e 's/\#define HEATER_0_MINTEMP 5/\#define HEATER_0_MINTEMP 0/' "$FILE"
check_return $?

# Set: UUID
echo "        Setting UUID... \\c"
sed -i -e 's/\/\/\#define MACHINE_UUID \"00000000-0000-0000-0000-000000000000\"/\#define MACHINE_UUID \"ac0e4435-fb22-47ba-81c3-e455b2deea40\"/' "$FILE"
check_return $?

# Set: Printer name
echo "        Setting Printer name... \\c"
sed -i -e 's/\/\/#define CUSTOM_MACHINE_NAME \"3D Printer\"/\#define CUSTOM_MACHINE_NAME \"Marlon\"/' "$FILE"
check_return $?

# Set: Who made the changes
echo "        Setting Who made the changes... \\c"
sed -i -e 's/#define STRING_CONFIG_H_AUTHOR \"(none, default config)\"/\#define STRING_CONFIG_H_AUTHOR \"Marcio Pessoa\"/' "$FILE"
check_return $?

echo "Done."
echo
