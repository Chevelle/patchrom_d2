.class public Lmiui/util/ErrorReportUtils;
.super Ljava/lang/Object;
.source "ErrorReportUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/ErrorReportUtils$Base64Coder;,
        Lmiui/util/ErrorReportUtils$CommonUtils;,
        Lmiui/util/ErrorReportUtils$ReportErrorTask;
    }
.end annotation


# static fields
.field public static final ANR_MAX_LINE_NUMBER:I = 0x12c

.field public static final DROPBOX_TAG:Ljava/lang/String; = "fc_anr"

.field public static final ERROR_TYPE_ANR:Ljava/lang/String; = "anr"

.field public static final ERROR_TYPE_FC:Ljava/lang/String; = "fc"

.field public static final JSON_ANR_ACTIVITY:Ljava/lang/String; = "anr_activity"

.field public static final JSON_ANR_CAUSE:Ljava/lang/String; = "anr_cause"

.field public static final JSON_APP_VESION:Ljava/lang/String; = "app_version"

.field public static final JSON_BUILD_VERSION:Ljava/lang/String; = "build_version"

.field public static final JSON_DEVICE:Ljava/lang/String; = "device"

.field public static final JSON_ERROR_TYPE:Ljava/lang/String; = "error_type"

.field public static final JSON_EXCEPTION_CLASS:Ljava/lang/String; = "exception_class"

.field public static final JSON_EXCEPTION_SOURCE_METHOD:Ljava/lang/String; = "exception_source_method"

.field public static final JSON_IMEI:Ljava/lang/String; = "imei"

.field public static final JSON_MODEL:Ljava/lang/String; = "model"

.field public static final JSON_NETWORK:Ljava/lang/String; = "network"

.field public static final JSON_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final JSON_PLATFORM:Ljava/lang/String; = "platform"

.field public static final JSON_STACK_TRACK:Ljava/lang/String; = "stack_track"

.field public static final JSON_USER_ALLOWED:Ljava/lang/String; = "user_allowed"

.field public static final JSON_WIFI_STATE:Ljava/lang/String; = "wifi_state"

.field private static final SALT_P1:Ljava/lang/String; = "8007236f-"

.field private static final SALT_P2:Ljava/lang/String; = "a2d6-4847-ac83-"

.field private static final SALT_P3:Ljava/lang/String; = "c49395ad6d65"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    return-void
.end method

