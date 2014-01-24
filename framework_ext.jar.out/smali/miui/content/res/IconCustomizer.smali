.class public Lmiui/content/res/IconCustomizer;
.super Ljava/lang/Object;
.source "IconCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/res/IconCustomizer$CustomizedIconsListener;,
        Lmiui/content/res/IconCustomizer$IconConfig;
    }
.end annotation


# static fields
.field public static final CUSTOMIZED_ICON_PATH:Ljava/lang/String; = "/data/system/customized_icons/"

.field private static final FANCY_ICONS_INNER_PATH:Ljava/lang/String; = "fancy_icons/"

.field private static final FINAL_MOD_ICONS:Ljava/lang/String; = "/data/system/customized_icons/"

.field private static final ICON_NAME_SUFFIX:Ljava/lang/String; = ".png"

.field private static final ICON_TRANSFORM_CONFIG:Ljava/lang/String; = "transform_config.xml"

.field private static final LOG_TAG:Ljava/lang/String; = "IconCustomizer"

.field private static final MIUI_MOD_BUILT_IN_ICONS:Ljava/lang/String; = "/system/media/theme/miui_mod_icons/"

.field private static final MIUI_MOD_BUILT_IN_ICONS_VERSION:Ljava/lang/String; = "/system/media/theme/miui_mod_icons/version"

.field private static final MIUI_MOD_DOWNLOAD_ICONS:Ljava/lang/String; = "/data/data/com.xiaomi.market/files/miui_mod_icons/"

.field private static final sAlphaShift:I = 0x18

.field private static final sAlphaThreshold:I = 0x32

.field private static final sCanvas:Landroid/graphics/Canvas; = null

.field private static final sColorByteSize:I = 0x4

.field private static final sColorShift:I = 0x8

#the value of this static final field might be set in the static constructor
.field public static final sCustomizedIconHeight:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final sCustomizedIconWidth:I = 0x0

.field private static sCutPaint:Landroid/graphics/Paint; = null

#the value of this static final field might be set in the static constructor
.field public static final sDensity:I = 0x0

.field private static sIconCache:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig; = null

.field private static sIconMapping:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIconTransformMatrix:Landroid/graphics/Matrix; = null

.field private static sIconTransformNeeded:Z = false

.field private static final sMaxContentRatio:F = 2.0f

.field private static sPaintForTransformBitmap:Landroid/graphics/Paint; = null

.field private static final sRGBMask:I = 0xffffff

.field private static sRawIconCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sSystemResource:Landroid/content/res/Resources;

.field private static sThemeRuntimeManager:Lmiui/content/res/ThemeRuntimeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 95
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lmiui/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    .line 96
    sget-object v0, Lmiui/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Lmiui/content/res/IconCustomizer;->sDensity:I

    .line 98
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getIconSize()I

    move-result v0

    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    .line 99
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getIconSize()I

    move-result v0

    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    .line 101
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lmiui/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    .line 104
    sput-object v4, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    .line 105
    sput-object v4, Lmiui/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    .line 106
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/content/res/IconCustomizer;->sIconTransformNeeded:Z

    .line 127
    sget-object v0, Lmiui/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    .line 381
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    .line 383
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.contacts.activities.TwelveKeyDialer.png"

    const-string v2, "com.android.contacts.TwelveKeyDialer.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.miui.weather2.png"

    const-string v2, "com.miui.weather.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.miui.gallery.png"

    const-string v2, "com.android.gallery.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.gallery3d.png"

    const-string v2, "com.cooliris.media.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.xiaomi.market.png"

    const-string v2, "com.miui.supermarket.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.wali.miui.networkassistant.png"

    const-string v2, "com.android.monitor.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.camera.CameraEntry.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.htc.album.png"

    const-string v2, "com.miui.gallery.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.htc.fm.activity.FMRadioMain.png"

    const-string v2, "com.miui.fmradio.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.htc.fm.FMRadio.png"

    const-string v2, "com.miui.fmradio.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.htc.fm.png"

    const-string v2, "com.miui.fmradio.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.sec.android.app.camera.Camera.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.sec.android.app.fm.png"

    const-string v2, "com.miui.fmradio.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.gallery3d#com.android.camera.CameraLauncher.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.hwcamera.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.huawei.android.FMRadio.png"

    const-string v2, "com.miui.fmradio.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.sonyericsson.android.camera.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.sonyericsson.fmradio.png"

    const-string v2, "com.miui.fmradio.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.motorola.Camera.Camera.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.lge.camera.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.oppo.camera.OppoCamera.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.lenovo.scg#com.android.camera.CameraLauncher.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.lenovo.fm.png"

    const-string v2, "com.miui.fmradio.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lmiui/content/res/IconCustomizer;->sPaintForTransformBitmap:Landroid/graphics/Paint;

    .line 754
    sput-object v4, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    return-void
.end method

