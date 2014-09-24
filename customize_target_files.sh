#!/bin/bash

DIR=`pwd`

echo "Copy GuardProvider"
cd $DIR
cd ..
cp -r miui/XHDPI/system/app/GuardProvider.apk $DIR/out/target_files/SYSTEM/app/
