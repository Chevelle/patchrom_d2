.class public Lmiui/util/CoderUtils;
.super Ljava/lang/Object;
.source "CoderUtils.java"


# static fields
.field public static final AES_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final hexDigits:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "f"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/util/CoderUtils;->hexDigits:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final base64AesEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "data"
    .parameter "key"

    .prologue
    const/4 v6, 0x0

    .line 157
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move-object v5, v6

    .line 186
    :goto_0
    return-object v5

    .line 161
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 165
    .local v4, raw:[B
    if-eqz v4, :cond_2

    array-length v5, v4

    const/16 v7, 0x10

    if-eq v5, v7, :cond_3

    :cond_2
    move-object v5, v6

    .line 166
    goto :goto_0

    .line 168
    :cond_3
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 171
    .local v3, keySpec:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 172
    .local v0, cipher:Ljavax/crypto/Cipher;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const-string v5, "0102030405060708"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v2, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 173
    .local v2, iv:Ljavax/crypto/spec/IvParameterSpec;
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 174
    new-instance v5, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    invoke-static {v7}, Lmiui/util/CoderUtils;->encodeBase64([B)[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 175
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v2           #iv:Ljavax/crypto/spec/IvParameterSpec;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    move-object v5, v6

    .line 176
    goto :goto_0

    .line 177
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    move-object v5, v6

    .line 178
    goto :goto_0

    .line 179
    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .local v1, e:Ljava/security/InvalidKeyException;
    move-object v5, v6

    .line 180
    goto :goto_0

    .line 181
    .end local v1           #e:Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v1

    .local v1, e:Ljava/security/InvalidAlgorithmParameterException;
    move-object v5, v6

    .line 182
    goto :goto_0

    .line 183
    .end local v1           #e:Ljava/security/InvalidAlgorithmParameterException;
    :catch_4
    move-exception v1

    .local v1, e:Ljavax/crypto/IllegalBlockSizeException;
    move-object v5, v6

    .line 184
    goto :goto_0

    .line 185
    .end local v1           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v1

    .local v1, e:Ljavax/crypto/BadPaddingException;
    move-object v5, v6

    .line 186
    goto :goto_0
.end method

.method public static final base6AesDecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "data"
    .parameter "key"

    .prologue
    const/4 v7, 0x0

    .line 194
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-object v7

    .line 198
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 199
    .local v6, raw:[B
    if-eqz v6, :cond_0

    array-length v8, v6

    const/16 v9, 0x10

    if-ne v8, v9, :cond_0

    .line 202
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v5, v6, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 204
    .local v5, keySpec:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v8, "AES/CBC/PKCS5Padding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 205
    .local v0, cipher:Ljavax/crypto/Cipher;
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    const-string v8, "0102030405060708"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v4, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 206
    .local v4, iv:Ljavax/crypto/spec/IvParameterSpec;
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 207
    invoke-static {p0}, Lmiui/util/CoderUtils;->decodeBase64Bytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 208
    .local v3, encryptedByte:[B
    if-eqz v3, :cond_0

    .line 211
    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 212
    .local v1, decryptedByte:[B
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5

    move-object v7, v8

    goto :goto_0

    .line 213
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v1           #decryptedByte:[B
    .end local v3           #encryptedByte:[B
    .end local v4           #iv:Ljavax/crypto/spec/IvParameterSpec;
    :catch_0
    move-exception v2

    .line 214
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    .line 215
    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .line 216
    .local v2, e:Ljavax/crypto/NoSuchPaddingException;
    goto :goto_0

    .line 217
    .end local v2           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v2

    .line 218
    .local v2, e:Ljava/security/InvalidKeyException;
    goto :goto_0

    .line 219
    .end local v2           #e:Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v2

    .line 220
    .local v2, e:Ljava/security/InvalidAlgorithmParameterException;
    goto :goto_0

    .line 221
    .end local v2           #e:Ljava/security/InvalidAlgorithmParameterException;
    :catch_4
    move-exception v2

    .line 222
    .local v2, e:Ljavax/crypto/IllegalBlockSizeException;
    goto :goto_0

    .line 223
    .end local v2           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v2

    .line 224
    .local v2, e:Ljavax/crypto/BadPaddingException;
    goto :goto_0
.end method

.method private static byteArrayToString([B)Ljava/lang/String;
    .locals 3
    .parameter "b"

    .prologue
    .line 85
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 86
    .local v1, resultSb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 87
    aget-byte v2, p0, v0

    invoke-static {v2}, Lmiui/util/CoderUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static byteToHexString(B)Ljava/lang/String;
    .locals 5
    .parameter "b"

    .prologue
    .line 93
    move v2, p0

    .line 94
    .local v2, n:I
    if-gez v2, :cond_0

    .line 95
    add-int/lit16 v2, v2, 0x100

    .line 97
    :cond_0
    div-int/lit8 v0, v2, 0x10

    .line 98
    .local v0, d1:I
    rem-int/lit8 v1, v2, 0x10

    .line 99
    .local v1, d2:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lmiui/util/CoderUtils;->hexDigits:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lmiui/util/CoderUtils;->hexDigits:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static final decodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 146
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static final decodeBase64Bytes(Ljava/lang/String;)[B
    .locals 1
    .parameter "string"

    .prologue
    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static final encodeBase64(Ljava/lang/String;)[B
    .locals 1
    .parameter "string"

    .prologue
    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static final encodeBase64([B)[B
    .locals 1
    .parameter "bytes"

    .prologue
    .line 138
    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static final encodeBase64Bytes(Ljava/lang/String;)[B
    .locals 1
    .parameter "string"

    .prologue
    .line 142
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static final encodeMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .parameter "file"

    .prologue
    const/4 v5, 0x0

    .line 52
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 53
    .local v0, buffer:[B
    const/4 v4, 0x0

    .line 56
    .local v4, numRead:I
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    .local v2, fis:Ljava/io/InputStream;
    :try_start_1
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 64
    .local v3, md5:Ljava/security/MessageDigest;
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    .line 65
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 67
    .end local v3           #md5:Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 68
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    :try_start_2
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 81
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    .end local v2           #fis:Ljava/io/InputStream;
    :goto_1
    return-object v5

    .line 57
    :catch_1
    move-exception v1

    .line 58
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 70
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #fis:Ljava/io/InputStream;
    :catch_2
    move-exception v1

    .line 71
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 75
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 76
    :catch_3
    move-exception v1

    .line 77
    :goto_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 74
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 75
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 74
    :goto_3
    throw v5

    .line 75
    .restart local v3       #md5:Ljava/security/MessageDigest;
    :cond_0
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 81
    :goto_4
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5}, Lmiui/util/CoderUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 76
    .end local v3           #md5:Ljava/security/MessageDigest;
    :catch_4
    move-exception v1

    .line 77
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 76
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    :catch_5
    move-exception v1

    goto :goto_2

    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v3       #md5:Ljava/security/MessageDigest;
    :catch_6
    move-exception v1

    .line 77
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public static final encodeMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "string"

    .prologue
    const/4 v3, 0x0

    .line 35
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-object v3

    .line 38
    :cond_1
    const/4 v1, 0x0

    .line 40
    .local v1, digester:Ljava/security/MessageDigest;
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 46
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 47
    .local v0, digest:[B
    invoke-static {v0}, Lmiui/util/CoderUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 41
    .end local v0           #digest:[B
    :catch_0
    move-exception v2

    .line 42
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public static final encodeSHA(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "string"

    .prologue
    const/4 v3, 0x0

    .line 103
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-object v3

    .line 106
    :cond_1
    const/4 v1, 0x0

    .line 108
    .local v1, digester:Ljava/security/MessageDigest;
    :try_start_0
    const-string v4, "SHA"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 113
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 114
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 115
    .local v0, digest:[B
    invoke-static {v0}, Lmiui/util/CoderUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 109
    .end local v0           #digest:[B
    :catch_0
    move-exception v2

    .line 110
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public static final encodeSHABytes(Ljava/lang/String;)[B
    .locals 4
    .parameter "string"

    .prologue
    const/4 v2, 0x0

    .line 119
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-object v2

    .line 122
    :cond_1
    const/4 v0, 0x0

    .line 124
    .local v0, digester:Ljava/security/MessageDigest;
    :try_start_0
    const-string v3, "SHA"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 129
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 130
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    goto :goto_0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method
