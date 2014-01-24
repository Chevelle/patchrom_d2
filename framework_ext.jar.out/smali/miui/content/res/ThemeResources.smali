.class public Lmiui/content/res/ThemeResources;
.super Ljava/lang/Object;
.source "ThemeResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/res/ThemeResources$1;,
        Lmiui/content/res/ThemeResources$LoadThemeValuesHelper;,
        Lmiui/content/res/ThemeResources$LoadThemeValuesCallback;,
        Lmiui/content/res/ThemeResources$FilterInfo;,
        Lmiui/content/res/ThemeResources$FallbackInfo;,
        Lmiui/content/res/ThemeResources$MetaData;
    }
.end annotation


# static fields
.field private static final ATTR_FILTER_PATH:Ljava/lang/String; = "path"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final COMPATIBILITY_FALLBACKS:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/content/res/ThemeResources$FallbackInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field static DBG:Z = false

.field private static final FILTER_DESCRIPTION_FILE:Ljava/lang/String; = "filters.xml"

.field public static final FRAMEWORK_NAME:Ljava/lang/String; = "framework-res"

.field public static final FRAMEWORK_PACKAGE:Ljava/lang/String; = "android"

.field public static final ICONS_NAME:Ljava/lang/String; = "icons"

.field public static final LANGUAGE_THEME_PATH:Ljava/lang/String; = "/data/system/language/"

.field public static final LOCKSCREEN_NAME:Ljava/lang/String; = "lockscreen"

.field public static final LOCKSCREEN_WALLPAPER_NAME:Ljava/lang/String; = "lock_wallpaper"

.field public static final MIUI_NAME:Ljava/lang/String; = "framework-miui-res"

.field public static final MIUI_PACKAGE:Ljava/lang/String; = "miui"

.field public static final SYSTEMUI_NAME:Ljava/lang/String; = "com.android.systemui"

.field public static final SYSTEM_LANGUAGE_THEME_PATH:Ljava/lang/String; = "/system/language/"

.field public static final SYSTEM_THEME_PATH:Ljava/lang/String; = null

.field private static final TAG_BOOLEAN:Ljava/lang/String; = "bool"

.field private static final TAG_COLOR:Ljava/lang/String; = "color"

.field private static final TAG_DIMEN:Ljava/lang/String; = "dimen"

.field private static final TAG_DRAWABLE:Ljava/lang/String; = "drawable"

.field private static final TAG_FILTER:Ljava/lang/String; = "filter"

.field private static final TAG_INTEGER:Ljava/lang/String; = "integer"

.field private static final TAG_INTEGER_ARRAY:Ljava/lang/String; = "integer-array"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_STRING:Ljava/lang/String; = "string"

.field private static final TAG_STRING_ARRAY:Ljava/lang/String; = "string-array"

.field public static final THEME_PATH:Ljava/lang/String; = "/data/system/theme/"

.field public static final THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData; = null

.field public static final THEME_RIGHTS_PATH:Ljava/lang/String; = "/data/system/theme/rights/"

.field private static final TRUE:Ljava/lang/String; = "true"

.field public static final WALLPAPER_NAME:Ljava/lang/String; = "wallpaper"

.field public static final sAppliedLockstyleConfigPath:Ljava/lang/String; = "/data/system/theme/config.config"

.field private static sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

.field private static sLockWallpaperModifiedTime:J

.field private static sSystem:Lmiui/content/res/ThemeResourcesSystem;


# instance fields
.field private mCompatiblityFallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/content/res/ThemeResources$FallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/content/res/ThemeResources$FilterInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsTop:Z

.field private mLoadThemeValuesCallback:Lmiui/content/res/ThemeResources$LoadThemeValuesHelper;

.field protected mMetaData:Lmiui/content/res/ThemeResources$MetaData;

.field protected mPackageName:Ljava/lang/String;

.field protected mPackageZipFile:Lmiui/content/res/ThemeZipFile;

.field protected mResources:Landroid/content/res/MiuiResources;

.field protected mShouldFallbackDeeper:Z

.field protected mSupportWrapper:Z

.field protected mUpdatedTime:J

