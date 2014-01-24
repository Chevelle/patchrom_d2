.class public final Landroid/content/res/MiuiResources;
.super Landroid/content/res/Resources;
.source "MiuiResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/MiuiResources$ThemeValues;,
        Landroid/content/res/MiuiResources$PreloadDrawableSource;,
        Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    }
.end annotation


# static fields
.field public static final MIUI_SCALE:Ljava/lang/String; = "miui_font_scale_switch"

.field private static sConfig:Landroid/content/res/Configuration;

.field public static sCookieFramework:I

.field public static sCookieMiui:I

.field private static sPreloadDrawableSources:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Set",
            "<",
            "Landroid/content/res/MiuiResources$PreloadDrawableSource;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sUiModeOrder:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static sUpdatedTimeSystem:Ljava/lang/Long;

.field private static final sValueFallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsPreloadOverlayed:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMiuiScaleId:I

.field private mPackageName:Ljava/lang/String;

.field private mPreloadingIds:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

.field private mSkipFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeResources:Lmiui/content/res/ThemeResources;

.field private mThemeValues:Landroid/content/res/MiuiResources$ThemeValues;

.field private mUpdatedTime:J

.field private mValueLoadedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const v3, 0x6070051

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/content/res/MiuiResources;->sUiModeOrder:Landroid/util/SparseArray;

    .line 29
    sget-object v0, Landroid/content/res/MiuiResources;->sUiModeOrder:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    sget-object v0, Landroid/content/res/MiuiResources;->sUiModeOrder:Landroid/util/SparseArray;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    sget-object v0, Landroid/content/res/MiuiResources;->sUiModeOrder:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    sget-object v0, Landroid/content/res/MiuiResources;->sUiModeOrder:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Landroid/content/res/MiuiResources;->sUpdatedTimeSystem:Ljava/lang/Long;

    .line 36
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    sput-object v0, Landroid/content/res/MiuiResources;->sConfig:Landroid/content/res/Configuration;

    .line 438
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/res/MiuiResources;->sValueFallbacks:Ljava/util/HashMap;

    .line 440
    sget-object v0, Landroid/content/res/MiuiResources;->sValueFallbacks:Ljava/util/HashMap;

    const v1, 0x6070078

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Landroid/content/res/MiuiResources;->sValueFallbacks:Ljava/util/HashMap;

    const v1, 0x6070077

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x6070031

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v0, Landroid/content/res/MiuiResources;->sValueFallbacks:Ljava/util/HashMap;

    const v1, 0x607007b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Landroid/content/res/MiuiResources;->sValueFallbacks:Ljava/util/HashMap;

    const v1, 0x607007a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x6070027

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Landroid/content/res/MiuiResources;->sValueFallbacks:Ljava/util/HashMap;

    const v1, 0x607007c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v0, Landroid/content/res/MiuiResources;->sValueFallbacks:Ljava/util/HashMap;

    const v1, 0x607007d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x6070058

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Landroid/content/res/MiuiResources;->sValueFallbacks:Ljava/util/HashMap;

    const v1, 0x607007e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x607005c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v0, Landroid/content/res/MiuiResources;->sValueFallbacks:Ljava/util/HashMap;

    const v1, 0x6070082

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x607002d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v0, Landroid/content/res/MiuiResources;->sValueFallbacks:Ljava/util/HashMap;

    const v1, 0x6070083

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x6070045

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sput v4, Landroid/content/res/MiuiResources;->sCookieFramework:I

    .line 470
    sput v4, Landroid/content/res/MiuiResources;->sCookieMiui:I

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 112
    invoke-direct {p0}, Landroid/content/res/Resources;-><init>()V

    .line 99
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    .line 104
    iput-wide v1, p0, Landroid/content/res/MiuiResources;->mUpdatedTime:J

    .line 105
    iput-wide v1, p0, Landroid/content/res/MiuiResources;->mValueLoadedTime:J

    .line 106
    new-instance v0, Landroid/content/res/MiuiResources$ThemeValues;

    invoke-direct {v0}, Landroid/content/res/MiuiResources$ThemeValues;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mThemeValues:Landroid/content/res/MiuiResources$ThemeValues;

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/MiuiResources;->mMiuiScaleId:I

    .line 113
    const-string v0, "android"

    invoke-virtual {p0, v0}, Landroid/content/res/MiuiResources;->init(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"

    .prologue
    const-wide/16 v1, -0x1

    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 99
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    .line 104
    iput-wide v1, p0, Landroid/content/res/MiuiResources;->mUpdatedTime:J

    .line 105
    iput-wide v1, p0, Landroid/content/res/MiuiResources;->mValueLoadedTime:J

    .line 106
    new-instance v0, Landroid/content/res/MiuiResources$ThemeValues;

    invoke-direct {v0}, Landroid/content/res/MiuiResources$ThemeValues;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mThemeValues:Landroid/content/res/MiuiResources$ThemeValues;

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/MiuiResources;->mMiuiScaleId:I

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/MiuiResources;->init(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"
    .parameter "compInfo"

    .prologue
    const-wide/16 v1, -0x1

    .line 123
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 99
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    .line 104
    iput-wide v1, p0, Landroid/content/res/MiuiResources;->mUpdatedTime:J

    .line 105
    iput-wide v1, p0, Landroid/content/res/MiuiResources;->mValueLoadedTime:J

    .line 106
    new-instance v0, Landroid/content/res/MiuiResources$ThemeValues;

    invoke-direct {v0}, Landroid/content/res/MiuiResources$ThemeValues;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mThemeValues:Landroid/content/res/MiuiResources$ThemeValues;

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/MiuiResources;->mMiuiScaleId:I

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/MiuiResources;->init(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method private initCookie()V
    .locals 3

    .prologue
    .line 473
    const/4 v0, 0x0

    .line 474
    .local v0, cookie:I
    :goto_0
    const/16 v2, 0x64

    if-ge v0, v2, :cond_3

    sget v2, Landroid/content/res/MiuiResources;->sCookieFramework:I

    if-ltz v2, :cond_0

    sget v2, Landroid/content/res/MiuiResources;->sCookieMiui:I

    if-gez v2, :cond_3

    .line 476
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->getCookieName(I)Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, name:Ljava/lang/String;
    const-string v2, "/system/framework/framework-res.apk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 478
    sput v0, Landroid/content/res/MiuiResources;->sCookieFramework:I

    .line 486
    .end local v1           #name:Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    .restart local v1       #name:Ljava/lang/String;
    :cond_2
    const-string v2, "/system/framework/framework-miui-res.apk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 481
    sput v0, Landroid/content/res/MiuiResources;->sCookieMiui:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 484
    .end local v1           #name:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 488
    :cond_3
    return-void
.end method

.method private loadValues()V
    .locals 4

    .prologue
    .line 407
    iget-wide v0, p0, Landroid/content/res/MiuiResources;->mValueLoadedTime:J

    iget-wide v2, p0, Landroid/content/res/MiuiResources;->mUpdatedTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 409
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/MiuiResources;->mValueLoadedTime:J

    .line 410
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mThemeValues:Landroid/content/res/MiuiResources$ThemeValues;

    invoke-virtual {v0}, Landroid/content/res/MiuiResources$ThemeValues;->clear()V

    .line 411
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    iget-object v1, p0, Landroid/content/res/MiuiResources;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/res/MiuiResources;->mThemeValues:Landroid/content/res/MiuiResources$ThemeValues;

    invoke-virtual {v0, v1, v2}, Lmiui/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Landroid/content/res/MiuiResources$ThemeValues;)V

    goto :goto_0
.end method

.method private updateMiuiFontScale(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "config"

    .prologue
    .line 275
    iget v2, p0, Landroid/content/res/MiuiResources;->mMiuiScaleId:I

    if-lez v2, :cond_0

    if-eqz p1, :cond_0

    sget-object v2, Landroid/content/res/MiuiResources;->sConfig:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    if-ne v2, v3, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    const/high16 v2, 0x3f80

    sput v2, Landroid/util/TypedValue;->miui_font_scale:F

    .line 278
    sget-object v2, Landroid/content/res/MiuiResources;->sConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 280
    const/4 v1, 0x0

    .line 282
    .local v1, miuiScale:Z
    :try_start_0
    iget v2, p0, Landroid/content/res/MiuiResources;->mMiuiScaleId:I

    invoke-virtual {p0, v2}, Landroid/content/res/MiuiResources;->getBoolean(I)Z

    move-result v1

    .line 283
    if-eqz v1, :cond_0

    .line 284
    const v2, 0x606000b

    invoke-virtual {p0, v2}, Landroid/content/res/MiuiResources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, miuiFontScales:[Ljava/lang/String;
    sget-object v2, Landroid/content/res/MiuiResources;->sUiModeOrder:Landroid/util/SparseArray;

    sget-object v3, Landroid/content/res/MiuiResources;->sConfig:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    sput v2, Landroid/util/TypedValue;->miui_font_scale:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    .end local v0           #miuiFontScales:[Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public getIntArray(I)[I
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->getThemeIntArray(I)[I

    move-result-object v0

    .line 165
    .local v0, array:[I
    if-eqz v0, :cond_0

    .line 168
    .end local v0           #array:[I
    :goto_0
    return-object v0

    .restart local v0       #array:[I
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->getThemeStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, array:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 186
    .end local v0           #array:[Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #array:[Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->getThemeString(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 130
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 133
    .end local v0           #cs:Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .restart local v0       #cs:Ljava/lang/CharSequence;
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "id"
    .parameter "def"

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->getThemeString(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 139
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 142
    .end local v0           #cs:Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .restart local v0       #cs:Ljava/lang/CharSequence;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->getThemeStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, array:[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 177
    .end local v0           #array:[Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .restart local v0       #array:[Ljava/lang/CharSequence;
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method getThemeInt(I)Ljava/lang/Integer;
    .locals 4
    .parameter "id"

    .prologue
    .line 415
    invoke-direct {p0}, Landroid/content/res/MiuiResources;->loadValues()V

    .line 416
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mThemeValues:Landroid/content/res/MiuiResources$ThemeValues;

    iget-object v1, v1, Landroid/content/res/MiuiResources$ThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 417
    .local v0, result:Ljava/lang/Integer;
    if-nez v0, :cond_0

    sget-object v1, Landroid/content/res/MiuiResources;->sValueFallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mThemeValues:Landroid/content/res/MiuiResources$ThemeValues;

    iget-object v1, v1, Landroid/content/res/MiuiResources$ThemeValues;->mIntegers:Ljava/util/HashMap;

    sget-object v2, Landroid/content/res/MiuiResources;->sValueFallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #result:Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 420
    .restart local v0       #result:Ljava/lang/Integer;
    :cond_0
    return-object v0
.end method

.method getThemeIntArray(I)[I
    .locals 2
    .parameter "id"

    .prologue
    .line 429
    invoke-direct {p0}, Landroid/content/res/MiuiResources;->loadValues()V

    .line 430
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mThemeValues:Landroid/content/res/MiuiResources$ThemeValues;

    iget-object v0, v0, Landroid/content/res/MiuiResources$ThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method getThemeString(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "id"

    .prologue
    .line 424
    invoke-direct {p0}, Landroid/content/res/MiuiResources;->loadValues()V

    .line 425
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mThemeValues:Landroid/content/res/MiuiResources$ThemeValues;

    iget-object v0, v0, Landroid/content/res/MiuiResources$ThemeValues;->mStrings:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method getThemeStringArray(I)[Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 434
    invoke-direct {p0}, Landroid/content/res/MiuiResources;->loadValues()V

    .line 435
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mThemeValues:Landroid/content/res/MiuiResources$ThemeValues;

    iget-object v0, v0, Landroid/content/res/MiuiResources$ThemeValues;->mStringArrays:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 3
    .parameter "id"
    .parameter "outValue"
    .parameter "resolveRefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 148
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-le v1, v2, :cond_1

    :cond_0
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 150
    :cond_1
    invoke-direct {p0}, Landroid/content/res/MiuiResources;->loadValues()V

    .line 151
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 152
    .local v0, themeInteger:Ljava/lang/Integer;
    if-nez v0, :cond_2

    iget v1, p2, Landroid/util/TypedValue;->resourceId:I

    if-lez v1, :cond_2

    .line 153
    iget v1, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v1}, Landroid/content/res/MiuiResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 156
    :cond_2
    if-eqz v0, :cond_3

    .line 157
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p2, Landroid/util/TypedValue;->data:I

    .line 160
    .end local v0           #themeInteger:Ljava/lang/Integer;
    :cond_3
    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 359
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 373
    :goto_0
    return-void

    .line 361
    :cond_0
    iput-object p1, p0, Landroid/content/res/MiuiResources;->mPackageName:Ljava/lang/String;

    .line 362
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "miui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 365
    :cond_1
    invoke-static {p0}, Lmiui/content/res/ThemeResources;->getSystem(Landroid/content/res/MiuiResources;)Lmiui/content/res/ThemeResources;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    .line 371
    :goto_1
    invoke-direct {p0}, Landroid/content/res/MiuiResources;->initCookie()V

    .line 372
    invoke-virtual {p0}, Landroid/content/res/MiuiResources;->reset()V

    goto :goto_0

    .line 368
    :cond_2
    invoke-static {p0, p1}, Lmiui/content/res/ThemeResourcesPackage;->getThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    goto :goto_1
.end method

.method public initMiuiFontScale(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 268
    iget v0, p0, Landroid/content/res/MiuiResources;->mMiuiScaleId:I

    if-gez v0, :cond_0

    .line 269
    const-string v0, "miui_font_scale_switch"

    const-string v1, "bool"

    iget-object v2, p0, Landroid/content/res/MiuiResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/MiuiResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/res/MiuiResources;->mMiuiScaleId:I

    .line 271
    :cond_0
    invoke-direct {p0, p1}, Landroid/content/res/MiuiResources;->updateMiuiFontScale(Landroid/content/res/Configuration;)V

    .line 272
    return-void
.end method

.method isPreloadOverlayed(I)Z
    .locals 8
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    .line 294
    iget-object v5, p0, Landroid/content/res/MiuiResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 295
    .local v2, isOverlayed:Ljava/lang/Boolean;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 311
    :goto_0
    return v5

    .line 297
    :cond_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 298
    sget-object v5, Landroid/content/res/MiuiResources;->sPreloadDrawableSources:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 299
    .local v4, sources:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/res/MiuiResources$PreloadDrawableSource;>;"
    if-eqz v4, :cond_2

    .line 300
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/MiuiResources$PreloadDrawableSource;

    .line 301
    .local v3, source:Landroid/content/res/MiuiResources$PreloadDrawableSource;
    new-instance v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    iget v5, v3, Landroid/content/res/MiuiResources$PreloadDrawableSource;->mCookie:I

    iget-object v6, v3, Landroid/content/res/MiuiResources$PreloadDrawableSource;->mResourcePath:Ljava/lang/String;

    invoke-direct {v1, v5, v6, v7}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(ILjava/lang/String;Z)V

    .line 303
    .local v1, info:Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    iget-object v5, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v5, v1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    .line 304
    iget-object v5, v3, Landroid/content/res/MiuiResources$PreloadDrawableSource;->mThemePath:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 305
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 310
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .end local v3           #source:Landroid/content/res/MiuiResources$PreloadDrawableSource;
    :cond_2
    iget-object v5, p0, Landroid/content/res/MiuiResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 311
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0
.end method

.method loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "value"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 316
    invoke-virtual {p0}, Landroid/content/res/MiuiResources;->isPreloading()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 317
    sget-object v6, Landroid/content/res/MiuiResources;->sPreloadDrawableSources:Landroid/util/SparseArray;

    if-nez v6, :cond_0

    .line 318
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    sput-object v6, Landroid/content/res/MiuiResources;->sPreloadDrawableSources:Landroid/util/SparseArray;

    .line 320
    :cond_0
    iget-object v6, p0, Landroid/content/res/MiuiResources;->mPreloadingIds:Ljava/util/Stack;

    if-nez v6, :cond_1

    .line 321
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    iput-object v6, p0, Landroid/content/res/MiuiResources;->mPreloadingIds:Ljava/util/Stack;

    .line 323
    :cond_1
    iget-object v6, p0, Landroid/content/res/MiuiResources;->mPreloadingIds:Ljava/util/Stack;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 327
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 328
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setId(I)V

    .line 331
    :cond_3
    invoke-virtual {p0}, Landroid/content/res/MiuiResources;->isPreloading()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 332
    iget v6, p1, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_4

    iget v6, p1, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x1f

    if-le v6, v7, :cond_7

    .line 334
    :cond_4
    iget-object v6, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, file:Ljava/lang/String;
    const-string v6, ".xml"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 336
    new-instance v4, Landroid/content/res/MiuiResources$PreloadDrawableSource;

    iget v6, p1, Landroid/util/TypedValue;->assetCookie:I

    invoke-direct {v4, p0, v6, v1, v8}, Landroid/content/res/MiuiResources$PreloadDrawableSource;-><init>(Landroid/content/res/MiuiResources;ILjava/lang/String;Ljava/lang/String;)V

    .line 337
    .local v4, source:Landroid/content/res/MiuiResources$PreloadDrawableSource;
    iget-object v6, p0, Landroid/content/res/MiuiResources;->mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    if-eqz v6, :cond_5

    .line 338
    iget-object v6, p0, Landroid/content/res/MiuiResources;->mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    iget-object v6, v6, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    iput-object v6, v4, Landroid/content/res/MiuiResources$PreloadDrawableSource;->mThemePath:Ljava/lang/String;

    .line 339
    iput-object v8, p0, Landroid/content/res/MiuiResources;->mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    .line 342
    :cond_5
    iget-object v6, p0, Landroid/content/res/MiuiResources;->mPreloadingIds:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 343
    .local v3, loadingId:Ljava/lang/Integer;
    sget-object v6, Landroid/content/res/MiuiResources;->sPreloadDrawableSources:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 344
    .local v5, sources:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/res/MiuiResources$PreloadDrawableSource;>;"
    if-nez v5, :cond_6

    .line 345
    new-instance v5, Ljava/util/HashSet;

    .end local v5           #sources:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/res/MiuiResources$PreloadDrawableSource;>;"
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 346
    .restart local v5       #sources:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/res/MiuiResources$PreloadDrawableSource;>;"
    sget-object v6, Landroid/content/res/MiuiResources;->sPreloadDrawableSources:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 348
    :cond_6
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 353
    .end local v1           #file:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #loadingId:Ljava/lang/Integer;
    .end local v4           #source:Landroid/content/res/MiuiResources$PreloadDrawableSource;
    .end local v5           #sources:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/res/MiuiResources$PreloadDrawableSource;>;"
    :cond_7
    iget-object v6, p0, Landroid/content/res/MiuiResources;->mPreloadingIds:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 355
    :cond_8
    return-object v0
.end method

.method loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "value"
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    .line 207
    iget-object v3, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    .line 234
    :goto_0
    return-object v0

    .line 209
    :cond_0
    const/4 v0, 0x0

    .line 210
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    invoke-direct {v1, p1, v4}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(Landroid/util/TypedValue;Z)V

    .line 211
    .local v1, info:Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    invoke-virtual {p0}, Landroid/content/res/MiuiResources;->isPreloading()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 212
    iput-object v1, p0, Landroid/content/res/MiuiResources;->mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    .line 215
    :cond_1
    iget-object v3, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v3, v1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 217
    :try_start_0
    iget v3, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    iput v3, p1, Landroid/util/TypedValue;->density:I

    .line 219
    iget-object v2, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    .line 220
    .local v2, is:Ljava/io/InputStream;
    iget-object v3, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    const-string v4, ".9.png"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 221
    invoke-static {v2}, Landroid/content/res/SimulateNinePngUtil;->convertIntoNinePngStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    .line 223
    :cond_2
    iget-object v3, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-static {p0, p1, v2, v3}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 227
    .end local v2           #is:Ljava/io/InputStream;
    :goto_1
    :try_start_1
    iget-object v3, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v3

    goto :goto_0

    .line 232
    :cond_3
    iget-object v3, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 224
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    .locals 7
    .parameter "array"

    .prologue
    .line 386
    invoke-direct {p0}, Landroid/content/res/MiuiResources;->loadValues()V

    .line 387
    iget-object v5, p0, Landroid/content/res/MiuiResources;->mThemeValues:Landroid/content/res/MiuiResources$ThemeValues;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/content/res/MiuiResources;->mThemeValues:Landroid/content/res/MiuiResources$ThemeValues;

    iget-object v5, v5, Landroid/content/res/MiuiResources$ThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 403
    :cond_0
    return-object p1

    .line 389
    :cond_1
    iget-object v0, p1, Landroid/content/res/TypedArray;->mData:[I

    .line 390
    .local v0, data:[I
    const/4 v2, 0x0

    .line 391
    .local v2, index:I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_0

    .line 392
    add-int/lit8 v5, v2, 0x0

    aget v4, v0, v5

    .line 393
    .local v4, type:I
    add-int/lit8 v5, v2, 0x3

    aget v1, v0, v5

    .line 394
    .local v1, id:I
    const/16 v5, 0x10

    if-lt v4, v5, :cond_2

    const/16 v5, 0x1f

    if-le v4, v5, :cond_3

    :cond_2
    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    .line 396
    :cond_3
    invoke-virtual {p0, v1}, Landroid/content/res/MiuiResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v3

    .line 397
    .local v3, themeInteger:Ljava/lang/Integer;
    if-eqz v3, :cond_4

    .line 398
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v5

    .line 401
    .end local v3           #themeInteger:Ljava/lang/Integer;
    :cond_4
    add-int/lit8 v2, v2, 0x6

    .line 402
    goto :goto_0
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 3
    .parameter "id"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 191
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 192
    invoke-super {p0, p1, p2, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 193
    new-instance v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    invoke-direct {v0, p2, v2}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(Landroid/util/TypedValue;Z)V

    .line 194
    .local v0, info:Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v1, v0}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    iget v1, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    iput v1, p2, Landroid/util/TypedValue;->density:I

    .line 196
    iget-object v1, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    .line 202
    .end local v0           #info:Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    :goto_0
    return-object v1

    .line 199
    .restart local v0       #info:Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    :cond_0
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 202
    .end local v0           #info:Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method

.method protected reset()V
    .locals 2

    .prologue
    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/MiuiResources;->mUpdatedTime:J

    .line 377
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 378
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 379
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 7
    .parameter "config"
    .parameter "metrics"
    .parameter "compat"

    .prologue
    .line 240
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/content/res/MiuiResources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 241
    .local v0, configChanges:I
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 243
    invoke-direct {p0, p1}, Landroid/content/res/MiuiResources;->updateMiuiFontScale(Landroid/content/res/Configuration;)V

    .line 245
    iget-object v3, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    if-eqz v3, :cond_3

    .line 246
    iget-wide v1, p0, Landroid/content/res/MiuiResources;->mUpdatedTime:J

    .line 248
    .local v1, updatedTime:J
    invoke-static {v0}, Lmiui/content/res/ExtraConfiguration;->needNewResources(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    sget-object v4, Landroid/content/res/MiuiResources;->sUpdatedTimeSystem:Ljava/lang/Long;

    monitor-enter v4

    .line 250
    :try_start_0
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/content/res/ThemeResourcesSystem;->checkUpdate()J

    move-result-wide v1

    .line 251
    sget-object v3, Landroid/content/res/MiuiResources;->sUpdatedTimeSystem:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v5, v1

    if-gez v3, :cond_0

    .line 252
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sput-object v3, Landroid/content/res/MiuiResources;->sUpdatedTimeSystem:Ljava/lang/Long;

    .line 253
    invoke-static {}, Landroid/content/res/Resources;->clearPreloadedCache()V

    .line 255
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    iget-object v3, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v3}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 259
    :cond_1
    iget-wide v3, p0, Landroid/content/res/MiuiResources;->mUpdatedTime:J

    cmp-long v3, v3, v1

    if-ltz v3, :cond_2

    and-int/lit16 v3, v0, 0x80

    if-nez v3, :cond_2

    and-int/lit16 v3, v0, 0x200

    if-eqz v3, :cond_3

    .line 262
    :cond_2
    invoke-virtual {p0}, Landroid/content/res/MiuiResources;->reset()V

    .line 265
    .end local v1           #updatedTime:J
    :cond_3
    return-void

    .line 240
    .end local v0           #configChanges:I
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 255
    .restart local v0       #configChanges:I
    .restart local v1       #updatedTime:J
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
