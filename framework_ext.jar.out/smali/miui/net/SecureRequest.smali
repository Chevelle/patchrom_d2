.class public Lmiui/net/SecureRequest;
.super Ljava/lang/Object;
.source "SecureRequest.java"


# static fields
.field private static final UTF8:Ljava/lang/String; = "utf-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "body"
    .parameter "security"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/net/exception/CipherException;,
            Lmiui/net/exception/InvalidResponseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 121
    invoke-static {p1, v4}, Lmiui/net/CloudCoder;->newAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 122
    .local v1, cipher:Ljavax/crypto/Cipher;
    if-nez v1, :cond_0

    .line 123
    new-instance v4, Lmiui/net/exception/CipherException;

    const-string v5, "failed to init cipher"

    invoke-direct {v4, v5}, Lmiui/net/exception/CipherException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 125
    :cond_0
    const/4 v2, 0x0

    .line 127
    .local v2, responseData:Ljava/lang/String;
    const/4 v4, 0x2

    :try_start_0
    invoke-static {p0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 128
    .local v0, bytes:[B
    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #responseData:Ljava/lang/String;
    .local v3, responseData:Ljava/lang/String;
    move-object v2, v3

    .line 132
    .end local v0           #bytes:[B
    .end local v3           #responseData:Ljava/lang/String;
    .restart local v2       #responseData:Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_1

    .line 133
    new-instance v4, Lmiui/net/exception/InvalidResponseException;

    const-string v5, "failed to decrypt response"

    invoke-direct {v4, v5}, Lmiui/net/exception/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 135
    :cond_1
    return-object v2

    .line 129
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static encryptParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .parameter "method"
    .parameter "url"
    .parameter
    .parameter "security"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/net/exception/CipherException;
        }
    .end annotation

    .prologue
    .line 87
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x1

    invoke-static {p3, v9}, Lmiui/net/CloudCoder;->newAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 88
    .local v0, cipher:Ljavax/crypto/Cipher;
    if-nez v0, :cond_0

    .line 89
    new-instance v9, Lmiui/net/exception/CipherException;

    const-string v10, "failed to init cipher"

    invoke-direct {v9, v10}, Lmiui/net/exception/CipherException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 91
    :cond_0
    new-instance v6, Lmiui/util/EasyMap;

    invoke-direct {v6}, Lmiui/util/EasyMap;-><init>()V

    .line 92
    .local v6, requestParams:Lmiui/util/EasyMap;,"Lmiui/util/EasyMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 93
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 94
    .local v2, entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 95
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 96
    .local v5, key:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 97
    .local v8, value:Ljava/lang/String;
    if-eqz v5, :cond_1

    if-eqz v8, :cond_1

    .line 99
    const-string v9, "_"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 101
    :try_start_0
    const-string v9, "utf-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 109
    :cond_2
    invoke-virtual {v6, v5, v8}, Lmiui/util/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lmiui/util/EasyMap;

    goto :goto_0

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, e:Ljava/lang/Exception;
    new-instance v9, Lmiui/net/exception/CipherException;

    const-string v10, "failed to encrypt request params"

    invoke-direct {v9, v10, v1}, Lmiui/net/exception/CipherException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 113
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #key:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_3
    invoke-static {p0, p1, v6, p3}, Lmiui/net/CloudCoder;->generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 115
    .local v7, signature:Ljava/lang/String;
    const-string v9, "signature"

    invoke-virtual {v6, v9, v7}, Lmiui/util/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lmiui/util/EasyMap;

    .line 116
    return-object v6
.end method

.method public static getAsMap(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/net/SimpleRequest$MapContent;
    .locals 2
    .parameter "url"
    .parameter
    .parameter
    .parameter "readBody"
    .parameter "security"
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
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lmiui/net/SimpleRequest$MapContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/net/exception/CipherException;,
            Lmiui/net/exception/AccessDeniedException;,
            Lmiui/net/exception/InvalidResponseException;,
            Lmiui/net/exception/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 40
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, cookies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lmiui/net/SecureRequest;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/net/SimpleRequest$StringContent;

    move-result-object v0

    .line 42
    .local v0, stringContent:Lmiui/net/SimpleRequest$StringContent;
    invoke-static {v0}, Lmiui/net/SimpleRequest;->convertStringToMap(Lmiui/net/SimpleRequest$StringContent;)Lmiui/net/SimpleRequest$MapContent;

    move-result-object v1

    return-object v1
.end method

.method public static getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/net/SimpleRequest$StringContent;
    .locals 3
    .parameter "url"
    .parameter
    .parameter
    .parameter "readBody"
    .parameter "security"
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
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lmiui/net/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/net/exception/CipherException;,
            Lmiui/net/exception/AccessDeniedException;,
            Lmiui/net/exception/InvalidResponseException;,
            Lmiui/net/exception/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 28
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, cookies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "GET"

    invoke-static {v2, p0, p1, p4}, Lmiui/net/SecureRequest;->encryptParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 31
    .local v0, requestParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, v0, p2, p3}, Lmiui/net/SimpleRequest;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/net/SimpleRequest$StringContent;

    move-result-object v1

    .line 33
    .local v1, response:Lmiui/net/SimpleRequest$StringContent;
    invoke-static {v1, p4}, Lmiui/net/SecureRequest;->processStringResponse(Lmiui/net/SimpleRequest$StringContent;Ljava/lang/String;)Lmiui/net/SimpleRequest$StringContent;

    move-result-object v2

    return-object v2
.end method

.method public static postAsMap(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/net/SimpleRequest$MapContent;
    .locals 2
    .parameter "url"
    .parameter
    .parameter
    .parameter "readBody"
    .parameter "security"
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
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lmiui/net/SimpleRequest$MapContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/net/exception/AccessDeniedException;,
            Lmiui/net/exception/InvalidResponseException;,
            Lmiui/net/exception/CipherException;,
            Lmiui/net/exception/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 62
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, cookies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lmiui/net/SecureRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/net/SimpleRequest$StringContent;

    move-result-object v0

    .line 64
    .local v0, stringContent:Lmiui/net/SimpleRequest$StringContent;
    invoke-static {v0}, Lmiui/net/SimpleRequest;->convertStringToMap(Lmiui/net/SimpleRequest$StringContent;)Lmiui/net/SimpleRequest$MapContent;

    move-result-object v1

    return-object v1
.end method

.method public static postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/net/SimpleRequest$StringContent;
    .locals 3
    .parameter "url"
    .parameter
    .parameter
    .parameter "readBody"
    .parameter "security"
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
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lmiui/net/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/net/exception/CipherException;,
            Lmiui/net/exception/AccessDeniedException;,
            Lmiui/net/exception/InvalidResponseException;,
            Lmiui/net/exception/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 49
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, cookies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "POST"

    invoke-static {v2, p0, p1, p4}, Lmiui/net/SecureRequest;->encryptParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 52
    .local v0, requestParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, v0, p2, p3}, Lmiui/net/SimpleRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/net/SimpleRequest$StringContent;

    move-result-object v1

    .line 54
    .local v1, response:Lmiui/net/SimpleRequest$StringContent;
    invoke-static {v1, p4}, Lmiui/net/SecureRequest;->processStringResponse(Lmiui/net/SimpleRequest$StringContent;Ljava/lang/String;)Lmiui/net/SimpleRequest$StringContent;

    move-result-object v2

    return-object v2
.end method

.method private static processStringResponse(Lmiui/net/SimpleRequest$StringContent;Ljava/lang/String;)Lmiui/net/SimpleRequest$StringContent;
    .locals 5
    .parameter "stringResponse"
    .parameter "security"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/net/exception/InvalidResponseException;,
            Lmiui/net/exception/CipherException;
        }
    .end annotation

    .prologue
    .line 71
    if-nez p0, :cond_0

    .line 72
    new-instance v3, Ljava/io/IOException;

    const-string v4, "no response from server"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 74
    :cond_0
    invoke-virtual {p0}, Lmiui/net/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, body:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 76
    new-instance v3, Lmiui/net/exception/InvalidResponseException;

    const-string v4, "invalid response from server"

    invoke-direct {v3, v4}, Lmiui/net/exception/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 78
    :cond_1
    invoke-static {v0, p1}, Lmiui/net/SecureRequest;->decryptResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, decryptedBody:Ljava/lang/String;
    new-instance v2, Lmiui/net/SimpleRequest$StringContent;

    invoke-direct {v2, v1}, Lmiui/net/SimpleRequest$StringContent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v2, resultContent:Lmiui/net/SimpleRequest$StringContent;
    invoke-virtual {p0}, Lmiui/net/SimpleRequest$StringContent;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/net/SimpleRequest$StringContent;->putHeaders(Ljava/util/Map;)V

    .line 81
    return-object v2
.end method
