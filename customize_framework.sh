#!/bin/bash
# $1: dir for miui
# $2: dir for original

APKTOOL="$PORT_ROOT/tools/apktool --quiet"
BUILD_OUT=out

SEP_FRAME="framework_ext.jar.out"

if [ $2 = "$BUILD_OUT/framework" ]
then
    # remove all files at out/framework those exist in framework_ext.jar.out
    for file2 in `find framework_ext.jar.out -name *.smali`; do
            file=${file2/framework_ext.jar.out/$BUILD_OUT\/framework}
            echo "rm file: $file"
            rm -rf "$file"
    done
    # remove all files at out/framework those exist in telephony-common.jar.out
    for file2 in `find telephony-common.jar.out -name *.smali`; do
            file=${file2/telephony-common.jar.out/$BUILD_OUT\/framework}
            echo "rm file: $file"
            rm -rf "$file"
    done
	cp -rf overlay/framework.jar.out/smali/* $BUILD_OUT/framework/smali
	cp -rf ../android/Editor/* $BUILD_OUT/framework/smali/android/widget/
    # move some smali to create a separate $SEP_FRAME.jar
    # including: smali/miui smali/android/widget
fi

if [ $2 = "$BUILD_OUT/framework_ext" ]
then
    # remove all files at out/framework1 those exist in framework.jar.out
    for file2 in `find framework.jar.out -name *.smali`; do
            file=${file2/framework.jar.out/$BUILD_OUT\/framework_ext}
            echo "rm file: $file"
            rm -rf "$file"
    done
    # remove all files at out/framework_ext those exist in telephony-common.jar.out
    for file2 in `find telephony-common.jar.out -name *.smali`; do
            file=${file2/telephony-common.jar.out/$BUILD_OUT\/framework_ext}
            echo "rm file: $file"
            rm -rf "$file"
    done
	cp -rf overlay/framework_ext.jar.out/smali/* $BUILD_OUT/framework_ext/smali
fi
