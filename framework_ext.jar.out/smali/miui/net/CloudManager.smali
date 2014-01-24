.class public Lmiui/net/CloudManager;
.super Ljava/lang/Object;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/CloudManager$AsyncFuture;,
        Lmiui/net/CloudManager$ConnectivityResumedReceiver;,
        Lmiui/net/CloudManager$PhoneInfo;,
        Lmiui/net/CloudManager$DevSettingName;,
        Lmiui/net/CloudManager$CloudManagerFuture;,
        Lmiui/net/CloudManager$CmTask;
    }
.end annotation


# static fields
.field public static final ACTIVATE_STATUS_ACTIVATED:I = 0x2

.field public static final ACTIVATE_STATUS_ACTIVATING:I = 0x1

.field public static final ACTIVATE_STATUS_SMS_SENT:I = 0x4

.field public static final ACTIVATE_STATUS_UNACTIVATED:I = 0x3

.field private static final DEBUG:Z = true

.field public static final DEVICE_INFO_TOKEN:Ljava/lang/String; = "deviceinfo"

.field public static final ERROR_CODE_ACTIVATE_TIMEOUT:I = 0x2

.field public static final ERROR_CODE_NO_ACCOUNT:I = 0x3

.field public static final ERROR_CODE_SEND_SMS_FAILURE:I = 0x1

.field public static final ERROR_INVALID_CREDENTIAL:I = 0x6

.field public static final ERROR_INVALID_RESPONSE:I = 0x5

.field public static final ERROR_IO:I = 0x4

.field public static final ERROR_SIM_NOT_ACTIVATED:I = 0x7

.field private static final GW_KEY_DEFAULT:Ljava/lang/String; = "default"

.field private static final INT_0:Ljava/lang/Integer; = null

.field public static final KEY_ACTIVATE_PHONE:Ljava/lang/String; = "activate_phone"

.field public static final KEY_ACTIVATE_SIM_ID:Ljava/lang/String; = "sim_id"

.field public static final KEY_ACTIVATE_STATUS:Ljava/lang/String; = "activate_status"

.field public static final KEY_FIND_DEVICE_TOKEN:Ljava/lang/String; = "find_device_token"

.field public static final KEY_PASSTOKEN:Ljava/lang/String; = "pass_token"

.field public static final KEY_PHONE_TICKET:Ljava/lang/String; = "phone_ticket"

.field public static final KEY_RESULT:Ljava/lang/String; = "result"

.field public static final KEY_SECONDARY_SYNC_ON:Ljava/lang/String; = "secondary_sync_on"

.field public static final KEY_SIM_INDEX:Ljava/lang/String; = "sim_index"

.field public static final KEY_SIM_INSERTED:Ljava/lang/String; = "sim_inserted"

.field public static final KEY_SIM_USER_ID:Ljava/lang/String; = "sim_user_id"

.field public static final KEY_SNS_ACCESS_TOKEN:Ljava/lang/String; = "get_sns_access_token"

.field public static final KEY_USER_SECURITY:Ljava/lang/String; = "user_security"

.field public static final KEY_USER_TOKEN:Ljava/lang/String; = "user_token"

.field public static final NOTIFICATION_ACTIVATE_ERROR:I = 0x10000001

.field public static final SIM_ID_DEFAULT:I = 0x0

.field public static final SIM_INDEX_0:I = 0x0

.field public static final SIM_INDEX_1:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CloudManager"

.field public static final URL_ACCOUNT_API_V2_BASE:Ljava/lang/String; = null

.field public static final URL_ACCOUNT_API_V3_BASE:Ljava/lang/String; = null

.field public static final URL_ACCOUNT_BASE:Ljava/lang/String; = null

.field public static final URL_ACCOUNT_SAFE_API_BASE:Ljava/lang/String; = null

.field public static final URL_ACOUNT_API_BASE:Ljava/lang/String; = null

.field public static final URL_CALL_LOG_BASE:Ljava/lang/String; = null

.field public static final URL_CONTACT_BASE:Ljava/lang/String; = null

