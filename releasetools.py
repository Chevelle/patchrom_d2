import common
import edify_generator

def ReplaceLine(info):
    edify = info.script
    for i in xrange(len(edify.script)):
	if "assert(getprop(\"ro.product.device\") == \"d2vzw\" ||" in edify.script[i]:
           edify.script[i] = edify.script[i].replace("assert(getprop(\"ro.product.device\") == \"d2vzw\" ||", 'assert(getprop("ro.product.device") == "d2vzw" || getprop("ro.build.product") == "d2vzw" || getprop("ro.product.device") == "d2lte" || getprop("ro.build.product") == "d2lte");')

	if "       getprop(\"ro.build.product\") == \"d2vzw\");" in edify.script[i]:
	   edify.script[i] = edify.script[i].replace("       getprop(\"ro.build.product\") == \"d2vzw\");", '')

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

def AddAssertions(info):
    info.script.AppendExtra('package_extract_file("system/bin/backuptool.sh", "/tmp/backuptool.sh");');
    info.script.AppendExtra('package_extract_file("system/bin/backuptool.functions", "/tmp/backuptool.functions");');
    info.script.AppendExtra('set_perm(0, 0, 0777, "/tmp/backuptool.sh");');
    info.script.AppendExtra('set_perm(0, 0, 0644, "/tmp/backuptool.functions");');
    info.script.AppendExtra('run_program("/tmp/backuptool.sh", "restore");');
    return

def FullOTA_InstallEnd(info):
    ReplaceLine(info)
    AddBackupTool(info)
    AddAssertions(info)

def IncrementalOTA_InstallEnd(info):
    ReplaceLine(info)
    AddBackupTool(info)
    AddAssertions(info)
