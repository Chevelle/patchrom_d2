.class public Lmiui/util/FileIconHelper;
.super Ljava/lang/Object;
.source "FileIconHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FileIconHelper"

.field private static final TYPE_APK:Ljava/lang/String; = "apk"

.field private static sFileExtToIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/FileIconHelper;->sFileExtToIcons:Ljava/util/HashMap;

    .line 19
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "mp3"

    aput-object v1, v0, v3

    const v1, 0x602004d

    invoke-static {v0, v1}, Lmiui/util/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 22
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "wma"

    aput-object v1, v0, v3

    const v1, 0x6020057

    invoke-static {v0, v1}, Lmiui/util/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 25
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "wav"

    aput-object v1, v0, v3

    const v1, 0x6020056

    invoke-static {v0, v1}, Lmiui/util/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 28
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "mid"

    aput-object v1, v0, v3

    const v1, 0x602004c

    invoke-static {v0, v1}, Lmiui/util/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 31
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "mp4"

    aput-object v1, v0, v3

    const-string v1, "wmv"

    aput-object v1, v0, v4

    const-string v1, "mpeg"

    aput-object v1, v0, v5

    const-string v1, "m4v"

    aput-object v1, v0, v6

    const-string v1, "3gp"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "3gpp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "3g2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "3gpp2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "asf"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "flv"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mkv"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "vob"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ts"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "f4v"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "rm"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "mov"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "rmvb"

    aput-object v2, v0, v1

    const v1, 0x6020055

    invoke-static {v0, v1}, Lmiui/util/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 35
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "jpg"

    aput-object v1, v0, v3

    const-string v1, "jpeg"

    aput-object v1, v0, v4

    const-string v1, "gif"

    aput-object v1, v0, v5

    const-string v1, "png"

    aput-object v1, v0, v6

    const-string v1, "bmp"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "wbmp"

    aput-object v2, v0, v1

    const v1, 0x602004f

    invoke-static {v0, v1}, Lmiui/util/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "txt"

    aput-object v1, v0, v3

    const-string v1, "log"

    aput-object v1, v0, v4

    const-string v1, "xml"

    aput-object v1, v0, v5

    const-string v1, "ini"

    aput-object v1, v0, v6

    const-string v1, "lrc"

    aput-object v1, v0, v7

    const v1, 0x6020054

    invoke-static {v0, v1}, Lmiui/util/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 41
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "doc"

    aput-object v1, v0, v3

    const-string v1, "docx"

    aput-object v1, v0, v4

    const v1, 0x602004a

    invoke-static {v0, v1}, Lmiui/util/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 44
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "ppt"

    aput-object v1, v0, v3

    const-string v1, "pptx"

    aput-object v1, v0, v4

    const v1, 0x6020051

    invoke-static {v0, v1}, Lmiui/util/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 47
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "xls"

    aput-object v1, v0, v3

    const-string v1, "xlsx"

    aput-object v1, v0, v4

    const v1, 0x6020059

    invoke-static {v0, v1}, Lmiui/util/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 50
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "wps"

    aput-object v1, v0, v3

    const v1, 0x6020058

    invoke-static {v0, v1}, Lmiui/util/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 53
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "pps"

    aput-object v1, v0, v3

    const v1, 0x6020050

    invoke-static {v0, v1}, Lmiui/util/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 56
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "et"

    aput-object v1, v0, v3

    const v1, 0x602004b

    invoke-static {v0, v1}, Lmiui/util/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 59
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "wpt"

    aput-object v1, v0, v3

    const v1, 0x6020349

    invoke-static {v0, v1}, Lmiui/util/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 62
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ett"

    aput-object v1, v0, v3

    const v1, 0x6020348

    invoke-static {v0, v1}, Lmiui/util/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 65
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "dps"

    aput-object v1, v0, v3

    const v1, 0x6020344

    invoke-static {v0, v1}, Lmiui/util/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 68
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "dpt"

    aput-object v1, v0, v3

    const v1, 0x602034a

    invoke-static {v0, v1}, Lmiui/util/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 71
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "pdf"

    aput-object v1, v0, v3

    const v1, 0x602004e

    invoke-static {v0, v1}, Lmiui/util/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 74
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "zip"

    aput-object v1, v0, v3

    const v1, 0x602005a

    invoke-static {v0, v1}, Lmiui/util/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 77
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "mtz"

    aput-object v1, v0, v3

    const v1, 0x6020053

    invoke-static {v0, v1}, Lmiui/util/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 80
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "rar"

    aput-object v1, v0, v3

    const v1, 0x6020052

    invoke-static {v0, v1}, Lmiui/util/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 83
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "apk"

    aput-object v1, v0, v3

    const v1, 0x6020048

    invoke-static {v0, v1}, Lmiui/util/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 86
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "amr"

    aput-object v1, v0, v3

    const v1, 0x6020047

    invoke-static {v0, v1}, Lmiui/util/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 89
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "vcf"

    aput-object v1, v0, v3

    const v1, 0x6020345

    invoke-static {v0, v1}, Lmiui/util/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addItem([Ljava/lang/String;I)V
    .locals 7
    .parameter "exts"
    .parameter "resId"

    .prologue
    .line 95
    if-eqz p0, :cond_0

    .line 96
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 97
    .local v1, ext:Ljava/lang/String;
    sget-object v4, Lmiui/util/FileIconHelper;->sFileExtToIcons:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #ext:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    return-void
.end method

.method private static getApkIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"
    .parameter "path"

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 112
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 113
    .local v2, info:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 114
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 115
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 117
    :try_start_0
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 118
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 125
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v4

    .line 119
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 120
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v4, "FileIconHelper"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x6020049

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0
.end method

.method private static getExtFromFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filename"

    .prologue
    .line 103
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 104
    .local v0, dotPosition:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 105
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 107
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getFileIcon(Ljava/lang/String;)I
    .locals 4
    .parameter "ext"

    .prologue
    .line 129
    sget-object v2, Lmiui/util/FileIconHelper;->sFileExtToIcons:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 130
    .local v0, i:Ljava/lang/Integer;
    const v1, 0x6020049

    .line 131
    .local v1, resId:I
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 134
    :cond_0
    return v1
.end method

.method public static getFileIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "context"
    .parameter "fileFullPath"

    .prologue
    .line 138
    invoke-static {p1}, Lmiui/util/FileIconHelper;->getExtFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, ext:Ljava/lang/String;
    const/4 v1, 0x0

    .line 140
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    const-string v2, "apk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-static {p0, p1}, Lmiui/util/FileIconHelper;->getApkIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 146
    :goto_0
    return-object v1

    .line 143
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0}, Lmiui/util/FileIconHelper;->getFileIcon(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method
