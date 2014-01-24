.class public Lmiui/security/HashUtils;
.super Ljava/lang/Object;
.source "HashUtils.java"


# static fields
.field public static final MD5:Ljava/lang/String; = "MD5"

.field public static final SHA1:Ljava/lang/String; = "SHA1"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static getHash(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "file"
    .parameter "method"

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 86
    .local v1, hash:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 87
    .local v2, is:Ljava/io/BufferedInputStream;
    invoke-static {v2, p1}, Lmiui/security/HashUtils;->getHash(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 91
    .end local v2           #is:Ljava/io/BufferedInputStream;
    :goto_0
    return-object v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getHash(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "is"
    .parameter "method"

    .prologue
    .line 57
    const/4 v5, 0x0

    .line 59
    .local v5, hash:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 60
    .local v3, digester:Ljava/security/MessageDigest;
    const/16 v6, 0x2000

    new-array v1, v6, [B

    .line 62
    .local v1, bytes:[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, byteCount:I
    if-lez v0, :cond_1

    .line 63
    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6, v0}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 67
    .end local v0           #byteCount:I
    .end local v1           #bytes:[B
    .end local v3           #digester:Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    .line 68
    .local v4, e:Ljava/security/NoSuchAlgorithmException;
    :try_start_1
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    if-eqz p0, :cond_0

    .line 74
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 80
    .end local v4           #e:Ljava/security/NoSuchAlgorithmException;
    :cond_0
    :goto_1
    return-object v5

    .line 65
    .restart local v0       #byteCount:I
    .restart local v1       #bytes:[B
    .restart local v3       #digester:Ljava/security/MessageDigest;
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 66
    .local v2, digest:[B
    invoke-static {v2}, Lmiui/security/HashUtils;->toHexString([B)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v5

    .line 72
    if-eqz p0, :cond_0

    .line 74
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 75
    :catch_1
    move-exception v4

    .line 76
    .end local v0           #byteCount:I
    .end local v1           #bytes:[B
    .end local v2           #digest:[B
    .end local v3           #digester:Ljava/security/MessageDigest;
    .local v4, e:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 69
    .end local v4           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 70
    .restart local v4       #e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 72
    if-eqz p0, :cond_0

    .line 74
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 75
    :catch_3
    move-exception v4

    goto :goto_2

    .line 72
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz p0, :cond_2

    .line 74
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 72
    :cond_2
    :goto_3
    throw v6

    .line 75
    :catch_4
    move-exception v4

    .line 76
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 75
    .local v4, e:Ljava/security/NoSuchAlgorithmException;
    :catch_5
    move-exception v4

    goto :goto_2
.end method

.method public static getHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "content"
    .parameter "method"

    .prologue
    .line 45
    const/4 v2, 0x0

    .line 47
    .local v2, hash:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 48
    .local v0, digester:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 49
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lmiui/security/HashUtils;->toHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 53
    .end local v0           #digester:Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .parameter "file"

    .prologue
    .line 29
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lmiui/security/HashUtils;->getHash(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMD5(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .parameter "is"

    .prologue
    .line 25
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lmiui/security/HashUtils;->getHash(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "content"

    .prologue
    .line 21
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lmiui/security/HashUtils;->getHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSHA1(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .parameter "file"

    .prologue
    .line 41
    const-string v0, "SHA1"

    invoke-static {p0, v0}, Lmiui/security/HashUtils;->getHash(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSHA1(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .parameter "is"

    .prologue
    .line 37
    const-string v0, "SHA1"

    invoke-static {p0, v0}, Lmiui/security/HashUtils;->getHash(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "content"

    .prologue
    .line 33
    const-string v0, "SHA1"

    invoke-static {p0, v0}, Lmiui/security/HashUtils;->getHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 6
    .parameter "bytes"

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v0, hexString:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 97
    const-string v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