.method private static RGBToColor([I)I
    .locals 2
    .parameter "RGB"

    .prologue
    .line 1116
    const/4 v0, 0x0

    aget v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget v1, p0, v1

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x2

    aget v1, p0, v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static calcBackgroundColor(II[I)[F
    .locals 12
    .parameter "pixelSize"
    .parameter "strideSize"
    .parameter "basePixels"

    .prologue
    .line 1045
    const/4 v6, 0x0

    .line 1046
    .local v6, sum:I
    const/4 v8, 0x3

    new-array v7, v8, [I

    fill-array-data v7, :array_0

    .line 1049
    .local v7, sumRGB:[I
    const/4 v8, 0x3

    new-array v0, v8, [I

    fill-array-data v0, :array_1

    .line 1053
    .local v0, RGB:[I
    add-int/lit8 v3, p0, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_1

    .line 1054
    aget v8, p2, v3

    const v9, 0xffffff

    and-int v1, v8, v9

    .line 1056
    .local v1, color:I
    if-lez v1, :cond_0

    .line 1058
    const/4 v8, 0x0

    aget v9, v7, v8

    const/high16 v10, 0xff

    and-int/2addr v10, v1

    shr-int/lit8 v10, v10, 0x10

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 1059
    const/4 v8, 0x1

    aget v9, v7, v8

    const v10, 0xff00

    and-int/2addr v10, v1

    shr-int/lit8 v10, v10, 0x8

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 1060
    const/4 v8, 0x2

    aget v9, v7, v8

    and-int/lit16 v10, v1, 0xff

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 1061
    add-int/lit8 v6, v6, 0x1

    .line 1053
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1064
    .end local v1           #color:I
    :cond_1
    if-lez v6, :cond_2

    .line 1065
    const/4 v8, 0x0

    aget v9, v7, v8

    div-int/2addr v9, v6

    aput v9, v7, v8

    .line 1066
    const/4 v8, 0x1

    aget v9, v7, v8

    div-int/2addr v9, v6

    aput v9, v7, v8

    .line 1067
    const/4 v8, 0x2

    aget v9, v7, v8

    div-int/2addr v9, v6

    aput v9, v7, v8

    .line 1071
    :cond_2
    invoke-static {v7}, Lmiui/content/res/IconCustomizer;->RGBToColor([I)I

    move-result v1

    .line 1072
    .restart local v1       #color:I
    invoke-static {v1, v0}, Lmiui/content/res/IconCustomizer;->getSaturation(I[I)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3f947ae147ae147bL

    cmpg-double v8, v8, v10

    if-gez v8, :cond_3

    .line 1073
    const/4 v1, 0x0

    .line 1105
    :goto_1
    invoke-static {v1, v7}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    .line 1106
    const/4 v8, 0x3

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v7, v10

    int-to-float v10, v10

    const/high16 v11, 0x437f

    div-float/2addr v10, v11

    aput v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v7, v10

    int-to-float v10, v10

    const/high16 v11, 0x437f

    div-float/2addr v10, v11

    aput v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x2

    aget v10, v7, v10

    int-to-float v10, v10

    const/high16 v11, 0x437f

    div-float/2addr v10, v11

    aput v10, v8, v9

    return-object v8

    .line 1076
    :cond_3
    const/4 v8, 0x2

    new-array v5, v8, [[I

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [I

    fill-array-data v9, :array_2

    aput-object v9, v5, v8

    const/4 v8, 0x1

    const/4 v9, 0x2

    new-array v9, v9, [I

    fill-array-data v9, :array_3

    aput-object v9, v5, v8

    .line 1083
    .local v5, mappingSections:[[I
    const/4 v6, 0x0

    .line 1084
    const/4 v3, 0x0

    :goto_2
    array-length v8, v5

    if-ge v3, v8, :cond_4

    .line 1085
    aget-object v8, v5, v3

    const/4 v9, 0x1

    aget v8, v8, v9

    aget-object v9, v5, v3

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-int/2addr v8, v9

    add-int/2addr v6, v8

    .line 1084
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1088
    :cond_4
    invoke-static {v1, v0}, Lmiui/content/res/IconCustomizer;->getHue(I[I)F

    move-result v2

    .line 1089
    .local v2, hue:F
    int-to-float v8, v6

    mul-float/2addr v8, v2

    const/high16 v9, 0x43b4

    div-float v2, v8, v9

    .line 1090
    const/4 v3, 0x0

    :goto_3
    array-length v8, v5

    if-ge v3, v8, :cond_6

    .line 1091
    aget-object v8, v5, v3

    const/4 v9, 0x1

    aget v8, v8, v9

    aget-object v9, v5, v3

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-int v4, v8, v9

    .line 1092
    .local v4, length:I
    int-to-float v8, v4

    cmpl-float v8, v2, v8

    if-lez v8, :cond_5

    .line 1093
    int-to-float v8, v4

    sub-float/2addr v2, v8

    .line 1090
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1095
    :cond_5
    aget-object v8, v5, v3

    const/4 v9, 0x0

    aget v8, v8, v9

    int-to-float v8, v8

    add-float/2addr v2, v8

    .line 1099
    .end local v4           #length:I
    :cond_6
    invoke-static {v1, v2, v0}, Lmiui/content/res/IconCustomizer;->setHue(IF[I)I

    move-result v1

    .line 1102
    const v8, 0x3f19999a

    invoke-static {v1, v8, v0}, Lmiui/content/res/IconCustomizer;->setValue(IF[I)I

    move-result v1

    .line 1103
    const v8, 0x3ecccccd

    invoke-static {v1, v8, v0}, Lmiui/content/res/IconCustomizer;->setSaturation(IF[I)I

    move-result v1

    goto/16 :goto_1

    .line 1046
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1049
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1076
    :array_2
    .array-data 0x4
        0x64t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0xbet 0x0t 0x0t 0x0t
        0x13t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public static checkModIconsTimestamp()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x3e8

    const/4 v10, -0x1

    .line 228
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/system/customized_icons/"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 231
    :try_start_0
    sget-object v7, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const-string v8, "/data/system/customized_icons/"

    invoke-interface {v7, v8}, Llibcore/io/Os;->lstat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v7

    iget-wide v7, v7, Llibcore/io/StructStat;->st_ctime:J

    mul-long v0, v7, v11

    .line 232
    .local v0, createdTime:J
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/data/com.xiaomi.market/files/miui_mod_icons/"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 233
    .local v4, modifiedTime:J
    cmp-long v7, v4, v0

    if-gtz v7, :cond_0

    .line 234
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    new-instance v8, Ljava/io/File;

    const-string v9, "/system/media/theme/miui_mod_icons/version"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 236
    .local v6, reader:Ljava/io/BufferedReader;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    mul-long v4, v7, v11

    .line 237
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 239
    .end local v6           #reader:Ljava/io/BufferedReader;
    :cond_0
    cmp-long v7, v4, v0

    if-lez v7, :cond_1

    .line 240
    invoke-static {v3}, Lmiui/os/ExtraFileUtils;->deleteDir(Ljava/io/File;)Z

    .line 241
    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v0           #createdTime:J
    .end local v4           #modifiedTime:J
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 249
    const/16 v7, 0x1ed

    invoke-static {v3, v7, v10, v10}, Lmiui/os/ExtraFileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 251
    :cond_2
    return-void

    .line 243
    :catch_0
    move-exception v2

    .line 244
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static clearCache()V
    .locals 2

    .prologue
    .line 217
    sget-object v1, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    monitor-enter v1

    .line 218
    :try_start_0
    sget-object v0, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 219
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v1

    .line 221
    :try_start_1
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 222
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 223
    const/4 v0, 0x0

    sput-object v0, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    .line 224
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/content/res/IconCustomizer;->sIconTransformNeeded:Z

    .line 225
    return-void

    .line 219
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 222
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public static clearCustomizedIcons(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    const/16 v1, 0x3e8

    .line 254
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const-string v0, "/data/system/customized_icons/"

    invoke-static {v0}, Lmiui/os/Shell;->remove(Ljava/lang/String;)Z

    .line 256
    const-string v0, "/data/system/customized_icons/"

    invoke-static {v0}, Lmiui/os/Shell;->mkdirs(Ljava/lang/String;)Z

    .line 257
    const-string v0, "/data/system/customized_icons/"

    invoke-static {v0, v1, v1}, Lmiui/os/Shell;->chown(Ljava/lang/String;II)Z

    .line 258
    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/customized_icons/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/os/Shell;->remove(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private static colorToRGB(I[I)V
    .locals 2
    .parameter "color"
    .parameter "rgb"

    .prologue
    .line 1110
    const/4 v0, 0x0

    const/high16 v1, 0xff

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x10

    aput v1, p1, v0

    .line 1111
    const/4 v0, 0x1

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    aput v1, p1, v0

    .line 1112
    const/4 v0, 0x2

    and-int/lit16 v1, p0, 0xff

    aput v1, p1, v0

    .line 1113
    return-void
.end method

.method private static composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 23
    .parameter "base"
    .parameter "modMask"
    .parameter "modBackground"
    .parameter "modPattern"
    .parameter "modCover"

    .prologue
    .line 758
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 759
    .local v8, baseWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 760
    .local v9, baseHeight:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    div-int/lit8 v21, v4, 0x4

    .line 761
    .local v21, pixelSize:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    div-int/lit8 v5, v4, 0x4

    .line 763
    .local v5, strideSize:I
    move/from16 v0, v21

    new-array v3, v0, [I

    .line 764
    .local v3, basePixels:[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 765
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 768
    sget v4, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    sget v6, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 769
    .local v22, result:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 772
    .local v2, canvas:Landroid/graphics/Canvas;
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 775
    if-eqz p1, :cond_2

    .line 776
    sget-object v4, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    if-nez v4, :cond_1

    .line 777
    const-class v6, Lmiui/content/res/IconCustomizer;

    monitor-enter v6

    .line 778
    :try_start_0
    sget-object v4, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    if-nez v4, :cond_0

    .line 779
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    sput-object v4, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    .line 780
    sget-object v4, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 782
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    :cond_1
    const/4 v4, 0x0

    const/4 v6, 0x0

    sget-object v7, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 785
    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, v22

    move-object v11, v3

    move v13, v5

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 786
    const/4 v4, 0x0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 790
    :cond_2
    if-eqz p2, :cond_3

    .line 791
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 792
    .local v19, bgPaint:Landroid/graphics/Paint;
    move/from16 v0, v21

    invoke-static {v0, v5, v3}, Lmiui/content/res/IconCustomizer;->calcBackgroundColor(II[I)[F

    move-result-object v18

    .line 793
    .local v18, bgColor:[F
    new-instance v20, Landroid/graphics/ColorMatrix;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 794
    .local v20, cm:Landroid/graphics/ColorMatrix;
    const/16 v4, 0x14

    new-array v4, v4, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget v7, v18, v7

    aput v7, v4, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v4, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v4, v6

    const/4 v6, 0x3

    const/4 v7, 0x0

    aput v7, v4, v6

    const/4 v6, 0x4

    const/4 v7, 0x0

    aput v7, v4, v6

    const/4 v6, 0x5

    const/4 v7, 0x0

    aput v7, v4, v6

    const/4 v6, 0x6

    const/4 v7, 0x1

    aget v7, v18, v7

    aput v7, v4, v6

    const/4 v6, 0x7

    const/4 v7, 0x0

    aput v7, v4, v6

    const/16 v6, 0x8

    const/4 v7, 0x0

    aput v7, v4, v6

    const/16 v6, 0x9

    const/4 v7, 0x0

    aput v7, v4, v6

    const/16 v6, 0xa

    const/4 v7, 0x0

    aput v7, v4, v6

    const/16 v6, 0xb

    const/4 v7, 0x0

    aput v7, v4, v6

    const/16 v6, 0xc

    const/4 v7, 0x2

    aget v7, v18, v7

    aput v7, v4, v6

    const/16 v6, 0xd

    const/4 v7, 0x0

    aput v7, v4, v6

    const/16 v6, 0xe

    const/4 v7, 0x0

    aput v7, v4, v6

    const/16 v6, 0xf

    const/4 v7, 0x0

    aput v7, v4, v6

    const/16 v6, 0x10

    const/4 v7, 0x0

    aput v7, v4, v6

    const/16 v6, 0x11

    const/4 v7, 0x0

    aput v7, v4, v6

    const/16 v6, 0x12

    const/high16 v7, 0x3f80

    aput v7, v4, v6

    const/16 v6, 0x13

    const/4 v7, 0x0

    aput v7, v4, v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 798
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 799
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v4, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 803
    .end local v18           #bgColor:[F
    .end local v19           #bgPaint:Landroid/graphics/Paint;
    .end local v20           #cm:Landroid/graphics/ColorMatrix;
    :cond_3
    if-eqz p3, :cond_4

    .line 804
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 808
    :cond_4
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 811
    if-eqz p4, :cond_5

    .line 812
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v2, v0, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 815
    :cond_5
    return-object v22

    .line 782
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private static composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "base"
    .parameter "modMask"
    .parameter "modBackground"
    .parameter "modPattern"
    .parameter "modCover"

    .prologue
    .line 726
    invoke-static {}, Lmiui/content/res/IconCustomizer;->ensureIconConfigLoaded()V

    .line 727
    sget-object v5, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-object v5, v5, Lmiui/content/res/IconCustomizer$IconConfig;->mIconFilters:Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    if-eqz v5, :cond_0

    .line 728
    sget-object v5, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-object v5, v5, Lmiui/content/res/IconCustomizer$IconConfig;->mIconFilters:Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    invoke-virtual {v5, p0}, Lmiui/imagefilters/IImageFilter$ImageFilterGroup;->processAll(Landroid/graphics/Bitmap;)Lmiui/imagefilters/ImageData;

    move-result-object v2

    .line 729
    .local v2, imgData:Lmiui/imagefilters/ImageData;
    invoke-static {v2}, Lmiui/imagefilters/ImageData;->imageDataToBitmap(Lmiui/imagefilters/ImageData;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 731
    .end local v2           #imgData:Lmiui/imagefilters/ImageData;
    :cond_0
    sget-boolean v5, Lmiui/content/res/IconCustomizer;->sIconTransformNeeded:Z

    if-eqz v5, :cond_1

    .line 732
    sget-object v5, Lmiui/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    invoke-static {p0, v5}, Lmiui/content/res/IconCustomizer;->transformBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 735
    :cond_1
    invoke-static {p1}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 736
    .local v3, mask:Landroid/graphics/Bitmap;
    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 737
    .local v0, background:Landroid/graphics/Bitmap;
    invoke-static {p3}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 738
    .local v4, pattern:Landroid/graphics/Bitmap;
    invoke-static {p4}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 740
    .local v1, cover:Landroid/graphics/Bitmap;
    invoke-static {p0, v3, v0, v4, v1}, Lmiui/content/res/IconCustomizer;->composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    return-object v5
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "icon"
    .parameter "ratio"

    .prologue
    const/high16 v13, 0x4000

    .line 681
    sget-object v10, Lmiui/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v10

    .line 682
    :try_start_0
    sget v8, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    .line 683
    .local v8, targetWidth:I
    sget v7, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    .line 685
    .local v7, targetHeight:I
    instance-of v9, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v9, :cond_1

    .line 686
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v4, v0

    .line 687
    .local v4, painter:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v4, v8}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 688
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 698
    .end local v4           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 699
    .local v6, sourceWidth:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 700
    .local v5, sourceHeight:I
    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v11, v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 702
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 704
    .local v1, bitmap:Landroid/graphics/Bitmap;
    sget-object v3, Lmiui/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    .line 705
    .local v3, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 706
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 707
    int-to-float v9, v8

    int-to-float v11, v6

    mul-float/2addr v11, p1

    sub-float/2addr v9, v11

    div-float/2addr v9, v13

    int-to-float v11, v7

    int-to-float v12, v5

    mul-float/2addr v12, p1

    sub-float/2addr v11, v12

    div-float/2addr v11, v13

    invoke-virtual {v3, v9, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 708
    invoke-virtual {v3, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 709
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 710
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 712
    monitor-exit v10

    return-object v1

    .line 689
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v5           #sourceHeight:I
    .end local v6           #sourceWidth:I
    :cond_1
    instance-of v9, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v9, :cond_0

    .line 691
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    .line 692
    .local v2, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 693
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v9

    if-nez v9, :cond_0

    .line 694
    sget-object v9, Lmiui/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 713
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v7           #targetHeight:I
    .end local v8           #targetWidth:I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method private static ensureIconConfigLoaded()V
    .locals 2

    .prologue
    .line 744
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    if-nez v0, :cond_1

    .line 745
    const-class v1, Lmiui/content/res/IconCustomizer;

    monitor-enter v1

    .line 746
    :try_start_0
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    if-nez v0, :cond_0

    .line 747
    invoke-static {}, Lmiui/content/res/IconCustomizer;->loadIconConfig()Lmiui/content/res/IconCustomizer$IconConfig;

    move-result-object v0

    sput-object v0, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    .line 748
    invoke-static {}, Lmiui/content/res/IconCustomizer;->makeIconMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    sput-object v0, Lmiui/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    .line 750
    :cond_0
    monitor-exit v1

    .line 752
    :cond_1
    return-void

    .line 750
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "base"

    .prologue
    .line 482
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .parameter "base"
    .parameter "mask"
    .parameter "background"
    .parameter "pattern"
    .parameter "cover"
    .parameter "cropOutside"

    .prologue
    .line 494
    invoke-static {p0, p5}, Lmiui/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v1

    invoke-static {p0, v1}, Lmiui/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 495
    .local v0, icon:Landroid/graphics/Bitmap;
    invoke-static {v0, p1, p2, p3, p4}, Lmiui/content/res/IconCustomizer;->composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 496
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .parameter "base"
    .parameter "cropOutside"

    .prologue
    .line 486
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v1

    invoke-static {p0, v1}, Lmiui/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 487
    .local v0, icon:Landroid/graphics/Bitmap;
    const-string v1, "icon_mask.png"

    const-string v2, "icon_background.png"

    const-string v3, "icon_pattern.png"

    const-string v4, "icon_border.png"

    invoke-static {v0, v1, v2, v3, v4}, Lmiui/content/res/IconCustomizer;->composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 488
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static generateShortcutIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .parameter "base"

    .prologue
    .line 476
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lmiui/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v1

    invoke-static {p0, v1}, Lmiui/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 477
    .local v0, icon:Landroid/graphics/Bitmap;
    const-string v1, "icon_mask.png"

    const/4 v2, 0x0

    const-string v3, "icon_shortcut.png"

    const-string v4, "icon_shortcut_arrow.png"

    invoke-static {v0, v1, v2, v3, v4}, Lmiui/content/res/IconCustomizer;->composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 478
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method private static getContentRatio(Landroid/graphics/drawable/Drawable;)F
    .locals 11
    .parameter "icon"

    .prologue
    const/high16 v10, 0x3f80

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v5, -0x4080

    .line 637
    instance-of v6, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v6, :cond_1

    .line 646
    .end local p0
    .local v0, bitmap:Landroid/graphics/Bitmap;
    .local v1, bottom:F
    .local v4, top:F
    :cond_0
    :goto_0
    return v5

    .line 639
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #bottom:F
    .end local v4           #top:F
    .restart local p0
    :cond_1
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 641
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v9, v8}, Lmiui/content/res/IconCustomizer;->getEdgePosition(Landroid/graphics/Bitmap;ZZ)I

    move-result v6

    int-to-float v4, v6

    .restart local v4       #top:F
    cmpg-float v6, v4, v7

    if-ltz v6, :cond_0

    .line 642
    invoke-static {v0, v9, v9}, Lmiui/content/res/IconCustomizer;->getEdgePosition(Landroid/graphics/Bitmap;ZZ)I

    move-result v6

    int-to-float v1, v6

    .restart local v1       #bottom:F
    cmpg-float v6, v1, v7

    if-ltz v6, :cond_0

    .line 643
    invoke-static {v0, v8, v8}, Lmiui/content/res/IconCustomizer;->getEdgePosition(Landroid/graphics/Bitmap;ZZ)I

    move-result v6

    int-to-float v2, v6

    .local v2, left:F
    cmpg-float v6, v2, v7

    if-ltz v6, :cond_0

    .line 644
    invoke-static {v0, v8, v9}, Lmiui/content/res/IconCustomizer;->getEdgePosition(Landroid/graphics/Bitmap;ZZ)I

    move-result v6

    int-to-float v3, v6

    .local v3, right:F
    cmpg-float v6, v3, v7

    if-ltz v6, :cond_0

    .line 646
    sget v5, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    int-to-float v5, v5

    sub-float v6, v3, v2

    add-float/2addr v6, v10

    div-float/2addr v5, v6

    sget v6, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    int-to-float v6, v6

    sub-float v7, v1, v4

    add-float/2addr v7, v10

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    goto :goto_0
.end method

.method public static getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 6
    .parameter "context"
    .parameter "filename"

    .prologue
    const/4 v2, 0x0

    .line 515
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 516
    .local v1, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lmiui/content/res/IconCustomizer;->getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/content/pm/ApplicationInfo;ILandroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 6
    .parameter "context"
    .parameter "packageName"
    .parameter "className"
    .parameter "appInfo"
    .parameter "resId"

    .prologue
    .line 505
    invoke-static {}, Lmiui/content/res/IconCustomizer;->ensureIconConfigLoaded()V

    .line 506
    invoke-static {p1, p2}, Lmiui/content/res/IconCustomizer;->getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-boolean v5, v0, Lmiui/content/res/IconCustomizer$IconConfig;->mUseModIcon:Z

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    invoke-static/range {v0 .. v5}, Lmiui/content/res/IconCustomizer;->getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/content/pm/ApplicationInfo;ILandroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 6
    .parameter "context"
    .parameter "packageName"
    .parameter "className"
    .parameter "original"

    .prologue
    .line 510
    invoke-static {}, Lmiui/content/res/IconCustomizer;->ensureIconConfigLoaded()V

    .line 511
    invoke-static {p1, p2}, Lmiui/content/res/IconCustomizer;->getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-boolean v5, v0, Lmiui/content/res/IconCustomizer$IconConfig;->mUseModIcon:Z

    move-object v0, p0

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lmiui/content/res/IconCustomizer;->getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/content/pm/ApplicationInfo;ILandroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomizedIconFromCache(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 500
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private static getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/content/pm/ApplicationInfo;ILandroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9
    .parameter "context"
    .parameter
    .parameter "appInfo"
    .parameter "resId"
    .parameter "original"
    .parameter "tryModIcon"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/ApplicationInfo;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "Z)",
            "Landroid/graphics/drawable/BitmapDrawable;"
        }
    .end annotation

    .prologue
    .local p1, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 522
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 523
    .local v2, filename:Ljava/lang/String;
    invoke-static {v2}, Lmiui/content/res/IconCustomizer;->getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 524
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 562
    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .local v1, drawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object v1

    .line 526
    .end local v1           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v0       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    invoke-static {v2}, Lmiui/content/res/IconCustomizer;->getDrawableFromStaticCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 528
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 529
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lmiui/content/res/IconCustomizer;->getIconFromTheme(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 528
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 532
    :cond_1
    if-nez v0, :cond_6

    .line 533
    const/4 v4, 0x0

    .line 534
    .local v4, icon:Landroid/graphics/Bitmap;
    if-eqz p5, :cond_2

    .line 535
    const/4 v3, 0x0

    :goto_2
    if-nez v4, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 536
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lmiui/content/res/IconCustomizer;->getMiuiModIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 535
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 540
    :cond_2
    if-nez v4, :cond_4

    .line 541
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 542
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, p3, p2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 544
    :cond_3
    if-eqz p4, :cond_4

    .line 545
    invoke-static {p4, v8}, Lmiui/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v5

    invoke-static {p4, v5}, Lmiui/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 549
    :cond_4
    if-eqz v4, :cond_5

    .line 550
    const-string v5, "IconCustomizer"

    const-string v6, "Generate customized icon for %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const-string v5, "icon_mask.png"

    const-string v6, "icon_background.png"

    const-string v7, "icon_pattern.png"

    const-string v8, "icon_border.png"

    invoke-static {v4, v5, v6, v7, v8}, Lmiui/content/res/IconCustomizer;->composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 552
    invoke-static {v2, v4, p0}, Lmiui/content/res/IconCustomizer;->saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V

    .line 554
    :cond_5
    invoke-static {v4}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 557
    .end local v4           #icon:Landroid/graphics/Bitmap;
    :cond_6
    if-eqz v0, :cond_7

    .line 558
    sget-object v6, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v6

    .line 559
    :try_start_0
    sget-object v5, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    monitor-exit v6

    :cond_7
    move-object v1, v0

    .line 562
    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v1       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    goto/16 :goto_0

    .line 560
    .end local v1           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v0       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private static getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .parameter "name"

    .prologue
    .line 460
    const/4 v1, 0x0

    .line 461
    .local v1, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    sget-object v3, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v3

    .line 462
    :try_start_0
    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/ref/WeakReference;

    move-object v1, v0

    .line 463
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    :goto_0
    return-object v2

    .line 463
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 464
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getDrawableFromStaticCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .parameter "filename"

    .prologue
    .line 445
    const/4 v0, 0x0

    .line 446
    .local v0, icon:Landroid/graphics/Bitmap;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/customized_icons/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, pathName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 448
    .local v1, iconFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 449
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 450
    if-nez v0, :cond_0

    .line 453
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 456
    :cond_0
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    return-object v3
.end method

.method private static getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 609
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private static getEdgePosition(Landroid/graphics/Bitmap;ZZ)I
    .locals 9
    .parameter "bitmap"
    .parameter "isHorizontal"
    .parameter "isInvert"

    .prologue
    const/16 v8, 0x32

    const/4 v7, 0x1

    const/4 v5, -0x1

    .line 651
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 652
    .local v2, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 654
    .local v0, height:I
    if-nez p2, :cond_2

    move v3, v5

    .line 655
    .local v3, x:I
    :goto_0
    if-nez p2, :cond_3

    move v4, v5

    .line 657
    .local v4, y:I
    :goto_1
    const/4 v1, 0x0

    .line 658
    .local v1, length:I
    :cond_0
    if-nez v1, :cond_1

    .line 659
    if-eqz p1, :cond_7

    .line 660
    if-eqz p2, :cond_4

    move v6, v5

    :goto_2
    add-int/2addr v4, v6

    .line 661
    if-ltz v4, :cond_1

    if-lt v4, v0, :cond_5

    .line 676
    :cond_1
    if-eqz p1, :cond_a

    .end local v2           #width:I
    :goto_3
    mul-int/lit8 v6, v2, 0x1

    div-int/lit8 v6, v6, 0x2

    if-ge v1, v6, :cond_b

    .line 677
    .end local v4           #y:I
    :goto_4
    return v5

    .end local v1           #length:I
    .end local v3           #x:I
    .restart local v2       #width:I
    :cond_2
    move v3, v2

    .line 654
    goto :goto_0

    .restart local v3       #x:I
    :cond_3
    move v4, v0

    .line 655
    goto :goto_1

    .restart local v1       #length:I
    .restart local v4       #y:I
    :cond_4
    move v6, v7

    .line 660
    goto :goto_2

    .line 663
    :cond_5
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_0

    .line 664
    invoke-virtual {p0, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    ushr-int/lit8 v6, v6, 0x18

    if-le v6, v8, :cond_6

    add-int/lit8 v1, v1, 0x1

    .line 663
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 668
    :cond_7
    if-eqz p2, :cond_9

    move v6, v5

    :goto_6
    add-int/2addr v3, v6

    .line 669
    if-ltz v3, :cond_1

    if-ge v3, v2, :cond_1

    .line 671
    const/4 v4, 0x0

    :goto_7
    if-ge v4, v0, :cond_0

    .line 672
    invoke-virtual {p0, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    ushr-int/lit8 v6, v6, 0x18

    if-le v6, v8, :cond_8

    add-int/lit8 v1, v1, 0x1

    .line 671
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_9
    move v6, v7

    .line 668
    goto :goto_6

    :cond_a
    move v2, v0

    .line 676
    goto :goto_3

    .line 677
    .end local v2           #width:I
    :cond_b
    if-eqz p1, :cond_c

    .end local v4           #y:I
    :goto_8
    move v5, v4

    goto :goto_4

    .restart local v4       #y:I
    :cond_c
    move v4, v3

    goto :goto_8
.end method

.method public static getFancyIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "info"
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 427
    invoke-static {p1, p2}, Lmiui/content/res/IconCustomizer;->getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 428
    .local v2, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    iget v4, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    if-nez v4, :cond_0

    .line 429
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 432
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 433
    .local v1, name:Ljava/lang/String;
    const-string v4, ".png"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 434
    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, ".png"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 436
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fancy_icons/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 437
    .local v3, relativePath:Ljava/lang/String;
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "manifest.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/content/res/ThemeResourcesSystem;->hasIcon(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 441
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #relativePath:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 431
    .restart local v1       #name:Ljava/lang/String;
    .restart local v3       #relativePath:Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #relativePath:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 205
    if-nez p1, :cond_0

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    :goto_0
    return-object v0

    .line 209
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 213
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getFileOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 6
    .parameter "path"

    .prologue
    .line 354
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 355
    .local v0, file:Ljava/io/File;
    const/4 v1, 0x0

    .line 357
    .local v1, outputStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .local v2, outputStream:Ljava/io/FileOutputStream;
    const/16 v3, 0x1b4

    const/4 v4, -0x1

    const/4 v5, -0x1

    :try_start_1
    invoke-static {p0, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 361
    .end local v2           #outputStream:Ljava/io/FileOutputStream;
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    :goto_0
    return-object v1

    .line 359
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #outputStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2           #outputStream:Ljava/io/FileOutputStream;
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method private static getHue(I[I)F
    .locals 12
    .parameter "color"
    .parameter "RGB"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x4270

    const/4 v8, 0x2

    .line 1169
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    .line 1171
    aget v5, p1, v10

    aget v6, p1, v11

    aget v7, p1, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1172
    .local v3, min:I
    aget v5, p1, v10

    aget v6, p1, v11

    aget v7, p1, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1174
    .local v2, max:I
    sub-int v4, v2, v3

    .line 1175
    .local v4, range:I
    if-nez v4, :cond_0

    .line 1176
    const/4 v0, 0x0

    .line 1186
    :goto_0
    return v0

    .line 1178
    :cond_0
    const/4 v1, 0x0

    .line 1179
    .local v1, index:I
    :goto_1
    if-ge v1, v8, :cond_1

    aget v5, p1, v1

    if-eq v3, v5, :cond_1

    .line 1180
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1182
    :cond_1
    add-int/lit8 v5, v1, 0x1

    rem-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x78

    int-to-float v0, v5

    .line 1183
    .local v0, hue:F
    add-int/lit8 v5, v1, 0x2

    rem-int/lit8 v5, v5, 0x3

    aget v5, p1, v5

    sub-int/2addr v5, v3

    int-to-float v5, v5

    mul-float/2addr v5, v9

    int-to-float v6, v4

    div-float/2addr v5, v6

    add-float/2addr v0, v5

    .line 1184
    add-int/lit8 v5, v1, 0x1

    rem-int/lit8 v5, v5, 0x3

    aget v5, p1, v5

    sub-int v5, v2, v5

    int-to-float v5, v5

    mul-float/2addr v5, v9

    int-to-float v6, v4

    div-float/2addr v5, v6

    add-float/2addr v0, v5

    .line 1186
    goto :goto_0
.end method

.method private static getIconFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "name"

    .prologue
    .line 468
    const/4 v1, 0x0

    .line 469
    .local v1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    sget-object v3, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    monitor-enter v3

    .line 470
    :try_start_0
    sget-object v2, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/ref/SoftReference;

    move-object v1, v0

    .line 471
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    :goto_0
    return-object v2

    .line 471
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 472
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getIconFromTheme(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "filename"

    .prologue
    .line 166
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/content/res/ThemeResourcesSystem;->getIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "packageName"
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 590
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 591
    .local v2, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, fileName:Ljava/lang/String;
    sget-object v3, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 594
    .local v1, mappingName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 595
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 602
    const-string v3, "%s.png"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    :cond_1
    return-object v2
.end method

.method private static getIconSize()I
    .locals 2

    .prologue
    .line 170
    sget v1, Lmiui/content/res/IconCustomizer;->sDensity:I

    sparse-switch v1, :sswitch_data_0

    .line 177
    sget v1, Lmiui/content/res/IconCustomizer;->sDensity:I

    mul-int/lit8 v1, v1, 0x5a

    div-int/lit16 v0, v1, 0xf0

    .line 178
    .local v0, px:I
    rem-int/lit8 v1, v0, 0x2

    add-int/2addr v0, v1

    .line 179
    :goto_0
    return v0

    .line 172
    .end local v0           #px:I
    :sswitch_0
    const/16 v0, 0xc0

    goto :goto_0

    .line 174
    :sswitch_1
    const/16 v0, 0x88

    goto :goto_0

    .line 170
    nop

    :sswitch_data_0
    .sparse-switch
        0x140 -> :sswitch_1
        0x1e0 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getMiuiModIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "fileName"

    .prologue
    .line 566
    sget-boolean v2, Lmiui/os/Build;->IS_CU_CUSTOMIZATION:Z

    if-eqz v2, :cond_0

    .line 567
    const-string v2, "com.android.stk.png"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 568
    const-string p0, "com.android.stk.cu.png"

    .line 575
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/com.xiaomi.market/files/miui_mod_icons/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 576
    .local v1, iconFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 577
    new-instance v1, Ljava/io/File;

    .end local v1           #iconFile:Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/media/theme/miui_mod_icons/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 580
    .restart local v1       #iconFile:Ljava/io/File;
    :cond_1
    const/4 v0, 0x0

    .line 581
    .local v0, icon:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 582
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 583
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 586
    :cond_2
    return-object v0

    .line 570
    .end local v0           #icon:Landroid/graphics/Bitmap;
    .end local v1           #iconFile:Ljava/io/File;
    :cond_3
    const-string v2, "com.android.stk.StkLauncherActivityII.png"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 571
    const-string p0, "com.android.stk.cu.2.png"

    goto :goto_0
.end method

.method public static getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "filename"

    .prologue
    .line 147
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 162
    :cond_0
    :goto_0
    return-object v0

    .line 149
    :cond_1
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getIconFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 150
    .local v0, icon:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 151
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getIconFromTheme(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 152
    if-nez v0, :cond_2

    .line 153
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getMiuiModIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 155
    :cond_2
    if-eqz v0, :cond_0

    .line 156
    sget-object v2, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    monitor-enter v2

    .line 157
    :try_start_0
    sget-object v1, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getRawIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .parameter "filename"

    .prologue
    .line 134
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 135
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_0

    .line 136
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    .line 138
    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v2

    .line 139
    :try_start_0
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    monitor-exit v2

    .line 143
    :cond_0
    return-object v0

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getSaturation(I[I)F
    .locals 8
    .parameter "color"
    .parameter "RGB"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1142
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    .line 1144
    aget v2, p1, v5

    aget v3, p1, v6

    aget v4, p1, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1145
    .local v1, min:I
    aget v2, p1, v5

    aget v3, p1, v6

    aget v4, p1, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1146
    .local v0, max:I
    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    .line 1147
    :cond_0
    int-to-float v2, p0

    .line 1149
    :goto_0
    return v2

    :cond_1
    const/high16 v2, 0x3f80

    sub-int v3, v0, v1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method private static getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F
    .locals 9
    .parameter "icon"
    .parameter "cropOutside"

    .prologue
    const/high16 v5, 0x3f80

    .line 613
    instance-of v6, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v6, :cond_1

    .line 632
    :cond_0
    :goto_0
    return v5

    .line 615
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 616
    .local v4, sourceWidth:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 617
    .local v3, sourceHeight:I
    if-lez v4, :cond_0

    if-lez v4, :cond_0

    .line 619
    sget v6, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    int-to-float v6, v6

    int-to-float v7, v4

    div-float v2, v6, v7

    .line 620
    .local v2, ratioW:F
    sget v6, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    int-to-float v6, v6

    int-to-float v7, v3

    div-float v1, v6, v7

    .line 622
    .local v1, ratioH:F
    if-eqz p1, :cond_2

    .line 623
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_0

    .line 626
    :cond_2
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getContentRatio(Landroid/graphics/drawable/Drawable;)F

    move-result v0

    .line 627
    .local v0, contentRatio:F
    const-string v6, "IconCustomizer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content Ratio = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-lez v6, :cond_3

    const/high16 v6, 0x4000

    cmpg-float v6, v0, v6

    if-gtz v6, :cond_3

    .line 629
    const v5, 0x3f666666

    mul-float/2addr v5, v0

    goto :goto_0

    .line 632
    :cond_3
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    goto :goto_0
.end method

.method private static getServiceManager(Landroid/content/Context;)Lmiui/content/res/ThemeRuntimeManager;
    .locals 3
    .parameter "context"

    .prologue
    .line 367
    sget-object v1, Lmiui/content/res/IconCustomizer;->sThemeRuntimeManager:Lmiui/content/res/ThemeRuntimeManager;

    if-nez v1, :cond_2

    .line 368
    const-class v2, Lmiui/content/res/IconCustomizer;

    monitor-enter v2

    .line 369
    :try_start_0
    sget-object v1, Lmiui/content/res/IconCustomizer;->sThemeRuntimeManager:Lmiui/content/res/ThemeRuntimeManager;

    if-nez v1, :cond_1

    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 371
    .local v0, saveContext:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 372
    move-object v0, p0

    .line 374
    :cond_0
    new-instance v1, Lmiui/content/res/ThemeRuntimeManager;

    invoke-direct {v1, v0}, Lmiui/content/res/ThemeRuntimeManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lmiui/content/res/IconCustomizer;->sThemeRuntimeManager:Lmiui/content/res/ThemeRuntimeManager;

    .line 376
    .end local v0           #saveContext:Landroid/content/Context;
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    :cond_2
    sget-object v1, Lmiui/content/res/IconCustomizer;->sThemeRuntimeManager:Lmiui/content/res/ThemeRuntimeManager;

    return-object v1

    .line 376
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static getValue(I[I)F
    .locals 4
    .parameter "color"
    .parameter "RGB"

    .prologue
    .line 1120
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    .line 1122
    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1123
    .local v0, max:I
    const/high16 v1, 0x3f80

    int-to-float v2, v0

    mul-float/2addr v1, v2

    const/high16 v2, 0x437f

    div-float/2addr v1, v2

    return v1
.end method

.method public static hdpiIconSizeToCurrent(D)D
    .locals 4
    .parameter "pixelSize"

    .prologue
    .line 920
    sget v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    int-to-double v0, v0

    mul-double/2addr v0, p0

    const-wide v2, 0x4056800000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static hdpiIconSizeToCurrent(F)F
    .locals 2
    .parameter "pixelSize"

    .prologue
    .line 912
    sget v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, p0

    const/high16 v1, 0x42b4

    div-float/2addr v0, v1

    return v0
.end method

.method public static hdpiIconSizeToCurrent(I)I
    .locals 2
    .parameter "pixelSize"

    .prologue
    .line 916
    sget v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    mul-int/2addr v0, p0

    int-to-float v0, v0

    const/high16 v1, 0x42b4

    div-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static loadIconConfig()Lmiui/content/res/IconCustomizer$IconConfig;
    .locals 23

    .prologue
    .line 924
    new-instance v10, Lmiui/content/res/IconCustomizer$IconConfig;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Lmiui/content/res/IconCustomizer$IconConfig;-><init>(Lmiui/content/res/IconCustomizer$1;)V

    .line 940
    .local v10, iconConfig:Lmiui/content/res/IconCustomizer$IconConfig;
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v20

    const-string v21, "transform_config.xml"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lmiui/content/res/ThemeResourcesSystem;->getIconStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v11

    .line 941
    .local v11, input:Ljava/io/InputStream;
    if-nez v11, :cond_1

    .line 942
    const-string v20, "IconCustomizer"

    const-string v21, "can\'t load transform_config.xml"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_0
    :goto_0
    return-object v10

    .line 946
    :cond_1
    const/16 v18, 0x0

    .line 947
    .local v18, root:Lorg/w3c/dom/Element;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 949
    .local v8, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 950
    .local v2, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v2, v11}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 957
    :try_start_1
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 963
    if-eqz v18, :cond_0

    .line 964
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 966
    .local v6, configs:Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    :try_start_2
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_14

    .line 967
    invoke-interface {v6, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeType()S
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 966
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 951
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #configs:Lorg/w3c/dom/NodeList;
    .end local v9           #i:I
    :catch_0
    move-exception v7

    .line 952
    .local v7, e:Ljava/lang/Exception;
    const-string v20, "IconCustomizer"

    const-string v21, "load icon config failed."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 958
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    :catch_1
    move-exception v7

    .line 959
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 970
    .end local v7           #e:Ljava/io/IOException;
    .restart local v6       #configs:Lorg/w3c/dom/NodeList;
    .restart local v9       #i:I
    :cond_3
    :try_start_3
    invoke-interface {v6, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 971
    .local v3, config:Lorg/w3c/dom/Element;
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v13

    .line 972
    .local v13, name:Ljava/lang/String;
    const-string v20, "IconFilters"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 973
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lmiui/content/res/IconCustomizer;->loadIconFilters(Lorg/w3c/dom/NodeList;)Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mIconFilters:Lmiui/imagefilters/IImageFilter$ImageFilterGroup;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 1036
    .end local v3           #config:Lorg/w3c/dom/Element;
    .end local v13           #name:Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 1037
    .local v7, e:Ljava/lang/Exception;
    const-string v20, "IconCustomizer"

    const-string v21, "transform_config.xml parse failed."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 974
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v3       #config:Lorg/w3c/dom/Element;
    .restart local v13       #name:Ljava/lang/String;
    :cond_4
    :try_start_4
    const-string v20, "PointsMapping"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 975
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 976
    .local v15, points:Lorg/w3c/dom/NodeList;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 977
    .local v16, pointsMappingFrom:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 978
    .local v17, pointsMappingTo:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v12, 0x0

    .local v12, j:I
    :goto_3
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    move/from16 v0, v20

    if-ge v12, v0, :cond_7

    .line 979
    invoke-interface {v15, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    .line 978
    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 982
    :cond_6
    invoke-interface {v15, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    .line 983
    .local v14, point:Lorg/w3c/dom/Element;
    const-string v20, "Point"

    invoke-interface {v14}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 984
    const-string v20, "fromX"

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    invoke-static/range {v20 .. v20}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 985
    const-string v20, "fromY"

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    invoke-static/range {v20 .. v20}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 986
    const-string v20, "toX"

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    invoke-static/range {v20 .. v20}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 987
    const-string v20, "toY"

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    invoke-static/range {v20 .. v20}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 991
    .end local v14           #point:Lorg/w3c/dom/Element;
    :cond_7
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    .line 992
    .local v19, size:I
    if-lez v19, :cond_2

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_2

    .line 993
    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    .line 994
    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingTo:[F

    .line 995
    const/4 v12, 0x0

    :goto_5
    move/from16 v0, v19

    if-ge v12, v0, :cond_2

    .line 996
    iget-object v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Float;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v20

    aput v20, v21, v12

    .line 997
    iget-object v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingTo:[F

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Float;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v20

    aput v20, v21, v12

    .line 995
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1000
    .end local v12           #j:I
    .end local v15           #points:Lorg/w3c/dom/NodeList;
    .end local v16           #pointsMappingFrom:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    .end local v17           #pointsMappingTo:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    .end local v19           #size:I
    :cond_8
    const-string v20, "Config"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 1001
    const-string v20, "name"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1002
    .local v4, configName:Ljava/lang/String;
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1003
    .local v5, configValue:Ljava/lang/String;
    const-string v20, "UseModIcon"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1004
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v20

    move/from16 v0, v20

    iput-boolean v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mUseModIcon:Z

    goto/16 :goto_2

    .line 1009
    .end local v4           #configName:Ljava/lang/String;
    .end local v5           #configValue:Ljava/lang/String;
    :cond_9
    const-string v20, "ScaleX"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 1010
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleX:F

    goto/16 :goto_2

    .line 1011
    :cond_a
    const-string v20, "ScaleY"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 1012
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleY:F

    goto/16 :goto_2

    .line 1013
    :cond_b
    const-string v20, "SkewX"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 1014
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mSkewX:F

    goto/16 :goto_2

    .line 1015
    :cond_c
    const-string v20, "SkewY"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 1016
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mSkewY:F

    goto/16 :goto_2

    .line 1017
    :cond_d
    const-string v20, "TransX"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 1018
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    invoke-static/range {v20 .. v20}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mTransX:F

    goto/16 :goto_2

    .line 1019
    :cond_e
    const-string v20, "TransY"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 1020
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    invoke-static/range {v20 .. v20}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mTransY:F

    goto/16 :goto_2

    .line 1021
    :cond_f
    const-string v20, "RotateX"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 1022
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateX:F

    goto/16 :goto_2

    .line 1023
    :cond_10
    const-string v20, "RotateY"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 1024
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateY:F

    goto/16 :goto_2

    .line 1025
    :cond_11
    const-string v20, "RotateZ"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 1026
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateZ:F

    goto/16 :goto_2

    .line 1027
    :cond_12
    const-string v20, "CameraX"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 1028
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    invoke-static/range {v20 .. v20}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraX:F

    goto/16 :goto_2

    .line 1029
    :cond_13
    const-string v20, "CameraY"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1030
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    invoke-static/range {v20 .. v20}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraY:F

    goto/16 :goto_2

    .line 1035
    .end local v3           #config:Lorg/w3c/dom/Element;
    .end local v13           #name:Ljava/lang/String;
    :cond_14
    const/16 v20, 0x1

    sput-boolean v20, Lmiui/content/res/IconCustomizer;->sIconTransformNeeded:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0
.end method

.method private static loadIconFilters(Lorg/w3c/dom/NodeList;)Lmiui/imagefilters/IImageFilter$ImageFilterGroup;
    .locals 28
    .parameter "configs"

    .prologue
    .line 845
    const-string v3, "ignoreWhenNotSupported"

    .line 846
    .local v3, IGNORE_WHEN_NOT_SUPPORT:Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 848
    .local v16, list:Ljava/util/List;,"Ljava/util/List<Lmiui/imagefilters/IImageFilter;>;"
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v26

    move/from16 v0, v26

    if-ge v11, v0, :cond_b

    .line 849
    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    .line 848
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 851
    :cond_1
    new-instance v6, Lmiui/imagefilters/ImageFilterBuilder;

    invoke-direct {v6}, Lmiui/imagefilters/ImageFilterBuilder;-><init>()V

    .line 852
    .local v6, builder:Lmiui/imagefilters/ImageFilterBuilder;
    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    .line 853
    .local v8, ele:Lorg/w3c/dom/Element;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v17

    .line 855
    .local v17, name:Ljava/lang/String;
    const-string v26, "Filter"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 856
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 857
    .local v10, filterChildren:Lorg/w3c/dom/NodeList;
    const/4 v13, 0x0

    .local v13, j:I
    :goto_2
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v26

    move/from16 v0, v26

    if-ge v13, v0, :cond_a

    .line 858
    invoke-interface {v10, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3

    .line 857
    :cond_2
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 860
    :cond_3
    invoke-interface {v10, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/Element;

    .line 861
    .local v20, paramEle:Lorg/w3c/dom/Element;
    const-string v26, "Param"

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 862
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 863
    .local v21, paramValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v26, "ignoreWhenNotSupported"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 865
    .local v24, strParamIgnoreWhenNotSupported:Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Element;->hasChildNodes()Z

    move-result v26

    if-eqz v26, :cond_6

    .line 866
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v19

    .line 867
    .local v19, paramChildNodes:Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    .local v14, k:I
    :goto_4
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v26

    move/from16 v0, v26

    if-ge v14, v0, :cond_6

    .line 868
    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_5

    .line 867
    :cond_4
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 871
    :cond_5
    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    check-cast v18, Lorg/w3c/dom/Element;

    .line 872
    .local v18, paramChildEle:Lorg/w3c/dom/Element;
    const-string v26, "IconFilters"

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 873
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lmiui/content/res/IconCustomizer;->loadIconFilters(Lorg/w3c/dom/NodeList;)Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 878
    .end local v14           #k:I
    .end local v18           #paramChildEle:Lorg/w3c/dom/Element;
    .end local v19           #paramChildNodes:Lorg/w3c/dom/NodeList;
    :cond_6
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-nez v26, :cond_8

    .line 879
    const-string v26, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 880
    .local v25, strParamValue:Ljava/lang/String;
    const-string v26, "\\|"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 881
    .local v5, arrParamValue:[Ljava/lang/String;
    move-object v4, v5

    .local v4, arr$:[Ljava/lang/String;
    array-length v15, v4

    .local v15, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_6
    if-ge v12, v15, :cond_8

    aget-object v22, v4, v12

    .line 882
    .local v22, str:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_7

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 886
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v5           #arrParamValue:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v15           #len$:I
    .end local v22           #str:Ljava/lang/String;
    .end local v25           #strParamValue:Ljava/lang/String;
    :cond_8
    const-string v26, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_9

    const/16 v26, 0x0

    :goto_7
    move-object/from16 v0, v27

    move-object/from16 v1, v21

    move/from16 v2, v26

    invoke-virtual {v6, v0, v1, v2}, Lmiui/imagefilters/ImageFilterBuilder;->addParam(Ljava/lang/String;Ljava/util/List;Z)V

    goto/16 :goto_3

    :cond_9
    sget-object v26, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    goto :goto_7

    .line 890
    .end local v20           #paramEle:Lorg/w3c/dom/Element;
    .end local v21           #paramValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v24           #strParamIgnoreWhenNotSupported:Ljava/lang/String;
    :cond_a
    const-string v26, "name"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Lmiui/imagefilters/ImageFilterBuilder;->setFilterName(Ljava/lang/String;)V

    .line 891
    const-string v26, "ignoreWhenNotSupported"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 892
    .local v23, strFilterIgnoreWhenNotSupported:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_c

    const/16 v26, 0x0

    :goto_8
    move/from16 v0, v26

    invoke-virtual {v6, v0}, Lmiui/imagefilters/ImageFilterBuilder;->setIgnoreWhenNotSupported(Z)V

    .line 896
    :try_start_0
    invoke-virtual {v6}, Lmiui/imagefilters/ImageFilterBuilder;->createImageFilter()Lmiui/imagefilters/IImageFilter;

    move-result-object v9

    .line 897
    .local v9, filter:Lmiui/imagefilters/IImageFilter;
    if-eqz v9, :cond_0

    .line 898
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lmiui/imagefilters/ImageFilterBuilder$NoSupportException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 900
    .end local v9           #filter:Lmiui/imagefilters/IImageFilter;
    :catch_0
    move-exception v7

    .line 901
    .local v7, e:Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;
    invoke-virtual {v7}, Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;->printStackTrace()V

    .line 902
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 908
    .end local v6           #builder:Lmiui/imagefilters/ImageFilterBuilder;
    .end local v7           #e:Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;
    .end local v8           #ele:Lorg/w3c/dom/Element;
    .end local v10           #filterChildren:Lorg/w3c/dom/NodeList;
    .end local v13           #j:I
    .end local v17           #name:Ljava/lang/String;
    .end local v23           #strFilterIgnoreWhenNotSupported:Ljava/lang/String;
    :cond_b
    new-instance v27, Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Lmiui/imagefilters/IImageFilter;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [Lmiui/imagefilters/IImageFilter;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lmiui/imagefilters/IImageFilter$ImageFilterGroup;-><init>([Lmiui/imagefilters/IImageFilter;)V

    return-object v27

    .line 892
    .restart local v6       #builder:Lmiui/imagefilters/ImageFilterBuilder;
    .restart local v8       #ele:Lorg/w3c/dom/Element;
    .restart local v10       #filterChildren:Lorg/w3c/dom/NodeList;
    .restart local v13       #j:I
    .restart local v17       #name:Ljava/lang/String;
    .restart local v23       #strFilterIgnoreWhenNotSupported:Ljava/lang/String;
    :cond_c
    sget-object v26, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    goto :goto_8
.end method

.method private static makeIconMatrix()Landroid/graphics/Matrix;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x4000

    .line 819
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 821
    .local v0, matrix:Landroid/graphics/Matrix;
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-object v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    if-eqz v1, :cond_0

    .line 822
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-object v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    sget-object v3, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-object v3, v3, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingTo:[F

    sget-object v4, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-object v4, v4, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    array-length v4, v4

    div-int/lit8 v5, v4, 0x2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 841
    :goto_0
    return-object v0

    .line 826
    :cond_0
    new-instance v6, Landroid/graphics/Camera;

    invoke-direct {v6}, Landroid/graphics/Camera;-><init>()V

    .line 827
    .local v6, camera:Landroid/graphics/Camera;
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateX:F

    invoke-virtual {v6, v1}, Landroid/graphics/Camera;->rotateX(F)V

    .line 828
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateY:F

    invoke-virtual {v6, v1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 829
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateZ:F

    invoke-virtual {v6, v1}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 830
    invoke-virtual {v6, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 833
    sget v1, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v2, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraX:F

    sub-float/2addr v1, v2

    sget v2, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sget-object v3, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v3, v3, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraY:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 834
    sget v1, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v2, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraX:F

    add-float/2addr v1, v2

    sget v2, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    sget-object v3, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v3, v3, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraY:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 837
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleX:F

    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v2, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 838
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mSkewX:F

    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v2, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mSkewY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postSkew(FF)Z

    goto :goto_0
.end method

.method public static prepareCustomizedIcons(Landroid/content/Context;Lmiui/content/res/IconCustomizer$CustomizedIconsListener;)V
    .locals 23
    .parameter "context"
    .parameter "l"

    .prologue
    .line 265
    const-string v19, "icon_mask.png"

    invoke-static/range {v19 .. v19}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 266
    .local v12, mask:Landroid/graphics/Bitmap;
    const-string v19, "icon_background.png"

    invoke-static/range {v19 .. v19}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 267
    .local v2, background:Landroid/graphics/Bitmap;
    const-string v19, "icon_pattern.png"

    invoke-static/range {v19 .. v19}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 268
    .local v13, pattern:Landroid/graphics/Bitmap;
    const-string v19, "icon_border.png"

    invoke-static/range {v19 .. v19}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 270
    .local v3, cover:Landroid/graphics/Bitmap;
    new-instance v10, Landroid/content/Intent;

    const-string v19, "android.intent.action.MAIN"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 271
    .local v10, launcherIntent:Landroid/content/Intent;
    const-string v19, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 274
    .local v14, pm:Landroid/content/pm/PackageManager;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v10, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 276
    .local v11, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p1, :cond_0

    .line 277
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lmiui/content/res/IconCustomizer$CustomizedIconsListener;->beforePrepareIcon(I)V

    .line 280
    :cond_0
    const/4 v15, 0x1

    .line 281
    .local v15, taskCnt:I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    .line 283
    .local v5, execService:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 284
    .local v17, time:J
    const-string v19, "IconCustomizer"

    const-string v20, "prepareCustomizedIcons start"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v7, futures:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/Future<*>;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 287
    .local v9, info:Landroid/content/pm/ResolveInfo;
    new-instance v19, Lmiui/content/res/IconCustomizer$1;

    move-object/from16 v0, v19

    invoke-direct {v0, v9, v14}, Lmiui/content/res/IconCustomizer$1;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V

    move-object/from16 v0, v19

    invoke-interface {v5, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    .line 292
    .local v6, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 294
    .end local v6           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    .end local v9           #info:Landroid/content/pm/ResolveInfo;
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Future;

    .line 296
    .restart local v6       #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    :try_start_0
    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 302
    :goto_2
    if-eqz p1, :cond_2

    .line 303
    add-int/lit8 v16, v15, 0x1

    .end local v15           #taskCnt:I
    .local v16, taskCnt:I
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lmiui/content/res/IconCustomizer$CustomizedIconsListener;->finishPrepareIcon(I)V

    move/from16 v15, v16

    .end local v16           #taskCnt:I
    .restart local v15       #taskCnt:I
    goto :goto_1

    .line 297
    :catch_0
    move-exception v4

    .line 298
    .local v4, e:Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 299
    .end local v4           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v4

    .line 300
    .local v4, e:Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_2

    .line 306
    .end local v4           #e:Ljava/util/concurrent/ExecutionException;
    .end local v6           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    :cond_3
    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 307
    const-string v19, "IconCustomizer"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "prepareCustomizedIcons end "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    sub-long v21, v21, v17

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    if-eqz p1, :cond_4

    .line 310
    invoke-interface/range {p1 .. p1}, Lmiui/content/res/IconCustomizer$CustomizedIconsListener;->finishAllIcons()V

    .line 312
    :cond_4
    return-void
.end method

.method private static saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .locals 5
    .parameter "fileName"
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 330
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, path:Ljava/lang/String;
    invoke-static {v2}, Lmiui/content/res/IconCustomizer;->getFileOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 334
    .local v1, outputStream:Ljava/io/FileOutputStream;
    if-nez v1, :cond_0

    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/cache/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-static {v2}, Lmiui/content/res/IconCustomizer;->getFileOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 339
    :cond_0
    if-nez v1, :cond_1

    .line 351
    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .end local v2           #path:Ljava/lang/String;
    :goto_0
    return-void

    .line 342
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #path:Ljava/lang/String;
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 343
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 344
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 345
    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->getServiceManager(Landroid/content/Context;)Lmiui/content/res/ThemeRuntimeManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lmiui/content/res/ThemeRuntimeManager;->saveIcon(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 346
    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .end local v2           #path:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 347
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 348
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 349
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveCustomizedIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .locals 2
    .parameter "packageName"
    .parameter "className"
    .parameter "dr"
    .parameter "context"

    .prologue
    .line 323
    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 324
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lmiui/content/res/IconCustomizer;->saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V

    .line 326
    :cond_0
    return-void
.end method

.method private static scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "icon"

    .prologue
    .line 183
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 201
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 185
    .restart local p0
    :cond_1
    sget v4, Lmiui/content/res/IconCustomizer;->sDensity:I

    invoke-virtual {p0, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 186
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sget v5, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    if-ne v4, v5, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget v5, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    if-eq v4, v5, :cond_0

    .line 190
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 191
    .local v2, scaleReverse:F
    const v4, 0x3dcccccd

    add-float/2addr v2, v4

    .line 192
    const/high16 v4, 0x4000

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v4, v5, :cond_3

    .line 193
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 194
    .local v3, tempBlur:Landroid/graphics/Bitmap;
    const/high16 v4, 0x3f80

    sub-float v4, v2, v4

    float-to-int v1, v4

    .line 195
    .local v1, blurRadius:I
    invoke-static {p0, v3, v1}, Lmiui/util/ImageUtils;->fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 196
    move-object p0, v3

    .line 199
    .end local v1           #blurRadius:I
    .end local v3           #tempBlur:Landroid/graphics/Bitmap;
    :cond_3
    sget v4, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    sget v5, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    const/4 v6, 0x1

    invoke-static {p0, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 200
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget v4, Lmiui/content/res/IconCustomizer;->sDensity:I

    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    move-object p0, v0

    .line 201
    goto :goto_0
.end method

.method private static setHue(IF[I)I
    .locals 12
    .parameter "color"
    .parameter "hue"
    .parameter "RGB"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/high16 v7, 0x43b4

    const/high16 v8, 0x4270

    .line 1190
    invoke-static {p0, p2}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    .line 1192
    aget v4, p2, v10

    aget v5, p2, v11

    const/4 v6, 0x2

    aget v6, p2, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1193
    .local v2, min:I
    aget v4, p2, v10

    aget v5, p2, v11

    const/4 v6, 0x2

    aget v6, p2, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1195
    .local v1, max:I
    sub-int v3, v1, v2

    .line 1196
    .local v3, range:I
    if-nez v3, :cond_0

    .line 1212
    .end local p0
    :goto_0
    return p0

    .line 1199
    .restart local p0
    :cond_0
    :goto_1
    cmpg-float v4, p1, v9

    if-gez v4, :cond_1

    .line 1200
    add-float/2addr p1, v7

    goto :goto_1

    .line 1201
    :cond_1
    :goto_2
    cmpl-float v4, p1, v7

    if-lez v4, :cond_2

    .line 1202
    sub-float/2addr p1, v7

    goto :goto_2

    .line 1204
    :cond_2
    const/high16 v4, 0x42f0

    div-float v4, p1, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 1205
    .local v0, index:I
    mul-int/lit8 v4, v0, 0x78

    int-to-float v4, v4

    sub-float/2addr p1, v4

    .line 1206
    add-int/lit8 v4, v0, 0x2

    rem-int/lit8 v0, v4, 0x3

    .line 1208
    aput v2, p2, v0

    .line 1209
    add-int/lit8 v4, v0, 0x2

    rem-int/lit8 v4, v4, 0x3

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-static {p1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    mul-float/2addr v6, v7

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    float-to-int v5, v5

    aput v5, p2, v4

    .line 1210
    add-int/lit8 v4, v0, 0x1

    rem-int/lit8 v4, v4, 0x3

    int-to-float v5, v1

    int-to-float v6, v3

    sub-float v7, p1, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    mul-float/2addr v6, v7

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    float-to-int v5, v5

    aput v5, p2, v4

    .line 1212
    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->RGBToColor([I)I

    move-result p0

    goto :goto_0
.end method

.method private static setSaturation(IF[I)I
    .locals 9
    .parameter "color"
    .parameter "saturation"
    .parameter "RGB"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1153
    invoke-static {p0, p2}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    .line 1155
    aget v3, p2, v6

    aget v4, p2, v7

    aget v5, p2, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1156
    .local v2, min:I
    aget v3, p2, v6

    aget v4, p2, v7

    aget v5, p2, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1157
    .local v1, max:I
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_1

    .line 1165
    .end local p0
    :cond_0
    :goto_0
    return p0

    .line 1160
    .restart local p0
    :cond_1
    const/high16 v3, 0x3f80

    sub-int v4, v1, v2

    int-to-float v4, v4

    mul-float/2addr v3, v4

    int-to-float v4, v1

    div-float v0, v3, v4

    .line 1161
    .local v0, currentSaturation:F
    int-to-float v3, v1

    aget v4, p2, v6

    sub-int v4, v1, v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    div-float/2addr v4, v0

    sub-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, p2, v6

    .line 1162
    int-to-float v3, v1

    aget v4, p2, v7

    sub-int v4, v1, v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    div-float/2addr v4, v0

    sub-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, p2, v7

    .line 1163
    int-to-float v3, v1

    aget v4, p2, v8

    sub-int v4, v1, v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    div-float/2addr v4, v0

    sub-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, p2, v8

    .line 1165
    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->RGBToColor([I)I

    move-result p0

    goto :goto_0
.end method

.method private static setValue(IF[I)I
    .locals 8
    .parameter "color"
    .parameter "value"
    .parameter "RGB"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1127
    invoke-static {p0, p2}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    .line 1129
    aget v2, p2, v5

    aget v3, p2, v6

    aget v4, p2, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1130
    .local v1, max:I
    if-nez v1, :cond_0

    .line 1138
    .end local p0
    :goto_0
    return p0

    .line 1133
    .restart local p0
    :cond_0
    const/high16 v2, 0x3f80

    int-to-float v3, v1

    mul-float/2addr v2, v3

    const/high16 v3, 0x437f

    div-float v0, v2, v3

    .line 1134
    .local v0, currentValue:F
    aget v2, p2, v5

    int-to-float v2, v2

    mul-float/2addr v2, p1

    div-float/2addr v2, v0

    float-to-int v2, v2

    aput v2, p2, v5

    .line 1135
    aget v2, p2, v6

    int-to-float v2, v2

    mul-float/2addr v2, p1

    div-float/2addr v2, v0

    float-to-int v2, v2

    aput v2, p2, v6

    .line 1136
    aget v2, p2, v7

    int-to-float v2, v2

    mul-float/2addr v2, p1

    div-float/2addr v2, v0

    float-to-int v2, v2

    aput v2, p2, v7

    .line 1138
    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->RGBToColor([I)I

    move-result p0

    goto :goto_0
.end method

.method private static transformBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "base"
    .parameter "matrix"

    .prologue
    .line 718
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 719
    .local v1, outBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 720
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 721
    .local v0, canvas:Landroid/graphics/Canvas;
    sget-object v2, Lmiui/content/res/IconCustomizer;->sPaintForTransformBitmap:Landroid/graphics/Paint;

    invoke-virtual {v0, p0, p1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 722
    return-object v1
.end method