.field public static final URL_DEV_BASE:Ljava/lang/String; = null

.field public static final URL_DEV_SETTING:Ljava/lang/String; = "/udi/v1/user/%s/device/%s/setting"

.field public static final URL_FIND_DEVICE_BASE:Ljava/lang/String; = null

.field public static final URL_GALLERY_BASE:Ljava/lang/String; = null

.field public static final URL_MICLOUD_STATUS_BASE:Ljava/lang/String; = "http://statusapi.micloud.xiaomi.net"

.field public static final URL_MMS_BASE:Ljava/lang/String;

.field public static final URL_NOTE_BASE:Ljava/lang/String;

.field public static final URL_RICH_MEDIA_BASE:Ljava/lang/String;

.field public static final URL_WIFI_BASE:Ljava/lang/String;

.field public static final URL_WIFI_SHARE_BASE:Ljava/lang/String;

.field public static final USE_PREVIEW:Z

.field private static mUserAgent:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mSimCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/account_preview"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lmiui/net/CloudManager;->USE_PREVIEW:Z

    .line 70
    sget-boolean v0, Lmiui/net/CloudManager;->USE_PREVIEW:Z

    if-eqz v0, :cond_0

    const-string v0, "http://account.preview.n.xiaomi.net/pass"

    :goto_0
    sput-object v0, Lmiui/net/CloudManager;->URL_ACCOUNT_BASE:Ljava/lang/String;

    .line 78
    sget-boolean v0, Lmiui/net/CloudManager;->USE_PREVIEW:Z

    if-eqz v0, :cond_1

    const-string v0, "http://api.account.preview.n.xiaomi.net/pass"

    :goto_1
    sput-object v0, Lmiui/net/CloudManager;->URL_ACOUNT_API_BASE:Ljava/lang/String;

    .line 81
    sget-boolean v0, Lmiui/net/CloudManager;->USE_PREVIEW:Z

    if-eqz v0, :cond_2

    const-string v0, "http://api.account.preview.n.xiaomi.net/pass/v2"

    :goto_2
    sput-object v0, Lmiui/net/CloudManager;->URL_ACCOUNT_API_V2_BASE:Ljava/lang/String;

    .line 84
    sget-boolean v0, Lmiui/net/CloudManager;->USE_PREVIEW:Z

    if-eqz v0, :cond_3

    const-string v0, "http://api.account.preview.n.xiaomi.net/pass/v3"

    :goto_3
    sput-object v0, Lmiui/net/CloudManager;->URL_ACCOUNT_API_V3_BASE:Ljava/lang/String;

    .line 88
    sget-boolean v0, Lmiui/net/CloudManager;->USE_PREVIEW:Z

    if-eqz v0, :cond_4

    const-string v0, "http://api.account.preview.n.xiaomi.net/pass/v2/safe"

    :goto_4
    sput-object v0, Lmiui/net/CloudManager;->URL_ACCOUNT_SAFE_API_BASE:Ljava/lang/String;

    .line 91
    sget-boolean v0, Lmiui/net/CloudManager;->USE_PREVIEW:Z

    if-eqz v0, :cond_5

    const-string v0, "http://fileapi.micloud.preview.n.xiaomi.net"

    :goto_5
    sput-object v0, Lmiui/net/CloudManager;->URL_RICH_MEDIA_BASE:Ljava/lang/String;

    .line 94
    sget-boolean v0, Lmiui/net/CloudManager;->USE_PREVIEW:Z

    if-eqz v0, :cond_6

    const-string v0, "http://micloud.preview.n.xiaomi.net"

    :goto_6
    sput-object v0, Lmiui/net/CloudManager;->URL_CONTACT_BASE:Ljava/lang/String;

    .line 97
    sget-boolean v0, Lmiui/net/CloudManager;->USE_PREVIEW:Z

    if-eqz v0, :cond_7

    const-string v0, "http://micloud.preview.n.xiaomi.net"

    :goto_7
    sput-object v0, Lmiui/net/CloudManager;->URL_MMS_BASE:Ljava/lang/String;

    .line 100
    sget-boolean v0, Lmiui/net/CloudManager;->USE_PREVIEW:Z

    if-eqz v0, :cond_8

    const-string v0, "http://galleryapi.micloud.preview.n.xiaomi.net"

    :goto_8
    sput-object v0, Lmiui/net/CloudManager;->URL_GALLERY_BASE:Ljava/lang/String;

    .line 103
    sget-boolean v0, Lmiui/net/CloudManager;->USE_PREVIEW:Z

    if-eqz v0, :cond_9

    const-string v0, "http://micloud.preview.n.xiaomi.net"

    :goto_9
    sput-object v0, Lmiui/net/CloudManager;->URL_FIND_DEVICE_BASE:Ljava/lang/String;

    .line 106
    sget-boolean v0, Lmiui/net/CloudManager;->USE_PREVIEW:Z

    if-eqz v0, :cond_a

    const-string v0, "http://micloud.preview.n.xiaomi.net"

    :goto_a
    sput-object v0, Lmiui/net/CloudManager;->URL_WIFI_BASE:Ljava/lang/String;

    .line 109
    sget-boolean v0, Lmiui/net/CloudManager;->USE_PREVIEW:Z

    if-eqz v0, :cond_b

    const-string v0, "http://micloud.preview.n.xiaomi.net"

    :goto_b
    sput-object v0, Lmiui/net/CloudManager;->URL_NOTE_BASE:Ljava/lang/String;

    .line 116
    sget-boolean v0, Lmiui/net/CloudManager;->USE_PREVIEW:Z

    if-eqz v0, :cond_c

    const-string v0, "http://micloud.preview.n.xiaomi.net"

    :goto_c
    sput-object v0, Lmiui/net/CloudManager;->URL_CALL_LOG_BASE:Ljava/lang/String;

    .line 120
    sget-boolean v0, Lmiui/net/CloudManager;->USE_PREVIEW:Z

    if-eqz v0, :cond_d

    const-string v0, "http://micloud.preview.n.xiaomi.net"

    :goto_d
    sput-object v0, Lmiui/net/CloudManager;->URL_WIFI_SHARE_BASE:Ljava/lang/String;

    .line 127
    sget-boolean v0, Lmiui/net/CloudManager;->USE_PREVIEW:Z

    if-eqz v0, :cond_e

    const-string v0, "http://api.device.preview.n.xiaomi.net"

    :goto_e
    sput-object v0, Lmiui/net/CloudManager;->URL_DEV_BASE:Ljava/lang/String;

    .line 233
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lmiui/net/CloudManager;->INT_0:Ljava/lang/Integer;

    return-void

    .line 70
    :cond_0
    const-string v0, "https://account.xiaomi.com/pass"

    goto :goto_0

    .line 78
    :cond_1
    const-string v0, "http://api.account.xiaomi.com/pass"

    goto :goto_1

    .line 81
    :cond_2
    const-string v0, "http://api.account.xiaomi.com/pass/v2"

    goto :goto_2

    .line 84
    :cond_3
    const-string v0, "http://api.account.xiaomi.com/pass/v3"

    goto :goto_3

    .line 88
    :cond_4
    const-string v0, "http://api.account.xiaomi.com/pass/v2/safe"

    goto :goto_4

    .line 91
    :cond_5
    const-string v0, "http://fileapi.micloud.xiaomi.net"

    goto :goto_5

    .line 94
    :cond_6
    const-string v0, "http://contactapi.micloud.xiaomi.net"

    goto :goto_6

    .line 97
    :cond_7
    const-string v0, "http://smsapi.micloud.xiaomi.net"

    goto :goto_7

    .line 100
    :cond_8
    const-string v0, "http://galleryapi.micloud.xiaomi.net"

    goto :goto_8

    .line 103
    :cond_9
    const-string v0, "http://findapi.micloud.xiaomi.net"

    goto :goto_9

    .line 106
    :cond_a
    const-string v0, "http://wifiapi.micloud.xiaomi.net"

    goto :goto_a

    .line 109
    :cond_b
    const-string v0, "http://noteapi.micloud.xiaomi.net"

    goto :goto_b

    .line 116
    :cond_c
    const-string v0, "http://phonecallapi.micloud.xiaomi.net"

    goto :goto_c

    .line 120
    :cond_d
    const-string v0, "http://wifisharingapi.micloud.xiaomi.net"

    goto :goto_d

    .line 127
    :cond_e
    const-string v0, "http://api.device.xiaomi.net"

    goto :goto_e
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lmiui/net/CloudManager;->mContext:Landroid/content/Context;

    .line 247
    invoke-static {p1}, Lmiui/msim/telephony/MiuiTelephonyManager;->getInstance(Landroid/content/Context;)Lmiui/msim/telephony/IMiuiTelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Lmiui/msim/telephony/IMiuiTelephonyManager;->getSimCount()I

    move-result v0

    iput v0, p0, Lmiui/net/CloudManager;->mSimCount:I

    .line 249
    return-void
