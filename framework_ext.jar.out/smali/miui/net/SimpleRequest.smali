.class public final Lmiui/net/SimpleRequest;
.super Ljava/lang/Object;
.source "SimpleRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/SimpleRequest$StreamContent;,
        Lmiui/net/SimpleRequest$MapContent;,
        Lmiui/net/SimpleRequest$StringContent;,
        Lmiui/net/SimpleRequest$HeaderContent;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final LOCATION:Ljava/lang/String; = "Location"

.field private static final TIMEOUT:I = 0x7530

.field public static final UTF8:Ljava/lang/String; = "utf-8"

.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lmiui/net/SimpleRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lmiui/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    return-void
.end method

.method protected static appendUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .parameter "origin"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-nez p0, :cond_0

    .line 48
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "origin is not allowed null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, urlBuilder:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    .line 52
    const-string v2, "utf-8"

    invoke-static {p1, v2}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, paramPart:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 55
    const-string v2, "?"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .end local v0           #paramPart:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 58
    .restart local v0       #paramPart:Ljava/lang/String;
    :cond_2
    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected static convertStringToMap(Lmiui/net/SimpleRequest$StringContent;)Lmiui/net/SimpleRequest$MapContent;
    .locals 7
    .parameter "stringContent"

    .prologue
    const/4 v5, 0x0

    .line 287
    if-nez p0, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-object v5

    .line 290
    :cond_1
    invoke-virtual {p0}, Lmiui/net/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, bodyString:Ljava/lang/String;
    const/4 v3, 0x0

    .line 293
    .local v3, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .local v4, jsonObject:Lorg/json/JSONObject;
    move-object v3, v4

    .line 297
    .end local v4           #jsonObject:Lorg/json/JSONObject;
    .restart local v3       #jsonObject:Lorg/json/JSONObject;
    :goto_1
    if-eqz v3, :cond_0

    .line 300
    invoke-static {v3}, Lmiui/util/ObjectUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .line 302
    .local v1, contentMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Lmiui/net/SimpleRequest$MapContent;

    invoke-direct {v5, v1}, Lmiui/net/SimpleRequest$MapContent;-><init>(Ljava/util/Map;)V

    .line 303
    .local v5, mapContent:Lmiui/net/SimpleRequest$MapContent;
    invoke-virtual {p0}, Lmiui/net/SimpleRequest$StringContent;->getHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmiui/net/SimpleRequest$MapContent;->putHeaders(Ljava/util/Map;)V

    goto :goto_0

    .line 294
    .end local v1           #contentMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5           #mapContent:Lmiui/net/SimpleRequest$MapContent;
    :catch_0
    move-exception v2

    .line 295
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getAsMap(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/net/SimpleRequest$MapContent;
    .locals 2
    .parameter "url"
    .parameter
    .parameter
    .parameter "readBody"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lmiui/net/SimpleRequest$MapContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/net/exception/AccessDeniedException;,
            Lmiui/net/exception/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 193
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, cookies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, p3}, Lmiui/net/SimpleRequest;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/net/SimpleRequest$StringContent;

    move-result-object v0

    .line 195
    .local v0, stringContent:Lmiui/net/SimpleRequest$StringContent;
    invoke-static {v0}, Lmiui/net/SimpleRequest;->convertStringToMap(Lmiui/net/SimpleRequest$StringContent;)Lmiui/net/SimpleRequest$MapContent;

    move-result-object v1

    return-object v1
.end method

