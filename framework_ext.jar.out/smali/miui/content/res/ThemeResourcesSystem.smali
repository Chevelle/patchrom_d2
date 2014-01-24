.class public final Lmiui/content/res/ThemeResourcesSystem;
.super Lmiui/content/res/ThemeResources;
.source "ThemeResourcesSystem.java"


# static fields
.field private static final ADVANCE_LOCKSCREEN_NAME:Ljava/lang/String; = "advance/"

.field private static sIcons:Lmiui/content/res/ThemeResources;

.field private static sLockscreen:Lmiui/content/res/ThemeResources;

.field private static sMiui:Lmiui/content/res/ThemeResources;

.field private static sUpdatedTimeIcon:J

.field private static sUpdatedTimeLockscreen:J


# instance fields
.field protected mThemePath:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lmiui/content/res/ThemeResourcesSystem;Landroid/content/res/MiuiResources;Lmiui/content/res/ThemeResources$MetaData;)V
    .locals 1
    .parameter "wrapped"
    .parameter "resources"
    .parameter "metaData"

    .prologue
    .line 40
    const-string v0, "framework-res"

    invoke-direct {p0, p1, p2, v0, p3}, Lmiui/content/res/ThemeResources;-><init>(Lmiui/content/res/ThemeResources;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    .line 41
    iget-object v0, p3, Lmiui/content/res/ThemeResources$MetaData;->mThemePath:Ljava/lang/String;

    iput-object v0, p0, Lmiui/content/res/ThemeResourcesSystem;->mThemePath:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private getIcon(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .locals 2
    .parameter "info"
    .parameter "name"

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "res/drawable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lmiui/content/res/IconCustomizer;->sDensity:I

    invoke-static {v1}, Lmiui/content/res/ThemeDensityFallbackUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 130
    sget v0, Lmiui/content/res/IconCustomizer;->sDensity:I

    iput v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    .line 131
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    .line 133
    :cond_0
    iput-object p2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 134
    const/16 v0, 0xf0

    iput v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    .line 135
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v0

    goto :goto_0
.end method

.method private getThemeFileStreamSystem(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .locals 2
    .parameter "info"
    .parameter "filterKey"

    .prologue
    .line 76
    iget-object v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    const-string v1, "sym_def_app_icon.png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "sym_def_app_icon.png"

    invoke-direct {p0, p1, v0}, Lmiui/content/res/ThemeResourcesSystem;->getIcon(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    .line 83
    :goto_0
    return v0

    .line 79
    :cond_0
    iget-object v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    const-string v1, "default_wallpaper.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    const/4 v0, 0x0

    goto :goto_0

    .line 83
    :cond_1
    invoke-super {p0, p1, p2}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getTopLevelThemeResources(Landroid/content/res/MiuiResources;)Lmiui/content/res/ThemeResourcesSystem;
    .locals 4
    .parameter "resources"

    .prologue
    .line 27
    const-string v3, "icons"

    invoke-static {p0, v3}, Lmiui/content/res/ThemeResources;->getTopLevelThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResources;

    move-result-object v3

    sput-object v3, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    .line 28
    const-string v3, "lockscreen"

    invoke-static {p0, v3}, Lmiui/content/res/ThemeResources;->getTopLevelThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResources;

    move-result-object v3

    sput-object v3, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    .line 29
    const-string v3, "framework-miui-res"

    invoke-static {p0, v3}, Lmiui/content/res/ThemeResources;->getTopLevelThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResources;

    move-result-object v3

    sput-object v3, Lmiui/content/res/ThemeResourcesSystem;->sMiui:Lmiui/content/res/ThemeResources;

    .line 31
    const/4 v1, 0x0

    .line 32
    .local v1, themeResources:Lmiui/content/res/ThemeResourcesSystem;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lmiui/content/res/ThemeResourcesSystem;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 33
    new-instance v2, Lmiui/content/res/ThemeResourcesSystem;

    sget-object v3, Lmiui/content/res/ThemeResourcesSystem;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    aget-object v3, v3, v0

    invoke-direct {v2, v1, p0, v3}, Lmiui/content/res/ThemeResourcesSystem;-><init>(Lmiui/content/res/ThemeResourcesSystem;Landroid/content/res/MiuiResources;Lmiui/content/res/ThemeResources$MetaData;)V

    .line 32
    .end local v1           #themeResources:Lmiui/content/res/ThemeResourcesSystem;
    .local v2, themeResources:Lmiui/content/res/ThemeResourcesSystem;
    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    .end local v2           #themeResources:Lmiui/content/res/ThemeResourcesSystem;
    .restart local v1       #themeResources:Lmiui/content/res/ThemeResourcesSystem;
    goto :goto_0

    .line 36
    :cond_0
    return-object v1
.end method


# virtual methods
.method public checkUpdate()J
    .locals 6

    .prologue
    .line 45
    invoke-super {p0}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    .line 47
    iget-boolean v2, p0, Lmiui/content/res/ThemeResourcesSystem;->mIsTop:Z

    if-eqz v2, :cond_2

    .line 48
    sget-object v2, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    move-result-wide v0

    .line 49
    .local v0, updatedTime:J
    sget-wide v2, Lmiui/content/res/ThemeResourcesSystem;->sUpdatedTimeIcon:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 50
    sput-wide v0, Lmiui/content/res/ThemeResourcesSystem;->sUpdatedTimeIcon:J

    .line 51
    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    .line 54
    :cond_0
    sget-object v2, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    move-result-wide v0

    .line 55
    sget-wide v2, Lmiui/content/res/ThemeResourcesSystem;->sUpdatedTimeLockscreen:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    .line 56
    sput-wide v0, Lmiui/content/res/ThemeResourcesSystem;->sUpdatedTimeLockscreen:J

    .line 57
    invoke-virtual {p0}, Lmiui/content/res/ThemeResourcesSystem;->hasAwesomeLockscreen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 58
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/theme/lockscreen"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 59
    sget-object v2, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    move-result-wide v2

    sput-wide v2, Lmiui/content/res/ThemeResourcesSystem;->sUpdatedTimeLockscreen:J

    .line 63
    :cond_1
    iget-wide v2, p0, Lmiui/content/res/ThemeResourcesSystem;->mUpdatedTime:J

    sget-wide v4, Lmiui/content/res/ThemeResourcesSystem;->sUpdatedTimeLockscreen:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/content/res/ThemeResourcesSystem;->mUpdatedTime:J

    .line 64
    iget-wide v2, p0, Lmiui/content/res/ThemeResourcesSystem;->mUpdatedTime:J

    sget-object v4, Lmiui/content/res/ThemeResourcesSystem;->sMiui:Lmiui/content/res/ThemeResources;

    invoke-virtual {v4}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/content/res/ThemeResourcesSystem;->mUpdatedTime:J

    .line 66
    .end local v0           #updatedTime:J
    :cond_2
    iget-wide v2, p0, Lmiui/content/res/ThemeResourcesSystem;->mUpdatedTime:J

    return-wide v2
.end method

.method public containsAwesomeLockscreenEntry(Ljava/lang/String;)Z
    .locals 3
    .parameter "entry"

    .prologue
    .line 152
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "advance/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeResources;->hasThemeFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAwesomeLockscreenFileStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 3
    .parameter "name"
    .parameter "size"

    .prologue
    .line 156
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "advance/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lmiui/content/res/ThemeResources;->getThemeStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "name"

    .prologue
    .line 108
    new-instance v2, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(Z)V

    .line 109
    .local v2, info:Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    invoke-direct {p0, v2, p1}, Lmiui/content/res/ThemeResourcesSystem;->getIcon(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    .line 125
    :goto_0
    return-object v1

    .line 111
    :cond_0
    const/4 v1, 0x0

    .line 113
    .local v1, icon:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v3, v2, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_1

    .line 115
    iget v3, v2, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    :cond_1
    :goto_1
    :try_start_1
    iget-object v3, v2, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v3

    goto :goto_0

    .line 117
    :catch_1
    move-exception v0

    .line 118
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1
.end method

.method public getIconStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 1
    .parameter "name"
    .parameter "size"

    .prologue
    .line 104
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1, p2}, Lmiui/content/res/ThemeResources;->getThemeStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getLockscreenWallpaper()Ljava/io/File;
    .locals 3

    .prologue
    .line 139
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmiui/content/res/ThemeResourcesSystem;->mThemePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lock_wallpaper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, ret:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lmiui/content/res/ThemeResourcesSystem;->mWrapped:Lmiui/content/res/ThemeResources;

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lmiui/content/res/ThemeResourcesSystem;->mWrapped:Lmiui/content/res/ThemeResources;

    check-cast v1, Lmiui/content/res/ThemeResourcesSystem;

    invoke-virtual {v1}, Lmiui/content/res/ThemeResourcesSystem;->getLockscreenWallpaper()Ljava/io/File;

    move-result-object v0

    .line 143
    :cond_1
    return-object v0
.end method

.method protected getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .locals 2
    .parameter "info"
    .parameter "filterKey"

    .prologue
    .line 70
    sget v0, Landroid/content/res/MiuiResources;->sCookieMiui:I

    iget v1, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    if-ne v0, v1, :cond_0

    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sMiui:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1, p2}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lmiui/content/res/ThemeResourcesSystem;->getThemeFileStreamSystem(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public hasAwesomeLockscreen()Z
    .locals 2

    .prologue
    .line 148
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    const-string v1, "advance/manifest.xml"

    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeResources;->hasThemeFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasIcon(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 100
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1}, Lmiui/content/res/ThemeResources;->hasThemeFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public mergeThemeValues(Ljava/lang/String;Landroid/content/res/MiuiResources$ThemeValues;)V
    .locals 1
    .parameter "filterKey"
    .parameter "values"

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Lmiui/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Landroid/content/res/MiuiResources$ThemeValues;)V

    .line 89
    iget-boolean v0, p0, Lmiui/content/res/ThemeResourcesSystem;->mIsTop:Z

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sMiui:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1, p2}, Lmiui/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Landroid/content/res/MiuiResources$ThemeValues;)V

    .line 91
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1, p2}, Lmiui/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Landroid/content/res/MiuiResources$ThemeValues;)V

    .line 93
    :cond_0
    return-void
.end method

.method public resetIcons()V
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    .line 97
    return-void
.end method
