.class public Lmiui/provider/yellowpage/utils/Device;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "device"

.field private static sDispalyWidth:I

.field private static sDisplayDensity:I

.field private static sDisplayHeight:I

.field private static sIMEI:Ljava/lang/String;

.field private static sMiShopVersionCode:I

.field private static sUUID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, ""

    sput-object v0, Lmiui/provider/yellowpage/utils/Device;->sUUID:Ljava/lang/String;

    .line 40
    const-string v0, ""

    sput-object v0, Lmiui/provider/yellowpage/utils/Device;->sIMEI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static acquireIMEI(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 123
    .local v0, deviceId:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lmiui/net/CloudManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Lmiui/telephony/exception/IllegalDeviceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 128
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    const-string v0, ""

    .line 131
    :cond_0
    sput-object v0, Lmiui/provider/yellowpage/utils/Device;->sIMEI:Ljava/lang/String;

    .line 132
    return-void

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, e:Lmiui/telephony/exception/IllegalDeviceException;
    invoke-virtual {v1}, Lmiui/telephony/exception/IllegalDeviceException;->printStackTrace()V

    goto :goto_0
.end method

.method private static acquireScreenAttr(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 111
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 112
    .local v0, dm:Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 113
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 114
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lmiui/provider/yellowpage/utils/Device;->sDisplayHeight:I

    .line 115
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lmiui/provider/yellowpage/utils/Device;->sDispalyWidth:I

    .line 116
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v2, Lmiui/provider/yellowpage/utils/Device;->sDisplayDensity:I

    .line 117
    return-void
.end method

.method private static acquireUUID(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://miui.yellowpage/uuid"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "uuid"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 138
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 140
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/provider/yellowpage/utils/Device;->sUUID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_1
    return-void

    .line 144
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getCarrier(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 92
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 93
    .local v0, telManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCountry(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayDensity(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    sget v0, Lmiui/provider/yellowpage/utils/Device;->sDisplayDensity:I

    if-nez v0, :cond_0

    .line 61
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/Device;->acquireScreenAttr(Landroid/content/Context;)V

    .line 63
    :cond_0
    sget v0, Lmiui/provider/yellowpage/utils/Device;->sDisplayDensity:I

    return v0
.end method

.method public static getDisplayHeight(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    sget v0, Lmiui/provider/yellowpage/utils/Device;->sDisplayHeight:I

    if-nez v0, :cond_0

    .line 54
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/Device;->acquireScreenAttr(Landroid/content/Context;)V

    .line 56
    :cond_0
    sget v0, Lmiui/provider/yellowpage/utils/Device;->sDisplayHeight:I

    return v0
.end method

.method public static getDisplayWidth(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    sget v0, Lmiui/provider/yellowpage/utils/Device;->sDispalyWidth:I

    if-nez v0, :cond_0

    .line 47
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/Device;->acquireScreenAttr(Landroid/content/Context;)V

    .line 49
    :cond_0
    sget v0, Lmiui/provider/yellowpage/utils/Device;->sDispalyWidth:I

    return v0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 97
    sget-object v0, Lmiui/provider/yellowpage/utils/Device;->sIMEI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/Device;->acquireIMEI(Landroid/content/Context;)V

    .line 100
    :cond_0
    sget-object v0, Lmiui/provider/yellowpage/utils/Device;->sIMEI:Ljava/lang/String;

    return-object v0
.end method

.method public static getLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .locals 7

    .prologue
    .line 151
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 152
    .local v1, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 153
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 154
    .local v4, intf:Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 155
    .local v2, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 156
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 157
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_1

    .line 158
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 165
    .end local v2           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    .end local v4           #intf:Ljava/net/NetworkInterface;
    :goto_0
    return-object v5

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Ljava/net/SocketException;
    const-string v5, "device"

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmiui/provider/yellowpage/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .end local v0           #e:Ljava/net/SocketException;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getMiShopVersion(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 75
    sget v3, Lmiui/provider/yellowpage/utils/Device;->sMiShopVersionCode:I

    if-nez v3, :cond_0

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 78
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.xiaomi.shop"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 79
    .local v2, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_1

    .line 80
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v3, Lmiui/provider/yellowpage/utils/Device;->sMiShopVersionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v1           #packageManager:Landroid/content/pm/PackageManager;
    .end local v2           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    sget v3, Lmiui/provider/yellowpage/utils/Device;->sMiShopVersionCode:I

    return v3

    .line 82
    .restart local v1       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v2       #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    const/4 v3, 0x1

    :try_start_1
    sput v3, Lmiui/provider/yellowpage/utils/Device;->sMiShopVersionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 84
    .end local v2           #pkgInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 104
    sget-object v0, Lmiui/provider/yellowpage/utils/Device;->sUUID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/Device;->acquireUUID(Landroid/content/Context;)V

    .line 107
    :cond_0
    sget-object v0, Lmiui/provider/yellowpage/utils/Device;->sUUID:Ljava/lang/String;

    return-object v0
.end method
