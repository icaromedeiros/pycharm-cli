#!/bin/sh
# Example in MacOS

# Uncomment the line below to include PYCHARM_BIN variable
#PYCHARM_BIN="/path/to/PyCharm.app/Contents/MacOS/pycharm"

# Comment this line below if you have PYCHARM_BIN defined
: ${PYCHARM_BIN?"Need to set PYCHARM_BIN"}

pwd=`pwd`
if [ "$1" != "" ]; then
    target="$pwd/$1"
    echo "Opening PyCharm in directory $target"
    $PYCHARM_BIN $target
else
    echo "Positional parameter 1 is empty, default is to open PyCharm using current directory"
    $PYCHARM_BIN $pwd
fi