.method public static getAsStream(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lmiui/net/SimpleRequest$StreamContent;
    .locals 15
    .parameter "url"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lmiui/net/SimpleRequest$StreamContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/net/exception/AccessDeniedException;,
            Lmiui/net/exception/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 137
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, cookies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lmiui/util/ObjectUtils;->mapToPairs(Ljava/util/Map;)Ljava/util/List;

    move-result-object v9

    .line 138
    .local v9, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {p0, v9}, Lmiui/net/SimpleRequest;->appendUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, fullUrl:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v6, v0}, Lmiui/net/SimpleRequest;->makeConn(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 140
    .local v3, conn:Ljava/net/HttpURLConnection;
    if-nez v3, :cond_0

    .line 141
    sget-object v12, Lmiui/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    const-string v13, "failed to create URLConnection"

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 142
    new-instance v12, Ljava/io/IOException;

    const-string v13, "failed to create connection"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 145
    :cond_0
    const/4 v12, 0x1

    :try_start_0
    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 146
    const-string v12, "GET"

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 148
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 149
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 151
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 153
    .local v2, code:I
    const/16 v12, 0xc8

    if-ne v2, v12, :cond_1

    .line 154
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    .line 156
    .local v7, headerFields:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v1, Ljava/net/CookieManager;

    invoke-direct {v1}, Ljava/net/CookieManager;-><init>()V

    .line 157
    .local v1, cm:Ljava/net/CookieManager;
    invoke-static {v6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v10

    .line 158
    .local v10, reqUri:Ljava/net/URI;
    invoke-virtual {v1, v10, v7}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 159
    invoke-virtual {v1}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v12

    invoke-interface {v12, v10}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v8

    .line 160
    .local v8, httpCookies:Ljava/util/List;,"Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-static {v8}, Lmiui/net/SimpleRequest;->parseCookies(Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    .line 161
    .local v4, cookieMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v7}, Lmiui/util/ObjectUtils;->listToMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 162
    new-instance v11, Lmiui/net/SimpleRequest$StreamContent;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Lmiui/net/SimpleRequest$StreamContent;-><init>(Ljava/io/InputStream;)V

    .line 164
    .local v11, streamContent:Lmiui/net/SimpleRequest$StreamContent;
    invoke-virtual {v11, v4}, Lmiui/net/SimpleRequest$StreamContent;->putHeaders(Ljava/util/Map;)V

    .line 165
    return-object v11

    .line 166
    .end local v1           #cm:Ljava/net/CookieManager;
    .end local v4           #cookieMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7           #headerFields:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v8           #httpCookies:Ljava/util/List;,"Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v10           #reqUri:Ljava/net/URI;
    .end local v11           #streamContent:Lmiui/net/SimpleRequest$StreamContent;
    :cond_1
    const/16 v12, 0x193

    if-ne v2, v12, :cond_2

    .line 167
    new-instance v12, Lmiui/net/exception/AccessDeniedException;

    const-string v13, "access denied, encrypt error or user is forbidden to access the resource"

    invoke-direct {v12, v13}, Lmiui/net/exception/AccessDeniedException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v2           #code:I
    :catch_0
    move-exception v5

    .line 183
    .local v5, e:Ljava/net/ProtocolException;
    new-instance v12, Ljava/io/IOException;

    const-string v13, "protocol error"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 169
    .end local v5           #e:Ljava/net/ProtocolException;
    .restart local v2       #code:I
    :cond_2
    const/16 v12, 0x191

    if-eq v2, v12, :cond_3

    const/16 v12, 0x190

    if-ne v2, v12, :cond_4

    .line 171
    :cond_3
    :try_start_1
    new-instance v12, Lmiui/net/exception/AuthenticationFailureException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "authentication failure for get, code: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lmiui/net/exception/AuthenticationFailureException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 174
    :cond_4
    sget-object v12, Lmiui/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "http status error when GET: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 175
    const/16 v12, 0x12d

    if-ne v2, v12, :cond_5

    .line 176
    sget-object v12, Lmiui/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "unexpected redirect from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Location"

    invoke-virtual {v3, v14}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 180
    :cond_5
    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "unexpected http res code: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public static getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/net/SimpleRequest$StringContent;
    .locals 18
    .parameter "url"
    .parameter
    .parameter
    .parameter "readBody"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lmiui/net/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/net/exception/AccessDeniedException;,
            Lmiui/net/exception/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 70
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, cookies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lmiui/util/ObjectUtils;->mapToPairs(Ljava/util/Map;)Ljava/util/List;

    move-result-object v11

    .line 71
    .local v11, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lmiui/net/SimpleRequest;->appendUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, fullUrl:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v7, v0}, Lmiui/net/SimpleRequest;->makeConn(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 73
    .local v4, conn:Ljava/net/HttpURLConnection;
    if-nez v4, :cond_0

    .line 74
    sget-object v15, Lmiui/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    const-string v16, "failed to create URLConnection"

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 75
    new-instance v15, Ljava/io/IOException;

    const-string v16, "failed to create connection"

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 78
    :cond_0
    const/4 v15, 0x1

    :try_start_0
    invoke-virtual {v4, v15}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 79
    const-string v15, "GET"

    invoke-virtual {v4, v15}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 82
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 83
    .local v3, code:I
    const/16 v15, 0xc8

    if-eq v3, v15, :cond_1

    const/16 v15, 0x12e

    if-ne v3, v15, :cond_4

    .line 85
    :cond_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    .line 87
    .local v8, headerFields:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v2, Ljava/net/CookieManager;

    invoke-direct {v2}, Ljava/net/CookieManager;-><init>()V

    .line 88
    .local v2, cm:Ljava/net/CookieManager;
    invoke-static {v7}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v12

    .line 89
    .local v12, reqUri:Ljava/net/URI;
    invoke-virtual {v2, v12, v8}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 90
    invoke-virtual {v2}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v15

    invoke-interface {v15, v12}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v9

    .line 91
    .local v9, httpCookies:Ljava/util/List;,"Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-static {v9}, Lmiui/net/SimpleRequest;->parseCookies(Ljava/util/List;)Ljava/util/Map;

    move-result-object v5

    .line 92
    .local v5, cookieMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v8}, Lmiui/util/ObjectUtils;->listToMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v15

    invoke-interface {v5, v15}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 93
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v13, sb:Ljava/lang/StringBuilder;
    if-eqz p3, :cond_3

    .line 95
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v16, 0x400

    move/from16 v0, v16

    invoke-direct {v1, v15, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .local v1, br:Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, line:Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 100
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    .end local v10           #line:Ljava/lang/String;
    :catchall_0
    move-exception v15

    :try_start_2
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    throw v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0

    .line 126
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #cm:Ljava/net/CookieManager;
    .end local v3           #code:I
    .end local v5           #cookieMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #headerFields:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v9           #httpCookies:Ljava/util/List;,"Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v12           #reqUri:Ljava/net/URI;
    .end local v13           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v6

    .line 127
    .local v6, e:Ljava/net/ProtocolException;
    :try_start_3
    new-instance v15, Ljava/io/IOException;

    const-string v16, "protocol error"

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    .end local v6           #e:Ljava/net/ProtocolException;
    :catchall_1
    move-exception v15

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v15

    .line 103
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #cm:Ljava/net/CookieManager;
    .restart local v3       #code:I
    .restart local v5       #cookieMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8       #headerFields:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v9       #httpCookies:Ljava/util/List;,"Ljava/util/List<Ljava/net/HttpCookie;>;"
    .restart local v10       #line:Ljava/lang/String;
    .restart local v12       #reqUri:Ljava/net/URI;
    .restart local v13       #sb:Ljava/lang/StringBuilder;
    :cond_2
    :try_start_4
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 106
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v10           #line:Ljava/lang/String;
    :cond_3
    new-instance v14, Lmiui/net/SimpleRequest$StringContent;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lmiui/net/SimpleRequest$StringContent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v14, stringContent:Lmiui/net/SimpleRequest$StringContent;
    invoke-virtual {v14, v5}, Lmiui/net/SimpleRequest$StringContent;->putHeaders(Ljava/util/Map;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0

    .line 129
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 109
    return-object v14

    .line 110
    .end local v2           #cm:Ljava/net/CookieManager;
    .end local v5           #cookieMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #headerFields:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v9           #httpCookies:Ljava/util/List;,"Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v12           #reqUri:Ljava/net/URI;
    .end local v13           #sb:Ljava/lang/StringBuilder;
    .end local v14           #stringContent:Lmiui/net/SimpleRequest$StringContent;
    :cond_4
    const/16 v15, 0x193

    if-ne v3, v15, :cond_5

    .line 111
    :try_start_5
    new-instance v15, Lmiui/net/exception/AccessDeniedException;

    const-string v16, "access denied, encrypt error or user is forbidden to access the resource"

    invoke-direct/range {v15 .. v16}, Lmiui/net/exception/AccessDeniedException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 113
    :cond_5
    const/16 v15, 0x191

    if-eq v3, v15, :cond_6

    const/16 v15, 0x190

    if-ne v3, v15, :cond_7

    .line 115
    :cond_6
    new-instance v15, Lmiui/net/exception/AuthenticationFailureException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "authentication failure for get, code: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lmiui/net/exception/AuthenticationFailureException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 118
    :cond_7
    sget-object v15, Lmiui/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "http status error when GET: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 119
    const/16 v15, 0x12d

    if-ne v3, v15, :cond_8

    .line 120
    sget-object v15, Lmiui/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "unexpected redirect from "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " to "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "Location"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 124
    :cond_8
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "unexpected http res code: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method protected static joinMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter "sp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 340
    const/4 v7, 0x0

    .line 356
    :goto_0
    return-object v7

    .line 342
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .local v5, sb:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 344
    .local v0, entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .line 345
    .local v2, i:I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 346
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-lez v2, :cond_1

    .line 347
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 350
    .local v4, key:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 351
    .local v6, value:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    add-int/lit8 v2, v2, 0x1

    .line 355
    goto :goto_1

    .line 356
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method protected static makeConn(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 7
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .prologue
    .local p1, cookies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 309
    const/4 v2, 0x0

    .line 311
    .local v2, req:Ljava/net/URL;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #req:Ljava/net/URL;
    .local v3, req:Ljava/net/URL;
    move-object v2, v3

    .line 315
    .end local v3           #req:Ljava/net/URL;
    .restart local v2       #req:Ljava/net/URL;
    :goto_0
    if-nez v2, :cond_1

    .line 316
    sget-object v5, Lmiui/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    const-string v6, "failed to init url"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    move-object v0, v4

    .line 335
    :cond_0
    :goto_1
    return-object v0

    .line 312
    :catch_0
    move-exception v1

    .line 313
    .local v1, e:Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 320
    .end local v1           #e:Ljava/net/MalformedURLException;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 321
    .local v0, conn:Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 322
    const/16 v5, 0x7530

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 323
    const/16 v5, 0x7530

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 324
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 325
    const-string v5, "Content-Type"

    const-string v6, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v5, "User-Agent"

    invoke-static {}, Lmiui/net/CloudManager;->getUserAgent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    if-eqz p1, :cond_0

    .line 329
    const-string v5, "Cookie"

    const-string v6, "; "

    invoke-static {p1, v6}, Lmiui/net/SimpleRequest;->joinMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 332
    .end local v0           #conn:Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v1

    .line 333
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v4

    .line 335
    goto :goto_1
.end method

.method protected static parseCookies(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    .local p0, cookies:Ljava/util/List;,"Ljava/util/List<Ljava/net/HttpCookie;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 362
    .local v1, cookieMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 363
    .local v0, cookie:Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->hasExpired()Z

    move-result v5

    if-nez v5, :cond_0

    .line 364
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v3

    .line 365
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 366
    .local v4, value:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 367
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 375
    .end local v0           #cookie:Ljava/net/HttpCookie;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static postAsMap(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/net/SimpleRequest$MapContent;
    .locals 2
    .parameter "url"
    .parameter
    .parameter
    .parameter "readBody"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lmiui/net/SimpleRequest$MapContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/net/exception/AccessDeniedException;,
            Lmiui/net/exception/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 281
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, cookies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, p3}, Lmiui/net/SimpleRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/net/SimpleRequest$StringContent;

    move-result-object v0

    .line 283
    .local v0, stringContent:Lmiui/net/SimpleRequest$StringContent;
    invoke-static {v0}, Lmiui/net/SimpleRequest;->convertStringToMap(Lmiui/net/SimpleRequest$StringContent;)Lmiui/net/SimpleRequest$MapContent;

    move-result-object v1

    return-object v1
.end method

.method public static postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/net/SimpleRequest$StringContent;
    .locals 20
    .parameter "url"
    .parameter
    .parameter
    .parameter "readBody"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lmiui/net/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/net/exception/AccessDeniedException;,
            Lmiui/net/exception/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 202
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, cookies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lmiui/net/SimpleRequest;->makeConn(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 203
    .local v6, conn:Ljava/net/HttpURLConnection;
    if-nez v6, :cond_0

    .line 204
    sget-object v17, Lmiui/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    const-string v18, "failed to create URLConnection"

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 205
    new-instance v17, Ljava/io/IOException;

    const-string v18, "failed to create connection"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 208
    :cond_0
    const/16 v17, 0x1

    :try_start_0
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 209
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 210
    const-string v17, "POST"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 213
    invoke-static/range {p1 .. p1}, Lmiui/util/ObjectUtils;->mapToPairs(Ljava/util/Map;)Ljava/util/List;

    move-result-object v12

    .line 214
    .local v12, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz v12, :cond_1

    .line 215
    const-string v17, "utf-8"

    move-object/from16 v0, v17

    invoke-static {v12, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 216
    .local v7, content:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    .line 217
    .local v13, os:Ljava/io/OutputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .local v2, bos:Ljava/io/BufferedOutputStream;
    :try_start_1
    const-string v17, "utf-8"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 221
    :try_start_2
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 225
    .end local v2           #bos:Ljava/io/BufferedOutputStream;
    .end local v7           #content:Ljava/lang/String;
    .end local v13           #os:Ljava/io/OutputStream;
    :cond_1
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 226
    .local v5, code:I
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-eq v5, v0, :cond_2

    const/16 v17, 0x12e

    move/from16 v0, v17

    if-ne v5, v0, :cond_5

    .line 228
    :cond_2
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v10

    .line 230
    .local v10, headerFields:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v4, Ljava/net/CookieManager;

    invoke-direct {v4}, Ljava/net/CookieManager;-><init>()V

    .line 231
    .local v4, cm:Ljava/net/CookieManager;
    invoke-static/range {p0 .. p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v14

    .line 232
    .local v14, reqUri:Ljava/net/URI;
    invoke-virtual {v4, v14, v10}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 233
    invoke-virtual {v4}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lmiui/net/SimpleRequest;->parseCookies(Ljava/util/List;)Ljava/util/Map;

    move-result-object v8

    .line 235
    .local v8, cookieMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v10}, Lmiui/util/ObjectUtils;->listToMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 236
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .local v15, sb:Ljava/lang/StringBuilder;
    if-eqz p3, :cond_4

    .line 238
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v18, 0x400

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v3, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0

    .line 243
    .local v3, br:Ljava/io/BufferedReader;
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .local v11, line:Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 244
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 247
    .end local v11           #line:Ljava/lang/String;
    :catchall_0
    move-exception v17

    :try_start_4
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    throw v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0

    .line 270
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v4           #cm:Ljava/net/CookieManager;
    .end local v5           #code:I
    .end local v8           #cookieMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10           #headerFields:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v12           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v14           #reqUri:Ljava/net/URI;
    .end local v15           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v9

    .line 271
    .local v9, e:Ljava/net/ProtocolException;
    :try_start_5
    new-instance v17, Ljava/io/IOException;

    const-string v18, "protocol error"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 273
    .end local v9           #e:Ljava/net/ProtocolException;
    :catchall_1
    move-exception v17

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v17

    .line 221
    .restart local v2       #bos:Ljava/io/BufferedOutputStream;
    .restart local v7       #content:Ljava/lang/String;
    .restart local v12       #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v13       #os:Ljava/io/OutputStream;
    :catchall_2
    move-exception v17

    :try_start_6
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v17

    .line 247
    .end local v2           #bos:Ljava/io/BufferedOutputStream;
    .end local v7           #content:Ljava/lang/String;
    .end local v13           #os:Ljava/io/OutputStream;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v4       #cm:Ljava/net/CookieManager;
    .restart local v5       #code:I
    .restart local v8       #cookieMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10       #headerFields:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v11       #line:Ljava/lang/String;
    .restart local v14       #reqUri:Ljava/net/URI;
    .restart local v15       #sb:Ljava/lang/StringBuilder;
    :cond_3
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 250
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v11           #line:Ljava/lang/String;
    :cond_4
    new-instance v16, Lmiui/net/SimpleRequest$StringContent;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lmiui/net/SimpleRequest$StringContent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v16, stringContent:Lmiui/net/SimpleRequest$StringContent;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lmiui/net/SimpleRequest$StringContent;->putHeaders(Ljava/util/Map;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_0

    .line 273
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 253
    return-object v16

    .line 254
    .end local v4           #cm:Ljava/net/CookieManager;
    .end local v8           #cookieMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10           #headerFields:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v14           #reqUri:Ljava/net/URI;
    .end local v15           #sb:Ljava/lang/StringBuilder;
    .end local v16           #stringContent:Lmiui/net/SimpleRequest$StringContent;
    :cond_5
    const/16 v17, 0x193

    move/from16 v0, v17

    if-ne v5, v0, :cond_6

    .line 255
    :try_start_7
    new-instance v17, Lmiui/net/exception/AccessDeniedException;

    const-string v18, "access denied, encrypt error or user is forbidden to access the resource"

    invoke-direct/range {v17 .. v18}, Lmiui/net/exception/AccessDeniedException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 257
    :cond_6
    const/16 v17, 0x191

    move/from16 v0, v17

    if-eq v5, v0, :cond_7

    const/16 v17, 0x190

    move/from16 v0, v17

    if-ne v5, v0, :cond_8

    .line 259
    :cond_7
    new-instance v17, Lmiui/net/exception/AuthenticationFailureException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "authentication failure for post, code: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lmiui/net/exception/AuthenticationFailureException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 262
    :cond_8
    sget-object v17, Lmiui/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "http status error when POST: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 263
    const/16 v17, 0x12d

    move/from16 v0, v17

    if-ne v5, v0, :cond_9

    .line 264
    sget-object v17, Lmiui/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unexpected redirect from "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "Location"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 268
    :cond_9
    new-instance v17, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unexpected http res code: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/net/ProtocolException; {:try_start_7 .. :try_end_7} :catch_0
.end method
