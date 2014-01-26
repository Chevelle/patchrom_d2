#!/bin/bash
#
# $1: dir for original miui app 
# $2: dir for target miui app
#

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
GIT_APPLY=$PORT_ROOT/tools/git.apply
curdir=`pwd`

function appendPart() {
    for file in `find $1/smali -name *.part`
    do
		filepath=`dirname $file`
		filename=`basename $file .part`
		dstfile="out/$filepath/$filename"
        cat $file >> $dstfile
    done
}

if [ $1 = "Settings" ];then
#    cp $1/*.part out/
#    cd out
#    $GIT_APPLY Settings.part
#    cd ..
#    for file in `find $2 -name *.rej`
#    do
#	echo "Fatal error: Settings patch fail"
#        exit 1
#    done

	$XMLMERGYTOOL $1/res/values $2/res/values
    $XMLMERGYTOOL $1/res/values-hdpi $2/res/values-hdpi
fi

if [ $1 = "Mms" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
	$XMLMERGYTOOL $1/res/xml $2/res/xml
fi

if [ $1 = "Phone" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
	$XMLMERGYTOOL $1/res/xml $2/res/xml
	cp $1/Phone.part out/
	cd out
	$GIT_APPLY Phone.part
	cd ..
	for file in `find $2 -name *.rej`
	do
	echo "Phone patch fail"
		exit 1
	done
fi
fi

if [ $1 = "ThemeManager" ];then
#    cp other/ThemeManager.part out/
#    cd out
#    $GIT_APPLY ThemeManager.part
#    cd ..
#    for file in `find $2 -name *.rej`
#    do
#	echo "Fatal error: ThemeManager patch fail"
#        exit 1
#    done
#
    $XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiuiHome" ];then
#    cp $1/*.part out/
#    cd out
#    $GIT_APPLY MiuiHome.part
#    cd ..
#    for file in `find $2 -name *.rej`
#    do
#	echo "Fatal error: MiuiHome patch fail"
#        exit 1
#    done
fi

if [ $1 = "MiuiSystemUI" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
	$XMLMERGYTOOL $1/res/layout $2/res/layout
    cp $1/MiuiSystemUI.patch out/
	cd out
	$GIT_APPLY MiuiSystemUI.patch
	cd ..
	for file in `find $2 -name *.rej`
	do
	echo "MiuiSystemUI patch fail"
		exit 1
	done
fi