.field protected mWrapped:Lmiui/content/res/ThemeResources;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 41
    sput-boolean v7, Lmiui/content/res/ThemeResources;->DBG:Z

    .line 59
    invoke-static {}, Lmiui/os/Build;->getUserMode()I

    move-result v1

    if-ne v1, v6, :cond_0

    const-string v1, "/system/media/theme/elder-default/"

    :goto_0
    sput-object v1, Lmiui/content/res/ThemeResources;->SYSTEM_THEME_PATH:Ljava/lang/String;

    .line 65
    new-array v1, v4, [Lmiui/content/res/ThemeResources$MetaData;

    new-instance v2, Lmiui/content/res/ThemeResources$MetaData;

    sget-object v3, Lmiui/content/res/ThemeResources;->SYSTEM_THEME_PATH:Ljava/lang/String;

    invoke-direct {v2, v3, v6, v6}, Lmiui/content/res/ThemeResources$MetaData;-><init>(Ljava/lang/String;ZZ)V

    aput-object v2, v1, v7

    new-instance v2, Lmiui/content/res/ThemeResources$MetaData;

    const-string v3, "/data/system/theme/"

    invoke-direct {v2, v3, v6, v6}, Lmiui/content/res/ThemeResources$MetaData;-><init>(Ljava/lang/String;ZZ)V

    aput-object v2, v1, v6

    sput-object v1, Lmiui/content/res/ThemeResources;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    .line 94
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmiui/content/res/ThemeResources;->COMPATIBILITY_FALLBACKS:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/content/res/ThemeResources$FallbackInfo;>;"
    new-instance v1, Lmiui/content/res/ThemeResources$FallbackInfo;

    const-string v2, "v5_settings_window_bg_light.9.png"

    const-string v3, "v5_window_bg_light.9.png"

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "drawable-land"

    aput-object v5, v4, v7

    const-string v5, "drawable"

    aput-object v5, v4, v6

    invoke-direct {v1, v2, v3, v4}, Lmiui/content/res/ThemeResources$FallbackInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v1, Lmiui/content/res/ThemeResources;->COMPATIBILITY_FALLBACKS:Ljava/util/HashMap;

    const-string v2, "miui"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/content/res/ThemeResources$FallbackInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .restart local v0       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/content/res/ThemeResources$FallbackInfo;>;"
    new-instance v1, Lmiui/content/res/ThemeResources$FallbackInfo;

    const-string v2, "contact_detail_default_photo.jpg"

    const-string v3, "contact_detail_default_photo.png"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lmiui/content/res/ThemeResources$FallbackInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v1, Lmiui/content/res/ThemeResources;->COMPATIBILITY_FALLBACKS:Ljava/util/HashMap;

    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void

    .line 59
    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/content/res/ThemeResources$FallbackInfo;>;"
    :cond_0
    const-string v1, "/system/media/theme/default/"

    goto :goto_0
.end method

.method protected constructor <init>(Lmiui/content/res/ThemeResources;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V
    .locals 4
    .parameter "wrapped"
    .parameter "resources"
    .parameter "componentName"
    .parameter "metaData"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-boolean v1, p0, Lmiui/content/res/ThemeResources;->mIsTop:Z

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    .line 310
    new-instance v0, Lmiui/content/res/ThemeResources$LoadThemeValuesHelper;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lmiui/content/res/ThemeResources$LoadThemeValuesHelper;-><init>(Lmiui/content/res/ThemeResources;Lmiui/content/res/ThemeResources$1;)V

    iput-object v0, p0, Lmiui/content/res/ThemeResources;->mLoadThemeValuesCallback:Lmiui/content/res/ThemeResources$LoadThemeValuesHelper;

    .line 172
    if-eqz p1, :cond_0

    .line 173
    iput-object p1, p0, Lmiui/content/res/ThemeResources;->mWrapped:Lmiui/content/res/ThemeResources;

    .line 174
    iput-boolean v2, p1, Lmiui/content/res/ThemeResources;->mIsTop:Z

    .line 176
    :cond_0
    iput-object p2, p0, Lmiui/content/res/ThemeResources;->mResources:Landroid/content/res/MiuiResources;

    .line 177
    invoke-static {p3}, Lmiui/content/res/ThemeResources;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    .line 178
    sget-object v0, Lmiui/content/res/ThemeResources;->COMPATIBILITY_FALLBACKS:Ljava/util/HashMap;

    iget-object v3, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lmiui/content/res/ThemeResources;->mCompatiblityFallback:Ljava/util/ArrayList;

    .line 179
    iput-object p4, p0, Lmiui/content/res/ThemeResources;->mMetaData:Lmiui/content/res/ThemeResources$MetaData;

    .line 180
    invoke-static {p4, p3}, Lmiui/content/res/ThemeZipFile;->getThemeZipFile(Lmiui/content/res/ThemeResources$MetaData;Ljava/lang/String;)Lmiui/content/res/ThemeZipFile;

    move-result-object v0

    iput-object v0, p0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    .line 181
    const-string v0, "icons"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "lockscreen"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmiui/content/res/ThemeResources;->mSupportWrapper:Z

    .line 182
    invoke-virtual {p0}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    .line 183
    return-void

    :cond_1
    move v0, v2

    .line 181
    goto :goto_0
.end method

.method public static final clearLockWallpaperCache()V
    .locals 2

    .prologue
    .line 474
    const-wide/16 v0, 0x0

    sput-wide v0, Lmiui/content/res/ThemeResources;->sLockWallpaperModifiedTime:J

    .line 475
    const/4 v0, 0x0

    sput-object v0, Lmiui/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

    .line 476
    return-void
.end method

.method public static final getLockWallpaperCache(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 479
    sget-object v7, Lmiui/content/res/ThemeResources;->sSystem:Lmiui/content/res/ThemeResourcesSystem;

    invoke-virtual {v7}, Lmiui/content/res/ThemeResourcesSystem;->getLockscreenWallpaper()Ljava/io/File;

    move-result-object v2

    .line 481
    .local v2, file:Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-object v6

    .line 486
    :cond_1
    sget-wide v7, Lmiui/content/res/ThemeResources;->sLockWallpaperModifiedTime:J

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    .line 487
    sget-object v6, Lmiui/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 491
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    sput-wide v7, Lmiui/content/res/ThemeResources;->sLockWallpaperModifiedTime:J

    .line 492
    sput-object v6, Lmiui/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

    .line 494
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 495
    .local v1, display:Landroid/util/DisplayMetrics;
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 496
    .local v5, width:I
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 497
    .local v3, height:I
    if-le v5, v3, :cond_3

    .line 498
    const-string v6, "LockWallpaper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wrong display metrics for width = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and height = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    move v4, v5

    .line 500
    .local v4, tmp:I
    move v5, v3

    .line 501
    move v3, v4

    .line 504
    .end local v4           #tmp:I
    :cond_3
    new-instance v6, Lmiui/util/InputStreamLoader;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lmiui/util/InputStreamLoader;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v5, v3}, Lmiui/util/ImageUtils;->getBitmap(Lmiui/util/InputStreamLoader;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 505
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    sput-object v6, Lmiui/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #display:Landroid/util/DisplayMetrics;
    .end local v3           #height:I
    .end local v5           #width:I
    :goto_1
    sget-object v6, Lmiui/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 507
    :catch_0
    move-exception v6

    goto :goto_1

    .line 506
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method private static final getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "componentName"

    .prologue
    .line 131
    const-string v0, "framework-res"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "icons"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    :cond_0
    const-string p0, "android"

    .line 139
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 135
    .restart local p0
    :cond_2
    const-string v0, "framework-miui-res"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "lockscreen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    :cond_3
    const-string p0, "miui"

    goto :goto_0
.end method

.method public static getSystem(Landroid/content/res/MiuiResources;)Lmiui/content/res/ThemeResources;
    .locals 1
    .parameter "resources"

    .prologue
    .line 116
    sget-object v0, Lmiui/content/res/ThemeResources;->sSystem:Lmiui/content/res/ThemeResourcesSystem;

    if-nez v0, :cond_0

    .line 117
    invoke-static {p0}, Lmiui/content/res/ThemeResourcesSystem;->getTopLevelThemeResources(Landroid/content/res/MiuiResources;)Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    sput-object v0, Lmiui/content/res/ThemeResources;->sSystem:Lmiui/content/res/ThemeResourcesSystem;

    .line 119
    :cond_0
    sget-object v0, Lmiui/content/res/ThemeResources;->sSystem:Lmiui/content/res/ThemeResourcesSystem;

    return-object v0
.end method

.method public static getSystem()Lmiui/content/res/ThemeResourcesSystem;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lmiui/content/res/ThemeResources;->sSystem:Lmiui/content/res/ThemeResourcesSystem;

    return-object v0
.end method

.method private getThemeFileWithoutFallback(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .locals 3
    .parameter "info"
    .parameter "filterKey"

    .prologue
    .line 262
    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v2}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 263
    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 264
    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/content/res/ThemeResources$FilterInfo;

    .line 265
    .local v0, filter:Lmiui/content/res/ThemeResources$FilterInfo;
    invoke-virtual {v0, p2}, Lmiui/content/res/ThemeResources$FilterInfo;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    iget-object v2, v0, Lmiui/content/res/ThemeResources$FilterInfo;->mPath:Ljava/lang/String;

    iput-object v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    .line 267
    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v2, p1}, Lmiui/content/res/ThemeZipFile;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 273
    .end local v0           #filter:Lmiui/content/res/ThemeResources$FilterInfo;
    .end local v1           #i:I
    :goto_1
    return v2

    .line 263
    .restart local v0       #filter:Lmiui/content/res/ThemeResources$FilterInfo;
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 270
    .end local v0           #filter:Lmiui/content/res/ThemeResources$FilterInfo;
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    .line 273
    .end local v1           #i:I
    :cond_2
    iget-boolean v2, p0, Lmiui/content/res/ThemeResources;->mShouldFallbackDeeper:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mWrapped:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2, p1, p2}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getTopLevelThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResources;
    .locals 4
    .parameter "resources"
    .parameter "componentName"

    .prologue
    .line 123
    const/4 v1, 0x0

    .line 124
    .local v1, themeResources:Lmiui/content/res/ThemeResources;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lmiui/content/res/ThemeResources;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 125
    new-instance v2, Lmiui/content/res/ThemeResources;

    sget-object v3, Lmiui/content/res/ThemeResources;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    aget-object v3, v3, v0

    invoke-direct {v2, v1, p0, p1, v3}, Lmiui/content/res/ThemeResources;-><init>(Lmiui/content/res/ThemeResources;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    .line 124
    .end local v1           #themeResources:Lmiui/content/res/ThemeResources;
    .local v2, themeResources:Lmiui/content/res/ThemeResources;
    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    .end local v2           #themeResources:Lmiui/content/res/ThemeResources;
    .restart local v1       #themeResources:Lmiui/content/res/ThemeResources;
    goto :goto_0

    .line 127
    :cond_0
    return-object v1
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "string"

    .prologue
    .line 427
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadThemeValues()V
    .locals 3

    .prologue
    .line 313
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lmiui/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 314
    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mLoadThemeValuesCallback:Lmiui/content/res/ThemeResources$LoadThemeValuesHelper;

    iget-object v1, p0, Lmiui/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/content/res/ThemeResources$FilterInfo;

    invoke-virtual {v2, v1}, Lmiui/content/res/ThemeResources$LoadThemeValuesHelper;->newTarget(Lmiui/content/res/ThemeResources$FilterInfo;)V

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_0
    return-void
.end method


# virtual methods
.method public checkUpdate()J
    .locals 6

    .prologue
    .line 186
    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v2}, Lmiui/content/res/ThemeZipFile;->checkUpdate()J

    move-result-wide v0

    .line 187
    .local v0, updatedTime:J
    iget-wide v2, p0, Lmiui/content/res/ThemeResources;->mUpdatedTime:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 188
    iput-wide v0, p0, Lmiui/content/res/ThemeResources;->mUpdatedTime:J

    .line 189
    invoke-virtual {p0}, Lmiui/content/res/ThemeResources;->initBasePaths()V

    .line 190
    invoke-direct {p0}, Lmiui/content/res/ThemeResources;->loadThemeValues()V

    .line 193
    :cond_0
    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mWrapped:Lmiui/content/res/ThemeResources;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lmiui/content/res/ThemeResources;->mSupportWrapper:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v2}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lmiui/content/res/ThemeResources;->mShouldFallbackDeeper:Z

    .line 194
    iget-boolean v2, p0, Lmiui/content/res/ThemeResources;->mShouldFallbackDeeper:Z

    if-eqz v2, :cond_2

    .line 195
    iget-wide v2, p0, Lmiui/content/res/ThemeResources;->mUpdatedTime:J

    iget-object v4, p0, Lmiui/content/res/ThemeResources;->mWrapped:Lmiui/content/res/ThemeResources;

    invoke-virtual {v4}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/content/res/ThemeResources;->mUpdatedTime:J

    .line 198
    :cond_2
    iget-wide v2, p0, Lmiui/content/res/ThemeResources;->mUpdatedTime:J

    return-wide v2

    .line 193
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 216
    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .locals 12
    .parameter "info"
    .parameter "filterKey"

    .prologue
    .line 220
    invoke-direct {p0, p1, p2}, Lmiui/content/res/ThemeResources;->getThemeFileWithoutFallback(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    .line 258
    :goto_0
    return v10

    .line 222
    :cond_0
    iget-object v10, p0, Lmiui/content/res/ThemeResources;->mCompatiblityFallback:Ljava/util/ArrayList;

    if-eqz v10, :cond_7

    .line 223
    iget-object v1, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 224
    .local v1, backup:Ljava/lang/String;
    iget-object v10, p0, Lmiui/content/res/ThemeResources;->mCompatiblityFallback:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/content/res/ThemeResources$FallbackInfo;

    .line 225
    .local v3, fallback:Lmiui/content/res/ThemeResources$FallbackInfo;
    iget-object v10, v3, Lmiui/content/res/ThemeResources$FallbackInfo;->mOriginal:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 226
    iget-object v10, v3, Lmiui/content/res/ThemeResources$FallbackInfo;->mOriginal:Ljava/lang/String;

    iget-object v11, v3, Lmiui/content/res/ThemeResources$FallbackInfo;->mFallback:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 227
    iget-object v10, v3, Lmiui/content/res/ThemeResources$FallbackInfo;->mConfigs:[Ljava/lang/String;

    if-nez v10, :cond_2

    .line 228
    invoke-direct {p0, p1, p2}, Lmiui/content/res/ThemeResources;->getThemeFileWithoutFallback(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 229
    iput-object v1, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 230
    const/4 v10, 0x1

    goto :goto_0

    .line 234
    :cond_2
    const/4 v8, 0x0

    .line 235
    .local v8, prefix:Ljava/lang/String;
    const/4 v9, 0x0

    .line 236
    .local v9, suffix:Ljava/lang/String;
    iget-object v0, v3, Lmiui/content/res/ThemeResources$FallbackInfo;->mConfigs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v7, :cond_3

    aget-object v2, v0, v5

    .line 237
    .local v2, config:Ljava/lang/String;
    iget-object v10, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 238
    .local v6, index:I
    if-lez v6, :cond_4

    .line 239
    iget-object v10, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 240
    iget-object v10, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 244
    .end local v2           #config:Ljava/lang/String;
    .end local v6           #index:I
    :cond_3
    if-eqz v8, :cond_1

    .line 246
    iget-object v0, v3, Lmiui/content/res/ThemeResources$FallbackInfo;->mConfigs:[Ljava/lang/String;

    array-length v7, v0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v7, :cond_1

    aget-object v2, v0, v5

    .line 247
    .restart local v2       #config:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 248
    invoke-direct {p0, p1, p2}, Lmiui/content/res/ThemeResources;->getThemeFileWithoutFallback(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 249
    iput-object v1, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 250
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 236
    .restart local v6       #index:I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 246
    .end local v6           #index:I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 256
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #config:Ljava/lang/String;
    .end local v3           #fallback:Lmiui/content/res/ThemeResources$FallbackInfo;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v8           #prefix:Ljava/lang/String;
    .end local v9           #suffix:Ljava/lang/String;
    :cond_6
    iput-object v1, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 258
    .end local v1           #backup:Ljava/lang/String;
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public getThemeStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 4
    .parameter "name"
    .parameter "size"

    .prologue
    .line 203
    new-instance v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(ILjava/lang/String;Z)V

    .line 204
    .local v0, info:Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    invoke-virtual {p0, v0}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 205
    const/4 v1, 0x0

    iget-wide v2, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outSize:J

    aput-wide v2, p2, v1

    .line 207
    :cond_0
    iget-object v1, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    return-object v1
.end method

.method public hasThemeFile(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 211
    new-instance v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(ILjava/lang/String;Z)V

    .line 212
    .local v0, info:Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    iget-object v1, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public initBasePaths()V
    .locals 15

    .prologue
    .line 436
    iget-object v11, p0, Lmiui/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 437
    iget-object v11, p0, Lmiui/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    new-instance v12, Lmiui/content/res/ThemeResources$FilterInfo;

    const-string v13, ""

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lmiui/content/res/ThemeResources$FilterInfo;-><init>(Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    iget-object v11, p0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    const-string v12, "filters.xml"

    invoke-virtual {v11, v12}, Lmiui/content/res/ThemeZipFile;->getZipInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 440
    .local v6, input:Ljava/io/InputStream;
    if-nez v6, :cond_0

    .line 468
    :goto_0
    return-void

    .line 443
    :cond_0
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 444
    .local v2, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 445
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 447
    .local v1, document:Lorg/w3c/dom/Document;
    const-string v11, "filter"

    invoke-interface {v1, v11}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 448
    .local v4, filters:Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v5, v11, :cond_4

    .line 449
    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 451
    .local v3, filter:Lorg/w3c/dom/Element;
    const-string v11, "path"

    invoke-interface {v3, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 452
    .local v10, path:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    const-string v11, "res"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 448
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 454
    :cond_2
    const-string v11, "package"

    invoke-interface {v3, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 455
    .local v9, packages:Lorg/w3c/dom/NodeList;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 456
    .local v8, packageSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, j:I
    :goto_3
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v7, v11, :cond_3

    .line 457
    invoke-interface {v9, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 456
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 459
    :cond_3
    iget-object v11, p0, Lmiui/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    new-instance v12, Lmiui/content/res/ThemeResources$FilterInfo;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2f

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v8}, Lmiui/content/res/ThemeResources$FilterInfo;-><init>(Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 461
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #document:Lorg/w3c/dom/Document;
    .end local v2           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v3           #filter:Lorg/w3c/dom/Element;
    .end local v4           #filters:Lorg/w3c/dom/NodeList;
    .end local v5           #i:I
    .end local v7           #j:I
    .end local v8           #packageSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9           #packages:Lorg/w3c/dom/NodeList;
    .end local v10           #path:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 464
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 465
    :catch_1
    move-exception v11

    goto/16 :goto_0

    .line 464
    .restart local v0       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1       #document:Lorg/w3c/dom/Document;
    .restart local v2       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4       #filters:Lorg/w3c/dom/NodeList;
    .restart local v5       #i:I
    :cond_4
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 465
    :catch_2
    move-exception v11

    goto/16 :goto_0

    .line 463
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #document:Lorg/w3c/dom/Document;
    .end local v2           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4           #filters:Lorg/w3c/dom/NodeList;
    .end local v5           #i:I
    :catchall_0
    move-exception v11

    .line 464
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 466
    :goto_4
    throw v11

    .line 465
    :catch_3
    move-exception v12

    goto :goto_4
.end method

.method protected loadThemeValues(Ljava/io/InputStream;Lmiui/content/res/ThemeResources$FilterInfo;)V
    .locals 28
    .parameter "is"
    .parameter "info"

    .prologue
    .line 351
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v12

    .line 352
    .local v12, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v12}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    .line 353
    .local v6, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v24, Ljava/io/BufferedInputStream;

    const/16 v25, 0x2000

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v8

    .line 354
    .local v8, document:Lorg/w3c/dom/Document;
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v20

    .line 355
    .local v20, rootElement:Lorg/w3c/dom/Element;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 356
    .local v17, list:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    add-int/lit8 v15, v24, -0x1

    .local v15, index:I
    :goto_0
    if-ltz v15, :cond_2

    .line 357
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    .line 358
    .local v22, temp:Lorg/w3c/dom/Node;
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1

    .line 356
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, -0x1

    goto :goto_0

    .line 360
    :cond_1
    move-object/from16 v0, v22

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v10, v0

    .line 361
    .local v10, element:Lorg/w3c/dom/Element;
    const-string v24, "name"

    move-object/from16 v0, v24

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 362
    .local v18, name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lmiui/content/res/ThemeResources;->isEmpty(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v24

    if-eqz v24, :cond_3

    .line 418
    .end local v10           #element:Lorg/w3c/dom/Element;
    .end local v18           #name:Ljava/lang/String;
    .end local v22           #temp:Lorg/w3c/dom/Node;
    :cond_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 423
    .end local v6           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v8           #document:Lorg/w3c/dom/Document;
    .end local v12           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v15           #index:I
    .end local v17           #list:Lorg/w3c/dom/NodeList;
    .end local v20           #rootElement:Lorg/w3c/dom/Element;
    :goto_2
    return-void

    .line 364
    .restart local v6       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8       #document:Lorg/w3c/dom/Document;
    .restart local v10       #element:Lorg/w3c/dom/Element;
    .restart local v12       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v15       #index:I
    .restart local v17       #list:Lorg/w3c/dom/NodeList;
    .restart local v18       #name:Ljava/lang/String;
    .restart local v20       #rootElement:Lorg/w3c/dom/Element;
    .restart local v22       #temp:Lorg/w3c/dom/Node;
    :cond_3
    :try_start_2
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v11

    .line 365
    .local v11, elementName:Ljava/lang/String;
    const-string v24, "package"

    move-object/from16 v0, v24

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 366
    .local v19, pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lmiui/content/res/ThemeResources;->isEmpty(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 370
    :cond_4
    const-string v24, "integer-array"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    const-string v24, "string-array"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 371
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/content/res/ThemeResources;->mResources:Landroid/content/res/MiuiResources;

    move-object/from16 v24, v0

    const-string v25, "array"

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/MiuiResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 372
    .local v14, id:I
    if-lez v14, :cond_0

    .line 374
    const-string v24, "item"

    move-object/from16 v0, v24

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 375
    .local v5, arrayItems:Lorg/w3c/dom/NodeList;
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v21

    .line 376
    .local v21, size:I
    if-nez v21, :cond_6

    .line 418
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 419
    :catch_0
    move-exception v9

    .line 420
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 378
    .end local v9           #e:Ljava/io/IOException;
    :cond_6
    :try_start_4
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 379
    .local v4, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .local v13, i:I
    :goto_3
    move/from16 v0, v21

    if-ge v13, v0, :cond_7

    .line 380
    invoke-interface {v5, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 383
    :cond_7
    const-string v24, "integer-array"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 384
    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 385
    .local v16, integerArray:[I
    const/4 v13, 0x0

    :goto_4
    move/from16 v0, v21

    if-ge v13, v0, :cond_8

    .line 386
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    aput v24, v16, v13

    .line 385
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 388
    :cond_8
    move-object/from16 v0, p2

    iget-object v0, v0, Lmiui/content/res/ThemeResources$FilterInfo;->mValues:Landroid/content/res/MiuiResources$ThemeValues;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/res/MiuiResources$ThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 414
    .end local v4           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #arrayItems:Lorg/w3c/dom/NodeList;
    .end local v6           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v8           #document:Lorg/w3c/dom/Document;
    .end local v10           #element:Lorg/w3c/dom/Element;
    .end local v11           #elementName:Ljava/lang/String;
    .end local v12           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v13           #i:I
    .end local v14           #id:I
    .end local v15           #index:I
    .end local v16           #integerArray:[I
    .end local v17           #list:Lorg/w3c/dom/NodeList;
    .end local v18           #name:Ljava/lang/String;
    .end local v19           #pkg:Ljava/lang/String;
    .end local v20           #rootElement:Lorg/w3c/dom/Element;
    .end local v21           #size:I
    .end local v22           #temp:Lorg/w3c/dom/Node;
    :catch_1
    move-exception v9

    .line 415
    .local v9, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 418
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2

    .line 419
    :catch_2
    move-exception v9

    .line 420
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 389
    .end local v9           #e:Ljava/io/IOException;
    .restart local v4       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #arrayItems:Lorg/w3c/dom/NodeList;
    .restart local v6       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8       #document:Lorg/w3c/dom/Document;
    .restart local v10       #element:Lorg/w3c/dom/Element;
    .restart local v11       #elementName:Ljava/lang/String;
    .restart local v12       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v13       #i:I
    .restart local v14       #id:I
    .restart local v15       #index:I
    .restart local v17       #list:Lorg/w3c/dom/NodeList;
    .restart local v18       #name:Ljava/lang/String;
    .restart local v19       #pkg:Ljava/lang/String;
    .restart local v20       #rootElement:Lorg/w3c/dom/Element;
    .restart local v21       #size:I
    .restart local v22       #temp:Lorg/w3c/dom/Node;
    :cond_9
    :try_start_7
    const-string v24, "string-array"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 390
    move-object/from16 v0, p2

    iget-object v0, v0, Lmiui/content/res/ThemeResources$FilterInfo;->mValues:Landroid/content/res/MiuiResources$ThemeValues;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/res/MiuiResources$ThemeValues;->mStringArrays:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    .line 417
    .end local v4           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #arrayItems:Lorg/w3c/dom/NodeList;
    .end local v6           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v8           #document:Lorg/w3c/dom/Document;
    .end local v10           #element:Lorg/w3c/dom/Element;
    .end local v11           #elementName:Ljava/lang/String;
    .end local v12           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v13           #i:I
    .end local v14           #id:I
    .end local v15           #index:I
    .end local v17           #list:Lorg/w3c/dom/NodeList;
    .end local v18           #name:Ljava/lang/String;
    .end local v19           #pkg:Ljava/lang/String;
    .end local v20           #rootElement:Lorg/w3c/dom/Element;
    .end local v21           #size:I
    .end local v22           #temp:Lorg/w3c/dom/Node;
    :catchall_0
    move-exception v24

    .line 418
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 421
    :goto_5
    throw v24

    .line 394
    .restart local v6       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8       #document:Lorg/w3c/dom/Document;
    .restart local v10       #element:Lorg/w3c/dom/Element;
    .restart local v11       #elementName:Ljava/lang/String;
    .restart local v12       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v15       #index:I
    .restart local v17       #list:Lorg/w3c/dom/NodeList;
    .restart local v18       #name:Ljava/lang/String;
    .restart local v19       #pkg:Ljava/lang/String;
    .restart local v20       #rootElement:Lorg/w3c/dom/Element;
    .restart local v22       #temp:Lorg/w3c/dom/Node;
    :cond_a
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/content/res/ThemeResources;->mResources:Landroid/content/res/MiuiResources;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v11, v2}, Landroid/content/res/MiuiResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 395
    .restart local v14       #id:I
    if-lez v14, :cond_0

    .line 397
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v23

    .line 398
    .local v23, value:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lmiui/content/res/ThemeResources;->isEmpty(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 400
    const-string v24, "bool"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 401
    move-object/from16 v0, p2

    iget-object v0, v0, Lmiui/content/res/ThemeResources$FilterInfo;->mValues:Landroid/content/res/MiuiResources$ThemeValues;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/res/MiuiResources$ThemeValues;->mIntegers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const-string v24, "true"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    const/16 v24, 0x1

    :goto_6
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_b
    const/16 v24, 0x0

    goto :goto_6

    .line 402
    :cond_c
    const-string v24, "color"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_d

    const-string v24, "integer"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_d

    const-string v24, "drawable"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 403
    :cond_d
    move-object/from16 v0, p2

    iget-object v0, v0, Lmiui/content/res/ThemeResources$FilterInfo;->mValues:Landroid/content/res/MiuiResources$ThemeValues;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/res/MiuiResources$ThemeValues;->mIntegers:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 404
    :cond_e
    const-string v24, "dimen"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 405
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/app/MiuiThemeHelper;->parseDimension(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 406
    .local v7, dimen:Ljava/lang/Integer;
    if-eqz v7, :cond_0

    .line 407
    move-object/from16 v0, p2

    iget-object v0, v0, Lmiui/content/res/ThemeResources$FilterInfo;->mValues:Landroid/content/res/MiuiResources$ThemeValues;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/res/MiuiResources$ThemeValues;->mIntegers:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 409
    .end local v7           #dimen:Ljava/lang/Integer;
    :cond_f
    const-string v24, "string"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 410
    move-object/from16 v0, p2

    iget-object v0, v0, Lmiui/content/res/ThemeResources$FilterInfo;->mValues:Landroid/content/res/MiuiResources$ThemeValues;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/res/MiuiResources$ThemeValues;->mStrings:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_1

    .line 419
    .end local v10           #element:Lorg/w3c/dom/Element;
    .end local v11           #elementName:Ljava/lang/String;
    .end local v14           #id:I
    .end local v18           #name:Ljava/lang/String;
    .end local v19           #pkg:Ljava/lang/String;
    .end local v22           #temp:Lorg/w3c/dom/Node;
    .end local v23           #value:Ljava/lang/String;
    :catch_3
    move-exception v9

    .line 420
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 419
    .end local v6           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v8           #document:Lorg/w3c/dom/Document;
    .end local v9           #e:Ljava/io/IOException;
    .end local v12           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v15           #index:I
    .end local v17           #list:Lorg/w3c/dom/NodeList;
    .end local v20           #rootElement:Lorg/w3c/dom/Element;
    :catch_4
    move-exception v9

    .line 420
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5
.end method

.method public mergeThemeValues(Ljava/lang/String;Landroid/content/res/MiuiResources$ThemeValues;)V
    .locals 3
    .parameter "filterKey"
    .parameter "values"

    .prologue
    .line 278
    iget-boolean v2, p0, Lmiui/content/res/ThemeResources;->mShouldFallbackDeeper:Z

    if-eqz v2, :cond_0

    .line 279
    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mWrapped:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2, p1, p2}, Lmiui/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Landroid/content/res/MiuiResources$ThemeValues;)V

    .line 282
    :cond_0
    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mMetaData:Lmiui/content/res/ThemeResources$MetaData;

    iget-boolean v2, v2, Lmiui/content/res/ThemeResources$MetaData;->mSupportValue:Z

    if-nez v2, :cond_2

    .line 290
    :cond_1
    return-void

    .line 284
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 285
    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/content/res/ThemeResources$FilterInfo;

    .line 286
    .local v0, filter:Lmiui/content/res/ThemeResources$FilterInfo;
    invoke-virtual {v0, p1}, Lmiui/content/res/ThemeResources$FilterInfo;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 287
    iget-object v2, v0, Lmiui/content/res/ThemeResources$FilterInfo;->mValues:Landroid/content/res/MiuiResources$ThemeValues;

    invoke-virtual {p2, v2}, Landroid/content/res/MiuiResources$ThemeValues;->putAll(Landroid/content/res/MiuiResources$ThemeValues;)V

    .line 284
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
