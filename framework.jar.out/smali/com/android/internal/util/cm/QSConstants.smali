.class public Lcom/android/internal/util/cm/QSConstants;
.super Ljava/lang/Object;
.source "QSConstants.java"


# static fields
.field public static TILES_DEFAULT:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TILE_AIRPLANE:Ljava/lang/String; = "toggleAirplane"

.field public static final TILE_AUTOROTATE:Ljava/lang/String; = "toggleAutoRotate"

.field public static final TILE_BATTERY:Ljava/lang/String; = "toggleBattery"

.field public static final TILE_BLUETOOTH:Ljava/lang/String; = "toggleBluetooth"

.field public static final TILE_BRIGHTNESS:Ljava/lang/String; = "toggleBrightness"

.field public static final TILE_CAMERA:Ljava/lang/String; = "toggleCamera"

.field public static final TILE_DELIMITER:Ljava/lang/String; = "|"

.field public static final TILE_EXPANDEDDESKTOP:Ljava/lang/String; = "toggleExpandedDesktop"

.field public static final TILE_GPS:Ljava/lang/String; = "toggleGPS"

.field public static final TILE_LOCKSCREEN:Ljava/lang/String; = "toggleLockScreen"

.field public static final TILE_LTE:Ljava/lang/String; = "toggleLte"

.field public static final TILE_MOBILEDATA:Ljava/lang/String; = "toggleMobileData"

.field public static final TILE_NETWORKMODE:Ljava/lang/String; = "toggleNetworkMode"

.field public static final TILE_NFC:Ljava/lang/String; = "toggleNfc"

.field public static final TILE_PROFILE:Ljava/lang/String; = "toggleProfile"

.field public static final TILE_QUIETHOURS:Ljava/lang/String; = "toggleQuietHours"

.field public static final TILE_RINGER:Ljava/lang/String; = "toggleSound"

.field public static final TILE_SCREENTIMEOUT:Ljava/lang/String; = "toggleScreenTimeout"

.field public static final TILE_SETTINGS:Ljava/lang/String; = "toggleSettings"

.field public static final TILE_SLEEP:Ljava/lang/String; = "toggleSleepMode"

.field public static final TILE_SYNC:Ljava/lang/String; = "toggleSync"

.field public static final TILE_TORCH:Ljava/lang/String; = "toggleFlashlight"

.field public static final TILE_USBTETHER:Ljava/lang/String; = "toggleUsbTether"

.field public static final TILE_USER:Ljava/lang/String; = "toggleUser"

.field public static final TILE_VOLUME:Ljava/lang/String; = "toggleVolume"

.field public static final TILE_WIFI:Ljava/lang/String; = "toggleWifi"

.field public static final TILE_WIFIAP:Ljava/lang/String; = "toggleWifiAp"

.field public static final TILE_WIMAX:Ljava/lang/String; = "toggleWimax"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/util/cm/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    .line 38
    sget-object v0, Lcom/android/internal/util/cm/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string/jumbo v1, "toggleUser"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/android/internal/util/cm/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string/jumbo v1, "toggleBrightness"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/android/internal/util/cm/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string/jumbo v1, "toggleSettings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/android/internal/util/cm/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string/jumbo v1, "toggleWifi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/android/internal/util/cm/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string/jumbo v1, "toggleMobileData"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/android/internal/util/cm/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string/jumbo v1, "toggleBattery"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/android/internal/util/cm/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string/jumbo v1, "toggleAirplane"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/android/internal/util/cm/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string/jumbo v1, "toggleBluetooth"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
