.class public abstract Landroid/os/BatteryStats;
.super Ljava/lang/Object;
.source "BatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryStats$HistoryPrinter;,
        Landroid/os/BatteryStats$TimerEntry;,
        Landroid/os/BatteryStats$BitDescription;,
        Landroid/os/BatteryStats$HistoryItem;,
        Landroid/os/BatteryStats$Uid;,
        Landroid/os/BatteryStats$Timer;,
        Landroid/os/BatteryStats$Counter;
    }
.end annotation


# static fields
.field private static final APK_DATA:Ljava/lang/String; = "apk"

.field public static final AUDIO_TURNED_ON:I = 0x7

.field private static final BATTERY_DATA:Ljava/lang/String; = "bt"

.field private static final BATTERY_DISCHARGE_DATA:Ljava/lang/String; = "dc"

.field private static final BATTERY_LEVEL_DATA:Ljava/lang/String; = "lv"

.field private static final BATTERY_STATS_CHECKIN_VERSION:I = 0x7

.field private static final BYTES_PER_GB:J = 0x40000000L

.field private static final BYTES_PER_KB:J = 0x400L

.field private static final BYTES_PER_MB:J = 0x100000L

.field public static final DATA_CONNECTION_1xRTT:I = 0x7

.field public static final DATA_CONNECTION_CDMA:I = 0x4

.field private static final DATA_CONNECTION_COUNT_DATA:Ljava/lang/String; = "dcc"

.field public static final DATA_CONNECTION_DCHSPAP:I = 0x10

.field public static final DATA_CONNECTION_EDGE:I = 0x2

.field public static final DATA_CONNECTION_EHRPD:I = 0xe

.field public static final DATA_CONNECTION_EVDO_0:I = 0x5

.field public static final DATA_CONNECTION_EVDO_A:I = 0x6

.field public static final DATA_CONNECTION_EVDO_B:I = 0xc

.field public static final DATA_CONNECTION_GPRS:I = 0x1

.field public static final DATA_CONNECTION_HSDPA:I = 0x8

.field public static final DATA_CONNECTION_HSPA:I = 0xa

.field public static final DATA_CONNECTION_HSPAP:I = 0xf

.field public static final DATA_CONNECTION_HSUPA:I = 0x9

.field public static final DATA_CONNECTION_IDEN:I = 0xb

.field public static final DATA_CONNECTION_LTE:I = 0xd

