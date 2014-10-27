import common
import edify_generator

def WritePolicyConfig(info):
    try:
	file_contexts = info.input_zip.read("META/file_contexts")
	common.ZipWriteStr(info.output_zip, "file_contexts", file_contexts)
    except KeyError:
 	print "warning: file_context missing from target;"

def ReplaceLine(info):
    edify = info.script
    for i in xrange(len(edify.script)):
	if 'getprop("ro.product.device") == "d2lte" || abort("This package is for \\"d2lte\\" devices; this is a \\"" + getprop("ro.product.device") + "\\".");' in edify.script[i]:
           edify.script[i] = edify.script[i].replace('getprop("ro.product.device") == "d2lte" || abort("This package is for \\"d2lte\\" devices; this is a \\"" + getprop("ro.product.device") + "\\".");', 
'assert(getprop("ro.product.device") == "d2att" || getprop("ro.build.product") == "d2att" ||\n\
       getprop("ro.product.device") == "d2spr" || getprop("ro.build.product") == "d2spr" ||\n\
       getprop("ro.product.device") == "d2spi" || getprop("ro.build.product") == "d2spi" ||\n\
       getprop("ro.product.device") == "d2tfnspr" || getprop("ro.build.product") == "d2tfnspr" ||\n\
       getprop("ro.product.device") == "d2tmo" || getprop("ro.build.product") == "d2tmo" ||\n\
       getprop("ro.product.device") == "d2cri" || getprop("ro.build.product") == "d2cri" ||\n\
       getprop("ro.product.device") == "d2mtr" || getprop("ro.build.product") == "d2mtr" ||\n\
       getprop("ro.product.device") == "d2usc" || getprop("ro.build.product") == "d2usc" ||\n\
       getprop("ro.product.device") == "d2vmu" || getprop("ro.build.product") == "d2vmu" ||\n\
       getprop("ro.product.device") == "d2vzw" || getprop("ro.build.product") == "d2vzw" ||\n\
       getprop("ro.product.device") == "d2lte" || getprop("ro.build.product") == "d2lte" ||\n\
       getprop("ro.product.device") == "d2can" || getprop("ro.build.product") == "d2can" || abort("This package is for \\"d2att,d2spr,d2spi,d2tfnspr,d2tmo,d2cri,d2mtr,d2usc,d2vmu,d2vzw,d2lte,d2can\\" devices; this is a \\"" + getprop("ro.product.device") + "\\"."););')
    return

