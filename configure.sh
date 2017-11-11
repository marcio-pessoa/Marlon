#!/bin/sh
#
# configure.sh
#
# Description:
#   Automatic configuration script.
#
# Author: Márcio Pessoa <marcio.pessoa@sciemon.com>
# Contributors: none
#
# Change log:
# 2017-11-11
#         Tested on: Marlin 1.1.6.
#         Set: Printer name to "Marlon".
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
#         Improvement: Invoke xc inside this program.
#
# 2017-09-07
#         Tested on: Marlin 1.1.x.
#         New feature: Added version information to output string.
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
#         Set: Printer name to "Marlin".
#
# 2016-01-16
#         Project definition.
#

# Variables
action=$1
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
  echo "    $file... \c"
  git checkout -- "$file"  # Restore original file
  check_return $?
  echo "Getting firmware updates to $WORKDIR $(git show-branch)... \c"
  git pull  # Get updates from Github
}

cd $WORKDIR
FILE="Marlin/Configuration.h"

get_updates $FILE

echo "Applying customization to:"
echo "    $FILE..."

# Enable: CoreXY
echo "        Enabling CoreXY... \c"
sed -i -e 's/\/\/\#define COREXY/\#define COREXY/' "$FILE"
check_return $?

# Enable: Full Graphic Smart Controller
echo "        Enabling Full Graphic Smart Controller... \c"
sed -i -e 's/\/\/\#define REPRAP_DISCOUNT_FULL_GRAPHIC_SMART_CONTROLLER/\#define REPRAP_DISCOUNT_FULL_GRAPHIC_SMART_CONTROLLER/' "$FILE"
check_return $?

# Enable: SD Card support
echo "        Enabling SD Card support... \c"
sed -i -e 's/\/\/\#define SDSUPPORT/\#define SDSUPPORT/' "$FILE"
check_return $?

# Set: Thermistor minimum temperature to 0
echo "        Setting Thermistor minimum temperature to 0... \c"
sed -i -e 's/\#define HEATER_0_MINTEMP 5/\#define HEATER_0_MINTEMP 0/' "$FILE"
check_return $?

# Set: Printer name to "Marlon"
echo "        Setting Printer name... \c"
sed -i -e 's/\/\/#define CUSTOM_MACHINE_NAME \"3D Printer\"/\#define CUSTOM_MACHINE_NAME \"Marlon\"/' "$FILE"
check_return $?

# Set: Who made the changes
echo "        Setting Who made the changes... \c"
sed -i -e 's/#define STRING_CONFIG_H_AUTHOR \"(none, default config)\"/\#define STRING_CONFIG_H_AUTHOR \"Marcio Pessoa\"/' "$FILE"
check_return $?

# Invoke xc
echo "Starting xC (Axes Controller)..."
xc -v
case "$action" in
  'verify')
    xc "$action" --id marlon --verbosity=3
    exit $?
    ;;
  'upload')
    xc "$action" --id marlon --verbosity=3
    exit $?
    ;;
  *)
    echo ""
    echo "Invalid option."
    echo ""
    echo "Usage:"
    echo "configure.sh verify"
    echo "configure.sh upload"
    exit 1
    ;;
esac
