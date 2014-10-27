#!/bin/bash
# $1: dir for miui
# $2: dir for original

APKTOOL="$PORT_ROOT/tools/apktool --quiet"
BUILD_OUT=out

if [ $2 = "$BUILD_OUT/framework" ]
then

    cp -rf ../android/Editor/* $BUILD_OUT/framework/smali/android/widget/

fi

if [ $2 = "$BUILD_OUT/framework2" ]
then
    # remove all files at out/framework2 those exist in telephony-common.jar.out
    for file2 in `find telephony-common.jar.out -name *.smali`; do
            file=${file2/telephony-common.jar.out/$BUILD_OUT\/framework2}
            echo "rm file: $file"
            rm -rf "$file"
    done
fi