.method static synthetic access$000(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-static {p0}, Lmiui/util/ErrorReportUtils;->httpSendErrorReport(Lorg/json/JSONObject;)V

    return-void
.end method

.method private static getAnrStackTrack()Ljava/lang/String;
    .locals 10

    .prologue
    .line 433
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .local v4, stackTrack:Ljava/lang/StringBuilder;
    const-string v8, "dalvik.vm.stack-trace-file"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 435
    .local v7, tracesPath:Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 436
    :cond_0
    const-string v8, ""

    .line 471
    :goto_0
    return-object v8

    .line 439
    :cond_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 440
    .local v6, tracesFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 442
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    .end local v2           #reader:Ljava/io/BufferedReader;
    .local v3, reader:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 445
    .local v5, start:Z
    const/4 v0, 0x0

    .line 446
    .local v0, count:I
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 447
    const-string v8, "DALVIK THREADS:"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 448
    const/4 v5, 0x1

    .line 452
    :cond_3
    if-eqz v5, :cond_4

    .line 453
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 455
    add-int/lit8 v0, v0, 0x1

    .line 457
    :cond_4
    const/16 v8, 0x12c

    if-le v0, v8, :cond_2

    .line 464
    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    .line 465
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_6
    :goto_2
    move-object v2, v3

    .line 471
    .end local v0           #count:I
    .end local v1           #line:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v5           #start:Z
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :cond_7
    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 449
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v0       #count:I
    .restart local v1       #line:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v5       #start:Z
    :cond_8
    if-eqz v5, :cond_3

    :try_start_3
    const-string v8, "-----"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    .line 463
    .end local v0           #count:I
    .end local v1           #line:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v5           #start:Z
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v8

    .line 464
    :goto_4
    if-eqz v2, :cond_9

    .line 465
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 463
    :cond_9
    :goto_5
    throw v8

    .line 461
    :catch_0
    move-exception v8

    .line 464
    :goto_6
    if-eqz v2, :cond_7

    .line 465
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 467
    :catch_1
    move-exception v8

    goto :goto_3

    :catch_2
    move-exception v9

    goto :goto_5

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v0       #count:I
    .restart local v1       #line:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v5       #start:Z
    :catch_3
    move-exception v8

    goto :goto_2

    .line 463
    .end local v1           #line:Ljava/lang/String;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 461
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v8

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_6
.end method

.method private static getDeviceString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 396
    const-string v1, "ro.product.mod_device"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, modDevice:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .end local v0           #modDevice:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static getIMEI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 405
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, imei:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    const-string v1, "ro.ril.miui.imei"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    .end local v0           #imei:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static getKeyFromParams(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v6, Lmiui/util/ErrorReportUtils$1;

    invoke-direct {v6}, Lmiui/util/ErrorReportUtils$1;-><init>()V

    invoke-static {p0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .local v3, keyBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 185
    .local v1, isFirst:Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/NameValuePair;

    .line 187
    .local v5, nvp:Lorg/apache/http/NameValuePair;
    if-nez v1, :cond_0

    .line 188
    const-string v6, "&"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_0
    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const/4 v1, 0x0

    goto :goto_0

    .line 195
    .end local v5           #nvp:Lorg/apache/http/NameValuePair;
    :cond_1
    const-string v6, "&"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "8007236f-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v6, "a2d6-4847-ac83-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v6, "c49395ad6d65"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, key:Ljava/lang/String;
    invoke-static {v2}, Lmiui/util/ErrorReportUtils$CommonUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 201
    .local v4, keyBytes:[B
    new-instance v6, Ljava/lang/String;

    invoke-static {v4}, Lmiui/util/ErrorReportUtils$Base64Coder;->encode([B)[C

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    invoke-static {v6}, Lmiui/util/ErrorReportUtils$CommonUtils;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    sget-object v0, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private static getNetworkName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 391
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 392
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getPackageVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 414
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 417
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 423
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    .line 426
    :cond_0
    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 428
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v3

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 420
    const-string v3, ""

    goto :goto_0

    .line 428
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #info:Landroid/content/pm/PackageInfo;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static httpSendErrorReport(Lorg/json/JSONObject;)V
    .locals 12
    .parameter "jsPost"

    .prologue
    .line 144
    :try_start_0
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    const-string v9, "http://api.chat.xiaomi.net/v2/miui/feedback"

    invoke-direct {v4, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 145
    .local v4, httpPost:Lorg/apache/http/client/methods/HttpPost;
    const-string v9, "Content-Type"

    const-string v10, "application/x-www-form-urlencoded;charset=utf-8"

    invoke-virtual {v4, v9, v10}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 148
    .local v5, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lorg/apache/http/NameValuePair;>;"
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "error"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-static {v5}, Lmiui/util/ErrorReportUtils;->getKeyFromParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, md5:Ljava/lang/String;
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "s"

    invoke-direct {v9, v10, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v9, "UTF-8"

    invoke-direct {v2, v5, v9}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 153
    .local v2, entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v4, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 156
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 157
    .local v3, httpParameters:Lorg/apache/http/params/HttpParams;
    const/16 v9, 0xbb8

    invoke-static {v3, v9}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 158
    const/16 v9, 0x1388

    invoke-static {v3, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 159
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 160
    .local v0, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v0, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 161
    .local v7, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 162
    .local v8, status:I
    const/16 v9, 0xc8

    if-eq v8, v9, :cond_0

    .line 163
    const-class v9, Lmiui/util/ErrorReportUtils$ReportErrorTask;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed to report errors to miui. status code:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 173
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v3           #httpParameters:Lorg/apache/http/params/HttpParams;
    .end local v4           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v5           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lorg/apache/http/NameValuePair;>;"
    .end local v6           #md5:Ljava/lang/String;
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #status:I
    :cond_0
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 168
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 169
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 170
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v1

    .line 171
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 105
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 107
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 108
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isUserAllowed(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 98
    sget-boolean v4, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v4, :cond_0

    move v1, v2

    .line 99
    .local v1, default_value:I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "upload_log_pref"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 101
    .local v0, allow:I
    if-eqz v0, :cond_1

    :goto_1
    return v2

    .end local v0           #allow:I
    .end local v1           #default_value:I
    :cond_0
    move v1, v3

    .line 98
    goto :goto_0

    .restart local v0       #allow:I
    .restart local v1       #default_value:I
    :cond_1
    move v2, v3

    .line 101
    goto :goto_1
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 112
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 114
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 115
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static populateAnrData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "jsPost"
    .parameter "nrrShortMsg"
    .parameter "nrrTag"

    .prologue
    .line 381
    :try_start_0
    const-string v1, "error_type"

    const-string v2, "anr"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 382
    const-string v1, "anr_cause"

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    const-string v1, "anr_activity"

    invoke-virtual {p0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    const-string v1, "stack_track"

    invoke-static {}, Lmiui/util/ErrorReportUtils;->getAnrStackTrack()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    return-void

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static populateCommonData(Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "jsPost"
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 348
    :try_start_0
    const-string v3, "network"

    invoke-static {p1}, Lmiui/util/ErrorReportUtils;->getNetworkName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    const-string v3, "device"

    invoke-static {}, Lmiui/util/ErrorReportUtils;->getDeviceString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    const-string v3, "model"

    invoke-static {}, Lmiui/util/ErrorReportUtils;->getModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    const-string v3, "imei"

    invoke-static {}, Lmiui/util/ErrorReportUtils;->getIMEI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    const-string v3, "platform"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 353
    const-string v3, "build_version"

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    const-string v3, "package_name"

    invoke-virtual {p0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 355
    const-string v3, "app_version"

    invoke-static {p1, p2}, Lmiui/util/ErrorReportUtils;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    const-string v4, "wifi_state"

    invoke-static {p1}, Lmiui/util/ErrorReportUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    :goto_0
    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 357
    const-string v3, "user_allowed"

    invoke-static {p1}, Lmiui/util/ErrorReportUtils;->isUserAllowed(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {p0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_2
    return-void

    :cond_0
    move v3, v2

    .line 356
    goto :goto_0

    :cond_1
    move v1, v2

    .line 357
    goto :goto_1

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public static populateFcData(Lorg/json/JSONObject;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 4
    .parameter "jsPost"
    .parameter "crashInfo"

    .prologue
    .line 364
    if-nez p1, :cond_0

    .line 377
    :goto_0
    return-void

    .line 369
    :cond_0
    :try_start_0
    const-string v1, "error_type"

    const-string v2, "fc"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    const-string v1, "exception_class"

    iget-object v2, p1, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 371
    const-string v1, "exception_source_method"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ApplicationErrorReport$CrashInfo;->throwMethodName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    const-string v1, "stack_track"

    iget-object v2, p1, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static postErrorReport(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .locals 2
    .parameter "context"
    .parameter "report"

    .prologue
    .line 82
    invoke-static {p0}, Lmiui/util/ErrorReportUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v1, Lmiui/util/ErrorReportUtils$ReportErrorTask;

    invoke-direct {v1, p1}, Lmiui/util/ErrorReportUtils$ReportErrorTask;-><init>(Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lmiui/util/ErrorReportUtils$ReportErrorTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 84
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static saveErrorReportToDropBox(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3
    .parameter "context"
    .parameter "report"

    .prologue
    .line 119
    const-string v1, "dropbox"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    .line 121
    .local v0, dbox:Landroid/os/DropBoxManager;
    if-eqz v0, :cond_0

    const-string v1, "fc_anr"

    invoke-virtual {v0, v1}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const-string v1, "fc_anr"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendErrorReport(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .locals 1
    .parameter "context"
    .parameter "report"

    .prologue
    .line 90
    invoke-static {p0}, Lmiui/util/ErrorReportUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p1}, Lmiui/util/ErrorReportUtils;->httpSendErrorReport(Lorg/json/JSONObject;)V

    .line 92
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sendExceptionErrorReport(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 4
    .parameter "context"
    .parameter "exception"

    .prologue
    .line 305
    :try_start_0
    invoke-static {}, Lmiui/os/Build;->isOfficialVersion()Z

    move-result v3

    if-nez v3, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    new-instance v0, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v0, p1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    .line 311
    .local v0, crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 312
    .local v2, js:Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p0, v3}, Lmiui/util/ErrorReportUtils;->populateCommonData(Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)V

    .line 313
    invoke-static {v2, v0}, Lmiui/util/ErrorReportUtils;->populateFcData(Lorg/json/JSONObject;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 314
    invoke-static {p0}, Lmiui/util/ErrorReportUtils;->isUserAllowed(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Lmiui/util/ErrorReportUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 315
    invoke-static {p0, v2}, Lmiui/util/ErrorReportUtils;->postErrorReport(Landroid/content/Context;Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 317
    .end local v0           #crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v2           #js:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 318
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendWebcoreCrashReport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "pack"
    .parameter "addr"
    .parameter "report"

    .prologue
    .line 324
    :try_start_0
    invoke-static {}, Lmiui/os/Build;->isOfficialVersion()Z

    move-result v2

    if-nez v2, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 329
    .local v1, js:Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lmiui/util/ErrorReportUtils;->populateCommonData(Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :try_start_1
    const-string v2, "error_type"

    const-string v3, "fc"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    const-string v2, "exception_class"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    const-string v2, "exception_source_method"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    const-string v2, "stack_track"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 338
    :goto_1
    :try_start_2
    invoke-static {p0}, Lmiui/util/ErrorReportUtils;->isUserAllowed(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lmiui/util/ErrorReportUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    invoke-static {p0, v1}, Lmiui/util/ErrorReportUtils;->postErrorReport(Landroid/content/Context;Lorg/json/JSONObject;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 341
    .end local v1           #js:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 342
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 335
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #js:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 336
    .local v0, e:Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
