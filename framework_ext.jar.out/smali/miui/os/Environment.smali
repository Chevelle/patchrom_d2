.class public Lmiui/os/Environment;
.super Landroid/os/Environment;
.source "Environment.java"


# static fields
.field private static final EMULATED_EXTERNAL_STORAGE_PATH:Ljava/lang/String;

.field private static final EMULATED_EXTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

.field private static final EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

.field private static final EXTERNAL_STORAGE_PATH:Ljava/lang/String;

.field private static final EXTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

.field private static final INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

.field private static final INTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

.field private static final INTERNAL_STORAGE_PATH:Ljava/lang/String;

.field private static final INTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

.field private static final LEGACY_EXTERNAL_STORAGE_PATH:Ljava/lang/String;

.field private static final LEGACY_EXTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

.field private static final SUPPORT_MULTI_USERS_EXTERNAL_STORAGE:Z

.field private static sCurrentUser:Landroid/os/Environment$UserEnvironment;

.field private static sDevice2Memory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sTotalMemory:J

.field private static sTotalPhysicalMemory:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const-wide/32 v5, 0x200000

    const-wide/32 v3, 0x100000

    .line 22
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/sdcard"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/os/Environment;->INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    .line 24
    new-instance v0, Landroid/os/Environment$UserEnvironment;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    sput-object v0, Lmiui/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    .line 26
    invoke-static {}, Lmiui/os/Environment;->getInternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/os/Environment;->INTERNAL_STORAGE_PATH:Ljava/lang/String;

    .line 27
    sget-object v0, Lmiui/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/os/Environment;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    .line 29
    invoke-static {}, Lmiui/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/os/Environment;->LEGACY_EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    .line 31
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lmiui/os/Environment;->getEmulatedStorageSource(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/os/Environment;->EMULATED_EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    .line 33
    sget-object v0, Lmiui/os/Environment;->INTERNAL_STORAGE_PATH:Ljava/lang/String;

    invoke-static {v0}, Lmiui/os/Environment;->getPathWithSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/os/Environment;->INTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

    .line 34
    sget-object v0, Lmiui/os/Environment;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    invoke-static {v0}, Lmiui/os/Environment;->getPathWithSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/os/Environment;->EXTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

    .line 35
    sget-object v0, Lmiui/os/Environment;->LEGACY_EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    invoke-static {v0}, Lmiui/os/Environment;->getPathWithSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/os/Environment;->LEGACY_EXTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

    .line 36
    sget-object v0, Lmiui/os/Environment;->EMULATED_EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    invoke-static {v0}, Lmiui/os/Environment;->getPathWithSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/os/Environment;->EMULATED_EXTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

    .line 38
    sget-object v0, Lmiui/os/Environment;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    sget-object v1, Lmiui/os/Environment;->LEGACY_EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lmiui/os/Environment;->SUPPORT_MULTI_USERS_EXTERNAL_STORAGE:Z

    .line 40
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmiui/os/Environment;->INTERNAL_STORAGE_PATH:Ljava/lang/String;

    const-string v2, "MIUI"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmiui/os/Environment;->INTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    .line 42
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmiui/os/Environment;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    const-string v2, "MIUI"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmiui/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    .line 252
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "hwu9200"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "hwu9500"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "maguro"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "ville"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "LT26i"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "ventana"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "stuttgart"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "t03g"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "HM2013022"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "HM2013023"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "pisces"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Environment;-><init>()V

    return-void
.end method

.method public static getExternalStorageDirectoryWithoutCheck()Ljava/io/File;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lmiui/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getFreeMemory()J
    .locals 11

    .prologue
    .line 295
    const/4 v9, 0x3

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "MemFree:"

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-string v10, "Buffers:"

    aput-object v10, v7, v9

    const/4 v9, 0x2

    const-string v10, "Cached:"

    aput-object v10, v7, v9

    .line 296
    .local v7, memInfoFields:[Ljava/lang/String;
    array-length v9, v7

    new-array v8, v9, [J

    .line 297
    .local v8, memInfoSizes:[J
    const-string v9, "/proc/meminfo"

    invoke-static {v9, v7, v8}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 299
    const-wide/16 v1, 0x0

    .line 300
    .local v1, free:J
    move-object v0, v8

    .local v0, arr$:[J
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-wide v5, v0, v3

    .line 301
    .local v5, mem:J
    add-long/2addr v1, v5

    .line 300
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 304
    .end local v5           #mem:J
    :cond_0
    const-wide/16 v9, 0x400

    mul-long/2addr v9, v1

    return-wide v9
.end method

.method public static getInternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lmiui/os/Environment;->INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getMIUICustomizedDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 117
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/os/Environment;->getMIUIDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "customized"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getMIUICustomizedDirectoryPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Lmiui/os/Environment;->getMIUICustomizedDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMIUIDataDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/miui"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getMIUIDataDirectoryPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lmiui/os/Environment;->getMIUIDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMIUIExternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lmiui/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getMIUIInternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lmiui/os/Environment;->INTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getMIUIPreinstallAppDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 97
    sget-boolean v0, Lmiui/os/Build;->IS_XIAOMI:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI:Z

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/os/Environment;->getMIUIDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "preinstall_apps"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/preinstall_apps"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMIUIPreinstallAppDirectoryPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lmiui/os/Environment;->getMIUIPreinstallAppDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMIUIPresetAppDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 109
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/os/Environment;->getMIUIDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "preset_apps"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getMIUIPresetAppDirectoryPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lmiui/os/Environment;->getMIUIPresetAppDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMIUIStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmiui/os/Environment;->INTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    goto :goto_0
.end method

.method public static getOomMinFree()J
    .locals 5

    .prologue
    .line 312
    :try_start_0
    const-string v3, "/sys/module/lowmemorykiller/parameters/minfree"

    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, line:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 314
    .local v2, value:I
    mul-int/lit8 v3, v2, 0x4

    int-to-long v3, v3

    .line 318
    .end local v2           #value:I
    :goto_0
    return-wide v3

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 318
    const-wide/16 v3, 0x0

    goto :goto_0
.end method

.method private static getPathWithSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 46
    move-object v0, p0

    .line 47
    .local v0, ret:Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_0
    return-object v0
.end method

.method public static getStorageDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    sget-object v1, Lmiui/os/Environment;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lmiui/os/Environment;->getInternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 64
    move-object v0, p0

    .line 65
    .local v0, ret:Ljava/lang/String;
    sget-boolean v1, Lmiui/os/Environment;->SUPPORT_MULTI_USERS_EXTERNAL_STORAGE:Z

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    sget-object v1, Lmiui/os/Environment;->EXTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmiui/os/Environment;->EMULATED_EXTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lmiui/os/Environment;->EXTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_0
    return-object v0
.end method

.method public static getTotalMemory()J
    .locals 6

    .prologue
    .line 266
    sget-wide v2, Lmiui/os/Environment;->sTotalMemory:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 269
    const/4 v2, 0x1

    :try_start_0
    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "MemTotal:"

    aput-object v3, v0, v2

    .line 270
    .local v0, memInfoFields:[Ljava/lang/String;
    array-length v2, v0

    new-array v1, v2, [J

    .line 271
    .local v1, memInfoSizes:[J
    const-string v2, "/proc/meminfo"

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 272
    const/4 v2, 0x0

    aget-wide v2, v1, v2

    sput-wide v2, Lmiui/os/Environment;->sTotalMemory:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v1           #memInfoSizes:[J
    :cond_0
    :goto_0
    sget-wide v2, Lmiui/os/Environment;->sTotalMemory:J

    return-wide v2

    .line 273
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getTotalPhysicalMemory()J
    .locals 4

    .prologue
    .line 280
    sget-wide v0, Lmiui/os/Environment;->sTotalPhysicalMemory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 281
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lmiui/os/Environment;->sTotalPhysicalMemory:J

    .line 288
    :cond_0
    :goto_0
    sget-wide v0, Lmiui/os/Environment;->sTotalPhysicalMemory:J

    return-wide v0

    .line 285
    :cond_1
    invoke-static {}, Lmiui/os/Environment;->getTotalMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x19000

    add-long/2addr v0, v2

    const-wide/32 v2, 0x40000

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x100

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    sput-wide v0, Lmiui/os/Environment;->sTotalPhysicalMemory:J

    goto :goto_0
.end method

.method public static getUserVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 75
    move-object v0, p0

    .line 76
    .local v0, ret:Ljava/lang/String;
    sget-boolean v1, Lmiui/os/Environment;->SUPPORT_MULTI_USERS_EXTERNAL_STORAGE:Z

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    .line 77
    sget-object v1, Lmiui/os/Environment;->LEGACY_EXTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmiui/os/Environment;->EXTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lmiui/os/Environment;->LEGACY_EXTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_0
    :goto_0
    return-object v0

    .line 80
    :cond_1
    sget-object v1, Lmiui/os/Environment;->EMULATED_EXTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmiui/os/Environment;->EXTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lmiui/os/Environment;->EMULATED_EXTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isAvaliableStoragePath(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "path"

    .prologue
    .line 185
    invoke-static {p1}, Lmiui/os/Environment;->isExternalPath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 186
    const-string v6, "storage"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 187
    .local v3, mStorageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 189
    .local v4, storageVolumes:[Landroid/os/storage/StorageVolume;
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, canonicalPath:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_1

    .line 191
    aget-object v6, v4, v2

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 192
    .local v5, volumePath:Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 193
    const-string v6, "mounted"

    invoke-virtual {v3, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 201
    .end local v0           #canonicalPath:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #mStorageManager:Landroid/os/storage/StorageManager;
    .end local v4           #storageVolumes:[Landroid/os/storage/StorageVolume;
    .end local v5           #volumePath:Ljava/lang/String;
    :goto_1
    return v6

    .line 190
    .restart local v0       #canonicalPath:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #mStorageManager:Landroid/os/storage/StorageManager;
    .restart local v4       #storageVolumes:[Landroid/os/storage/StorageVolume;
    .restart local v5       #volumePath:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    .end local v0           #canonicalPath:Ljava/lang/String;
    .end local v2           #i:I
    .end local v5           #volumePath:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 197
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 201
    .end local v3           #mStorageManager:Landroid/os/storage/StorageManager;
    .end local v4           #storageVolumes:[Landroid/os/storage/StorageVolume;
    :cond_2
    invoke-static {p1}, Lmiui/os/Environment;->isInternalStoragePath(Ljava/lang/String;)Z

    move-result v6

    goto :goto_1
.end method

.method public static isExternalPath(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 167
    if-nez p0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v2

    .line 168
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v1, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 174
    :goto_1
    if-eqz p0, :cond_0

    const-string v3, "/sdcard"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "/storage"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lmiui/os/Environment;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static isExternalStorageMounted()Z
    .locals 2

    .prologue
    .line 216
    const-string v0, "mounted"

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isExternalStoragePath(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 153
    if-nez p0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v2

    .line 154
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .local v1, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 160
    :goto_1
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 161
    if-eqz p0, :cond_0

    const-string v3, "/sdcard/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lmiui/os/Environment;->EXTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static isExternalStorageStateChanged(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 220
    const-string v1, "storage_volume"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 221
    .local v0, storage:Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/os/Environment;->isExternalStoragePath(Ljava/lang/String;)Z

    move-result v1

    .line 224
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isInternalStorageLow(Landroid/content/ContentResolver;)Z
    .locals 6
    .parameter "resolver"

    .prologue
    const/4 v1, 0x1

    .line 207
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    sget-object v2, Lmiui/os/Environment;->INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, stats:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    invoke-static {p0}, Lmiui/provider/ExtraSettings$Secure;->getStorageThreshold(Landroid/content/ContentResolver;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 212
    .end local v0           #stats:Landroid/os/StatFs;
    :goto_0
    return v1

    .line 208
    .restart local v0       #stats:Landroid/os/StatFs;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 210
    .end local v0           #stats:Landroid/os/StatFs;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isInternalStoragePath(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 146
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 148
    :goto_0
    return v0

    .line 147
    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 148
    sget-object v0, Lmiui/os/Environment;->INTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isStoragePath(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 179
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lmiui/os/Environment;->isExternalStoragePath(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lmiui/os/Environment;->isInternalStoragePath(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isStorageUsb(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v4

    .line 231
    :cond_1
    const-string v5, "storage"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 232
    .local v1, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 233
    .local v3, storageVolumes:[Landroid/os/storage/StorageVolume;
    if-eqz v3, :cond_0

    .line 234
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 235
    aget-object v5, v3, v0

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 236
    const v5, 0x60c0031

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, storageUsb:Ljava/lang/String;
    aget-object v5, v3, v0

    invoke-virtual {v5, p0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 238
    const/4 v4, 0x1

    goto :goto_0

    .line 234
    .end local v2           #storageUsb:Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
