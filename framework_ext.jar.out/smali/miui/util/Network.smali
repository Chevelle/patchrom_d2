.class public Lmiui/util/Network;
.super Ljava/lang/Object;
.source "Network.java"


# static fields
.field public static final CMWAP_GATEWAY:Ljava/lang/String; = "10.0.0.172"

.field public static final CMWAP_HEADER_HOST_KEY:Ljava/lang/String; = "X-Online-Host"

.field public static final CONNECTION_TIMEOUT:I = 0x2710

.field private static final LogTag:Ljava/lang/String; = null

.field public static final READ_TIMEOUT:I = 0x3a98

.field public static final RESPONSE_BODY:Ljava/lang/String; = "RESPONSE_BODY"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lmiui/util/Network;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/Network;->LogTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doHttpPostWithResponseStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 15
    .parameter "context"
    .parameter "url"
    .parameter "postJson"

    .prologue
    .line 55
    if-nez p0, :cond_0

    .line 56
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "context"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 58
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_2

    .line 59
    :cond_1
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "url"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 61
    :cond_2
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 63
    .local v11, result:Lorg/json/JSONObject;
    new-instance v7, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v7}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 64
    .local v7, httpParameters:Lorg/apache/http/params/BasicHttpParams;
    const/16 v13, 0x2710

    invoke-static {v7, v13}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 65
    const/16 v13, 0x3a98

    invoke-static {v7, v13}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 66
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 70
    .local v6, httpClient:Lorg/apache/http/client/HttpClient;
    :try_start_0
    invoke-static {p0}, Lmiui/util/Network;->isCmwap(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 71
    new-instance v1, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, _url:Ljava/net/URL;
    invoke-static {v1}, Lmiui/util/Network;->getCMWapUrl(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, cmwapUrl:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, host:Ljava/lang/String;
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v8, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 75
    .local v8, httpPost:Lorg/apache/http/client/methods/HttpPost;
    const-string v13, "X-Online-Host"

    invoke-virtual {v8, v13, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .end local v1           #_url:Ljava/net/URL;
    .end local v3           #cmwapUrl:Ljava/lang/String;
    .end local v5           #host:Ljava/lang/String;
    :goto_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 81
    new-instance v13, Lorg/apache/http/entity/StringEntity;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 84
    :cond_3
    invoke-interface {v6, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 85
    .local v9, response:Lorg/apache/http/HttpResponse;
    const-string v12, ""

    .line 86
    .local v12, strResponseBody:Ljava/lang/String;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    .line 87
    .local v10, responseCode:I
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 88
    .local v2, body:Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_4

    .line 89
    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v12

    .line 92
    :cond_4
    const-string v13, "RESPONSE_CODE"

    invoke-virtual {v11, v13, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    const-string v13, "RESPONSE_BODY"

    invoke-virtual {v11, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 102
    const-string v13, "RESPONSE_CODE"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    const-string v13, "RESPONSE_BODY"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 103
    :cond_5
    const-string v13, "RESPONSE_CODE"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    const-string v13, "RESPONSE_BODY"

    .end local v2           #body:Lorg/apache/http/HttpEntity;
    .end local v8           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v9           #response:Lorg/apache/http/HttpResponse;
    .end local v10           #responseCode:I
    .end local v12           #strResponseBody:Ljava/lang/String;
    :goto_1
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    :cond_6
    return-object v11

    .line 77
    :cond_7
    :try_start_1
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .restart local v8       #httpPost:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_0

    .line 95
    .end local v8           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    :catch_0
    move-exception v4

    .line 96
    .local v4, e:Lorg/apache/http/ParseException;
    :try_start_2
    sget-object v13, Lmiui/util/Network;->LogTag:Ljava/lang/String;

    const-string v14, "doHttpPostWithResponseStatus"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    const-string v13, "RESPONSE_CODE"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    const-string v13, "RESPONSE_BODY"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 103
    :cond_8
    const-string v13, "RESPONSE_CODE"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    const-string v13, "RESPONSE_BODY"

    goto :goto_1

    .line 97
    .end local v4           #e:Lorg/apache/http/ParseException;
    :catch_1
    move-exception v4

    .line 98
    .local v4, e:Ljava/io/IOException;
    :try_start_3
    sget-object v13, Lmiui/util/Network;->LogTag:Ljava/lang/String;

    const-string v14, "doHttpPostWithResponseStatus"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    const-string v13, "RESPONSE_CODE"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    const-string v13, "RESPONSE_BODY"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 103
    :cond_9
    const-string v13, "RESPONSE_CODE"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    const-string v13, "RESPONSE_BODY"

    goto :goto_1

    .line 99
    .end local v4           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 100
    .local v4, e:Lorg/json/JSONException;
    :try_start_4
    sget-object v13, Lmiui/util/Network;->LogTag:Ljava/lang/String;

    const-string v14, "doHttpPostWithResponseStatus"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 102
    const-string v13, "RESPONSE_CODE"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    const-string v13, "RESPONSE_BODY"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 103
    :cond_a
    const-string v13, "RESPONSE_CODE"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    const-string v13, "RESPONSE_BODY"

    goto :goto_1

    .line 102
    .end local v4           #e:Lorg/json/JSONException;
    :catchall_0
    move-exception v13

    const-string v14, "RESPONSE_CODE"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    const-string v14, "RESPONSE_BODY"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 103
    :cond_b
    const-string v14, "RESPONSE_CODE"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    const-string v14, "RESPONSE_BODY"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    :cond_c
    throw v13
.end method

.method public static getCMWapUrl(Ljava/net/URL;)Ljava/lang/String;
    .locals 3
    .parameter "oriUrl"

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v0, gatewayBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "10.0.0.172"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isCmwap(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 113
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 115
    .local v9, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v7

    .line 116
    .local v7, countryISO:Ljava/lang/String;
    const-string v1, "CN"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v4

    .line 118
    :cond_1
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 120
    .local v6, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    .line 121
    .local v8, info:Landroid/net/NetworkInfo;
    if-eqz v8, :cond_0

    .line 123
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, extraInfo:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v5, :cond_0

    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    const-string v3, "wap"

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    goto :goto_0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 141
    if-eqz p0, :cond_0

    .line 142
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 144
    .local v0, mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 145
    .local v1, mNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 149
    .end local v0           #mConnectivityManager:Landroid/net/ConnectivityManager;
    .end local v1           #mNetworkInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