.field static final DATA_CONNECTION_NAMES:[Ljava/lang/String; = null

.field public static final DATA_CONNECTION_NONE:I = 0x0

.field public static final DATA_CONNECTION_OTHER:I = 0x11

.field private static final DATA_CONNECTION_TIME_DATA:Ljava/lang/String; = "dct"

.field public static final DATA_CONNECTION_UMTS:I = 0x3

.field public static final FOREGROUND_ACTIVITY:I = 0xa

.field private static final FOREGROUND_DATA:Ljava/lang/String; = "fg"

.field public static final FULL_WIFI_LOCK:I = 0x5

.field private static final HISTORY_DATA:Ljava/lang/String; = "h"

.field public static final HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription; = null

.field private static final KERNEL_WAKELOCK_DATA:Ljava/lang/String; = "kwl"

.field private static final LOCAL_LOGV:Z = false

.field private static final MISC_DATA:Ljava/lang/String; = "m"

.field private static final NETWORK_DATA:Ljava/lang/String; = "nt"

.field public static final NETWORK_MOBILE_RX_BYTES:I = 0x0

.field public static final NETWORK_MOBILE_TX_BYTES:I = 0x1

.field public static final NETWORK_WIFI_RX_BYTES:I = 0x2

.field public static final NETWORK_WIFI_TX_BYTES:I = 0x3

.field public static final NUM_DATA_CONNECTION_TYPES:I = 0x12

.field public static final NUM_NETWORK_ACTIVITY_TYPES:I = 0x4

.field public static final NUM_SCREEN_BRIGHTNESS_BINS:I = 0x5

.field private static final PROCESS_DATA:Ljava/lang/String; = "pr"

.field public static final SCREEN_BRIGHTNESS_BRIGHT:I = 0x4

.field public static final SCREEN_BRIGHTNESS_DARK:I = 0x0

.field private static final SCREEN_BRIGHTNESS_DATA:Ljava/lang/String; = "br"

.field public static final SCREEN_BRIGHTNESS_DIM:I = 0x1

.field public static final SCREEN_BRIGHTNESS_LIGHT:I = 0x3

.field public static final SCREEN_BRIGHTNESS_MEDIUM:I = 0x2

.field static final SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String; = null

.field public static final SENSOR:I = 0x3

.field private static final SENSOR_DATA:Ljava/lang/String; = "sr"

.field public static final SERVICE_NAME:Ljava/lang/String; = "batterystats"

.field private static final SIGNAL_SCANNING_TIME_DATA:Ljava/lang/String; = "sst"

.field private static final SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "sgc"

.field private static final SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "sgt"

.field public static final STATS_CURRENT:I = 0x2

.field public static final STATS_LAST:I = 0x1

.field public static final STATS_SINCE_CHARGED:I = 0x0

.field public static final STATS_SINCE_UNPLUGGED:I = 0x3

.field private static final STAT_NAMES:[Ljava/lang/String; = null

.field private static final UID_DATA:Ljava/lang/String; = "uid"

.field private static final USER_ACTIVITY_DATA:Ljava/lang/String; = "ua"

.field private static final VIBRATOR_DATA:Ljava/lang/String; = "vib"

.field public static final VIBRATOR_ON:I = 0x9

.field public static final VIDEO_TURNED_ON:I = 0x8

.field private static final WAKELOCK_DATA:Ljava/lang/String; = "wl"

.field public static final WAKE_TYPE_FULL:I = 0x1

.field public static final WAKE_TYPE_PARTIAL:I = 0x0

.field public static final WAKE_TYPE_WINDOW:I = 0x2

.field public static final WIFI_BATCHED_SCAN:I = 0xb

.field private static final WIFI_DATA:Ljava/lang/String; = "wfl"

.field public static final WIFI_MULTICAST_ENABLED:I = 0x7

.field public static final WIFI_RUNNING:I = 0x4

.field public static final WIFI_SCAN:I = 0x6


# instance fields
.field private final mFormatBuilder:Ljava/lang/StringBuilder;

.field private final mFormatter:Ljava/util/Formatter;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x4

    const/4 v8, 0x0

    .line 136
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "t"

    aput-object v1, v0, v8

    const-string v1, "l"

    aput-object v1, v0, v9

    const-string v1, "c"

    aput-object v1, v0, v10

    const-string/jumbo v1, "u"

    aput-object v1, v0, v11

    sput-object v0, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    .line 792
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "dark"

    aput-object v1, v0, v8

    const-string v1, "dim"

    aput-object v1, v0, v9

    const-string/jumbo v1, "medium"

    aput-object v1, v0, v10

    const-string v1, "light"

    aput-object v1, v0, v11

    const-string v1, "bright"

    aput-object v1, v0, v6

    sput-object v0, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    .line 861
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "none"

    aput-object v1, v0, v8

    const-string v1, "gprs"

    aput-object v1, v0, v9

    const-string v1, "edge"

    aput-object v1, v0, v10

    const-string/jumbo v1, "umts"

    aput-object v1, v0, v11

    const-string v1, "cdma"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "evdo_0"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "evdo_A"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "1xrtt"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "hsdpa"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hsupa"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "hspa"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "iden"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "evdo_b"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "lte"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ehrpd"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "hspa+"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "dc-hspa+"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "other"

    aput-object v2, v0, v1

    sput-object v0, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    .line 886
    const/16 v0, 0x13

    new-array v0, v0, [Landroid/os/BatteryStats$BitDescription;

    new-instance v1, Landroid/os/BatteryStats$BitDescription;

    const/high16 v2, 0x8

    const-string/jumbo v3, "plugged"

    invoke-direct {v1, v2, v3}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/os/BatteryStats$BitDescription;

    const/high16 v2, 0x10

    const-string/jumbo v3, "screen"

    invoke-direct {v1, v2, v3}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v9

    new-instance v1, Landroid/os/BatteryStats$BitDescription;

    const/high16 v2, 0x1000

    const-string v3, "gps"

    invoke-direct {v1, v2, v3}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v10

    new-instance v1, Landroid/os/BatteryStats$BitDescription;

    const/high16 v2, 0x4

    const-string/jumbo v3, "phone_in_call"

    invoke-direct {v1, v2, v3}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v11

    new-instance v1, Landroid/os/BatteryStats$BitDescription;

    const/high16 v2, 0x800

    const-string/jumbo v3, "phone_scanning"

    invoke-direct {v1, v2, v3}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const/high16 v3, 0x2

    const-string/jumbo v4, "wifi"

    invoke-direct {v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const/high16 v3, 0x400

    const-string/jumbo v4, "wifi_running"

    invoke-direct {v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const/high16 v3, 0x200

    const-string/jumbo v4, "wifi_full_lock"

    invoke-direct {v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const/high16 v3, 0x100

    const-string/jumbo v4, "wifi_scan"

    invoke-direct {v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const/high16 v3, 0x80

    const-string/jumbo v4, "wifi_multicast"

    invoke-direct {v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const/high16 v3, 0x1

    const-string v4, "bluetooth"

    invoke-direct {v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const/high16 v3, 0x40

    const-string v4, "audio"

    invoke-direct {v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const/high16 v3, 0x20

    const-string/jumbo v4, "video"

    invoke-direct {v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const/high16 v3, 0x4000

    const-string/jumbo v4, "wake_lock"

    invoke-direct {v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const/high16 v3, 0x2000

    const-string/jumbo v4, "sensor"

    invoke-direct {v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const/16 v3, 0xf

    const-string v4, "brightness"

    sget-object v5, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v3, v8, v4, v5}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;[Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const/16 v3, 0xf0

    const-string/jumbo v4, "signal_strength"

    sget-object v5, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v3, v6, v4, v5}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;[Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const/16 v3, 0xf00

    const/16 v4, 0x8

    const-string/jumbo v5, "phone_state"

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "in"

    aput-object v7, v6, v8

    const-string/jumbo v7, "out"

    aput-object v7, v6, v9

    const-string v7, "emergency"

    aput-object v7, v6, v10

    const-string/jumbo v7, "off"

    aput-object v7, v6, v11

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;[Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const v3, 0xf000

    const/16 v4, 0xc

    const-string v5, "data_conn"

    sget-object v6, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;[Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 172
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    .line 2182
    return-void
.end method

.method private static computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J
    .locals 8
    .parameter "timer"
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 1142
    if-eqz p0, :cond_0

    .line 1144
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    .line 1145
    .local v0, totalTimeMicros:J
    const-wide/16 v4, 0x1f4

    add-long/2addr v4, v0

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 1148
    .end local v0           #totalTimeMicros:J
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private static final varargs dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter "pw"
    .parameter "uid"
    .parameter "category"
    .parameter "type"
    .parameter "args"

    .prologue
    const/16 v5, 0x2c

    .line 1221
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1222
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1223
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1224
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1226
    move-object v1, p4

    .local v1, arr$:[Ljava/lang/Object;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 1227
    .local v0, arg:Ljava/lang/Object;
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1228
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1226
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1230
    .end local v0           #arg:Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 1231
    return-void
.end method

.method private final formatBytesLocked(J)Ljava/lang/String;
    .locals 8
    .parameter "bytes"

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 1125
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1127
    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1137
    :goto_0
    return-object v0

    .line 1129
    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 1130
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string v1, "%.2fKB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v3, p1

    const-wide/high16 v5, 0x4090

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1131
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1132
    :cond_1
    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 1133
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string v1, "%.2fMB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v3, p1

    const-wide/high16 v5, 0x4130

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1134
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1136
    :cond_2
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string v1, "%.2fGB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v3, p1

    const-wide/high16 v5, 0x41d0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1137
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final formatRatioLocked(JJ)Ljava/lang/String;
    .locals 6
    .parameter "num"
    .parameter "den"

    .prologue
    const/4 v5, 0x0

    .line 1115
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-nez v1, :cond_0

    .line 1116
    const-string v1, "---%"

    .line 1121
    :goto_0
    return-object v1

    .line 1118
    :cond_0
    long-to-float v1, p1

    long-to-float v2, p3

    div-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float v0, v1, v2

    .line 1119
    .local v0, perc:F
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1120
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string v2, "%.1f%%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1121
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static final formatTime(Ljava/lang/StringBuilder;J)V
    .locals 6
    .parameter "sb"
    .parameter "time"

    .prologue
    const-wide/16 v2, 0x64

    .line 1101
    div-long v0, p1, v2

    .line 1102
    .local v0, sec:J
    invoke-static {p0, v0, v1}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    .line 1103
    mul-long/2addr v2, v0

    sub-long v2, p1, v2

    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1104
    const-string/jumbo v2, "ms "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    return-void
.end method

.method private static final formatTimeMs(Ljava/lang/StringBuilder;J)V
    .locals 4
    .parameter "sb"
    .parameter "time"

    .prologue
    const-wide/16 v2, 0x3e8

    .line 1108
    div-long v0, p1, v2

    .line 1109
    .local v0, sec:J
    invoke-static {p0, v0, v1}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    .line 1110
    mul-long/2addr v2, v0

    sub-long v2, p1, v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1111
    const-string/jumbo v2, "ms "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    return-void
.end method

.method private static final formatTimeRaw(Ljava/lang/StringBuilder;J)V
    .locals 12
    .parameter "out"
    .parameter "seconds"

    .prologue
    .line 1073
    const-wide/32 v8, 0x15180

    div-long v0, p1, v8

    .line 1074
    .local v0, days:J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-eqz v8, :cond_0

    .line 1075
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1076
    const-string v8, "d "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    :cond_0
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v0

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x18

    mul-long v6, v8, v10

    .line 1080
    .local v6, used:J
    sub-long v8, p1, v6

    const-wide/16 v10, 0xe10

    div-long v2, v8, v10

    .line 1081
    .local v2, hours:J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-nez v8, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_2

    .line 1082
    :cond_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1083
    const-string v8, "h "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    :cond_2
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v2

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    .line 1087
    sub-long v8, p1, v6

    const-wide/16 v10, 0x3c

    div-long v4, v8, v10

    .line 1088
    .local v4, mins:J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_3

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    .line 1089
    :cond_3
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1090
    const-string v8, "m "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    :cond_4
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v4

    add-long/2addr v6, v8

    .line 1094
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-nez v8, :cond_5

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_6

    .line 1095
    :cond_5
    sub-long v8, p1, v6

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1096
    const-string/jumbo v8, "s "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    :cond_6
    return-void
.end method

.method static printBitDescriptions(Ljava/io/PrintWriter;II[Landroid/os/BatteryStats$BitDescription;)V
    .locals 6
    .parameter "pw"
    .parameter "oldval"
    .parameter "newval"
    .parameter "descriptions"

    .prologue
    .line 2156
    xor-int v1, p1, p2

    .line 2157
    .local v1, diff:I
    if-nez v1, :cond_1

    .line 2177
    :cond_0
    return-void

    .line 2158
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, p3

    if-ge v2, v4, :cond_0

    .line 2159
    aget-object v0, p3, v2

    .line 2160
    .local v0, bd:Landroid/os/BatteryStats$BitDescription;
    iget v4, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v4, v1

    if-eqz v4, :cond_2

    .line 2161
    iget v4, v0, Landroid/os/BatteryStats$BitDescription;->shift:I

    if-gez v4, :cond_4

    .line 2162
    iget v4, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v4, p2

    if-eqz v4, :cond_3

    const-string v4, " +"

    :goto_1
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2163
    iget-object v4, v0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2158
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2162
    :cond_3
    const-string v4, " -"

    goto :goto_1

    .line 2165
    :cond_4
    const-string v4, " "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2166
    iget-object v4, v0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2167
    const-string v4, "="

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2168
    iget v4, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v4, p2

    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->shift:I

    shr-int v3, v4, v5

    .line 2169
    .local v3, val:I
    iget-object v4, v0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    if-eqz v4, :cond_5

    if-ltz v3, :cond_5

    iget-object v4, v0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 2170
    iget-object v4, v0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 2172
    :cond_5
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_2
.end method

.method private static final printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "sb"
    .parameter "timer"
    .parameter "batteryRealtime"
    .parameter "name"
    .parameter "which"
    .parameter "linePrefix"

    .prologue
    .line 1164
    if-eqz p1, :cond_1

    .line 1165
    invoke-static {p1, p2, p3, p5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v1

    .line 1167
    .local v1, totalTimeMillis:J
    invoke-virtual {p1, p5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v0

    .line 1168
    .local v0, count:I
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    .line 1169
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    invoke-static {p0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1171
    if-eqz p4, :cond_0

    .line 1172
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1175
    :cond_0
    const/16 v3, 0x28

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1176
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1177
    const-string v3, " times)"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    const-string p6, ", "

    .line 1181
    .end local v0           #count:I
    .end local v1           #totalTimeMillis:J
    .end local p6
    :cond_1
    return-object p6
.end method

.method private static final printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "sb"
    .parameter "timer"
    .parameter "now"
    .parameter "name"
    .parameter "which"
    .parameter "linePrefix"

    .prologue
    .line 1197
    const-wide/16 v1, 0x0

    .line 1198
    .local v1, totalTimeMicros:J
    const/4 v0, 0x0

    .line 1199
    .local v0, count:I
    if-eqz p1, :cond_0

    .line 1200
    invoke-virtual {p1, p2, p3, p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    .line 1201
    invoke-virtual {p1, p5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v0

    .line 1203
    :cond_0
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    const-wide/16 v3, 0x1f4

    add-long/2addr v3, v1

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1205
    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1206
    if-eqz p4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1208
    const-string v3, ","

    return-object v3

    .line 1206
    :cond_1
    const-string v3, ""

    goto :goto_0
.end method


# virtual methods
.method public abstract computeBatteryRealtime(JI)J
.end method

.method public abstract computeBatteryUptime(JI)J
.end method

.method public abstract computeRealtime(JI)J
.end method

.method public abstract computeUptime(JI)J
.end method

.method public final dumpCheckinLocked(Ljava/io/PrintWriter;II)V
    .locals 116
    .parameter "pw"
    .parameter "which"
    .parameter "reqUid"

    .prologue
    .line 1239
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v111, 0x3e8

    mul-long v58, v8, v111

    .line 1240
    .local v58, rawUptime:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v111, 0x3e8

    mul-long v56, v8, v111

    .line 1241
    .local v56, rawRealtime:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v58

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v13

    .line 1242
    .local v13, batteryUptime:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getBatteryRealtime(J)J

    move-result-wide v6

    .line 1243
    .local v6, batteryRealtime:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v58

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v94

    .line 1244
    .local v94, whichBatteryUptime:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v92

    .line 1245
    .local v92, whichBatteryRealtime:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v75

    .line 1246
    .local v75, totalRealtime:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v58

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v79

    .line 1247
    .local v79, totalUptime:J
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v60

    .line 1248
    .local v60, screenOnTime:J
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v52

    .line 1249
    .local v52, phoneOnTime:J
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v96

    .line 1250
    .local v96, wifiOnTime:J
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v98

    .line 1251
    .local v98, wifiRunningTime:J
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getBluetoothOnTime(JI)J

    move-result-wide v15

    .line 1253
    .local v15, bluetoothOnTime:J
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1255
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v83

    .line 1256
    .local v83, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v83 .. v83}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 1258
    .local v11, NU:I
    sget-object v5, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    aget-object v17, v5, p2

    .line 1261
    .local v17, category:Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "bt"

    const/4 v5, 0x5

    new-array v0, v5, [Ljava/lang/Object;

    move-object/from16 v111, v0

    const/16 v112, 0x0

    if-nez p2, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_0
    aput-object v5, v111, v112

    const/4 v5, 0x1

    const-wide/16 v112, 0x3e8

    div-long v112, v92, v112

    invoke-static/range {v112 .. v113}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v112

    aput-object v112, v111, v5

    const/4 v5, 0x2

    const-wide/16 v112, 0x3e8

    div-long v112, v94, v112

    invoke-static/range {v112 .. v113}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v112

    aput-object v112, v111, v5

    const/4 v5, 0x3

    const-wide/16 v112, 0x3e8

    div-long v112, v75, v112

    invoke-static/range {v112 .. v113}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v112

    aput-object v112, v111, v5

    const/4 v5, 0x4

    const-wide/16 v112, 0x3e8

    div-long v112, v79, v112

    invoke-static/range {v112 .. v113}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v112

    aput-object v112, v111, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v111

    invoke-static {v0, v8, v1, v9, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1267
    const-wide/16 v41, 0x0

    .line 1268
    .local v41, mobileRxTotal:J
    const-wide/16 v45, 0x0

    .line 1269
    .local v45, mobileTxTotal:J
    const-wide/16 v102, 0x0

    .line 1270
    .local v102, wifiRxTotal:J
    const-wide/16 v108, 0x0

    .line 1271
    .local v108, wifiTxTotal:J
    const-wide/16 v27, 0x0

    .line 1272
    .local v27, fullWakeLockTimeTotal:J
    const-wide/16 v49, 0x0

    .line 1274
    .local v49, partialWakeLockTimeTotal:J
    const/16 v36, 0x0

    .local v36, iu:I
    :goto_1
    move/from16 v0, v36

    if-ge v0, v11, :cond_4

    .line 1275
    move-object/from16 v0, v83

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v81

    check-cast v81, Landroid/os/BatteryStats$Uid;

    .line 1276
    .local v81, u:Landroid/os/BatteryStats$Uid;
    const/4 v5, 0x0

    move-object/from16 v0, v81

    move/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v8

    add-long v41, v41, v8

    .line 1277
    const/4 v5, 0x1

    move-object/from16 v0, v81

    move/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v8

    add-long v45, v45, v8

    .line 1278
    const/4 v5, 0x2

    move-object/from16 v0, v81

    move/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v8

    add-long v102, v102, v8

    .line 1279
    const/4 v5, 0x3

    move-object/from16 v0, v81

    move/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v8

    add-long v108, v108, v8

    .line 1281
    invoke-virtual/range {v81 .. v81}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v90

    .line 1282
    .local v90, wakelocks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v90 .. v90}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 1284
    invoke-interface/range {v90 .. v90}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .local v34, i$:Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .line 1285
    .local v23, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 1287
    .local v110, wl:Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v5, 0x1

    move-object/from16 v0, v110

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v29

    .line 1288
    .local v29, fullWakeTimer:Landroid/os/BatteryStats$Timer;
    if-eqz v29, :cond_1

    .line 1289
    move-object/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v8

    add-long v27, v27, v8

    .line 1292
    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, v110

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v51

    .line 1293
    .local v51, partialWakeTimer:Landroid/os/BatteryStats$Timer;
    if-eqz v51, :cond_0

    .line 1294
    move-object/from16 v0, v51

    move/from16 v1, p2

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v8

    add-long v49, v49, v8

    goto :goto_2

    .line 1261
    .end local v23           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v27           #fullWakeLockTimeTotal:J
    .end local v29           #fullWakeTimer:Landroid/os/BatteryStats$Timer;
    .end local v34           #i$:Ljava/util/Iterator;
    .end local v36           #iu:I
    .end local v41           #mobileRxTotal:J
    .end local v45           #mobileTxTotal:J
    .end local v49           #partialWakeLockTimeTotal:J
    .end local v51           #partialWakeTimer:Landroid/os/BatteryStats$Timer;
    .end local v81           #u:Landroid/os/BatteryStats$Uid;
    .end local v90           #wakelocks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v102           #wifiRxTotal:J
    .end local v108           #wifiTxTotal:J
    .end local v110           #wl:Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_2
    const-string v5, "N/A"

    goto/16 :goto_0

    .line 1274
    .restart local v27       #fullWakeLockTimeTotal:J
    .restart local v36       #iu:I
    .restart local v41       #mobileRxTotal:J
    .restart local v45       #mobileTxTotal:J
    .restart local v49       #partialWakeLockTimeTotal:J
    .restart local v81       #u:Landroid/os/BatteryStats$Uid;
    .restart local v90       #wakelocks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .restart local v102       #wifiRxTotal:J
    .restart local v108       #wifiTxTotal:J
    :cond_3
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_1

    .line 1302
    .end local v81           #u:Landroid/os/BatteryStats$Uid;
    .end local v90           #wakelocks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_4
    const/4 v5, 0x0

    const-string v8, "m"

    const/16 v9, 0xc

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v111, 0x0

    const-wide/16 v112, 0x3e8

    div-long v112, v60, v112

    invoke-static/range {v112 .. v113}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v112

    aput-object v112, v9, v111

    const/16 v111, 0x1

    const-wide/16 v112, 0x3e8

    div-long v112, v52, v112

    invoke-static/range {v112 .. v113}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v112

    aput-object v112, v9, v111

    const/16 v111, 0x2

    const-wide/16 v112, 0x3e8

    div-long v112, v96, v112

    invoke-static/range {v112 .. v113}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v112

    aput-object v112, v9, v111

    const/16 v111, 0x3

    const-wide/16 v112, 0x3e8

    div-long v112, v98, v112

    invoke-static/range {v112 .. v113}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v112

    aput-object v112, v9, v111

    const/16 v111, 0x4

    const-wide/16 v112, 0x3e8

    div-long v112, v15, v112

    invoke-static/range {v112 .. v113}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v112

    aput-object v112, v9, v111

    const/16 v111, 0x5

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v112

    aput-object v112, v9, v111

    const/16 v111, 0x6

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v112

    aput-object v112, v9, v111

    const/16 v111, 0x7

    invoke-static/range {v102 .. v103}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v112

    aput-object v112, v9, v111

    const/16 v111, 0x8

    invoke-static/range {v108 .. v109}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v112

    aput-object v112, v9, v111

    const/16 v111, 0x9

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v112

    aput-object v112, v9, v111

    const/16 v111, 0xa

    invoke-static/range {v49 .. v50}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v112

    aput-object v112, v9, v111

    const/16 v111, 0xb

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getInputEventCount(I)I

    move-result v112

    invoke-static/range {v112 .. v112}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v112

    aput-object v112, v9, v111

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v5, v1, v8, v9}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1310
    const/4 v5, 0x5

    new-array v12, v5, [Ljava/lang/Object;

    .line 1311
    .local v12, args:[Ljava/lang/Object;
    const/16 v33, 0x0

    .local v33, i:I
    :goto_3
    const/4 v5, 0x5

    move/from16 v0, v33

    if-ge v0, v5, :cond_5

    .line 1312
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, p2

    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v8

    const-wide/16 v111, 0x3e8

    div-long v8, v8, v111

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v12, v33

    .line 1311
    add-int/lit8 v33, v33, 0x1

    goto :goto_3

    .line 1314
    :cond_5
    const/4 v5, 0x0

    const-string v8, "br"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v5, v1, v8, v12}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1317
    const/4 v5, 0x5

    new-array v12, v5, [Ljava/lang/Object;

    .line 1318
    const/16 v33, 0x0

    :goto_4
    const/4 v5, 0x5

    move/from16 v0, v33

    if-ge v0, v5, :cond_6

    .line 1319
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, p2

    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v8

    const-wide/16 v111, 0x3e8

    div-long v8, v8, v111

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v12, v33

    .line 1318
    add-int/lit8 v33, v33, 0x1

    goto :goto_4

    .line 1321
    :cond_6
    const/4 v5, 0x0

    const-string/jumbo v8, "sgt"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v5, v1, v8, v12}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1322
    const/4 v5, 0x0

    const-string/jumbo v8, "sst"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v111, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v112

    const-wide/16 v114, 0x3e8

    div-long v112, v112, v114

    invoke-static/range {v112 .. v113}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v112

    aput-object v112, v9, v111

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v5, v1, v8, v9}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1324
    const/16 v33, 0x0

    :goto_5
    const/4 v5, 0x5

    move/from16 v0, v33

    if-ge v0, v5, :cond_7

    .line 1325
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneSignalStrengthCount(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v12, v33

    .line 1324
    add-int/lit8 v33, v33, 0x1

    goto :goto_5

    .line 1327
    :cond_7
    const/4 v5, 0x0

    const-string/jumbo v8, "sgc"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v5, v1, v8, v12}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1330
    const/16 v5, 0x12

    new-array v12, v5, [Ljava/lang/Object;

    .line 1331
    const/16 v33, 0x0

    :goto_6
    const/16 v5, 0x12

    move/from16 v0, v33

    if-ge v0, v5, :cond_8

    .line 1332
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, p2

    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v8

    const-wide/16 v111, 0x3e8

    div-long v8, v8, v111

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v12, v33

    .line 1331
    add-int/lit8 v33, v33, 0x1

    goto :goto_6

    .line 1334
    :cond_8
    const/4 v5, 0x0

    const-string v8, "dct"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v5, v1, v8, v12}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1335
    const/16 v33, 0x0

    :goto_7
    const/16 v5, 0x12

    move/from16 v0, v33

    if-ge v0, v5, :cond_9

    .line 1336
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneDataConnectionCount(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v12, v33

    .line 1335
    add-int/lit8 v33, v33, 0x1

    goto :goto_7

    .line 1338
    :cond_9
    const/4 v5, 0x0

    const-string v8, "dcc"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v5, v1, v8, v12}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1340
    const/4 v5, 0x3

    move/from16 v0, p2

    if-ne v0, v5, :cond_a

    .line 1341
    const/4 v5, 0x0

    const-string v8, "lv"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v111, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v112

    invoke-static/range {v112 .. v112}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v112

    aput-object v112, v9, v111

    const/16 v111, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v112

    invoke-static/range {v112 .. v112}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v112

    aput-object v112, v9, v111

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v5, v1, v8, v9}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1345
    :cond_a
    const/4 v5, 0x3

    move/from16 v0, p2

    if-ne v0, v5, :cond_b

    .line 1346
    const/4 v5, 0x0

    const-string v8, "dc"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v111, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v112

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v113

    sub-int v112, v112, v113

    invoke-static/range {v112 .. v112}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v112

    aput-object v112, v9, v111

    const/16 v111, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v112

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v113

    sub-int v112, v112, v113

    invoke-static/range {v112 .. v112}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v112

    aput-object v112, v9, v111

    const/16 v111, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOn()I

    move-result v112

    invoke-static/range {v112 .. v112}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v112

    aput-object v112, v9, v111

    const/16 v111, 0x3

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOff()I

    move-result v112

    invoke-static/range {v112 .. v112}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v112

    aput-object v112, v9, v111

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v5, v1, v8, v9}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1356
    :goto_8
    if-gez p3, :cond_c

    .line 1357
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v37

    .line 1358
    .local v37, kernelWakelocks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v37 .. v37}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_c

    .line 1359
    invoke-interface/range {v37 .. v37}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .restart local v34       #i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 1360
    .local v20, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1361
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    const/4 v8, 0x0

    const-string v10, ""

    move/from16 v9, p2

    invoke-static/range {v4 .. v10}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 1363
    const/4 v5, 0x0

    const-string v8, "kwl"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v111, 0x0

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v112

    aput-object v112, v9, v111

    const/16 v111, 0x1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v112

    aput-object v112, v9, v111

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v5, v1, v8, v9}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .line 1351
    .end local v20           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v34           #i$:Ljava/util/Iterator;
    .end local v37           #kernelWakelocks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_b
    const/4 v5, 0x0

    const-string v8, "dc"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v111, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v112

    invoke-static/range {v112 .. v112}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v112

    aput-object v112, v9, v111

    const/16 v111, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v112

    invoke-static/range {v112 .. v112}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v112

    aput-object v112, v9, v111

    const/16 v111, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOn()I

    move-result v112

    invoke-static/range {v112 .. v112}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v112

    aput-object v112, v9, v111

    const/16 v111, 0x3

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOff()I

    move-result v112

    invoke-static/range {v112 .. v112}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v112

    aput-object v112, v9, v111

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v5, v1, v8, v9}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 1369
    :cond_c
    const/16 v36, 0x0

    :goto_a
    move/from16 v0, v36

    if-ge v0, v11, :cond_23

    .line 1370
    move-object/from16 v0, v83

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v82

    .line 1371
    .local v82, uid:I
    if-ltz p3, :cond_e

    move/from16 v0, v82

    move/from16 v1, p3

    if-eq v0, v1, :cond_e

    .line 1369
    :cond_d
    add-int/lit8 v36, v36, 0x1

    goto :goto_a

    .line 1374
    :cond_e
    move-object/from16 v0, v83

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v81

    check-cast v81, Landroid/os/BatteryStats$Uid;

    .line 1376
    .restart local v81       #u:Landroid/os/BatteryStats$Uid;
    const/4 v5, 0x0

    move-object/from16 v0, v81

    move/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v39

    .line 1377
    .local v39, mobileRx:J
    const/4 v5, 0x1

    move-object/from16 v0, v81

    move/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v43

    .line 1378
    .local v43, mobileTx:J
    const/4 v5, 0x2

    move-object/from16 v0, v81

    move/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v100

    .line 1379
    .local v100, wifiRx:J
    const/4 v5, 0x3

    move-object/from16 v0, v81

    move/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v106

    .line 1380
    .local v106, wifiTx:J
    move-object/from16 v0, v81

    move/from16 v1, p2

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v30

    .line 1381
    .local v30, fullWifiLockOnTime:J
    move-object/from16 v0, v81

    move/from16 v1, p2

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v104

    .line 1382
    .local v104, wifiScanTime:J
    move-object/from16 v0, v81

    move/from16 v1, p2

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v84

    .line 1384
    .local v84, uidWifiRunningTime:J
    const-wide/16 v8, 0x0

    cmp-long v5, v39, v8

    if-gtz v5, :cond_f

    const-wide/16 v8, 0x0

    cmp-long v5, v43, v8

    if-gtz v5, :cond_f

    const-wide/16 v8, 0x0

    cmp-long v5, v100, v8

    if-gtz v5, :cond_f

    const-wide/16 v8, 0x0

    cmp-long v5, v106, v8

    if-lez v5, :cond_10

    .line 1385
    :cond_f
    const-string/jumbo v5, "nt"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v111

    aput-object v111, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v111

    aput-object v111, v8, v9

    const/4 v9, 0x2

    invoke-static/range {v100 .. v101}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v111

    aput-object v111, v8, v9

    const/4 v9, 0x3

    invoke-static/range {v106 .. v107}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v111

    aput-object v111, v8, v9

    move-object/from16 v0, p1

    move/from16 v1, v82

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1388
    :cond_10
    const-wide/16 v8, 0x0

    cmp-long v5, v30, v8

    if-nez v5, :cond_11

    const-wide/16 v8, 0x0

    cmp-long v5, v104, v8

    if-nez v5, :cond_11

    const-wide/16 v8, 0x0

    cmp-long v5, v84, v8

    if-eqz v5, :cond_12

    .line 1390
    :cond_11
    const-string/jumbo v5, "wfl"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v111

    aput-object v111, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v104 .. v105}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v111

    aput-object v111, v8, v9

    const/4 v9, 0x2

    invoke-static/range {v84 .. v85}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v111

    aput-object v111, v8, v9

    move-object/from16 v0, p1

    move/from16 v1, v82

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1394
    :cond_12
    invoke-virtual/range {v81 .. v81}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1395
    const/4 v5, 0x3

    new-array v12, v5, [Ljava/lang/Object;

    .line 1396
    const/16 v32, 0x0

    .line 1397
    .local v32, hasData:Z
    const/16 v33, 0x0

    :goto_b
    const/4 v5, 0x3

    move/from16 v0, v33

    if-ge v0, v5, :cond_14

    .line 1398
    move-object/from16 v0, v81

    move/from16 v1, v33

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v88

    .line 1399
    .local v88, val:I
    invoke-static/range {v88 .. v88}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v12, v33

    .line 1400
    if-eqz v88, :cond_13

    const/16 v32, 0x1

    .line 1397
    :cond_13
    add-int/lit8 v33, v33, 0x1

    goto :goto_b

    .line 1402
    .end local v88           #val:I
    :cond_14
    if-eqz v32, :cond_15

    .line 1403
    const/4 v5, 0x0

    const-string/jumbo v8, "ua"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v5, v1, v8, v12}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1407
    .end local v32           #hasData:Z
    :cond_15
    invoke-virtual/range {v81 .. v81}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v90

    .line 1408
    .restart local v90       #wakelocks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v90 .. v90}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_18

    .line 1410
    invoke-interface/range {v90 .. v90}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .restart local v34       #i$:Ljava/util/Iterator;
    :cond_16
    :goto_c
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .line 1411
    .restart local v23       #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 1412
    .restart local v110       #wl:Landroid/os/BatteryStats$Uid$Wakelock;
    const-string v10, ""

    .line 1413
    .local v10, linePrefix:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1414
    const/4 v5, 0x1

    move-object/from16 v0, v110

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-string v8, "f"

    move/from16 v9, p2

    invoke-static/range {v4 .. v10}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1416
    const/4 v5, 0x0

    move-object/from16 v0, v110

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-string/jumbo v8, "p"

    move/from16 v9, p2

    invoke-static/range {v4 .. v10}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1418
    const/4 v5, 0x2

    move-object/from16 v0, v110

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-string/jumbo v8, "w"

    move/from16 v9, p2

    invoke-static/range {v4 .. v10}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1422
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_16

    .line 1423
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/lang/String;

    .line 1424
    .local v47, name:Ljava/lang/String;
    const/16 v5, 0x2c

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_17

    .line 1425
    const/16 v5, 0x2c

    const/16 v8, 0x5f

    move-object/from16 v0, v47

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v47

    .line 1427
    :cond_17
    const-string/jumbo v5, "wl"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v47, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v111

    aput-object v111, v8, v9

    move-object/from16 v0, p1

    move/from16 v1, v82

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    .line 1432
    .end local v10           #linePrefix:Ljava/lang/String;
    .end local v23           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v34           #i$:Ljava/util/Iterator;
    .end local v47           #name:Ljava/lang/String;
    .end local v110           #wl:Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_18
    invoke-virtual/range {v81 .. v81}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v64

    .line 1433
    .local v64, sensors:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v64 .. v64}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_1a

    .line 1435
    invoke-interface/range {v64 .. v64}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .restart local v34       #i$:Ljava/util/Iterator;
    :cond_19
    :goto_d
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 1436
    .local v19, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Landroid/os/BatteryStats$Uid$Sensor;

    .line 1437
    .local v62, se:Landroid/os/BatteryStats$Uid$Sensor;
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v63

    .line 1438
    .local v63, sensorNumber:I
    invoke-virtual/range {v62 .. v62}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v74

    .line 1439
    .local v74, timer:Landroid/os/BatteryStats$Timer;
    if-eqz v74, :cond_19

    .line 1441
    move-object/from16 v0, v74

    move/from16 v1, p2

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v8

    const-wide/16 v111, 0x1f4

    add-long v8, v8, v111

    const-wide/16 v111, 0x3e8

    div-long v77, v8, v111

    .line 1442
    .local v77, totalTime:J
    move-object/from16 v0, v74

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v18

    .line 1443
    .local v18, count:I
    const-wide/16 v8, 0x0

    cmp-long v5, v77, v8

    if-eqz v5, :cond_19

    .line 1444
    const-string/jumbo v5, "sr"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v111

    aput-object v111, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v77 .. v78}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v111

    aput-object v111, v8, v9

    const/4 v9, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v111

    aput-object v111, v8, v9

    move-object/from16 v0, p1

    move/from16 v1, v82

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    .line 1450
    .end local v18           #count:I
    .end local v19           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v34           #i$:Ljava/util/Iterator;
    .end local v62           #se:Landroid/os/BatteryStats$Uid$Sensor;
    .end local v63           #sensorNumber:I
    .end local v74           #timer:Landroid/os/BatteryStats$Timer;
    .end local v77           #totalTime:J
    :cond_1a
    invoke-virtual/range {v81 .. v81}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v89

    .line 1451
    .local v89, vibTimer:Landroid/os/BatteryStats$Timer;
    if-eqz v89, :cond_1b

    .line 1453
    move-object/from16 v0, v89

    move/from16 v1, p2

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v8

    const-wide/16 v111, 0x1f4

    add-long v8, v8, v111

    const-wide/16 v111, 0x3e8

    div-long v77, v8, v111

    .line 1454
    .restart local v77       #totalTime:J
    move-object/from16 v0, v89

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v18

    .line 1455
    .restart local v18       #count:I
    const-wide/16 v8, 0x0

    cmp-long v5, v77, v8

    if-eqz v5, :cond_1b

    .line 1456
    const-string/jumbo v5, "vib"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v77 .. v78}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v111

    aput-object v111, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v111

    aput-object v111, v8, v9

    move-object/from16 v0, p1

    move/from16 v1, v82

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1460
    .end local v18           #count:I
    .end local v77           #totalTime:J
    :cond_1b
    invoke-virtual/range {v81 .. v81}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v24

    .line 1461
    .local v24, fgTimer:Landroid/os/BatteryStats$Timer;
    if-eqz v24, :cond_1c

    .line 1463
    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v8

    const-wide/16 v111, 0x1f4

    add-long v8, v8, v111

    const-wide/16 v111, 0x3e8

    div-long v77, v8, v111

    .line 1464
    .restart local v77       #totalTime:J
    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v18

    .line 1465
    .restart local v18       #count:I
    const-wide/16 v8, 0x0

    cmp-long v5, v77, v8

    if-eqz v5, :cond_1c

    .line 1466
    const-string v5, "fg"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v77 .. v78}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v111

    aput-object v111, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v111

    aput-object v111, v8, v9

    move-object/from16 v0, p1

    move/from16 v1, v82

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1470
    .end local v18           #count:I
    .end local v77           #totalTime:J
    :cond_1c
    invoke-virtual/range {v81 .. v81}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v54

    .line 1471
    .local v54, processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface/range {v54 .. v54}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_1f

    .line 1473
    invoke-interface/range {v54 .. v54}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .restart local v34       #i$:Ljava/util/Iterator;
    :cond_1d
    :goto_e
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 1474
    .local v22, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/os/BatteryStats$Uid$Proc;

    .line 1476
    .local v55, ps:Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v55

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v8

    const-wide/16 v111, 0xa

    mul-long v86, v8, v111

    .line 1477
    .local v86, userMillis:J
    move-object/from16 v0, v55

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v8

    const-wide/16 v111, 0xa

    mul-long v72, v8, v111

    .line 1478
    .local v72, systemMillis:J
    move-object/from16 v0, v55

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v8

    const-wide/16 v111, 0xa

    mul-long v25, v8, v111

    .line 1479
    .local v25, foregroundMillis:J
    move-object/from16 v0, v55

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v70, v0

    .line 1481
    .local v70, starts:J
    const-wide/16 v8, 0x0

    cmp-long v5, v86, v8

    if-nez v5, :cond_1e

    const-wide/16 v8, 0x0

    cmp-long v5, v72, v8

    if-nez v5, :cond_1e

    const-wide/16 v8, 0x0

    cmp-long v5, v25, v8

    if-nez v5, :cond_1e

    const-wide/16 v8, 0x0

    cmp-long v5, v70, v8

    if-eqz v5, :cond_1d

    .line 1483
    :cond_1e
    const-string/jumbo v5, "pr"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v111

    aput-object v111, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v86 .. v87}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v111

    aput-object v111, v8, v9

    const/4 v9, 0x2

    invoke-static/range {v72 .. v73}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v111

    aput-object v111, v8, v9

    const/4 v9, 0x3

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v111

    aput-object v111, v8, v9

    const/4 v9, 0x4

    invoke-static/range {v70 .. v71}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v111

    aput-object v111, v8, v9

    move-object/from16 v0, p1

    move/from16 v1, v82

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 1489
    .end local v22           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v25           #foregroundMillis:J
    .end local v34           #i$:Ljava/util/Iterator;
    .end local v55           #ps:Landroid/os/BatteryStats$Uid$Proc;
    .end local v70           #starts:J
    .end local v72           #systemMillis:J
    .end local v86           #userMillis:J
    :cond_1f
    invoke-virtual/range {v81 .. v81}, Landroid/os/BatteryStats$Uid;->getPackageStats()Ljava/util/Map;

    move-result-object v48

    .line 1490
    .local v48, packageStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-interface/range {v48 .. v48}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_d

    .line 1492
    invoke-interface/range {v48 .. v48}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_20
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 1494
    .local v21, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/os/BatteryStats$Uid$Pkg;

    .line 1495
    .local v55, ps:Landroid/os/BatteryStats$Uid$Pkg;
    move-object/from16 v0, v55

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeups(I)I

    move-result v91

    .line 1496
    .local v91, wakeups:I
    invoke-virtual/range {v55 .. v55}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Ljava/util/Map;

    move-result-object v66

    .line 1498
    .local v66, serviceStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-interface/range {v66 .. v66}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .local v35, i$:Ljava/util/Iterator;
    :cond_21
    :goto_f
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Ljava/util/Map$Entry;

    .line 1499
    .local v65, sent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-interface/range {v65 .. v65}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    .line 1500
    .local v67, ss:Landroid/os/BatteryStats$Uid$Pkg$Serv;
    move-object/from16 v0, v67

    move/from16 v1, p2

    invoke-virtual {v0, v13, v14, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v68

    .line 1501
    .local v68, startTime:J
    move-object/from16 v0, v67

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v70

    .line 1502
    .local v70, starts:I
    move-object/from16 v0, v67

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v38

    .line 1503
    .local v38, launches:I
    const-wide/16 v8, 0x0

    cmp-long v5, v68, v8

    if-nez v5, :cond_22

    if-nez v70, :cond_22

    if-eqz v38, :cond_21

    .line 1504
    :cond_22
    const-string v5, "apk"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v91 .. v91}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v111

    aput-object v111, v8, v9

    const/4 v9, 0x1

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v111

    aput-object v111, v8, v9

    const/4 v9, 0x2

    invoke-interface/range {v65 .. v65}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v111

    aput-object v111, v8, v9

    const/4 v9, 0x3

    const-wide/16 v111, 0x3e8

    div-long v111, v68, v111

    invoke-static/range {v111 .. v112}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v111

    aput-object v111, v8, v9

    const/4 v9, 0x4

    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v111

    aput-object v111, v8, v9

    const/4 v9, 0x5

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v111

    aput-object v111, v8, v9

    move-object/from16 v0, p1

    move/from16 v1, v82

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2, v5, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    .line 1516
    .end local v21           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v24           #fgTimer:Landroid/os/BatteryStats$Timer;
    .end local v30           #fullWifiLockOnTime:J
    .end local v35           #i$:Ljava/util/Iterator;
    .end local v38           #launches:I
    .end local v39           #mobileRx:J
    .end local v43           #mobileTx:J
    .end local v48           #packageStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v54           #processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v55           #ps:Landroid/os/BatteryStats$Uid$Pkg;
    .end local v64           #sensors:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v65           #sent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v66           #serviceStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v67           #ss:Landroid/os/BatteryStats$Uid$Pkg$Serv;
    .end local v68           #startTime:J
    .end local v70           #starts:I
    .end local v81           #u:Landroid/os/BatteryStats$Uid;
    .end local v82           #uid:I
    .end local v84           #uidWifiRunningTime:J
    .end local v89           #vibTimer:Landroid/os/BatteryStats$Timer;
    .end local v90           #wakelocks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v91           #wakeups:I
    .end local v100           #wifiRx:J
    .end local v104           #wifiScanTime:J
    .end local v106           #wifiTx:J
    :cond_23
    return-void
.end method

.method public dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/util/List;ZZ)V
    .locals 22
    .parameter "pw"
    .parameter
    .parameter "isUnpluggedOnly"
    .parameter "includeHistory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 2399
    .local p2, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    .line 2401
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryBaseTime()J

    move-result-wide v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    add-long v11, v18, v20

    .line 2403
    .local v11, now:J
    if-eqz p4, :cond_1

    .line 2404
    new-instance v14, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v14}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 2405
    .local v14, rec:Landroid/os/BatteryStats$HistoryItem;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 2406
    new-instance v7, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v7}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    .line 2407
    .local v7, hprinter:Landroid/os/BatteryStats$HistoryPrinter;
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 2408
    const/16 v18, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v18, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2409
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v18, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2410
    const-string v18, "h"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v18, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2411
    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v14, v11, v12}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItemCheckin(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;J)V

    .line 2412
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    .line 2414
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 2418
    .end local v7           #hprinter:Landroid/os/BatteryStats$HistoryPrinter;
    .end local v14           #rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_1
    if-eqz p2, :cond_5

    .line 2419
    new-instance v17, Landroid/util/SparseArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/SparseArray;-><init>()V

    .line 2420
    .local v17, uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_3

    .line 2421
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 2422
    .local v6, ai:Landroid/content/pm/ApplicationInfo;
    iget v0, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 2423
    .local v13, pkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v13, :cond_2

    .line 2424
    new-instance v13, Ljava/util/ArrayList;

    .end local v13           #pkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2425
    .restart local v13       #pkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v0, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2427
    :cond_2
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2420
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2429
    .end local v6           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v13           #pkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v16

    .line 2430
    .local v16, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 2431
    .local v5, NU:I
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v10, v0, [Ljava/lang/String;

    .line 2432
    .local v10, lineArgs:[Ljava/lang/String;
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v5, :cond_5

    .line 2433
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 2434
    .local v15, uid:I
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 2435
    .restart local v13       #pkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v13, :cond_4

    .line 2436
    const/4 v9, 0x0

    .local v9, j:I
    :goto_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_4

    .line 2437
    const/16 v18, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v10, v18

    .line 2438
    const/16 v19, 0x1

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    aput-object v18, v10, v19

    .line 2439
    const/16 v19, 0x0

    const-string v20, "i"

    const-string/jumbo v21, "uid"

    move-object/from16 v18, v10

    check-cast v18, [Ljava/lang/Object;

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2436
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 2432
    .end local v9           #j:I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2445
    .end local v5           #NU:I
    .end local v8           #i:I
    .end local v10           #lineArgs:[Ljava/lang/String;
    .end local v13           #pkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15           #uid:I
    .end local v16           #uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v17           #uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_5
    if-eqz p3, :cond_6

    .line 2446
    const/16 v18, 0x3

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->dumpCheckinLocked(Ljava/io/PrintWriter;II)V

    .line 2452
    :goto_4
    return-void

    .line 2449
    :cond_6
    const/16 v18, 0x0

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->dumpCheckinLocked(Ljava/io/PrintWriter;II)V

    .line 2450
    const/16 v18, 0x3

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->dumpCheckinLocked(Ljava/io/PrintWriter;II)V

    goto :goto_4
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;II)V
    .locals 143
    .parameter "pw"
    .parameter "prefix"
    .parameter "which"
    .parameter "reqUid"

    .prologue
    .line 1533
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v15, 0x3e8

    mul-long v81, v5, v15

    .line 1534
    .local v81, rawUptime:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v15, 0x3e8

    mul-long v79, v5, v15

    .line 1535
    .local v79, rawRealtime:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v81

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v33

    .line 1536
    .local v33, batteryUptime:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v79

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getBatteryRealtime(J)J

    move-result-wide v13

    .line 1538
    .local v13, batteryRealtime:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v81

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v126

    .line 1539
    .local v126, whichBatteryUptime:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v79

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v124

    .line 1540
    .local v124, whichBatteryRealtime:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v79

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v104

    .line 1541
    .local v104, totalRealtime:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v81

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v108

    .line 1543
    .local v108, totalUptime:J
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1545
    .local v11, sb:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v115

    .line 1546
    .local v115, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v115 .. v115}, Landroid/util/SparseArray;->size()I

    move-result v31

    .line 1548
    .local v31, NU:I
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1549
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    const-string v5, "  Time on battery: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    const-wide/16 v5, 0x3e8

    div-long v5, v124, v5

    invoke-static {v11, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v5, "("

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    move-object/from16 v0, p0

    move-wide/from16 v1, v124

    move-wide/from16 v3, v104

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    const-string v5, ") realtime, "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    const-wide/16 v5, 0x3e8

    div-long v5, v126, v5

    invoke-static {v11, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1555
    const-string v5, "("

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v126

    move-wide/from16 v3, v104

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1556
    const-string v5, ") uptime"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1558
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1559
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    const-string v5, "  Total run time: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1561
    const-wide/16 v5, 0x3e8

    div-long v5, v104, v5

    invoke-static {v11, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1562
    const-string/jumbo v5, "realtime, "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1563
    const-wide/16 v5, 0x3e8

    div-long v5, v108, v5

    invoke-static {v11, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1564
    const-string/jumbo v5, "uptime, "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1565
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1567
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v13, v14, v1}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v83

    .line 1568
    .local v83, screenOnTime:J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v13, v14, v1}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v75

    .line 1569
    .local v75, phoneOnTime:J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v13, v14, v1}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v130

    .line 1570
    .local v130, wifiRunningTime:J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v13, v14, v1}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v128

    .line 1571
    .local v128, wifiOnTime:J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v13, v14, v1}, Landroid/os/BatteryStats;->getBluetoothOnTime(JI)J

    move-result-wide v35

    .line 1572
    .local v35, bluetoothOnTime:J
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1573
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    const-string v5, "  Screen on: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    div-long v5, v83, v5

    invoke-static {v11, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1575
    const-string v5, "("

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v83

    move-wide/from16 v3, v124

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    const-string v5, "), Input events: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getInputEventCount(I)I

    move-result v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1577
    const-string v5, ", Active phone call: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    div-long v5, v75, v5

    invoke-static {v11, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1578
    const-string v5, "("

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v75

    move-wide/from16 v3, v124

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1579
    const-string v5, ")"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1580
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1581
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1582
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    const-string v5, "  Screen brightnesses: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1584
    const/16 v38, 0x0

    .line 1585
    .local v38, didOne:Z
    const/16 v56, 0x0

    .local v56, i:I
    :goto_0
    const/4 v5, 0x5

    move/from16 v0, v56

    if-ge v0, v5, :cond_2

    .line 1586
    move-object/from16 v0, p0

    move/from16 v1, v56

    move/from16 v2, p3

    invoke-virtual {v0, v1, v13, v14, v2}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v96

    .line 1587
    .local v96, time:J
    const-wide/16 v5, 0x0

    cmp-long v5, v96, v5

    if-nez v5, :cond_0

    .line 1585
    :goto_1
    add-int/lit8 v56, v56, 0x1

    goto :goto_0

    .line 1590
    :cond_0
    if-eqz v38, :cond_1

    const-string v5, ", "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1591
    :cond_1
    const/16 v38, 0x1

    .line 1592
    sget-object v5, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v56

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1593
    const-string v5, " "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1594
    const-wide/16 v5, 0x3e8

    div-long v5, v96, v5

    invoke-static {v11, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1595
    const-string v5, "("

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    move-object/from16 v0, p0

    move-wide/from16 v1, v96

    move-wide/from16 v3, v83

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1597
    const-string v5, ")"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1599
    .end local v96           #time:J
    :cond_2
    if-nez v38, :cond_3

    const-string v5, "No activity"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1600
    :cond_3
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1603
    const-wide/16 v64, 0x0

    .line 1604
    .local v64, mobileRxTotal:J
    const-wide/16 v68, 0x0

    .line 1605
    .local v68, mobileTxTotal:J
    const-wide/16 v134, 0x0

    .line 1606
    .local v134, wifiRxTotal:J
    const-wide/16 v140, 0x0

    .line 1607
    .local v140, wifiTxTotal:J
    const-wide/16 v49, 0x0

    .line 1608
    .local v49, fullWakeLockTimeTotalMicros:J
    const-wide/16 v73, 0x0

    .line 1610
    .local v73, partialWakeLockTimeTotalMicros:J
    new-instance v98, Landroid/os/BatteryStats$1;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$1;-><init>(Landroid/os/BatteryStats;)V

    .line 1625
    .local v98, timerComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    if-gez p4, :cond_7

    .line 1626
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v60

    .line 1627
    .local v60, kernelWakelocks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v60 .. v60}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 1628
    new-instance v99, Ljava/util/ArrayList;

    invoke-direct/range {v99 .. v99}, Ljava/util/ArrayList;-><init>()V

    .line 1629
    .local v99, timers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-interface/range {v60 .. v60}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v57

    .local v57, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/Map$Entry;

    .line 1630
    .local v41, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v41 .. v41}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStats$Timer;

    .line 1631
    .local v8, timer:Landroid/os/BatteryStats$Timer;
    move/from16 v0, p3

    invoke-static {v8, v13, v14, v0}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v9

    .line 1632
    .local v9, totalTimeMillis:J
    const-wide/16 v5, 0x0

    cmp-long v5, v9, v5

    if-lez v5, :cond_4

    .line 1633
    new-instance v5, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface/range {v41 .. v41}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct/range {v5 .. v10}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    move-object/from16 v0, v99

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1636
    .end local v8           #timer:Landroid/os/BatteryStats$Timer;
    .end local v9           #totalTimeMillis:J
    .end local v41           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_5
    move-object/from16 v0, v99

    move-object/from16 v1, v98

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1637
    const/16 v56, 0x0

    :goto_3
    invoke-virtual/range {v99 .. v99}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v56

    if-ge v0, v5, :cond_7

    .line 1638
    move-object/from16 v0, v99

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStats$TimerEntry;

    .line 1639
    .local v8, timer:Landroid/os/BatteryStats$TimerEntry;
    const-string v17, ": "

    .line 1640
    .local v17, linePrefix:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1641
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1642
    const-string v5, "  Kernel Wake lock "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1643
    iget-object v5, v8, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    iget-object v12, v8, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    const/4 v15, 0x0

    move/from16 v16, p3

    invoke-static/range {v11 .. v17}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1646
    const-string v5, ": "

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1647
    const-string v5, " realtime"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1649
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1637
    :cond_6
    add-int/lit8 v56, v56, 0x1

    goto :goto_3

    .line 1655
    .end local v8           #timer:Landroid/os/BatteryStats$TimerEntry;
    .end local v17           #linePrefix:Ljava/lang/String;
    .end local v57           #i$:Ljava/util/Iterator;
    .end local v60           #kernelWakelocks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v99           #timers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    :cond_7
    new-instance v99, Ljava/util/ArrayList;

    invoke-direct/range {v99 .. v99}, Ljava/util/ArrayList;-><init>()V

    .line 1657
    .restart local v99       #timers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    const/16 v59, 0x0

    .local v59, iu:I
    :goto_4
    move/from16 v0, v59

    move/from16 v1, v31

    if-ge v0, v1, :cond_c

    .line 1658
    move-object/from16 v0, v115

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v112

    check-cast v112, Landroid/os/BatteryStats$Uid;

    .line 1659
    .local v112, u:Landroid/os/BatteryStats$Uid;
    const/4 v5, 0x0

    move-object/from16 v0, v112

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v5

    add-long v64, v64, v5

    .line 1660
    const/4 v5, 0x1

    move-object/from16 v0, v112

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v5

    add-long v68, v68, v5

    .line 1661
    const/4 v5, 0x2

    move-object/from16 v0, v112

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v5

    add-long v134, v134, v5

    .line 1662
    const/4 v5, 0x3

    move-object/from16 v0, v112

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v5

    add-long v140, v140, v5

    .line 1664
    invoke-virtual/range {v112 .. v112}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v122

    .line 1665
    .local v122, wakelocks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v122 .. v122}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 1667
    invoke-interface/range {v122 .. v122}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v57

    .restart local v57       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_5
    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/util/Map$Entry;

    .line 1668
    .local v44, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v44 .. v44}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v142

    check-cast v142, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 1670
    .local v142, wl:Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v5, 0x1

    move-object/from16 v0, v142

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v51

    .line 1671
    .local v51, fullWakeTimer:Landroid/os/BatteryStats$Timer;
    if-eqz v51, :cond_9

    .line 1672
    move-object/from16 v0, v51

    move/from16 v1, p3

    invoke-virtual {v0, v13, v14, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    add-long v49, v49, v5

    .line 1676
    :cond_9
    const/4 v5, 0x0

    move-object/from16 v0, v142

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v21

    .line 1677
    .local v21, partialWakeTimer:Landroid/os/BatteryStats$Timer;
    if-eqz v21, :cond_8

    .line 1678
    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v13, v14, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v22

    .line 1680
    .local v22, totalTimeMicros:J
    const-wide/16 v5, 0x0

    cmp-long v5, v22, v5

    if-lez v5, :cond_8

    .line 1681
    if-gez p4, :cond_a

    .line 1685
    new-instance v18, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface/range {v44 .. v44}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-virtual/range {v112 .. v112}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v20

    invoke-direct/range {v18 .. v23}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    move-object/from16 v0, v99

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1688
    :cond_a
    add-long v73, v73, v22

    goto :goto_5

    .line 1657
    .end local v21           #partialWakeTimer:Landroid/os/BatteryStats$Timer;
    .end local v22           #totalTimeMicros:J
    .end local v44           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v51           #fullWakeTimer:Landroid/os/BatteryStats$Timer;
    .end local v57           #i$:Ljava/util/Iterator;
    .end local v142           #wl:Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_b
    add-int/lit8 v59, v59, 0x1

    goto/16 :goto_4

    .line 1695
    .end local v112           #u:Landroid/os/BatteryStats$Uid;
    .end local v122           #wakelocks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_c
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1696
    const-string v5, "  Mobile total received: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v64

    invoke-direct {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1697
    const-string v5, ", Total sent: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v68

    invoke-direct {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1698
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1699
    const-string v5, "  Wi-Fi total received: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v134

    invoke-direct {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1700
    const-string v5, ", Total sent: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v140

    invoke-direct {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1701
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1702
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1703
    const-string v5, "  Total full wakelock time: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x1f4

    add-long v5, v5, v49

    const-wide/16 v15, 0x3e8

    div-long/2addr v5, v15

    invoke-static {v11, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1705
    const-string v5, ", Total partial wakelock time: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x1f4

    add-long v5, v5, v73

    const-wide/16 v15, 0x3e8

    div-long/2addr v5, v15

    invoke-static {v11, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1707
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1709
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1710
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1711
    const-string v5, "  Signal levels: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1712
    const/16 v38, 0x0

    .line 1713
    const/16 v56, 0x0

    :goto_6
    const/4 v5, 0x5

    move/from16 v0, v56

    if-ge v0, v5, :cond_f

    .line 1714
    move-object/from16 v0, p0

    move/from16 v1, v56

    move/from16 v2, p3

    invoke-virtual {v0, v1, v13, v14, v2}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v96

    .line 1715
    .restart local v96       #time:J
    const-wide/16 v5, 0x0

    cmp-long v5, v96, v5

    if-nez v5, :cond_d

    .line 1713
    :goto_7
    add-int/lit8 v56, v56, 0x1

    goto :goto_6

    .line 1718
    :cond_d
    if-eqz v38, :cond_e

    const-string v5, ", "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1719
    :cond_e
    const/16 v38, 0x1

    .line 1720
    sget-object v5, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v56

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1721
    const-string v5, " "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1722
    const-wide/16 v5, 0x3e8

    div-long v5, v96, v5

    invoke-static {v11, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1723
    const-string v5, "("

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1724
    move-object/from16 v0, p0

    move-wide/from16 v1, v96

    move-wide/from16 v3, v124

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1725
    const-string v5, ") "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1726
    move-object/from16 v0, p0

    move/from16 v1, v56

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneSignalStrengthCount(II)I

    move-result v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1727
    const-string/jumbo v5, "x"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1729
    .end local v96           #time:J
    :cond_f
    if-nez v38, :cond_10

    const-string v5, "No activity"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1730
    :cond_10
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1732
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1733
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1734
    const-string v5, "  Signal scanning time: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1735
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v13, v14, v1}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v5

    const-wide/16 v15, 0x3e8

    div-long/2addr v5, v15

    invoke-static {v11, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1736
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1738
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1739
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1740
    const-string v5, "  Radio types: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1741
    const/16 v38, 0x0

    .line 1742
    const/16 v56, 0x0

    :goto_8
    const/16 v5, 0x12

    move/from16 v0, v56

    if-ge v0, v5, :cond_13

    .line 1743
    move-object/from16 v0, p0

    move/from16 v1, v56

    move/from16 v2, p3

    invoke-virtual {v0, v1, v13, v14, v2}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v96

    .line 1744
    .restart local v96       #time:J
    const-wide/16 v5, 0x0

    cmp-long v5, v96, v5

    if-nez v5, :cond_11

    .line 1742
    :goto_9
    add-int/lit8 v56, v56, 0x1

    goto :goto_8

    .line 1747
    :cond_11
    if-eqz v38, :cond_12

    const-string v5, ", "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1748
    :cond_12
    const/16 v38, 0x1

    .line 1749
    sget-object v5, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v56

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1750
    const-string v5, " "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1751
    const-wide/16 v5, 0x3e8

    div-long v5, v96, v5

    invoke-static {v11, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1752
    const-string v5, "("

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1753
    move-object/from16 v0, p0

    move-wide/from16 v1, v96

    move-wide/from16 v3, v124

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1754
    const-string v5, ") "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1755
    move-object/from16 v0, p0

    move/from16 v1, v56

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneDataConnectionCount(II)I

    move-result v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1756
    const-string/jumbo v5, "x"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 1758
    .end local v96           #time:J
    :cond_13
    if-nez v38, :cond_14

    const-string v5, "No activity"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1759
    :cond_14
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1761
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1762
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1763
    const-string v5, "  Radio data uptime when unplugged: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1764
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getRadioDataUptime()J

    move-result-wide v5

    const-wide/16 v15, 0x3e8

    div-long/2addr v5, v15

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1765
    const-string v5, " ms"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1766
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1768
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1769
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1770
    const-string v5, "  Wifi on: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    div-long v5, v128, v5

    invoke-static {v11, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1771
    const-string v5, "("

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v128

    move-wide/from16 v3, v124

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1772
    const-string v5, "), Wifi running: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    div-long v5, v130, v5

    invoke-static {v11, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1773
    const-string v5, "("

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v130

    move-wide/from16 v3, v124

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1774
    const-string v5, "), Bluetooth on: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    div-long v5, v35, v5

    invoke-static {v11, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1775
    const-string v5, "("

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    move-wide/from16 v3, v124

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1776
    const-string v5, ")"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1777
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1779
    const-string v5, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1781
    const/4 v5, 0x3

    move/from16 v0, p3

    if-ne v0, v5, :cond_16

    .line 1782
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1783
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Device is currently unplugged"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1784
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    Discharge cycle start level: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1785
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1786
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    Discharge cycle current level: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1787
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1795
    :goto_a
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    Amount discharged while screen on: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1796
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOn()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1797
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    Amount discharged while screen off: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1798
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOff()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1799
    const-string v5, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1813
    :goto_b
    invoke-virtual/range {v99 .. v99}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_18

    .line 1814
    move-object/from16 v0, v99

    move-object/from16 v1, v98

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1815
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  All partial wake locks:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1816
    const/16 v56, 0x0

    :goto_c
    invoke-virtual/range {v99 .. v99}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v56

    if-ge v0, v5, :cond_17

    .line 1817
    move-object/from16 v0, v99

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStats$TimerEntry;

    .line 1818
    .restart local v8       #timer:Landroid/os/BatteryStats$TimerEntry;
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1819
    const-string v5, "  Wake lock "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1820
    iget v5, v8, Landroid/os/BatteryStats$TimerEntry;->mId:I

    invoke-static {v11, v5}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 1821
    const-string v5, " "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1822
    iget-object v5, v8, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1823
    iget-object v0, v8, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    move-object/from16 v25, v0

    const/16 v28, 0x0

    const-string v30, ": "

    move-object/from16 v24, v11

    move-wide/from16 v26, v13

    move/from16 v29, p3

    invoke-static/range {v24 .. v30}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 1824
    const-string v5, " realtime"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1825
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1816
    add-int/lit8 v56, v56, 0x1

    goto :goto_c

    .line 1789
    .end local v8           #timer:Landroid/os/BatteryStats$TimerEntry;
    :cond_15
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Device is currently plugged into power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1790
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    Last discharge cycle start level: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1791
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1792
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    Last discharge cycle end level: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1793
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_a

    .line 1801
    :cond_16
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Device battery use since last full charge"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1802
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    Amount discharged (lower bound): "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1803
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1804
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    Amount discharged (upper bound): "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1805
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1806
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    Amount discharged while screen on: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1807
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1808
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    Amount discharged while screen off: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1809
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1810
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_b

    .line 1827
    :cond_17
    invoke-virtual/range {v99 .. v99}, Ljava/util/ArrayList;->clear()V

    .line 1828
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1831
    :cond_18
    const/16 v59, 0x0

    :goto_d
    move/from16 v0, v59

    move/from16 v1, v31

    if-ge v0, v1, :cond_43

    .line 1832
    move-object/from16 v0, v115

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v113

    .line 1833
    .local v113, uid:I
    if-ltz p4, :cond_1a

    move/from16 v0, v113

    move/from16 v1, p4

    if-eq v0, v1, :cond_1a

    const/16 v5, 0x3e8

    move/from16 v0, v113

    if-eq v0, v5, :cond_1a

    .line 1831
    :cond_19
    :goto_e
    add-int/lit8 v59, v59, 0x1

    goto :goto_d

    .line 1837
    :cond_1a
    move-object/from16 v0, v115

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v112

    check-cast v112, Landroid/os/BatteryStats$Uid;

    .line 1839
    .restart local v112       #u:Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1840
    const-string v5, "  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1841
    move-object/from16 v0, p1

    move/from16 v1, v113

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1842
    const-string v5, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1843
    const/16 v114, 0x0

    .line 1845
    .local v114, uidActivity:Z
    const/4 v5, 0x0

    move-object/from16 v0, v112

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v62

    .line 1846
    .local v62, mobileRxBytes:J
    const/4 v5, 0x1

    move-object/from16 v0, v112

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v66

    .line 1847
    .local v66, mobileTxBytes:J
    const/4 v5, 0x2

    move-object/from16 v0, v112

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v132

    .line 1848
    .local v132, wifiRxBytes:J
    const/4 v5, 0x3

    move-object/from16 v0, v112

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v138

    .line 1849
    .local v138, wifiTxBytes:J
    move-object/from16 v0, v112

    move/from16 v1, p3

    invoke-virtual {v0, v13, v14, v1}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v52

    .line 1850
    .local v52, fullWifiLockOnTime:J
    move-object/from16 v0, v112

    move/from16 v1, p3

    invoke-virtual {v0, v13, v14, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v136

    .line 1851
    .local v136, wifiScanTime:J
    move-object/from16 v0, v112

    move/from16 v1, p3

    invoke-virtual {v0, v13, v14, v1}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v116

    .line 1853
    .local v116, uidWifiRunningTime:J
    const-wide/16 v5, 0x0

    cmp-long v5, v62, v5

    if-gtz v5, :cond_1b

    const-wide/16 v5, 0x0

    cmp-long v5, v66, v5

    if-lez v5, :cond_1c

    .line 1854
    :cond_1b
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    Mobile network: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1855
    move-object/from16 v0, p0

    move-wide/from16 v1, v62

    invoke-direct {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " received, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1856
    move-object/from16 v0, p0

    move-wide/from16 v1, v66

    invoke-direct {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " sent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1858
    :cond_1c
    const-wide/16 v5, 0x0

    cmp-long v5, v132, v5

    if-gtz v5, :cond_1d

    const-wide/16 v5, 0x0

    cmp-long v5, v138, v5

    if-lez v5, :cond_1e

    .line 1859
    :cond_1d
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    Wi-Fi network: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1860
    move-object/from16 v0, p0

    move-wide/from16 v1, v132

    invoke-direct {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " received, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1861
    move-object/from16 v0, p0

    move-wide/from16 v1, v138

    invoke-direct {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " sent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1864
    :cond_1e
    invoke-virtual/range {v112 .. v112}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1865
    const/16 v55, 0x0

    .line 1866
    .local v55, hasData:Z
    const/16 v56, 0x0

    :goto_f
    const/4 v5, 0x3

    move/from16 v0, v56

    if-ge v0, v5, :cond_21

    .line 1867
    move-object/from16 v0, v112

    move/from16 v1, v56

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v120

    .line 1868
    .local v120, val:I
    if-eqz v120, :cond_1f

    .line 1869
    if-nez v55, :cond_20

    .line 1870
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1871
    const-string v5, "    User activity: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1872
    const/16 v55, 0x1

    .line 1876
    :goto_10
    move/from16 v0, v120

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1877
    const-string v5, " "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1878
    sget-object v5, Landroid/os/BatteryStats$Uid;->USER_ACTIVITY_TYPES:[Ljava/lang/String;

    aget-object v5, v5, v56

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1866
    :cond_1f
    add-int/lit8 v56, v56, 0x1

    goto :goto_f

    .line 1874
    :cond_20
    const-string v5, ", "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 1881
    .end local v120           #val:I
    :cond_21
    if-eqz v55, :cond_22

    .line 1882
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1886
    .end local v55           #hasData:Z
    :cond_22
    const-wide/16 v5, 0x0

    cmp-long v5, v52, v5

    if-nez v5, :cond_23

    const-wide/16 v5, 0x0

    cmp-long v5, v136, v5

    if-nez v5, :cond_23

    const-wide/16 v5, 0x0

    cmp-long v5, v116, v5

    if-eqz v5, :cond_24

    .line 1888
    :cond_23
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1889
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "    Wifi Running: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1890
    const-wide/16 v5, 0x3e8

    div-long v5, v116, v5

    invoke-static {v11, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1891
    const-string v5, "("

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v116

    move-wide/from16 v3, v124

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1892
    const-string v5, ")\n"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1893
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "    Full Wifi Lock: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1894
    const-wide/16 v5, 0x3e8

    div-long v5, v52, v5

    invoke-static {v11, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1895
    const-string v5, "("

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v52

    move-wide/from16 v3, v124

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1896
    const-string v5, ")\n"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1897
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "    Wifi Scan: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1898
    const-wide/16 v5, 0x3e8

    div-long v5, v136, v5

    invoke-static {v11, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1899
    const-string v5, "("

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v136

    move-wide/from16 v3, v124

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1900
    const-string v5, ")"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1901
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1904
    :cond_24
    invoke-virtual/range {v112 .. v112}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v122

    .line 1905
    .restart local v122       #wakelocks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v122 .. v122}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_2d

    .line 1906
    const-wide/16 v100, 0x0

    .local v100, totalFull:J
    const-wide/16 v102, 0x0

    .local v102, totalPartial:J
    const-wide/16 v110, 0x0

    .line 1907
    .local v110, totalWindow:J
    const/16 v37, 0x0

    .line 1909
    .local v37, count:I
    invoke-interface/range {v122 .. v122}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v57

    .restart local v57       #i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/util/Map$Entry;

    .line 1910
    .restart local v44       #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v44 .. v44}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v142

    check-cast v142, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 1911
    .restart local v142       #wl:Landroid/os/BatteryStats$Uid$Wakelock;
    const-string v17, ": "

    .line 1912
    .restart local v17       #linePrefix:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1913
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1914
    const-string v5, "    Wake lock "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1915
    invoke-interface/range {v44 .. v44}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1916
    const/4 v5, 0x1

    move-object/from16 v0, v142

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v12

    const-string v15, "full"

    move/from16 v16, p3

    invoke-static/range {v11 .. v17}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1918
    const/4 v5, 0x0

    move-object/from16 v0, v142

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v12

    const-string/jumbo v15, "partial"

    move/from16 v16, p3

    invoke-static/range {v11 .. v17}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1920
    const/4 v5, 0x2

    move-object/from16 v0, v142

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v12

    const-string/jumbo v15, "window"

    move/from16 v16, p3

    invoke-static/range {v11 .. v17}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1922
    const-string v5, ": "

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 1923
    const-string v5, " realtime"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1925
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1926
    const/16 v114, 0x1

    .line 1927
    add-int/lit8 v37, v37, 0x1

    .line 1929
    :cond_25
    const/4 v5, 0x1

    move-object/from16 v0, v142

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move/from16 v0, p3

    invoke-static {v5, v13, v14, v0}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v5

    add-long v100, v100, v5

    .line 1931
    const/4 v5, 0x0

    move-object/from16 v0, v142

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move/from16 v0, p3

    invoke-static {v5, v13, v14, v0}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v5

    add-long v102, v102, v5

    .line 1933
    const/4 v5, 0x2

    move-object/from16 v0, v142

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move/from16 v0, p3

    invoke-static {v5, v13, v14, v0}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v5

    add-long v110, v110, v5

    .line 1935
    goto/16 :goto_11

    .line 1936
    .end local v17           #linePrefix:Ljava/lang/String;
    .end local v44           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v142           #wl:Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_26
    const/4 v5, 0x1

    move/from16 v0, v37

    if-le v0, v5, :cond_2d

    .line 1937
    const-wide/16 v5, 0x0

    cmp-long v5, v100, v5

    if-nez v5, :cond_27

    const-wide/16 v5, 0x0

    cmp-long v5, v102, v5

    if-nez v5, :cond_27

    const-wide/16 v5, 0x0

    cmp-long v5, v110, v5

    if-eqz v5, :cond_2d

    .line 1938
    :cond_27
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1939
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1940
    const-string v5, "    TOTAL wake: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1941
    const/16 v70, 0x0

    .line 1942
    .local v70, needComma:Z
    const-wide/16 v5, 0x0

    cmp-long v5, v100, v5

    if-eqz v5, :cond_28

    .line 1943
    const/16 v70, 0x1

    .line 1944
    move-wide/from16 v0, v100

    invoke-static {v11, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1945
    const-string v5, "full"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1947
    :cond_28
    const-wide/16 v5, 0x0

    cmp-long v5, v102, v5

    if-eqz v5, :cond_2a

    .line 1948
    if-eqz v70, :cond_29

    .line 1949
    const-string v5, ", "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1951
    :cond_29
    const/16 v70, 0x1

    .line 1952
    move-wide/from16 v0, v102

    invoke-static {v11, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1953
    const-string/jumbo v5, "partial"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1955
    :cond_2a
    const-wide/16 v5, 0x0

    cmp-long v5, v110, v5

    if-eqz v5, :cond_2c

    .line 1956
    if-eqz v70, :cond_2b

    .line 1957
    const-string v5, ", "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1959
    :cond_2b
    const/16 v70, 0x1

    .line 1960
    move-wide/from16 v0, v110

    invoke-static {v11, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1961
    const-string/jumbo v5, "window"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1963
    :cond_2c
    const-string v5, " realtime"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1964
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1969
    .end local v37           #count:I
    .end local v57           #i$:Ljava/util/Iterator;
    .end local v70           #needComma:Z
    .end local v100           #totalFull:J
    .end local v102           #totalPartial:J
    .end local v110           #totalWindow:J
    :cond_2d
    invoke-virtual/range {v112 .. v112}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v87

    .line 1970
    .local v87, sensors:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v87 .. v87}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_31

    .line 1972
    invoke-interface/range {v87 .. v87}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v57

    .restart local v57       #i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/util/Map$Entry;

    .line 1973
    .local v40, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v40 .. v40}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Landroid/os/BatteryStats$Uid$Sensor;

    .line 1974
    .local v85, se:Landroid/os/BatteryStats$Uid$Sensor;
    invoke-interface/range {v40 .. v40}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v86

    .line 1975
    .local v86, sensorNumber:I
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1976
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1977
    const-string v5, "    Sensor "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1978
    invoke-virtual/range {v85 .. v85}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v54

    .line 1979
    .local v54, handle:I
    const/16 v5, -0x2710

    move/from16 v0, v54

    if-ne v0, v5, :cond_2e

    .line 1980
    const-string v5, "GPS"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1984
    :goto_13
    const-string v5, ": "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1986
    invoke-virtual/range {v85 .. v85}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v8

    .line 1987
    .local v8, timer:Landroid/os/BatteryStats$Timer;
    if-eqz v8, :cond_30

    .line 1989
    move/from16 v0, p3

    invoke-virtual {v8, v13, v14, v0}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    const-wide/16 v15, 0x1f4

    add-long/2addr v5, v15

    const-wide/16 v15, 0x3e8

    div-long v106, v5, v15

    .line 1991
    .local v106, totalTime:J
    move/from16 v0, p3

    invoke-virtual {v8, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v37

    .line 1993
    .restart local v37       #count:I
    const-wide/16 v5, 0x0

    cmp-long v5, v106, v5

    if-eqz v5, :cond_2f

    .line 1994
    move-wide/from16 v0, v106

    invoke-static {v11, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1995
    const-string/jumbo v5, "realtime ("

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1996
    move/from16 v0, v37

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1997
    const-string v5, " times)"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2005
    .end local v37           #count:I
    .end local v106           #totalTime:J
    :goto_14
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2006
    const/16 v114, 0x1

    .line 2007
    goto :goto_12

    .line 1982
    .end local v8           #timer:Landroid/os/BatteryStats$Timer;
    :cond_2e
    move/from16 v0, v54

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 1999
    .restart local v8       #timer:Landroid/os/BatteryStats$Timer;
    .restart local v37       #count:I
    .restart local v106       #totalTime:J
    :cond_2f
    const-string v5, "(not used)"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 2002
    .end local v37           #count:I
    .end local v106           #totalTime:J
    :cond_30
    const-string v5, "(not used)"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 2010
    .end local v8           #timer:Landroid/os/BatteryStats$Timer;
    .end local v40           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v54           #handle:I
    .end local v57           #i$:Ljava/util/Iterator;
    .end local v85           #se:Landroid/os/BatteryStats$Uid$Sensor;
    .end local v86           #sensorNumber:I
    :cond_31
    invoke-virtual/range {v112 .. v112}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v121

    .line 2011
    .local v121, vibTimer:Landroid/os/BatteryStats$Timer;
    if-eqz v121, :cond_32

    .line 2013
    move-object/from16 v0, v121

    move/from16 v1, p3

    invoke-virtual {v0, v13, v14, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    const-wide/16 v15, 0x1f4

    add-long/2addr v5, v15

    const-wide/16 v15, 0x3e8

    div-long v106, v5, v15

    .line 2015
    .restart local v106       #totalTime:J
    move-object/from16 v0, v121

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v37

    .line 2017
    .restart local v37       #count:I
    const-wide/16 v5, 0x0

    cmp-long v5, v106, v5

    if-eqz v5, :cond_32

    .line 2018
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2019
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2020
    const-string v5, "    Vibrator: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2021
    move-wide/from16 v0, v106

    invoke-static {v11, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 2022
    const-string/jumbo v5, "realtime ("

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2023
    move/from16 v0, v37

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2024
    const-string v5, " times)"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2025
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2026
    const/16 v114, 0x1

    .line 2030
    .end local v37           #count:I
    .end local v106           #totalTime:J
    :cond_32
    invoke-virtual/range {v112 .. v112}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v46

    .line 2031
    .local v46, fgTimer:Landroid/os/BatteryStats$Timer;
    if-eqz v46, :cond_33

    .line 2033
    move-object/from16 v0, v46

    move/from16 v1, p3

    invoke-virtual {v0, v13, v14, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    const-wide/16 v15, 0x1f4

    add-long/2addr v5, v15

    const-wide/16 v15, 0x3e8

    div-long v106, v5, v15

    .line 2034
    .restart local v106       #totalTime:J
    move-object/from16 v0, v46

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v37

    .line 2035
    .restart local v37       #count:I
    const-wide/16 v5, 0x0

    cmp-long v5, v106, v5

    if-eqz v5, :cond_33

    .line 2036
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2037
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2038
    const-string v5, "    Foreground activities: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2039
    move-wide/from16 v0, v106

    invoke-static {v11, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 2040
    const-string/jumbo v5, "realtime ("

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2041
    move/from16 v0, v37

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2042
    const-string v5, " times)"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2043
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2044
    const/16 v114, 0x1

    .line 2048
    .end local v37           #count:I
    .end local v106           #totalTime:J
    :cond_33
    invoke-virtual/range {v112 .. v112}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v77

    .line 2049
    .local v77, processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface/range {v77 .. v77}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_3c

    .line 2051
    invoke-interface/range {v77 .. v77}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v57

    .restart local v57       #i$:Ljava/util/Iterator;
    :cond_34
    :goto_15
    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/Map$Entry;

    .line 2052
    .local v43, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface/range {v43 .. v43}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Landroid/os/BatteryStats$Uid$Proc;

    .line 2059
    .local v78, ps:Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v78

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v118

    .line 2060
    .local v118, userTime:J
    move-object/from16 v0, v78

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v94

    .line 2061
    .local v94, systemTime:J
    move-object/from16 v0, v78

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v47

    .line 2062
    .local v47, foregroundTime:J
    move-object/from16 v0, v78

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v93

    .line 2063
    .local v93, starts:I
    if-nez p3, :cond_38

    invoke-virtual/range {v78 .. v78}, Landroid/os/BatteryStats$Uid$Proc;->countExcessivePowers()I

    move-result v71

    .line 2066
    .local v71, numExcessive:I
    :goto_16
    const-wide/16 v5, 0x0

    cmp-long v5, v118, v5

    if-nez v5, :cond_35

    const-wide/16 v5, 0x0

    cmp-long v5, v94, v5

    if-nez v5, :cond_35

    const-wide/16 v5, 0x0

    cmp-long v5, v47, v5

    if-nez v5, :cond_35

    if-nez v93, :cond_35

    if-eqz v71, :cond_34

    .line 2068
    :cond_35
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2069
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "    Proc "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2070
    invoke-interface/range {v43 .. v43}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":\n"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2071
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "      CPU: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2072
    move-wide/from16 v0, v118

    invoke-static {v11, v0, v1}, Landroid/os/BatteryStats;->formatTime(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v5, "usr + "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2073
    move-wide/from16 v0, v94

    invoke-static {v11, v0, v1}, Landroid/os/BatteryStats;->formatTime(Ljava/lang/StringBuilder;J)V

    const-string v5, "krn ; "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2074
    move-wide/from16 v0, v47

    invoke-static {v11, v0, v1}, Landroid/os/BatteryStats;->formatTime(Ljava/lang/StringBuilder;J)V

    const-string v5, "fg"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2075
    if-eqz v93, :cond_36

    .line 2076
    const-string v5, "\n"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "      "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2077
    move/from16 v0, v93

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " proc starts"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2079
    :cond_36
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2080
    const/16 v39, 0x0

    .local v39, e:I
    :goto_17
    move/from16 v0, v39

    move/from16 v1, v71

    if-ge v0, v1, :cond_3b

    .line 2081
    move-object/from16 v0, v78

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    move-result-object v45

    .line 2082
    .local v45, ew:Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    if-eqz v45, :cond_37

    .line 2083
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "      * Killed for "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2084
    move-object/from16 v0, v45

    iget v5, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_39

    .line 2085
    const-string/jumbo v5, "wake lock"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2091
    :goto_18
    const-string v5, " use: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2092
    move-object/from16 v0, v45

    iget-wide v5, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    move-object/from16 v0, p1

    invoke-static {v5, v6, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2093
    const-string v5, " over "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2094
    move-object/from16 v0, v45

    iget-wide v5, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    move-object/from16 v0, p1

    invoke-static {v5, v6, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2095
    move-object/from16 v0, v45

    iget-wide v5, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    const-wide/16 v15, 0x0

    cmp-long v5, v5, v15

    if-eqz v5, :cond_37

    .line 2096
    const-string v5, " ("

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2097
    move-object/from16 v0, v45

    iget-wide v5, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    const-wide/16 v15, 0x64

    mul-long/2addr v5, v15

    move-object/from16 v0, v45

    iget-wide v15, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    div-long/2addr v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 2098
    const-string v5, "%)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2080
    :cond_37
    add-int/lit8 v39, v39, 0x1

    goto :goto_17

    .line 2063
    .end local v39           #e:I
    .end local v45           #ew:Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    .end local v71           #numExcessive:I
    :cond_38
    const/16 v71, 0x0

    goto/16 :goto_16

    .line 2086
    .restart local v39       #e:I
    .restart local v45       #ew:Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    .restart local v71       #numExcessive:I
    :cond_39
    move-object/from16 v0, v45

    iget v5, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3a

    .line 2087
    const-string v5, "cpu"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_18

    .line 2089
    :cond_3a
    const-string/jumbo v5, "unknown"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_18

    .line 2102
    .end local v45           #ew:Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    :cond_3b
    const/16 v114, 0x1

    goto/16 :goto_15

    .line 2107
    .end local v39           #e:I
    .end local v43           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v47           #foregroundTime:J
    .end local v57           #i$:Ljava/util/Iterator;
    .end local v71           #numExcessive:I
    .end local v78           #ps:Landroid/os/BatteryStats$Uid$Proc;
    .end local v93           #starts:I
    .end local v94           #systemTime:J
    .end local v118           #userTime:J
    :cond_3c
    invoke-virtual/range {v112 .. v112}, Landroid/os/BatteryStats$Uid;->getPackageStats()Ljava/util/Map;

    move-result-object v72

    .line 2108
    .local v72, packageStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-interface/range {v72 .. v72}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_42

    .line 2110
    invoke-interface/range {v72 .. v72}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v57

    :goto_19
    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/util/Map$Entry;

    .line 2111
    .local v42, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    Apk "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface/range {v42 .. v42}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2112
    const/16 v32, 0x0

    .line 2113
    .local v32, apkActivity:Z
    invoke-interface/range {v42 .. v42}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Landroid/os/BatteryStats$Uid$Pkg;

    .line 2114
    .local v78, ps:Landroid/os/BatteryStats$Uid$Pkg;
    move-object/from16 v0, v78

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeups(I)I

    move-result v123

    .line 2115
    .local v123, wakeups:I
    if-eqz v123, :cond_3d

    .line 2116
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "      "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2117
    move-object/from16 v0, p1

    move/from16 v1, v123

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " wakeup alarms"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2118
    const/16 v32, 0x1

    .line 2120
    :cond_3d
    invoke-virtual/range {v78 .. v78}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Ljava/util/Map;

    move-result-object v89

    .line 2121
    .local v89, serviceStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-interface/range {v89 .. v89}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_40

    .line 2123
    invoke-interface/range {v89 .. v89}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v58

    .local v58, i$:Ljava/util/Iterator;
    :cond_3e
    :goto_1a
    invoke-interface/range {v58 .. v58}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface/range {v58 .. v58}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Ljava/util/Map$Entry;

    .line 2124
    .local v88, sent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-interface/range {v88 .. v88}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v90

    check-cast v90, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    .line 2125
    .local v90, ss:Landroid/os/BatteryStats$Uid$Pkg$Serv;
    move-object/from16 v0, v90

    move-wide/from16 v1, v33

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v91

    .line 2126
    .local v91, startTime:J
    move-object/from16 v0, v90

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v93

    .line 2127
    .restart local v93       #starts:I
    move-object/from16 v0, v90

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v61

    .line 2128
    .local v61, launches:I
    const-wide/16 v5, 0x0

    cmp-long v5, v91, v5

    if-nez v5, :cond_3f

    if-nez v93, :cond_3f

    if-eqz v61, :cond_3e

    .line 2129
    :cond_3f
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2130
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "      Service "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2131
    invoke-interface/range {v88 .. v88}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":\n"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2132
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "        Created for: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2133
    const-wide/16 v5, 0x3e8

    div-long v5, v91, v5

    invoke-static {v11, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 2134
    const-string/jumbo v5, "uptime\n"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2135
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "        Starts: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2136
    move/from16 v0, v93

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2137
    const-string v5, ", launches: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v61

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2138
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2139
    const/16 v32, 0x1

    goto/16 :goto_1a

    .line 2143
    .end local v58           #i$:Ljava/util/Iterator;
    .end local v61           #launches:I
    .end local v88           #sent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v90           #ss:Landroid/os/BatteryStats$Uid$Pkg$Serv;
    .end local v91           #startTime:J
    .end local v93           #starts:I
    :cond_40
    if-nez v32, :cond_41

    .line 2144
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "      (nothing executed)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2146
    :cond_41
    const/16 v114, 0x1

    .line 2147
    goto/16 :goto_19

    .line 2149
    .end local v32           #apkActivity:Z
    .end local v42           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v78           #ps:Landroid/os/BatteryStats$Uid$Pkg;
    .end local v89           #serviceStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v123           #wakeups:I
    :cond_42
    if-nez v114, :cond_19

    .line 2150
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    (nothing executed)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 2153
    .end local v46           #fgTimer:Landroid/os/BatteryStats$Timer;
    .end local v52           #fullWifiLockOnTime:J
    .end local v62           #mobileRxBytes:J
    .end local v66           #mobileTxBytes:J
    .end local v72           #packageStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v77           #processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v87           #sensors:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v112           #u:Landroid/os/BatteryStats$Uid;
    .end local v113           #uid:I
    .end local v114           #uidActivity:Z
    .end local v116           #uidWifiRunningTime:J
    .end local v121           #vibTimer:Landroid/os/BatteryStats$Timer;
    .end local v122           #wakelocks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v132           #wifiRxBytes:J
    .end local v136           #wifiScanTime:J
    .end local v138           #wifiTxBytes:J
    :cond_43
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;ZI)V
    .locals 27
    .parameter "pw"
    .parameter "isUnpluggedOnly"
    .parameter "reqUid"

    .prologue
    .line 2332
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    .line 2334
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryBaseTime()J

    move-result-wide v21

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v23

    add-long v10, v21, v23

    .line 2336
    .local v10, now:J
    new-instance v16, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v16 .. v16}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 2337
    .local v16, rec:Landroid/os/BatteryStats$HistoryItem;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 2338
    const-string v21, "Battery History:"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2339
    new-instance v7, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v7}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    .line 2340
    .local v7, hprinter:Landroid/os/BatteryStats$HistoryPrinter;
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 2341
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v7, v0, v1, v10, v11}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;J)V

    goto :goto_0

    .line 2343
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 2344
    const-string v21, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2347
    .end local v7           #hprinter:Landroid/os/BatteryStats$HistoryPrinter;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingOldHistoryLocked()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 2348
    const-string v21, "Old battery History:"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2349
    new-instance v7, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v7}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    .line 2350
    .restart local v7       #hprinter:Landroid/os/BatteryStats$HistoryPrinter;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 2351
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v7, v0, v1, v10, v11}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;J)V

    goto :goto_1

    .line 2353
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingOldHistoryLocked()V

    .line 2354
    const-string v21, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2357
    .end local v7           #hprinter:Landroid/os/BatteryStats$HistoryPrinter;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v20

    .line 2358
    .local v20, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 2359
    .local v5, NU:I
    const/4 v6, 0x0

    .line 2360
    .local v6, didPid:Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 2361
    .local v12, nowRealtime:J
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v5, :cond_7

    .line 2362
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/BatteryStats$Uid;

    .line 2363
    .local v19, uid:Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v19 .. v19}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    move-result-object v15

    .line 2364
    .local v15, pids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Pid;>;"
    if-eqz v15, :cond_6

    .line 2365
    const/4 v9, 0x0

    .local v9, j:I
    :goto_3
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v9, v0, :cond_6

    .line 2366
    invoke-virtual {v15, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Uid$Pid;

    .line 2367
    .local v14, pid:Landroid/os/BatteryStats$Uid$Pid;
    if-nez v6, :cond_4

    .line 2368
    const-string v21, "Per-PID Stats:"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2369
    const/4 v6, 0x1

    .line 2371
    :cond_4
    iget-wide v0, v14, Landroid/os/BatteryStats$Uid$Pid;->mWakeSum:J

    move-wide/from16 v23, v0

    iget-wide v0, v14, Landroid/os/BatteryStats$Uid$Pid;->mWakeStart:J

    move-wide/from16 v21, v0

    const-wide/16 v25, 0x0

    cmp-long v21, v21, v25

    if-eqz v21, :cond_5

    iget-wide v0, v14, Landroid/os/BatteryStats$Uid$Pid;->mWakeStart:J

    move-wide/from16 v21, v0

    sub-long v21, v12, v21

    :goto_4
    add-long v17, v23, v21

    .line 2373
    .local v17, time:J
    const-string v21, "  PID "

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2374
    const-string v21, " wake time: "

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2375
    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2376
    const-string v21, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2365
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 2371
    .end local v17           #time:J
    :cond_5
    const-wide/16 v21, 0x0

    goto :goto_4

    .line 2361
    .end local v9           #j:I
    .end local v14           #pid:Landroid/os/BatteryStats$Uid$Pid;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2380
    .end local v15           #pids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Pid;>;"
    .end local v19           #uid:Landroid/os/BatteryStats$Uid;
    :cond_7
    if-eqz v6, :cond_8

    .line 2381
    const-string v21, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2384
    :cond_8
    if-nez p2, :cond_9

    .line 2385
    const-string v21, "Statistics since last charge:"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2386
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  System starts: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", currently on battery: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2388
    const-string v21, ""

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 2389
    const-string v21, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2391
    :cond_9
    const-string v21, "Statistics since last unplugged:"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2392
    const-string v21, ""

    const/16 v22, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 2393
    return-void
.end method

.method public abstract finishIteratingHistoryLocked()V
.end method

.method public abstract finishIteratingOldHistoryLocked()V
.end method

.method public abstract getBatteryRealtime(J)J
.end method

.method public abstract getBatteryUptime(J)J
.end method

.method public abstract getBluetoothOnTime(JI)J
.end method

.method public abstract getCpuSpeedSteps()I
.end method

.method public abstract getDischargeAmountScreenOff()I
.end method

.method public abstract getDischargeAmountScreenOffSinceCharge()I
.end method

.method public abstract getDischargeAmountScreenOn()I
.end method

.method public abstract getDischargeAmountScreenOnSinceCharge()I
.end method

.method public abstract getDischargeCurrentLevel()I
.end method

.method public abstract getDischargeStartLevel()I
.end method

.method public abstract getGlobalWifiRunningTime(JI)J
.end method

.method public abstract getHighDischargeAmountSinceCharge()I
.end method

.method public abstract getHistoryBaseTime()J
.end method

.method public abstract getInputEventCount(I)I
.end method

.method public abstract getIsOnBattery()Z
.end method

.method public abstract getKernelWakelockStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLowDischargeAmountSinceCharge()I
.end method

.method public abstract getNetworkActivityCount(II)J
.end method

.method public abstract getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
.end method

.method public abstract getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
.end method

.method public abstract getPhoneDataConnectionCount(II)I
.end method

.method public abstract getPhoneDataConnectionTime(IJI)J
.end method

.method public abstract getPhoneOnTime(JI)J
.end method

.method public abstract getPhoneSignalScanningTime(JI)J
.end method

.method public abstract getPhoneSignalStrengthCount(II)I
.end method

.method public abstract getPhoneSignalStrengthTime(IJI)J
.end method

.method public abstract getRadioDataUptime()J
.end method

.method public getRadioDataUptimeMs()J
    .locals 4

    .prologue
    .line 971
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getRadioDataUptime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public abstract getScreenBrightnessTime(IJI)J
.end method

.method public abstract getScreenOnTime(JI)J
.end method

.method public abstract getStartCount()I
.end method

.method public abstract getUidStats()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWifiOnTime(JI)J
.end method

.method public prepareForDumpLocked()V
    .locals 0

    .prologue
    .line 2180
    return-void
.end method

.method public abstract startIteratingHistoryLocked()Z
.end method

.method public abstract startIteratingOldHistoryLocked()Z
.end method
