.class public Lmiui/provider/yellowpage/request/StreamRequest;
.super Lmiui/provider/yellowpage/request/Request;
.source "StreamRequest.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final CONN_RANGE_PROPERTY:Ljava/lang/String; = "RANGE"

.field private static final CONN_RANGE_VALUE_FORMAT:Ljava/lang/String; = "bytes=%d-"

.field private static final TAG:Ljava/lang/String; = "StreamRequest"

.field private static final TEMP_DOWNLOADED_FILE_NAME_FORMAT:Ljava/lang/String; = "%s_temp_downloaded"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "url"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lmiui/provider/yellowpage/request/Request;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private getTempDownloadData()Ljava/io/ByteArrayOutputStream;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 156
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiui/provider/yellowpage/request/StreamRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%s_temp_downloaded"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmiui/provider/yellowpage/request/StreamRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lmiui/util/CoderUtils;->encodeSHA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v2, file:Ljava/io/File;
    const/4 v6, 0x0

    .line 162
    .local v6, outputStream:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 163
    .local v3, inputStream:Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 165
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 166
    .end local v3           #inputStream:Ljava/io/InputStream;
    .local v4, inputStream:Ljava/io/InputStream;
    :try_start_1
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 167
    .end local v6           #outputStream:Ljava/io/ByteArrayOutputStream;
    .local v7, outputStream:Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x400

    :try_start_2
    new-array v0, v8, [B

    .line 168
    .local v0, buff:[B
    const/4 v5, 0x0

    .line 169
    .local v5, len:I
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_2

    .line 170
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    goto :goto_0

    .line 173
    .end local v0           #buff:[B
    .end local v5           #len:I
    :catch_0
    move-exception v1

    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    move-object v6, v7

    .line 174
    .end local v7           #outputStream:Ljava/io/ByteArrayOutputStream;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v6       #outputStream:Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    if-eqz v3, :cond_0

    .line 180
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 186
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 189
    :cond_1
    :goto_3
    return-object v6

    .line 172
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v6           #outputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #buff:[B
    .restart local v4       #inputStream:Ljava/io/InputStream;
    .restart local v5       #len:I
    .restart local v7       #outputStream:Ljava/io/ByteArrayOutputStream;
    :cond_2
    :try_start_5
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 178
    if-eqz v4, :cond_3

    .line 180
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 186
    :cond_3
    :goto_4
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    move-object v6, v7

    .line 187
    .end local v7           #outputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #outputStream:Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 175
    .end local v0           #buff:[B
    .end local v5           #len:I
    :catch_1
    move-exception v1

    .line 176
    .local v1, e:Ljava/io/IOException;
    :goto_5
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 178
    if-eqz v3, :cond_0

    .line 180
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 181
    :catch_2
    move-exception v1

    .line 182
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 178
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_6
    if-eqz v3, :cond_4

    .line 180
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 186
    :cond_4
    :goto_7
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 178
    throw v8

    .line 181
    :catch_3
    move-exception v1

    .line 182
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 181
    .local v1, e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v1

    .line 182
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 181
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v6           #outputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #buff:[B
    .restart local v4       #inputStream:Ljava/io/InputStream;
    .restart local v5       #len:I
    .restart local v7       #outputStream:Ljava/io/ByteArrayOutputStream;
    :catch_5
    move-exception v1

    .line 182
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 178
    .end local v0           #buff:[B
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #len:I
    .end local v7           #outputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #outputStream:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    goto :goto_6

    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v6           #outputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    .restart local v7       #outputStream:Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v8

    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    move-object v6, v7

    .end local v7           #outputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #outputStream:Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .line 175
    .end local v3           #inputStream:Ljava/io/InputStream;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    goto :goto_5

    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v6           #outputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    .restart local v7       #outputStream:Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    move-object v6, v7

    .end local v7           #outputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #outputStream:Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 173
    :catch_8
    move-exception v1

    goto :goto_1

    .end local v3           #inputStream:Ljava/io/InputStream;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    :catch_9
    move-exception v1

    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    goto :goto_1
.end method

.method private saveTemporaryDownloadedData(Ljava/io/ByteArrayOutputStream;)V
    .locals 8
    .parameter "out"

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 130
    .local v1, outputStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/provider/yellowpage/request/StreamRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%s_temp_downloaded"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lmiui/provider/yellowpage/request/StreamRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmiui/util/CoderUtils;->encodeSHA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 134
    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .local v2, outputStream:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 135
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 141
    if-eqz v2, :cond_0

    .line 143
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_0
    move-object v1, v2

    .line 149
    .end local v2           #outputStream:Ljava/io/FileOutputStream;
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    if-eqz v1, :cond_1

    .line 143
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 144
    :catch_1
    move-exception v0

    .line 145
    .local v0, e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 138
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 139
    .restart local v0       #e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 141
    if-eqz v1, :cond_1

    .line 143
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 144
    :catch_3
    move-exception v0

    goto :goto_3

    .line 141
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_5
    if-eqz v1, :cond_2

    .line 143
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 141
    :cond_2
    :goto_6
    throw v3

    .line 144
    :catch_4
    move-exception v0

    .line 145
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 144
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #outputStream:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    .line 145
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 141
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #outputStream:Ljava/io/FileOutputStream;
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 138
    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #outputStream:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #outputStream:Ljava/io/FileOutputStream;
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 136
    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #outputStream:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2           #outputStream:Ljava/io/FileOutputStream;
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_2
.end method


# virtual methods
.method protected getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lmiui/provider/yellowpage/request/StreamRequest;->mRequestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public requestStream(Ljava/io/OutputStream;)I
    .locals 14
    .parameter "outPutStream"

    .prologue
    const/4 v8, 0x1

    .line 41
    if-nez p1, :cond_1

    .line 42
    const-string v9, "StreamRequest"

    const-string v10, "requestStream: the outPutStream should no be null"

    invoke-static {v9, v10}, Lmiui/provider/yellowpage/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/4 v8, 0x3

    .line 121
    :cond_0
    :goto_0
    return v8

    .line 46
    :cond_1
    iget-object v9, p0, Lmiui/provider/yellowpage/request/StreamRequest;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lmiui/provider/yellowpage/utils/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 47
    const-string v9, "StreamRequest"

    const-string v10, "requestStream: the net work was not connected"

    invoke-static {v9, v10}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_2
    const/4 v8, 0x3

    .line 52
    .local v8, status:I
    const/4 v3, 0x0

    .line 53
    .local v3, conn:Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 54
    .local v5, inputStream:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 57
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-super {p0}, Lmiui/provider/yellowpage/request/Request;->getConn()Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 58
    if-eqz v3, :cond_9

    .line 59
    invoke-direct {p0}, Lmiui/provider/yellowpage/request/StreamRequest;->getTempDownloadData()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_7

    .line 62
    const-string v9, "RANGE"

    const-string v10, "bytes=%d-"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :goto_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 69
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 70
    .local v7, responseCode:I
    const-string v9, "StreamRequest"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "requestStream:The response code is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/16 v9, 0xc8

    if-eq v7, v9, :cond_3

    const/16 v9, 0xce

    if-ne v7, v9, :cond_d

    .line 73
    :cond_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 75
    const/16 v9, 0x400

    new-array v2, v9, [B

    .line 76
    .local v2, buff:[B
    const/4 v6, 0x0

    .line 77
    .local v6, len:I
    :goto_2
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v9, -0x1

    if-eq v6, v9, :cond_8

    .line 78
    const/4 v9, 0x0

    invoke-virtual {v0, v2, v9, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_2

    .line 88
    .end local v2           #buff:[B
    .end local v6           #len:I
    .end local v7           #responseCode:I
    :catch_0
    move-exception v4

    .line 89
    .local v4, e:Ljava/net/SocketTimeoutException;
    const/4 v8, 0x2

    .line 90
    :try_start_1
    invoke-virtual {v4}, Ljava/net/SocketTimeoutException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    if-eqz v3, :cond_4

    .line 98
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 101
    :cond_4
    if-eqz v5, :cond_5

    .line 103
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 109
    .end local v4           #e:Ljava/net/SocketTimeoutException;
    :cond_5
    :goto_3
    if-eqz v8, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 110
    invoke-direct {p0, v0}, Lmiui/provider/yellowpage/request/StreamRequest;->saveTemporaryDownloadedData(Ljava/io/ByteArrayOutputStream;)V

    .line 113
    :cond_6
    if-eqz v0, :cond_0

    .line 115
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 116
    :catch_1
    move-exception v4

    .line 117
    .local v4, e:Ljava/io/IOException;
    :goto_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 65
    .end local v4           #e:Ljava/io/IOException;
    :cond_7
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .line 80
    .restart local v2       #buff:[B
    .restart local v6       #len:I
    .restart local v7       #responseCode:I
    :cond_8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 81
    const/4 v8, 0x0

    .line 97
    .end local v2           #buff:[B
    .end local v6           #len:I
    .end local v7           #responseCode:I
    :cond_9
    :goto_5
    if-eqz v3, :cond_a

    .line 98
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 101
    :cond_a
    if-eqz v5, :cond_b

    .line 103
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    .line 109
    :cond_b
    :goto_6
    if-eqz v8, :cond_c

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    if-lez v9, :cond_c

    .line 110
    invoke-direct {p0, v0}, Lmiui/provider/yellowpage/request/StreamRequest;->saveTemporaryDownloadedData(Ljava/io/ByteArrayOutputStream;)V

    .line 113
    :cond_c
    if-eqz v0, :cond_0

    .line 115
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 116
    :catch_2
    move-exception v4

    goto :goto_4

    .line 82
    .restart local v7       #responseCode:I
    :cond_d
    :try_start_7
    invoke-virtual {p0, v7}, Lmiui/provider/yellowpage/request/StreamRequest;->isServerError(I)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    move-result v9

    if-eqz v9, :cond_e

    .line 83
    const/4 v8, 0x4

    goto :goto_5

    .line 85
    :cond_e
    const/4 v8, 0x5

    goto :goto_5

    .line 91
    .end local v7           #responseCode:I
    :catch_3
    move-exception v4

    .line 92
    .restart local v4       #e:Ljava/io/IOException;
    :try_start_8
    iget-object v9, p0, Lmiui/provider/yellowpage/request/StreamRequest;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lmiui/provider/yellowpage/utils/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 93
    const/4 v8, 0x1

    .line 95
    :cond_f
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 97
    if-eqz v3, :cond_10

    .line 98
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 101
    :cond_10
    if-eqz v5, :cond_11

    .line 103
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 109
    :cond_11
    :goto_7
    if-eqz v8, :cond_12

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    if-lez v9, :cond_12

    .line 110
    invoke-direct {p0, v0}, Lmiui/provider/yellowpage/request/StreamRequest;->saveTemporaryDownloadedData(Ljava/io/ByteArrayOutputStream;)V

    .line 113
    :cond_12
    if-eqz v0, :cond_0

    .line 115
    :try_start_a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 116
    :catch_4
    move-exception v4

    goto :goto_4

    .line 97
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    if-eqz v3, :cond_13

    .line 98
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 101
    :cond_13
    if-eqz v5, :cond_14

    .line 103
    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 109
    :cond_14
    :goto_8
    if-eqz v8, :cond_15

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    if-lez v10, :cond_15

    .line 110
    invoke-direct {p0, v0}, Lmiui/provider/yellowpage/request/StreamRequest;->saveTemporaryDownloadedData(Ljava/io/ByteArrayOutputStream;)V

    .line 113
    :cond_15
    if-eqz v0, :cond_16

    .line 115
    :try_start_c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 97
    :cond_16
    :goto_9
    throw v9

    .line 104
    :catch_5
    move-exception v4

    .line 105
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 116
    .end local v4           #e:Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 117
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 104
    .local v4, e:Ljava/net/SocketTimeoutException;
    :catch_7
    move-exception v4

    .line 105
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 104
    :catch_8
    move-exception v4

    .line 105
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 104
    .end local v4           #e:Ljava/io/IOException;
    :catch_9
    move-exception v4

    .line 105
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6
.end method
