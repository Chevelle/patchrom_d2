.class public Landroid/app/MiuiThemeHelper;
.super Ljava/lang/Object;
.source "MiuiThemeHelper.java"


# static fields
.field private static final ICON_THEME:Ljava/lang/String; = "/data/system/theme/icons"

.field public static final MIUI_RES_PATH:Ljava/lang/String; = "/system/framework/framework-miui-res.apk"

.field private static final MIUI_SCREENSHOT_MODE_RES_PATH:Ljava/lang/String; = "/data/system/themeScreenshotMode"

.field public static final sExcluedList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    .line 39
    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    const-string v1, "com.android.chrome"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    const-string v1, "com.google.android.apps.maps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    const-string v1, "com.google.android.apps.plus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    const-string v1, "com.google.android.gm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    const-string v1, "com.google.android.music"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    const-string v1, "com.google.android.talk"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    const-string v1, "com.google.android.youtube"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static addExtraAssetPaths(Landroid/content/res/AssetManager;)V
    .locals 1
    .parameter "am"

    .prologue
    .line 94
    const-string v0, "/system/framework/framework-miui-res.apk"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method public static copyExtraConfigurations(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "srcConfig"
    .parameter "desConfig"

    .prologue
    .line 98
    iget-object v0, p1, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget v1, v1, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    iput v1, v0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    .line 99
    return-void
.end method

.method public static getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "pm"
    .parameter "packageName"
    .parameter "activityName"
    .parameter "resid"
    .parameter "appInfo"

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 85
    .end local p0
    :cond_0
    :goto_0
    return-object v3

    .line 54
    .restart local p0
    :cond_1
    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/theme/icons"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 56
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p3, p4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 59
    :cond_2
    const/4 v1, 0x0

    .line 61
    .local v1, apm:Landroid/app/ApplicationPackageManager;
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/app/ApplicationPackageManager;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    instance-of v4, p0, Landroid/app/ApplicationPackageManager;

    if-eqz v4, :cond_0

    .line 75
    if-nez p4, :cond_3

    .line 77
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p4

    .line 81
    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    if-eqz p4, :cond_4

    iget v3, p4, Landroid/content/pm/ApplicationInfo;->icon:I

    if-ne p3, v3, :cond_4

    .line 82
    const/4 p3, 0x0

    .line 85
    :cond_4
    check-cast p0, Landroid/app/ApplicationPackageManager;

    .end local p0
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getContext()Landroid/app/ContextImpl;

    move-result-object v3

    invoke-static {v3, p1, p2, p4, p3}, Lmiui/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    goto :goto_0

    .line 62
    .restart local p0
    :catch_0
    move-exception v2

    .line 63
    .local v2, e:Ljava/lang/ClassCastException;
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p3, p4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 78
    .end local v2           #e:Ljava/lang/ClassCastException;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static handleExtraConfigurationChanges(I)V
    .locals 1
    .parameter "changes"

    .prologue
    .line 102
    const/high16 v0, -0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 104
    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    .line 106
    :cond_0
    return-void
.end method

.method public static handleExtraConfigurationChanges(ILandroid/content/res/Configuration;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .parameter "changes"
    .parameter "config"
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 110
    const/high16 v2, -0x8000

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    .line 111
    iget-object v2, p1, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget-wide v0, v2, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 112
    .local v0, flag:J
    invoke-static {v0, v1}, Lmiui/content/res/ExtraConfiguration;->addNeedRestartActivity(J)V

    .line 113
    invoke-static {p0}, Landroid/app/MiuiThemeHelper;->handleExtraConfigurationChanges(I)V

    .line 115
    .end local v0           #flag:J
    :cond_0
    return-void
.end method

.method public static isCompatibilityMode(I)Z
    .locals 1
    .parameter "appFlags"

    .prologue
    .line 206
    const/high16 v0, 0x800

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isScreenshotMode()Z
    .locals 2

    .prologue
    .line 211
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/themeScreenshotMode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static needRestartActivity(Ljava/lang/String;ILandroid/content/res/Configuration;)Z
    .locals 2
    .parameter "packageName"
    .parameter "changes"
    .parameter "config"

    .prologue
    .line 118
    const/high16 v0, -0x8000

    if-ne p1, v0, :cond_0

    .line 119
    invoke-static {p0}, Lmiui/content/res/ExtraConfiguration;->removeNeedRestartActivity(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget-wide v0, v0, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    invoke-static {p0, v0, v1}, Lmiui/content/res/ExtraConfiguration;->needRestartActivity(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDimension(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 15
    .parameter "value"

    .prologue
    .line 128
    const/4 v8, -0x4

    .line 129
    .local v8, intPos:I
    const/4 v2, -0x3

    .line 130
    .local v2, dotPos:I
    const/4 v6, -0x2

    .line 131
    .local v6, fractionPos:I
    const/4 v11, -0x1

    .line 132
    .local v11, unitPos:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v7, v13, :cond_3

    .line 133
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 134
    .local v0, c:C
    const/4 v13, -0x4

    if-ne v8, v13, :cond_0

    const/16 v13, 0x30

    if-lt v0, v13, :cond_0

    const/16 v13, 0x39

    if-gt v0, v13, :cond_0

    .line 135
    move v8, v7

    .line 137
    :cond_0
    const/4 v13, -0x3

    if-ne v2, v13, :cond_1

    const/16 v13, 0x2e

    if-ne v0, v13, :cond_1

    .line 138
    move v2, v7

    .line 140
    :cond_1
    const/4 v13, -0x3

    if-eq v2, v13, :cond_2

    const/16 v13, 0x30

    if-lt v0, v13, :cond_2

    const/16 v13, 0x39

    if-gt v0, v13, :cond_2

    .line 141
    move v6, v7

    .line 143
    :cond_2
    const/4 v13, -0x1

    if-ne v11, v13, :cond_6

    const/16 v13, 0x61

    if-lt v0, v13, :cond_6

    const/16 v13, 0x7a

    if-gt v0, v13, :cond_6

    .line 144
    move v11, v7

    .line 148
    .end local v0           #c:C
    :cond_3
    const/4 v4, 0x0

    .line 149
    .local v4, f:F
    const/4 v5, 0x0

    .line 150
    .local v5, fraction:I
    const/4 v12, 0x0

    .line 151
    .local v12, unitType:I
    const/4 v9, 0x0

    .line 153
    .local v9, mantissaShift:I
    const/4 v13, -0x1

    if-eq v11, v13, :cond_11

    if-ge v2, v6, :cond_11

    if-ge v6, v11, :cond_11

    .line 155
    const/4 v13, 0x0

    :try_start_0
    invoke-virtual {p0, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 159
    const/4 v13, -0x3

    if-eq v2, v13, :cond_4

    const/4 v13, -0x2

    if-eq v6, v13, :cond_4

    .line 161
    :try_start_1
    invoke-virtual {p0, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 166
    :cond_4
    const/16 v13, 0x100

    if-ge v5, v13, :cond_7

    .line 167
    const/high16 v13, 0x4380

    mul-float/2addr v4, v13

    .line 178
    :cond_5
    :goto_1
    invoke-virtual {p0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 179
    .local v10, unit:Ljava/lang/String;
    const-string v13, "px"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 180
    const/4 v12, 0x0

    .line 195
    :goto_2
    float-to-int v13, v4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 196
    .local v1, complex:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    and-int/lit16 v13, v13, -0x100

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 197
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    shl-int/lit8 v14, v9, 0x4

    or-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    or-int/2addr v13, v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 202
    .end local v1           #complex:Ljava/lang/Integer;
    .end local v10           #unit:Ljava/lang/String;
    :goto_3
    return-object v1

    .line 132
    .end local v4           #f:F
    .end local v5           #fraction:I
    .end local v9           #mantissaShift:I
    .end local v12           #unitType:I
    .restart local v0       #c:C
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 156
    .end local v0           #c:C
    .restart local v4       #f:F
    .restart local v5       #fraction:I
    .restart local v9       #mantissaShift:I
    .restart local v12       #unitType:I
    :catch_0
    move-exception v3

    .line 157
    .local v3, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_3

    .line 162
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 163
    .restart local v3       #e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_3

    .line 168
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :cond_7
    const v13, 0x8000

    if-ge v5, v13, :cond_8

    .line 169
    const/high16 v13, 0x4700

    mul-float/2addr v4, v13

    .line 170
    const/4 v9, 0x1

    goto :goto_1

    .line 171
    :cond_8
    const/high16 v13, 0x4000

    if-ge v5, v13, :cond_9

    .line 172
    const/high16 v13, 0x4e80

    mul-float/2addr v4, v13

    .line 173
    const/4 v9, 0x2

    goto :goto_1

    .line 174
    :cond_9
    const/high16 v13, 0x20

    if-ge v5, v13, :cond_5

    .line 175
    const/high16 v13, 0x4a00

    mul-float/2addr v4, v13

    .line 176
    const/4 v9, 0x3

    goto :goto_1

    .line 181
    .restart local v10       #unit:Ljava/lang/String;
    :cond_a
    const-string v13, "dp"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string v13, "dip"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 182
    :cond_b
    const/4 v12, 0x1

    goto :goto_2

    .line 183
    :cond_c
    const-string v13, "sp"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 184
    const/4 v12, 0x2

    goto :goto_2

    .line 185
    :cond_d
    const-string v13, "pt"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 186
    const/4 v12, 0x3

    goto :goto_2

    .line 187
    :cond_e
    const-string v13, "in"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 188
    const/4 v12, 0x4

    goto :goto_2

    .line 189
    :cond_f
    const-string v13, "mm"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 190
    const/4 v12, 0x5

    goto/16 :goto_2

    .line 192
    :cond_10
    const/4 v1, 0x0

    goto :goto_3

    .line 200
    .end local v10           #unit:Ljava/lang/String;
    :cond_11
    const/4 v1, 0x0

    goto :goto_3
.end method