.end method

.method private static JSONArrayToStringList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4
    .parameter "valueArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 893
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 894
    .local v2, valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 895
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 896
    .local v1, v:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 898
    .end local v1           #v:Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method static synthetic access$000(Lmiui/net/CloudManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lmiui/net/CloudManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static convertDevSettingValues(Ljava/util/Map;)Lorg/json/JSONArray;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 1053
    .local p0, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1054
    .local v0, array:Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1055
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1056
    .local v5, name:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lmiui/util/ObjectUtils;->convertObjectToJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1057
    .local v6, value:Ljava/lang/Object;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1059
    .local v4, jobj:Lorg/json/JSONObject;
    :try_start_0
    const-string v7, "name"

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1060
    const-string v7, "value"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1064
    :goto_1
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1061
    :catch_0
    move-exception v1

    .line 1062
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 1066
    .end local v1           #e:Lorg/json/JSONException;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4           #jobj:Lorg/json/JSONObject;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method private static convertStreamToString(Ljava/io/InputStream;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 5
    .parameter "is"
    .parameter "bufferSize"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 922
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 924
    .local v3, reader:Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 925
    .local v1, content:Ljava/lang/StringBuffer;
    new-array v0, p1, [C

    .line 927
    .local v0, buffer:[C
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    .local v2, n:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 928
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 930
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1100
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1101
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1102
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1105
    :cond_0
    return-void
.end method

.method public static get(Landroid/content/Context;)Lmiui/net/CloudManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 242
    new-instance v0, Lmiui/net/CloudManager;

    invoke-direct {v0, p0}, Lmiui/net/CloudManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .prologue
    .line 796
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->blockingGetDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 797
    .local v0, deviceId:Ljava/lang/String;
    invoke-static {v0}, Lmiui/net/CloudCoder;->hashDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getResourceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .prologue
    .line 783
    invoke-static {p0}, Lmiui/net/CloudManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSmsGatewayConfigString(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 902
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sms_gw_config"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 905
    .local v2, s:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 906
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x605

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 907
    .local v1, is:Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 909
    const/16 v3, 0x400

    :try_start_0
    sget-object v4, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1, v3, v4}, Lmiui/net/CloudManager;->convertStreamToString(Ljava/io/InputStream;ILjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 913
    :goto_0
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 917
    .end local v1           #is:Ljava/io/InputStream;
    :cond_0
    return-object v2

    .line 910
    .restart local v1       #is:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 911
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 913
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v3
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 801
    sget-object v2, Lmiui/net/CloudManager;->mUserAgent:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 804
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "ro.product.mod_device"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 805
    .local v0, miuiModel:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 806
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    :goto_0
    const-string v2, "; MIUI/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    sget-boolean v2, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v2, :cond_0

    .line 813
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 814
    const-string v2, "ALPHA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lmiui/net/CloudManager;->mUserAgent:Ljava/lang/String;

    .line 818
    :cond_1
    sget-object v2, Lmiui/net/CloudManager;->mUserAgent:Ljava/lang/String;

    return-object v2

    .line 808
    :cond_2
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 1093
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1095
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1096
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSimSupported(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 939
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 941
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, mccmnc:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 950
    :cond_0
    :goto_0
    return v2

    .line 946
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_2

    .line 947
    const-string v2, "CloudManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unsupported mcc mnc: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 948
    goto :goto_0

    .line 950
    :cond_2
    invoke-static {p0, v3}, Lmiui/net/CloudManager;->unblockGetSmsGatewayConfig(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public static selectSmsGateway(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 822
    invoke-static {p0}, Lmiui/net/CloudManager;->selectSmsGatewayList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 823
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 824
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 826
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static selectSmsGatewayList(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 830
    invoke-static {p0}, Lmiui/net/CloudManager;->get(Landroid/content/Context;)Lmiui/net/CloudManager;

    move-result-object v0

    .line 832
    .local v0, cloudMgr:Lmiui/net/CloudManager;
    :try_start_0
    invoke-virtual {v0}, Lmiui/net/CloudManager;->getSmsGateway()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v2

    invoke-interface {v2}, Lmiui/net/CloudManager$CloudManagerFuture;->getResult()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    :goto_0
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lmiui/net/CloudManager;->unblockGetSmsGatewayConfig(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 833
    :catch_0
    move-exception v1

    .line 834
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "CloudManager"

    const-string v3, "error when get sms gateway"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static unblockGetSmsGatewayConfig(Landroid/content/Context;Z)Ljava/util/List;
    .locals 12
    .parameter "context"
    .parameter "allowInternational"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 841
    invoke-static {p0}, Lmiui/net/CloudManager;->getSmsGatewayConfigString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 842
    .local v5, s:Ljava/lang/String;
    if-nez v5, :cond_0

    .line 888
    :goto_0
    return-object v8

    .line 849
    :cond_0
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 851
    .local v6, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 853
    .local v3, mccmnc:Ljava/lang/String;
    const-string v9, "CloudManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "device mccmnc:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x5

    if-ge v9, v10, :cond_2

    .line 856
    :cond_1
    const-string v9, "CloudManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "illegal mcc mnc: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 861
    :cond_2
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 862
    .local v4, obj:Lorg/json/JSONObject;
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 863
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 864
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 865
    .local v2, key:Ljava/lang/String;
    const-string v9, "default"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 866
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 868
    .local v7, valueArray:Lorg/json/JSONArray;
    const-string v9, "CloudManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Matched pattern "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " and gateways are "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-static {v7}, Lmiui/net/CloudManager;->JSONArrayToStringList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v8

    .line 871
    .local v8, valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_0

    .line 875
    .end local v2           #key:Ljava/lang/String;
    .end local v7           #valueArray:Lorg/json/JSONArray;
    .end local v8           #valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    if-eqz p1, :cond_5

    .line 876
    const-string v9, "default"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 878
    .restart local v7       #valueArray:Lorg/json/JSONArray;
    const-string v9, "CloudManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Use default gateways "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-static {v7}, Lmiui/net/CloudManager;->JSONArrayToStringList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto/16 :goto_0

    .line 882
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4           #obj:Lorg/json/JSONObject;
    .end local v7           #valueArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 883
    .local v0, e:Lorg/json/JSONException;
    const-string v9, "CloudManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid sms gw string "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    .end local v0           #e:Lorg/json/JSONException;
    :cond_5
    const-string v9, "CloudManager"

    const-string v10, "Found no match for current mccmnc"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static uploadDeviceInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 14
    .parameter "context"
    .parameter "userId"
    .parameter "token"
    .parameter "security"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/net/exception/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 1011
    .local p4, devSettings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-static {p0}, Lmiui/net/CloudManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 1013
    .local v5, devId:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lmiui/net/CloudManager;->URL_DEV_BASE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/udi/v1/user/%s/device/%s/setting"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    aput-object v5, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1019
    .local v9, url:Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1020
    .local v3, cookies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "serviceToken"

    move-object/from16 v0, p2

    invoke-interface {v3, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    const-string v10, "userId"

    invoke-interface {v3, v10, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1024
    .local v7, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p4 .. p4}, Lmiui/net/CloudManager;->convertDevSettingValues(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1025
    .local v2, content:Lorg/json/JSONArray;
    const-string v10, "content"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    const/4 v10, 0x1

    move-object/from16 v0, p3

    invoke-static {v9, v7, v3, v10, v0}, Lmiui/net/SecureRequest;->postAsMap(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/net/SimpleRequest$MapContent;

    move-result-object v8

    .line 1028
    .local v8, resp:Lmiui/net/SimpleRequest$MapContent;
    const-string v10, "code"

    invoke-virtual {v8, v10}, Lmiui/net/SimpleRequest$MapContent;->getFromBody(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1029
    .local v1, code:Ljava/lang/Object;
    const-string v10, "description"

    invoke-virtual {v8, v10}, Lmiui/net/SimpleRequest$MapContent;->getFromBody(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1030
    .local v4, description:Ljava/lang/Object;
    sget-object v10, Lmiui/net/CloudManager;->INT_0:Ljava/lang/Integer;

    invoke-virtual {v10, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1031
    const/4 v10, 0x1

    .line 1048
    .end local v1           #code:Ljava/lang/Object;
    .end local v2           #content:Lorg/json/JSONArray;
    .end local v3           #cookies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #description:Ljava/lang/Object;
    .end local v5           #devId:Ljava/lang/String;
    .end local v7           #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #resp:Lmiui/net/SimpleRequest$MapContent;
    .end local v9           #url:Ljava/lang/String;
    :goto_0
    return v10

    .line 1033
    .restart local v1       #code:Ljava/lang/Object;
    .restart local v2       #content:Lorg/json/JSONArray;
    .restart local v3       #cookies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #description:Ljava/lang/Object;
    .restart local v5       #devId:Ljava/lang/String;
    .restart local v7       #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8       #resp:Lmiui/net/SimpleRequest$MapContent;
    .restart local v9       #url:Ljava/lang/String;
    :cond_0
    const-string v10, "CloudManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed upload dev settings, code: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; description: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmiui/net/exception/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmiui/net/exception/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lmiui/net/exception/CipherException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lmiui/telephony/exception/IllegalDeviceException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1048
    .end local v1           #code:Ljava/lang/Object;
    .end local v2           #content:Lorg/json/JSONArray;
    .end local v3           #cookies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #description:Ljava/lang/Object;
    .end local v5           #devId:Ljava/lang/String;
    .end local v7           #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #resp:Lmiui/net/SimpleRequest$MapContent;
    .end local v9           #url:Ljava/lang/String;
    :goto_1
    const/4 v10, 0x0

    goto :goto_0

    .line 1036
    :catch_0
    move-exception v6

    .line 1037
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1038
    .end local v6           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 1039
    .local v6, e:Lmiui/net/exception/AccessDeniedException;
    invoke-virtual {v6}, Lmiui/net/exception/AccessDeniedException;->printStackTrace()V

    goto :goto_1

    .line 1040
    .end local v6           #e:Lmiui/net/exception/AccessDeniedException;
    :catch_2
    move-exception v6

    .line 1041
    .local v6, e:Lmiui/net/exception/InvalidResponseException;
    invoke-virtual {v6}, Lmiui/net/exception/InvalidResponseException;->printStackTrace()V

    goto :goto_1

    .line 1042
    .end local v6           #e:Lmiui/net/exception/InvalidResponseException;
    :catch_3
    move-exception v6

    .line 1043
    .local v6, e:Lmiui/net/exception/CipherException;
    invoke-virtual {v6}, Lmiui/net/exception/CipherException;->printStackTrace()V

    goto :goto_1

    .line 1044
    .end local v6           #e:Lmiui/net/exception/CipherException;
    :catch_4
    move-exception v6

    .line 1045
    .local v6, e:Lmiui/telephony/exception/IllegalDeviceException;
    invoke-virtual {v6}, Lmiui/telephony/exception/IllegalDeviceException;->printStackTrace()V

    goto :goto_1
.end method

.method public static waitUntilNetworkConnected(Landroid/content/Context;)V
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1071
    invoke-static {p0}, Lmiui/net/CloudManager;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 1072
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1074
    .local v0, filter:Landroid/content/IntentFilter;
    new-instance v1, Lmiui/net/CloudManager$ConnectivityResumedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmiui/net/CloudManager$ConnectivityResumedReceiver;-><init>(Landroid/content/Context;Lmiui/net/CloudManager$1;)V

    .line 1076
    .local v1, r:Lmiui/net/CloudManager$ConnectivityResumedReceiver;
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1078
    const-string v2, "CloudManager"

    const-string v3, "waiting network..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :try_start_0
    invoke-virtual {v1}, Lmiui/net/CloudManager$ConnectivityResumedReceiver;->await()V

    .line 1083
    const-string v2, "CloudManager"

    const-string v3, "network is OK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1090
    return-void

    .line 1088
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw v2

    .line 1085
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public cancelNotification(I)Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .parameter "notificationId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 496
    new-instance v0, Lmiui/net/CloudManager$11;

    invoke-direct {v0, p0, p1}, Lmiui/net/CloudManager$11;-><init>(Lmiui/net/CloudManager;I)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$11;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public checkUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 2
    .parameter "userId"
    .parameter "password"
    .parameter "sid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 517
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal params"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_1
    new-instance v0, Lmiui/net/CloudManager$12;

    invoke-direct {v0, p0, p1, p2, p3}, Lmiui/net/CloudManager$12;-><init>(Lmiui/net/CloudManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$12;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getAccessToken(Ljava/lang/String;)Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 531
    new-instance v0, Lmiui/net/CloudManager$13;

    invoke-direct {v0, p0, p1}, Lmiui/net/CloudManager$13;-><init>(Lmiui/net/CloudManager;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$13;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getActivateStatus()Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/net/CloudManager;->getActivateStatus(I)Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getActivateStatus(I)Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 2
    .parameter "simIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    if-gez p1, :cond_0

    .line 330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative sim index is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_0
    iget v0, p0, Lmiui/net/CloudManager;->mSimCount:I

    if-lt p1, v0, :cond_1

    .line 334
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sim index exceeds the max value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_1
    new-instance v0, Lmiui/net/CloudManager$3;

    invoke-direct {v0, p0, p1}, Lmiui/net/CloudManager$3;-><init>(Lmiui/net/CloudManager;I)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$3;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getActivatedPhoneNumber()Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/net/CloudManager;->getActivatedPhoneNumber(I)Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getActivatedPhoneNumber(I)Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 2
    .parameter "simIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    if-gez p1, :cond_0

    .line 303
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative sim index is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_0
    iget v0, p0, Lmiui/net/CloudManager;->mSimCount:I

    if-lt p1, v0, :cond_1

    .line 307
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sim index exceeds the max value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_1
    new-instance v0, Lmiui/net/CloudManager$2;

    invoke-direct {v0, p0, p1}, Lmiui/net/CloudManager$2;-><init>(Lmiui/net/CloudManager;I)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$2;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getActivatedSimUser()Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/net/CloudManager;->getActivatedSimUser(I)Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getActivatedSimUser(I)Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 2
    .parameter "simIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    if-gez p1, :cond_0

    .line 380
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative sim index is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_0
    iget v0, p0, Lmiui/net/CloudManager;->mSimCount:I

    if-lt p1, v0, :cond_1

    .line 384
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sim index exceeds the max value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_1
    new-instance v0, Lmiui/net/CloudManager$5;

    invoke-direct {v0, p0, p1}, Lmiui/net/CloudManager$5;-><init>(Lmiui/net/CloudManager;I)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$5;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getFindDeviceToken()Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/net/CloudManager;->getFindDeviceToken(I)Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getFindDeviceToken(I)Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 2
    .parameter "simIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    if-gez p1, :cond_0

    .line 407
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative sim index is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_0
    iget v0, p0, Lmiui/net/CloudManager;->mSimCount:I

    if-lt p1, v0, :cond_1

    .line 411
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sim index exceeds the max value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_1
    new-instance v0, Lmiui/net/CloudManager$6;

    invoke-direct {v0, p0, p1}, Lmiui/net/CloudManager$6;-><init>(Lmiui/net/CloudManager;I)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$6;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getSimAuthToken(ILjava/lang/String;)Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 2
    .parameter "simIndex"
    .parameter "serviceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    if-gez p1, :cond_0

    .line 353
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative sim index is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_0
    iget v0, p0, Lmiui/net/CloudManager;->mSimCount:I

    if-lt p1, v0, :cond_1

    .line 357
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sim index exceeds the max value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_1
    new-instance v0, Lmiui/net/CloudManager$4;

    invoke-direct {v0, p0, p1, p2}, Lmiui/net/CloudManager$4;-><init>(Lmiui/net/CloudManager;ILjava/lang/String;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$4;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getSimAuthToken(Ljava/lang/String;)Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .parameter "serviceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lmiui/net/CloudManager;->getSimAuthToken(ILjava/lang/String;)Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getSimInsertState()Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/net/CloudManager;->getSimInsertState(I)Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getSimInsertState(I)Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 2
    .parameter "simIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    if-gez p1, :cond_0

    .line 456
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative sim index is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_0
    iget v0, p0, Lmiui/net/CloudManager;->mSimCount:I

    if-lt p1, v0, :cond_1

    .line 460
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sim index exceeds the max value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_1
    new-instance v0, Lmiui/net/CloudManager$8;

    invoke-direct {v0, p0, p1}, Lmiui/net/CloudManager$8;-><init>(Lmiui/net/CloudManager;I)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$8;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getSmsGateway()Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 424
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/net/CloudManager;->getSmsGateway(I)Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getSmsGateway(I)Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 2
    .parameter "simIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    if-gez p1, :cond_0

    .line 434
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative sim index is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_0
    iget v0, p0, Lmiui/net/CloudManager;->mSimCount:I

    if-lt p1, v0, :cond_1

    .line 438
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sim index exceeds the max value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_1
    new-instance v0, Lmiui/net/CloudManager$7;

    invoke-direct {v0, p0, p1}, Lmiui/net/CloudManager$7;-><init>(Lmiui/net/CloudManager;I)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$7;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getUserSecurity()Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 473
    new-instance v0, Lmiui/net/CloudManager$9;

    invoke-direct {v0, p0}, Lmiui/net/CloudManager$9;-><init>(Lmiui/net/CloudManager;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$9;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getXmsfFeedback()Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 551
    new-instance v0, Lmiui/net/CloudManager$15;

    invoke-direct {v0, p0}, Lmiui/net/CloudManager$15;-><init>(Lmiui/net/CloudManager;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$15;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public invalidateAccessToken(Ljava/lang/String;Ljava/lang/String;)Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .parameter "type"
    .parameter "accessToken"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 541
    new-instance v0, Lmiui/net/CloudManager$14;

    invoke-direct {v0, p0, p1, p2}, Lmiui/net/CloudManager$14;-><init>(Lmiui/net/CloudManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$14;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public invalidateUserSecurity(Ljava/lang/String;Ljava/lang/String;)Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .parameter "token"
    .parameter "security"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    new-instance v0, Lmiui/net/CloudManager$10;

    invoke-direct {v0, p0, p1, p2}, Lmiui/net/CloudManager$10;-><init>(Lmiui/net/CloudManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$10;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public startActivateSim()Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/net/CloudManager;->startActivateSim(I)Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public startActivateSim(I)Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 2
    .parameter "simIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    if-gez p1, :cond_0

    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative sim index is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    iget v0, p0, Lmiui/net/CloudManager;->mSimCount:I

    if-lt p1, v0, :cond_1

    .line 266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sim index exceeds the max value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_1
    new-instance v0, Lmiui/net/CloudManager$1;

    invoke-direct {v0, p0, p1}, Lmiui/net/CloudManager$1;-><init>(Lmiui/net/CloudManager;I)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$1;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method