def AddBackupTool(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if "ui_print(\"Formatting system...\");" in edify.script[i]:
            edify.script[i] = edify.script[i].replace("ui_print(\"Formatting system...\");", 
		'package_extract_file(\"system/bin/backuptool.sh\", \"/tmp/backuptool.sh\");\n\
package_extract_file(\"system/bin/backuptool.functions\", \"/tmp/backuptool.functions\");\n\
set_perm(0, 0, 0777, \"/tmp/backuptool.sh\");\n\
set_perm(0, 0, 0644, \"/tmp/backuptool.functions\");\n\
run_program(\"/tmp/backuptool.sh\", \"backup\");\n\
ui_print("Formatting system...");')

def AddSetMetaData(info):
    edify = info.script
    for i in xrange(len(edify.script)):
	if "ui_print(\"Set permission...\");" in edify.script[i]:
	    edify.script[i] = edify.script[i].replace("ui_print(\"Set permission...\");",
'ui_print(\"Set permission...\");\n\
set_metadata_recursive(\"/system\", \"uid\", 0, \"gid\", 0, \"dmode\", 0755, \"fmode\", 0644, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata_recursive(\"/system/addon.d\", \"uid\", 0, \"gid\", 0, \"dmode\", 0755, \"fmode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata_recursive(\"/system/bin\", \"uid\", 0, \"gid\", 2000, \"dmode\", 0755, \"fmode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata(\"/system/bin/app_process\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:zygote_exec:s0\");\n\
set_metadata(\"/system/bin/clatd\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:clatd_exec:s0\");\n\
set_metadata(\"/system/bin/debuggerd\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:debuggerd_exec:s0\");\n\
set_metadata(\"/system/bin/dhcpcd\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:dhcp_exec:s0\");\n\
set_metadata(\"/system/bin/dnsmasq\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:dnsmasq_exec:s0\");\n\
set_metadata(\"/system/bin/drmserver\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:drmserver_exec:s0\");\n\
set_metadata(\"/system/bin/efsks\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:kickstart_exec:s0\");\n\
set_metadata(\"/system/bin/hostapd\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:hostapd_exec:s0\");\n\
set_metadata(\"/system/bin/installd\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:installd_exec:s0\");\n\
set_metadata(\"/system/bin/keystore\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:keystore_exec:s0\");\n\
set_metadata(\"/system/bin/ks\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:kickstart_exec:s0\");\n\
set_metadata(\"/system/bin/mediaserver\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:mediaserver_exec:s0\");\n\
set_metadata(\"/system/bin/mksh\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:shell_exec:s0\");\n\
set_metadata(\"/system/bin/mtpd\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:mtp_exec:s0\");\n\
set_metadata(\"/system/bin/netcfg\", \"uid\", 0, \"gid\", 3003, \"mode\", 02750, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata(\"/system/bin/netd\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:netd_exec:s0\");\n\
set_metadata(\"/system/bin/ping\", \"uid\", 0, \"gid\", 0, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:ping_exec:s0\");\n\
set_metadata(\"/system/bin/pppd\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:ppp_exec:s0\");\n\
set_metadata(\"/system/bin/qcks\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:kickstart_exec:s0\");\n\
set_metadata(\"/system/bin/racoon\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:racoon_exec:s0\");\n\
set_metadata(\"/system/bin/rild\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:rild_exec:s0\");\n\
set_metadata(\"/system/bin/run-as\", \"uid\", 0, \"gid\", 2000, \"mode\", 0750, \"capabilities\", 0xc0, \"selabel\", \"u:object_r:runas_exec:s0\");\n\
set_metadata(\"/system/bin/sdcard\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:sdcardd_exec:s0\");\n\
set_metadata(\"/system/bin/servicemanager\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:servicemanager_exec:s0\");\n\
set_metadata(\"/system/bin/surfaceflinger\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:surfaceflinger_exec:s0\");\n\
set_metadata(\"/system/bin/vold\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:vold_exec:s0\");\n\
set_metadata(\"/system/bin/wpa_supplicant\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:wpa_exec:s0\");\n\
set_metadata_recursive(\"/system/etc/dhcpcd\", \"uid\", 0, \"gid\", 0, \"dmode\", 0755, \"fmode\", 0644, \"capabilities\", 0x0, \"selabel\", \"u:object_r:dhcp_system_file:s0\");\n\
set_metadata(\"/system/etc/dhcpcd/dhcpcd-run-hooks\", \"uid\", 1014, \"gid\", 2000, \"mode\", 0550, \"capabilities\", 0x0, \"selabel\", \"u:object_r:dhcp_system_file:s0\");\n\
set_metadata_recursive(\"/system/etc/init.d\", \"uid\", 0, \"gid\", 2000, \"dmode\", 0755, \"fmode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata(\"/system/etc/init.d\", \"uid\", 0, \"gid\", 0, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata(\"/system/etc/install-cm-recovery.sh\", \"uid\", 0, \"gid\", 0, \"mode\", 0544, \"capabilities\", 0x0);\n\
set_metadata_recursive(\"/system/etc/ppp\", \"uid\", 0, \"gid\", 0, \"dmode\", 0755, \"fmode\", 0555, \"capabilities\", 0x0, \"selabel\", \"u:object_r:ppp_system_file:s0\");\n\
set_metadata(\"/system/recovery-from-boot.p\", \"uid\", 0, \"gid\", 0, \"mode\", 0644, \"capabilities\", 0x0);\n\
set_metadata(\"/system/vendor\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata_recursive(\"/system/vendor/etc\", \"uid\", 0, \"gid\", 2000, \"dmode\", 0755, \"fmode\", 0644, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata(\"/system/vendor/etc/audio_effects.conf\", \"uid\", 0, \"gid\", 0, \"mode\", 0644, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata(\"/system/vendor/firmware\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata(\"/system/vendor/lib\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata(\"/system/vendor/lib/egl\", \"uid\", 0, \"gid\", 2000, \"mode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata_recursive(\"/system/xbin\", \"uid\", 0, \"gid\", 2000, \"dmode\", 0755, \"fmode\", 0755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata(\"/system/xbin/librank\", \"uid\", 0, \"gid\", 0, \"mode\", 06755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata(\"/system/xbin/procmem\", \"uid\", 0, \"gid\", 0, \"mode\", 06755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata(\"/system/xbin/procrank\", \"uid\", 0, \"gid\", 0, \"mode\", 06755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata(\"/system/xbin/su\", \"uid\", 0, \"gid\", 0, \"mode\", 06755, \"capabilities\", 0x0, \"selabel\", \"u:object_r:su_exec:s0\");\n\
set_metadata(\"/system/xbin/shelld\", \"uid\", 0, \"gid\", 1000, \"mode\", 06754, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");\n\
set_metadata(\"/system/xbin/lbesec\", \"uid\", 0, \"gid\", 1000, \"mode\", 06754, \"capabilities\", 0x0, \"selabel\", \"u:object_r:system_file:s0\");')

def AddAssertions(info):
    info.script.AppendExtra('package_extract_file("system/bin/backuptool.sh", "/tmp/backuptool.sh");');
    info.script.AppendExtra('package_extract_file("system/bin/backuptool.functions", "/tmp/backuptool.functions");');
    info.script.AppendExtra('set_perm(0, 0, 0777, "/tmp/backuptool.sh");');
    info.script.AppendExtra('set_perm(0, 0, 0644, "/tmp/backuptool.functions");');
    info.script.AppendExtra('run_program("/tmp/backuptool.sh", "restore");');
    return

def AssertBootloader(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if "show_progress(0.100000, 0);" in edify.script[i]:
            edify.script[i] = edify.script[i].replace("show_progress(0.100000, 0);", 
		'show_progress(0.100000, 0);\n\
ifelse(is_substring(\"I535\", getprop(\"ro.bootloader\")), run_program(\"/sbin/sh\", \"-c\", \"busybox cp -R /system/blobs/vzw/* /system/\"));\n\
ifelse(is_substring(\"R530\", getprop(\"ro.bootloader\")), run_program(\"/sbin/sh\", \"-c\", \"busybox cp -R /system/blobs/r530/* /system/\"));\n\
ifelse(is_substring(\"L710\", getprop(\"ro.bootloader\")), run_program(\"/sbin/sh\", \"-c\", \"busybox cp -R /system/blobs/spr/* /system/\"));\n\
ifelse(is_substring(\"S960L\", getprop(\"ro.bootloader\")), run_program(\"/sbin/sh\", \"-c\", \"busybox cp -R /system/blobs/spr/* /system/\"));\n\
ifelse(is_substring(\"S968C\", getprop(\"ro.bootloader\")), run_program(\"/sbin/sh\", \"-c\", \"busybox cp -R /system/blobs/vzw/* /system/\"));\n\
ifelse(is_substring(\"I747\", getprop(\"ro.bootloader\")), run_program(\"/sbin/sh\", \"-c\", \"busybox cp -R /system/blobs/gsm/* /system/\"));\n\
ifelse(is_substring(\"T999\", getprop(\"ro.bootloader\")), run_program(\"/sbin/sh\", \"-c\", \"busybox cp -R /system/blobs/gsm/* /system/\"));\n\
ifelse(is_substring(\"T699\", getprop(\"ro.bootloader\")), run_program(\"/sbin/sh\", \"-c\", \"busybox cp -R /system/blobs/gsm/* /system/\"));\n\
ifelse(is_substring(\"T699\", getprop(\"ro.bootloader\")), run_program(\"/system/bin/wifimac.sh\"));\n\
ifelse(is_substring(\"I437\", getprop(\"ro.bootloader\")), run_program(\"/system/bin/wifimac.sh\"));\n\
ifelse(is_substring(\"SC06D\", getprop(\"ro.bootloader\")), run_program(\"/sbin/sh\", \"-c\", \"busybox cp -R /system/blobs/gsm/* /system/\"));')

def FullOTA_InstallEnd(info):
    AddSetMetaData(info)
    ReplaceLine(info)
    AddBackupTool(info)
    AddAssertions(info)
    AssertBootloader(info)
    WritePolicyConfig(info)

def IncrementalOTA_InstallEnd(info):
    AddSetMetaData(info)
    ReplaceLine(info)
    AddBackupTool(info)
    AddAssertions(info)
    AssertBootloader(info)
    WritePolicyConfig(info)
