#
# Makefile for D2LTE
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := miui_$(PORT_PRODUCT)_$(BUILD_NUMBER)_4.4.zip

# the location for local-ota to save target-file
local-previous-target-dir := ~/workspace/ota_base/4.4/d2lte-M9

# All apps from original ZIP, but has smali files chanded
local-modified-apps :=

local-modified-jars :=

# All apks from MIUI
local-miui-removed-apps := 	BaiduNetworkLocation \
				VoiceAssist \
				GameCenter \
				GameCenterSDKService \
				SuperMarket \
				O2O \
				Weather \
				WeatherProvider

local-miui-removed-priv-apps :=

local-miui-modified-apps :=	Mms \
				Phone

local-modified-priv-apps :=	

# Config density for co-developers to use the aaps with HDPI or XHDPI resource,
# Default configrations are HDPI for ics branch and XHDPI for jellybean branch
local-density := XHDPI

# Config for files to include from original zip
include phoneapps.mk

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
updater := $(ZIP_DIR)/META-INF/com/google/android/updater-script
pre_install_data_packages := out/pre_install_apk_pkgname.txt
local-pre-zip-misc:
	cp other/build.prop $(ZIP_DIR)/system/build.prop
	cp other/backuptool.functions $(ZIP_DIR)/system/bin/backuptool.functions
	cp other/backuptool.sh $(ZIP_DIR)/system/bin/backuptool.sh
# To replace spn
	cp other/spn-conf.xml $(ZIP_DIR)/system/etc/spn-conf.xml
# To replace kernel
	cp other/boot.img $(ZIP_DIR)/boot.img
	cp other/installd $(ZIP_DIR)/system/bin/installd
	cp other/lbesec $(ZIP_DIR)/system/xbin/lbesec
	cp other/00shelld $(ZIP_DIR)/system/etc/init.d/00shelld
	cp other/00lbesec $(ZIP_DIR)/system/etc/init.d/00lbesec
	cp other/lbesec $(ZIP_DIR)/system/xbin/lbesec
	cp other/apns-conf.xml $(ZIP_DIR)/system/etc/apns-conf.xml
# To replace FM icon
#	cp -rf other/miui_mod_icons/* $(ZIP_DIR)/system/media/theme/miui_mod_icons/
	@echo Remove usless stuff
	#rm -rf $(ZIP_DIR)/data/miui/apps/*.apk
	rm -rf $(ZIP_DIR)/system/media/video/*.mp4
	rm -rf $(ZIP_DIR)/system/tts/lang_pico/*.bin
