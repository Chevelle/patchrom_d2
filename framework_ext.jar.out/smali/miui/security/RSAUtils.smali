.class public Lmiui/security/RSAUtils;
.super Ljava/lang/Object;
.source "RSAUtils.java"


# static fields
.field public static final CIPHER_RSA:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final DEFAULT_RADIX:I = 0x10

.field public static final FLAG_CRLF:I = 0x4

.field public static final FLAG_DEFAULT:I = 0x0

.field public static final FLAG_NO_CLOSE:I = 0x10

.field public static final FLAG_NO_PADDING:I = 0x1

.field public static final FLAG_NO_WRAP:I = 0x2

.field public static final FLAG_URL_SAFE:I = 0x8

.field public static final KEY_RSA:Ljava/lang/String; = "RSA"

.field private static final MAX_DECRYPT_BLOCK:I = 0x80

.field private static final MAX_ENCRYPT_BLOCK:I = 0x75

.field public static final SIGNATURE_MD5_WITH_RSA:Ljava/lang/String; = "MD5withRSA"

.field public static final SIGNATURE_SHA1_WITH_RSA:Ljava/lang/String; = "SHA1withRSA"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;
    .locals 1
    .parameter "content"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 154
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {p0, p1, v0}, Lmiui/security/RSAUtils;->decrypt(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decrypt(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "content"
    .parameter "key"
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, p1, p2}, Lmiui/security/RSAUtils;->decrypt([BLjava/security/Key;Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static decrypt([BLjava/security/Key;)[B
    .locals 1
    .parameter "data"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 146
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {p0, p1, v0}, Lmiui/security/RSAUtils;->decrypt([BLjava/security/Key;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decrypt([BLjava/security/Key;Ljava/lang/String;)[B
    .locals 1
    .parameter "data"
    .parameter "key"
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0}, Lmiui/security/RSAUtils;->doEncryptOrDecrypt([BLjava/security/Key;Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method private static doEncryptOrDecrypt([BLjava/security/Key;Ljava/lang/String;I)[B
    .locals 7
    .parameter "data"
    .parameter "key"
    .parameter "algorithm"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {p3}, Lmiui/security/RSAUtils;->getMaxBlock(I)I

    move-result v3

    .line 96
    .local v3, maxBlock:I
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 97
    .local v1, cipher:Ljavax/crypto/Cipher;
    invoke-virtual {v1, p3, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 98
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 99
    .local v5, out:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 100
    .local v4, offset:I
    :goto_0
    array-length v6, p0

    sub-int/2addr v6, v4

    if-lez v6, :cond_1

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, cache:[B
    array-length v6, p0

    sub-int/2addr v6, v4

    if-le v6, v3, :cond_0

    .line 103
    invoke-virtual {v1, p0, v4, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    .line 107
    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 108
    add-int/2addr v4, v3

    .line 109
    goto :goto_0

    .line 105
    :cond_0
    array-length v6, p0

    sub-int/2addr v6, v4

    invoke-virtual {v1, p0, v4, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    goto :goto_1

    .line 110
    .end local v0           #cache:[B
    :cond_1
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 111
    .local v2, deformedData:[B
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 112
    return-object v2
.end method

.method public static encrypt(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;
    .locals 1
    .parameter "content"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 138
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {p0, p1, v0}, Lmiui/security/RSAUtils;->encrypt(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "content"
    .parameter "key"
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, p1, p2}, Lmiui/security/RSAUtils;->encrypt([BLjava/security/Key;Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static encrypt([BLjava/security/Key;)[B
    .locals 1
    .parameter "data"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 130
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {p0, p1, v0}, Lmiui/security/RSAUtils;->encrypt([BLjava/security/Key;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encrypt([BLjava/security/Key;Ljava/lang/String;)[B
    .locals 1
    .parameter "data"
    .parameter "key"
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lmiui/security/RSAUtils;->doEncryptOrDecrypt([BLjava/security/Key;Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method private static getMaxBlock(I)I
    .locals 2
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 117
    const/16 v0, 0x75

    .line 119
    :goto_0
    return v0

    .line 118
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 119
    const/16 v0, 0x80

    goto :goto_0

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong operation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/security/RSAUtils;->getPrivateKey(Ljava/lang/String;I)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public static getPrivateKey(Ljava/lang/String;I)Ljava/security/PrivateKey;
    .locals 2
    .parameter "key"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 87
    .local v0, keyBytes:[B
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-static {v1}, Lmiui/security/RSAUtils;->getPrivateKey(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    return-object v1
.end method

.method public static getPrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .parameter "modulus"
    .parameter "exponent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    const/16 v0, 0x10

    invoke-static {p0, p1, v0}, Lmiui/security/RSAUtils;->getPrivateKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public static getPrivateKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/security/PrivateKey;
    .locals 3
    .parameter "modulus"
    .parameter "exponent"
    .parameter "radix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p0, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 77
    .local v1, m:Ljava/math/BigInteger;
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 78
    .local v0, e:Ljava/math/BigInteger;
    new-instance v2, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-direct {v2, v1, v0}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v2}, Lmiui/security/RSAUtils;->getPrivateKey(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    return-object v2
.end method

.method public static getPrivateKey(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 3
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 71
    .local v0, keyFactory:Ljava/security/KeyFactory;
    invoke-virtual {v0, p0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 72
    .local v1, privateKey:Ljava/security/PrivateKey;
    return-object v1
.end method

.method public static getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/security/RSAUtils;->getPublicKey(Ljava/lang/String;I)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public static getPublicKey(Ljava/lang/String;I)Ljava/security/PublicKey;
    .locals 2
    .parameter "key"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 62
    .local v0, keyBytes:[B
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-static {v1}, Lmiui/security/RSAUtils;->getPublicKey(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    return-object v1
.end method

.method public static getPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 1
    .parameter "modulus"
    .parameter "exponent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    const/16 v0, 0x10

    invoke-static {p0, p1, v0}, Lmiui/security/RSAUtils;->getPublicKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public static getPublicKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/security/PublicKey;
    .locals 3
    .parameter "modulus"
    .parameter "exponent"
    .parameter "radix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p0, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 52
    .local v1, m:Ljava/math/BigInteger;
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 53
    .local v0, e:Ljava/math/BigInteger;
    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v2, v1, v0}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v2}, Lmiui/security/RSAUtils;->getPublicKey(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    return-object v2
.end method

.method public static getPublicKey(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 3
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 46
    .local v0, keyFactory:Ljava/security/KeyFactory;
    invoke-virtual {v0, p0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    .line 47
    .local v1, publicKey:Ljava/security/PublicKey;
    return-object v1
.end method

.method public static sign(Ljava/lang/String;Ljava/security/PrivateKey;)Ljava/lang/String;
    .locals 1
    .parameter "content"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 173
    const-string v0, "SHA1withRSA"

    invoke-static {p0, p1, v0}, Lmiui/security/RSAUtils;->sign(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sign(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "content"
    .parameter "key"
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, p1, p2}, Lmiui/security/RSAUtils;->sign([BLjava/security/PrivateKey;Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static sign([BLjava/security/PrivateKey;)[B
    .locals 1
    .parameter "data"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 165
    const-string v0, "SHA1withRSA"

    invoke-static {p0, p1, v0}, Lmiui/security/RSAUtils;->sign([BLjava/security/PrivateKey;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static sign([BLjava/security/PrivateKey;Ljava/lang/String;)[B
    .locals 2
    .parameter "data"
    .parameter "key"
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 159
    .local v0, signature:Ljava/security/Signature;
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 160
    invoke-virtual {v0, p0}, Ljava/security/Signature;->update([B)V

    .line 161
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    return-object v1
.end method

.method public static verify(Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;)Z
    .locals 1
    .parameter "content"
    .parameter "key"
    .parameter "sign"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 192
    const-string v0, "SHA1withRSA"

    invoke-static {p0, p1, p2, v0}, Lmiui/security/RSAUtils;->verify(Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static verify(Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "content"
    .parameter "key"
    .parameter "sign"
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, p1, v1, p3}, Lmiui/security/RSAUtils;->verify([BLjava/security/PublicKey;[BLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static verify([BLjava/security/PublicKey;[B)Z
    .locals 1
    .parameter "data"
    .parameter "key"
    .parameter "sign"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 184
    const-string v0, "SHA1withRSA"

    invoke-static {p0, p1, p2, v0}, Lmiui/security/RSAUtils;->verify([BLjava/security/PublicKey;[BLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static verify([BLjava/security/PublicKey;[BLjava/lang/String;)Z
    .locals 2
    .parameter "data"
    .parameter "key"
    .parameter "sign"
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 177
    invoke-static {p3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 178
    .local v0, signature:Ljava/security/Signature;
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 179
    invoke-virtual {v0, p0}, Ljava/security/Signature;->update([B)V

    .line 180
    invoke-virtual {v0, p2}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    return v1
.end method
