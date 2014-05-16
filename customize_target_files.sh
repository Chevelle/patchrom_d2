#!/bin/bash

DIR=`pwd`

cd $DIR
echo "Copy update-binary"
cp -r other/update-binary out/target_files/OTA/bin/updater

echo "Copy GuardProvider"
cd ..
cp -r miui/XHDPI/system/app/GuardProvider.apk $DIR/out/target_files/SYSTEM/app/

echo "Fix su"
cd $DIR
cp -r other/su out/target_files/SYSTEM/xbin/
