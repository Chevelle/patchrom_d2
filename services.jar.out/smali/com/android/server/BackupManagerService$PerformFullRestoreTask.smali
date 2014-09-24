.class Lcom/android/server/BackupManagerService$PerformFullRestoreTask;
.super Lcom/android/server/BackupManagerService$ObbServiceClient;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformFullRestoreTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;,
        Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;,
        Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;
    }
.end annotation


# instance fields
.field mAgent:Landroid/app/IBackupAgent;

.field mAgentPackage:Ljava/lang/String;

.field mBytes:J

.field final mClearedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentPassword:Ljava/lang/String;

.field mDecryptPassword:Ljava/lang/String;

.field final mDeleteObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;

.field mInputFile:Landroid/os/ParcelFileDescriptor;

.field final mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

.field mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mManifestSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field mObbConnection:Lcom/android/server/BackupManagerService$FullBackupObbConnection;

.field mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field final mPackageInstallers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPackagePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/BackupManagerService$RestorePolicy;",
            ">;"
        }
    .end annotation
.end field

.field mPipes:[Landroid/os/ParcelFileDescriptor;

.field mTargetApp:Landroid/content/pm/ApplicationInfo;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2
    .parameter
    .parameter "fd"
    .parameter "curPassword"
    .parameter "decryptPassword"
    .parameter "observer"
    .parameter "latch"

    .prologue
    const/4 v1, 0x0

    .line 3231
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService$ObbServiceClient;-><init>(Lcom/android/server/BackupManagerService;)V

    .line 3211
    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObbConnection:Lcom/android/server/BackupManagerService$FullBackupObbConnection;

    .line 3212
    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 3217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    .line 3221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    .line 3224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    .line 3228
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    .line 3863
    new-instance v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    invoke-direct {v0, p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;-><init>(Lcom/android/server/BackupManagerService$PerformFullRestoreTask;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    .line 3864
    new-instance v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;

    invoke-direct {v0, p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;-><init>(Lcom/android/server/BackupManagerService$PerformFullRestoreTask;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDeleteObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;

    .line 3232
    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    .line 3233
    iput-object p3, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mCurrentPassword:Ljava/lang/String;

    .line 3234
    iput-object p4, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDecryptPassword:Ljava/lang/String;

    .line 3235
    iput-object p5, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 3236
    iput-object p6, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3237
    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 3238
    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgentPackage:Ljava/lang/String;

    .line 3239
    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 3240
    new-instance v0, Lcom/android/server/BackupManagerService$FullBackupObbConnection;

    invoke-direct {v0, p1}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;-><init>(Lcom/android/server/BackupManagerService;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObbConnection:Lcom/android/server/BackupManagerService$FullBackupObbConnection;

    .line 3244
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3245
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    const-string v1, "com.android.providers.settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3247
    return-void
.end method

.method private HEXLOG([B)V
    .locals 11
    .parameter "block"

    .prologue
    const/16 v5, 0x10

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 4250
    const/4 v3, 0x0

    .line 4251
    .local v3, offset:I
    array-length v4, p1

    .line 4252
    .local v4, todo:I
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4253
    .local v0, buf:Ljava/lang/StringBuilder;
    :goto_0
    if-lez v4, :cond_2

    .line 4254
    const-string v6, "%04x   "

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4255
    if-le v4, v5, :cond_0

    move v2, v5

    .line 4256
    .local v2, numThisLine:I
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_1

    .line 4257
    const-string v6, "%02x "

    new-array v7, v10, [Ljava/lang/Object;

    add-int v8, v3, v1

    aget-byte v8, p1, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4256
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1           #i:I
    .end local v2           #numThisLine:I
    :cond_0
    move v2, v4

    .line 4255
    goto :goto_1

    .line 4259
    .restart local v1       #i:I
    .restart local v2       #numThisLine:I
    :cond_1
    const-string v6, "hexdump"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4260
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4261
    sub-int/2addr v4, v2

    .line 4262
    add-int/2addr v3, v2

    .line 4263
    goto :goto_0

    .line 4264
    .end local v1           #i:I
    .end local v2           #numThisLine:I
    :cond_2
    return-void
.end method


# virtual methods
.method attemptMasterKeyDecryption(Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;
    .locals 24
    .parameter "algorithm"
    .parameter "userSalt"
    .parameter "ckSalt"
    .parameter "rounds"
    .parameter "userIvHex"
    .parameter "masterKeyBlobHex"
    .parameter "rawInStream"
    .parameter "doLog"

    .prologue
    .line 3395
    const/16 v17, 0x0

    .line 3398
    .local v17, result:Ljava/io/InputStream;
    :try_start_0
    const-string v20, "AES/CBC/PKCS5Padding"

    invoke-static/range {v20 .. v20}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 3399
    .local v6, c:Ljavax/crypto/Cipher;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDecryptPassword:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, p2

    move/from16 v4, p4

    #calls: Lcom/android/server/BackupManagerService;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BackupManagerService;->access$1500(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v19

    .line 3401
    .local v19, userKey:Ljavax/crypto/SecretKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    #calls: Lcom/android/server/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B
    invoke-static {v0, v1}, Lcom/android/server/BackupManagerService;->access$1900(Lcom/android/server/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v5

    .line 3402
    .local v5, IV:[B
    new-instance v9, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v9, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 3403
    .local v9, ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    const/16 v20, 0x2

    new-instance v21, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface/range {v19 .. v19}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v22

    const-string v23, "AES"

    invoke-direct/range {v21 .. v23}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 3406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p6

    #calls: Lcom/android/server/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B
    invoke-static {v0, v1}, Lcom/android/server/BackupManagerService;->access$1900(Lcom/android/server/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v14

    .line 3407
    .local v14, mkCipher:[B
    invoke-virtual {v6, v14}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v12

    .line 3410
    .local v12, mkBlob:[B
    const/4 v15, 0x0

    .line 3411
    .local v15, offset:I
    add-int/lit8 v16, v15, 0x1

    .end local v15           #offset:I
    .local v16, offset:I
    aget-byte v10, v12, v15

    .line 3412
    .local v10, len:I
    add-int/lit8 v20, v10, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v12, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 3413
    add-int/lit8 v15, v10, 0x1

    .line 3415
    .end local v16           #offset:I
    .restart local v15       #offset:I
    add-int/lit8 v16, v15, 0x1

    .end local v15           #offset:I
    .restart local v16       #offset:I
    aget-byte v10, v12, v15

    .line 3416
    add-int v20, v16, v10

    move/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v12, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    .line 3418
    .local v11, mk:[B
    add-int v15, v16, v10

    .line 3420
    .end local v16           #offset:I
    .restart local v15       #offset:I
    add-int/lit8 v16, v15, 0x1

    .end local v15           #offset:I
    .restart local v16       #offset:I
    aget-byte v10, v12, v15

    .line 3421
    add-int v20, v16, v10

    move/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v12, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    .line 3425
    .local v13, mkChecksum:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    #calls: Lcom/android/server/BackupManagerService;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B
    invoke-static {v0, v1, v11, v2, v3}, Lcom/android/server/BackupManagerService;->access$1800(Lcom/android/server/BackupManagerService;Ljava/lang/String;[B[BI)[B

    move-result-object v7

    .line 3426
    .local v7, calculatedCk:[B
    invoke-static {v7, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 3427
    new-instance v9, Ljavax/crypto/spec/IvParameterSpec;

    .end local v9           #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    invoke-direct {v9, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 3428
    .restart local v9       #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    const/16 v20, 0x2

    new-instance v21, Ljavax/crypto/spec/SecretKeySpec;

    const-string v22, "AES"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v11, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 3432
    new-instance v18, Ljavax/crypto/CipherInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p7

    invoke-direct {v0, v1, v6}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .end local v17           #result:Ljava/io/InputStream;
    .local v18, result:Ljava/io/InputStream;
    move-object/from16 v17, v18

    .line 3452
    .end local v5           #IV:[B
    .end local v6           #c:Ljavax/crypto/Cipher;
    .end local v7           #calculatedCk:[B
    .end local v9           #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    .end local v10           #len:I
    .end local v11           #mk:[B
    .end local v12           #mkBlob:[B
    .end local v13           #mkChecksum:[B
    .end local v14           #mkCipher:[B
    .end local v16           #offset:I
    .end local v18           #result:Ljava/io/InputStream;
    .end local v19           #userKey:Ljavax/crypto/SecretKey;
    .restart local v17       #result:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v17

    .line 3433
    .restart local v5       #IV:[B
    .restart local v6       #c:Ljavax/crypto/Cipher;
    .restart local v7       #calculatedCk:[B
    .restart local v9       #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v10       #len:I
    .restart local v11       #mk:[B
    .restart local v12       #mkBlob:[B
    .restart local v13       #mkChecksum:[B
    .restart local v14       #mkCipher:[B
    .restart local v16       #offset:I
    .restart local v19       #userKey:Ljavax/crypto/SecretKey;
    :cond_1
    if-eqz p8, :cond_0

    const-string v20, "BackupManagerService"

    const-string v21, "Incorrect password"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 3434
    .end local v5           #IV:[B
    .end local v6           #c:Ljavax/crypto/Cipher;
    .end local v7           #calculatedCk:[B
    .end local v9           #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    .end local v10           #len:I
    .end local v11           #mk:[B
    .end local v12           #mkBlob:[B
    .end local v13           #mkChecksum:[B
    .end local v14           #mkCipher:[B
    .end local v16           #offset:I
    .end local v19           #userKey:Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v8

    .line 3435
    .local v8, e:Ljava/security/InvalidAlgorithmParameterException;
    if-eqz p8, :cond_0

    const-string v20, "BackupManagerService"

    const-string v21, "Needed parameter spec unavailable!"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3436
    .end local v8           #e:Ljava/security/InvalidAlgorithmParameterException;
    :catch_1
    move-exception v8

    .line 3441
    .local v8, e:Ljavax/crypto/BadPaddingException;
    if-eqz p8, :cond_0

    const-string v20, "BackupManagerService"

    const-string v21, "Incorrect password"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3442
    .end local v8           #e:Ljavax/crypto/BadPaddingException;
    :catch_2
    move-exception v8

    .line 3443
    .local v8, e:Ljavax/crypto/IllegalBlockSizeException;
    if-eqz p8, :cond_0

    const-string v20, "BackupManagerService"

    const-string v21, "Invalid block size in master key"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3444
    .end local v8           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_3
    move-exception v8

    .line 3445
    .local v8, e:Ljava/security/NoSuchAlgorithmException;
    if-eqz p8, :cond_0

    const-string v20, "BackupManagerService"

    const-string v21, "Needed decryption algorithm unavailable!"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3446
    .end local v8           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_4
    move-exception v8

    .line 3447
    .local v8, e:Ljavax/crypto/NoSuchPaddingException;
    if-eqz p8, :cond_0

    const-string v20, "BackupManagerService"

    const-string v21, "Needed padding mechanism unavailable!"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3448
    .end local v8           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_5
    move-exception v8

    .line 3449
    .local v8, e:Ljava/security/InvalidKeyException;
    if-eqz p8, :cond_0

    const-string v20, "BackupManagerService"

    const-string v21, "Illegal password; aborting"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method decodeAesHeaderAndInitialize(Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;
    .locals 14
    .parameter "encryptionName"
    .parameter "pbkdf2Fallback"
    .parameter "rawInStream"

    .prologue
    .line 3457
    const/4 v12, 0x0

    .line 3459
    .local v12, result:Ljava/io/InputStream;
    :try_start_0
    const-string v1, "AES-256"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3461
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v13

    .line 3462
    .local v13, userSaltHex:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    #calls: Lcom/android/server/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B
    invoke-static {v1, v13}, Lcom/android/server/BackupManagerService;->access$1900(Lcom/android/server/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v3

    .line 3464
    .local v3, userSalt:[B
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10

    .line 3465
    .local v10, ckSaltHex:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    #calls: Lcom/android/server/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B
    invoke-static {v1, v10}, Lcom/android/server/BackupManagerService;->access$1900(Lcom/android/server/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v4

    .line 3467
    .local v4, ckSalt:[B
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3468
    .local v5, rounds:I
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 3470
    .local v6, userIvHex:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 3473
    .local v7, masterKeyBlobHex:Ljava/lang/String;
    const-string v2, "PBKDF2WithHmacSHA1"

    const/4 v9, 0x0

    move-object v1, p0

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->attemptMasterKeyDecryption(Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v12

    .line 3475
    if-nez v12, :cond_0

    if-eqz p2, :cond_0

    .line 3476
    const-string v2, "PBKDF2WithHmacSHA1And8bit"

    const/4 v9, 0x1

    move-object v1, p0

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->attemptMasterKeyDecryption(Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v12

    .line 3486
    .end local v3           #userSalt:[B
    .end local v4           #ckSalt:[B
    .end local v5           #rounds:I
    .end local v6           #userIvHex:Ljava/lang/String;
    .end local v7           #masterKeyBlobHex:Ljava/lang/String;
    .end local v10           #ckSaltHex:Ljava/lang/String;
    .end local v13           #userSaltHex:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v12

    .line 3479
    :cond_1
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported encryption method: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3480
    :catch_0
    move-exception v11

    .line 3481
    .local v11, e:Ljava/lang/NumberFormatException;
    const-string v1, "BackupManagerService"

    const-string v2, "Can\'t parse restore data header"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3482
    .end local v11           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v11

    .line 3483
    .local v11, e:Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    const-string v2, "Can\'t read input header"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method dumpFileMetadata(Lcom/android/server/BackupManagerService$FileMetadata;)V
    .locals 13
    .parameter "info"

    .prologue
    const/16 v6, 0x78

    const/16 v5, 0x77

    const/16 v4, 0x72

    const-wide/16 v11, 0x0

    const/16 v3, 0x2d

    .line 4123
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4126
    .local v0, b:Ljava/lang/StringBuilder;
    iget v2, p1, Lcom/android/server/BackupManagerService$FileMetadata;->type:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_0

    const/16 v2, 0x64

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4127
    iget-wide v7, p1, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v9, 0x100

    and-long/2addr v7, v9

    cmp-long v2, v7, v11

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4128
    iget-wide v7, p1, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v9, 0x80

    and-long/2addr v7, v9

    cmp-long v2, v7, v11

    if-eqz v2, :cond_2

    move v2, v5

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4129
    iget-wide v7, p1, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v9, 0x40

    and-long/2addr v7, v9

    cmp-long v2, v7, v11

    if-eqz v2, :cond_3

    move v2, v6

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4130
    iget-wide v7, p1, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v9, 0x20

    and-long/2addr v7, v9

    cmp-long v2, v7, v11

    if-eqz v2, :cond_4

    move v2, v4

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4131
    iget-wide v7, p1, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v9, 0x10

    and-long/2addr v7, v9

    cmp-long v2, v7, v11

    if-eqz v2, :cond_5

    move v2, v5

    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4132
    iget-wide v7, p1, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v9, 0x8

    and-long/2addr v7, v9

    cmp-long v2, v7, v11

    if-eqz v2, :cond_6

    move v2, v6

    :goto_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4133
    iget-wide v7, p1, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v9, 0x4

    and-long/2addr v7, v9

    cmp-long v2, v7, v11

    if-eqz v2, :cond_7

    :goto_7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4134
    iget-wide v7, p1, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v9, 0x2

    and-long/2addr v7, v9

    cmp-long v2, v7, v11

    if-eqz v2, :cond_8

    :goto_8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4135
    iget-wide v4, p1, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v7, 0x1

    and-long/2addr v4, v7

    cmp-long v2, v4, v11

    if-eqz v2, :cond_9

    :goto_9
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4136
    const-string v2, " %9d "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p1, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4138
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p1, Lcom/android/server/BackupManagerService$FileMetadata;->mtime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 4139
    .local v1, stamp:Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MMM dd HH:mm:ss "

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4141
    iget-object v2, p1, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4142
    const-string v2, " :: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4143
    iget-object v2, p1, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4144
    const-string v2, " :: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4145
    iget-object v2, p1, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4147
    const-string v2, "BackupManagerService"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4149
    return-void

    .end local v1           #stamp:Ljava/util/Date;
    :cond_0
    move v2, v3

    .line 4126
    goto/16 :goto_0

    :cond_1
    move v2, v3

    .line 4127
    goto/16 :goto_1

    :cond_2
    move v2, v3

    .line 4128
    goto/16 :goto_2

    :cond_3
    move v2, v3

    .line 4129
    goto/16 :goto_3

    :cond_4
    move v2, v3

    .line 4130
    goto/16 :goto_4

    :cond_5
    move v2, v3

    .line 4131
    goto/16 :goto_5

    :cond_6
    move v2, v3

    .line 4132
    goto/16 :goto_6

    :cond_7
    move v4, v3

    .line 4133
    goto :goto_7

    :cond_8
    move v5, v3

    .line 4134
    goto :goto_8

    :cond_9
    move v6, v3

    .line 4135
    goto :goto_9
.end method

.method extractLine([BI[Ljava/lang/String;)I
    .locals 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "outStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4104
    array-length v1, p1

    .line 4105
    .local v1, end:I
    if-lt p2, v1, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Incomplete data"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4108
    :cond_0
    move v2, p2

    .local v2, pos:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 4109
    aget-byte v0, p1, v2

    .line 4112
    .local v0, c:B
    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    .line 4116
    .end local v0           #c:B
    :cond_1
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    sub-int v5, v2, p2

    invoke-direct {v4, p1, p2, v5}, Ljava/lang/String;-><init>([BII)V

    aput-object v4, p3, v3

    .line 4117
    add-int/lit8 v2, v2, 0x1

    .line 4118
    return v2

    .line 4108
    .restart local v0       #c:B
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method extractRadix([BIII)J
    .locals 9
    .parameter "data"
    .parameter "offset"
    .parameter "maxChars"
    .parameter "radix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4352
    const-wide/16 v3, 0x0

    .line 4353
    .local v3, value:J
    add-int v1, p2, p3

    .line 4354
    .local v1, end:I
    move v2, p2

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 4355
    aget-byte v0, p1, v2

    .line 4357
    .local v0, b:B
    if-eqz v0, :cond_0

    const/16 v5, 0x20

    if-ne v0, v5, :cond_1

    .line 4363
    .end local v0           #b:B
    :cond_0
    return-wide v3

    .line 4358
    .restart local v0       #b:B
    :cond_1
    const/16 v5, 0x30

    if-lt v0, v5, :cond_2

    add-int/lit8 v5, p4, 0x30

    add-int/lit8 v5, v5, -0x1

    if-le v0, v5, :cond_3

    .line 4359
    :cond_2
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid number in header: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' for radix "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4361
    :cond_3
    int-to-long v5, p4

    mul-long/2addr v5, v3

    add-int/lit8 v7, v0, -0x30

    int-to-long v7, v7

    add-long v3, v5, v7

    .line 4354
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method extractString([BII)Ljava/lang/String;
    .locals 5
    .parameter "data"
    .parameter "offset"
    .parameter "maxChars"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4367
    add-int v0, p2, p3

    .line 4368
    .local v0, end:I
    move v1, p2

    .line 4370
    .local v1, eos:I
    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4371
    :cond_0
    new-instance v2, Ljava/lang/String;

    sub-int v3, v1, p2

    const-string v4, "US-ASCII"

    invoke-direct {v2, p1, p2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2
.end method

.method installApk(Lcom/android/server/BackupManagerService$FileMetadata;Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 22
    .parameter "info"
    .parameter "installerPackage"
    .parameter "instream"

    .prologue
    .line 3867
    const/4 v9, 0x1

    .line 3869
    .local v9, okay:Z
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Installing from backup: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3873
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mDataDir:Ljava/io/File;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3875
    .local v4, apkFile:Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3876
    .local v5, apkStream:Ljava/io/FileOutputStream;
    const v18, 0x8000

    move/from16 v0, v18

    new-array v6, v0, [B

    .line 3877
    .local v6, buffer:[B
    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    .line 3878
    .local v13, size:J
    :goto_0
    const-wide/16 v18, 0x0

    cmp-long v18, v13, v18

    if-lez v18, :cond_1

    .line 3879
    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v18, v18, v13

    if-gez v18, :cond_0

    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v15, v0

    .line 3880
    .local v15, toRead:J
    :goto_1
    const/16 v18, 0x0

    long-to-int v0, v15

    move/from16 v19, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 3881
    .local v7, didRead:I
    if-ltz v7, :cond_1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    move-wide/from16 v18, v0

    int-to-long v0, v7

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    .line 3882
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 3883
    int-to-long v0, v7

    move-wide/from16 v18, v0

    sub-long v13, v13, v18

    .line 3884
    goto :goto_0

    .end local v7           #didRead:I
    .end local v15           #toRead:J
    :cond_0
    move-wide v15, v13

    .line 3879
    goto :goto_1

    .line 3885
    :cond_1
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 3888
    const/16 v18, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 3891
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    .line 3892
    .local v10, packageUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->reset()V

    .line 3893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/BackupManagerService;->access$600(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    move-object/from16 v19, v0

    const/16 v20, 0x22

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, p2

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 3896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->waitForCompletion()V

    .line 3898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->getResult()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 3902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    sget-object v19, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/BackupManagerService$RestorePolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 3903
    const/4 v9, 0x0

    .line 3962
    .end local v5           #apkStream:Ljava/io/FileOutputStream;
    .end local v6           #buffer:[B
    .end local v10           #packageUri:Landroid/net/Uri;
    .end local v13           #size:J
    :cond_2
    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 3965
    return v9

    .line 3907
    .restart local v5       #apkStream:Ljava/io/FileOutputStream;
    .restart local v6       #buffer:[B
    .restart local v10       #packageUri:Landroid/net/Uri;
    .restart local v13       #size:J
    :cond_3
    const/16 v17, 0x0

    .line 3908
    .local v17, uninstall:Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 3909
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore stream claimed to include apk for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " but apk was really "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3913
    const/4 v9, 0x0

    .line 3914
    const/16 v17, 0x1

    .line 3951
    :cond_4
    :goto_3
    if-eqz v17, :cond_2

    .line 3952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDeleteObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;->reset()V

    .line 3953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/BackupManagerService;->access$600(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDeleteObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 3955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDeleteObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;->waitForCompletion()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 3958
    .end local v5           #apkStream:Ljava/io/FileOutputStream;
    .end local v6           #buffer:[B
    .end local v10           #packageUri:Landroid/net/Uri;
    .end local v13           #size:J
    .end local v17           #uninstall:Z
    :catch_0
    move-exception v8

    .line 3959
    .local v8, e:Ljava/io/IOException;
    :try_start_2
    const-string v18, "BackupManagerService"

    const-string v19, "Unable to transcribe restored apk for install"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3960
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 3917
    .end local v8           #e:Ljava/io/IOException;
    .restart local v5       #apkStream:Ljava/io/FileOutputStream;
    .restart local v6       #buffer:[B
    .restart local v10       #packageUri:Landroid/net/Uri;
    .restart local v13       #size:J
    .restart local v17       #uninstall:Z
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/BackupManagerService;->access$600(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x40

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 3919
    .local v11, pkg:Landroid/content/pm/PackageInfo;
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    const v19, 0x8000

    and-int v18, v18, v19

    if-nez v18, :cond_6

    .line 3920
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore stream contains apk of package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " but it disallows backup/restore"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3922
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 3925
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/content/pm/Signature;

    .line 3926
    .local v12, sigs:[Landroid/content/pm/Signature;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/server/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    invoke-static {v0, v12, v11}, Lcom/android/server/BackupManagerService;->access$2000(Lcom/android/server/BackupManagerService;[Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 3929
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    const/16 v19, 0x2710

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    .line 3931
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Installed app "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " has restricted uid and no agent"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3933
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 3936
    :cond_7
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Installed app "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " signatures do not match restore manifest"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3938
    const/4 v9, 0x0

    .line 3939
    const/16 v17, 0x1

    goto/16 :goto_3

    .line 3942
    .end local v11           #pkg:Landroid/content/pm/PackageInfo;
    .end local v12           #sigs:[Landroid/content/pm/Signature;
    :catch_1
    move-exception v8

    .line 3943
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Install of package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " succeeded but now not found"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3945
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 3962
    .end local v5           #apkStream:Ljava/io/FileOutputStream;
    .end local v6           #buffer:[B
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10           #packageUri:Landroid/net/Uri;
    .end local v13           #size:J
    .end local v17           #uninstall:Z
    :catchall_0
    move-exception v18

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    throw v18
.end method

.method readAppManifest(Lcom/android/server/BackupManagerService$FileMetadata;Ljava/io/InputStream;)Lcom/android/server/BackupManagerService$RestorePolicy;
    .locals 22
    .parameter "info"
    .parameter "instream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3985
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x10000

    cmp-long v18, v18, v20

    if-lez v18, :cond_0

    .line 3986
    new-instance v18, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore manifest too big; corrupt? size="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 3989
    :cond_0
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v4, v0, [B

    .line 3990
    .local v4, buffer:[B
    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-nez v18, :cond_1

    .line 3991
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    .line 3994
    sget-object v14, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    .line 3995
    .local v14, policy:Lcom/android/server/BackupManagerService$RestorePolicy;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 3996
    .local v16, str:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 3999
    .local v11, offset:I
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 4000
    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 4001
    .local v17, version:I
    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 4002
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 4003
    const/16 v18, 0x0

    aget-object v9, v16, v18

    .line 4005
    .local v9, manifestPackage:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 4006
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 4007
    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 4008
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 4009
    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 4010
    .local v13, platformVersion:I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 4011
    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_2

    const/16 v18, 0x0

    aget-object v18, v16, v18

    :goto_0
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/BackupManagerService$FileMetadata;->installerPackageName:Ljava/lang/String;

    .line 4012
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 4013
    const/16 v18, 0x0

    aget-object v18, v16, v18

    const-string v19, "1"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 4014
    .local v7, hasApk:Z
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 4015
    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 4016
    .local v10, numSigs:I
    if-lez v10, :cond_a

    .line 4017
    new-array v15, v10, [Landroid/content/pm/Signature;

    .line 4018
    .local v15, sigs:[Landroid/content/pm/Signature;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v10, :cond_3

    .line 4019
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 4020
    new-instance v18, Landroid/content/pm/Signature;

    const/16 v19, 0x0

    aget-object v19, v16, v19

    invoke-direct/range {v18 .. v19}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v18, v15, v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4018
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3992
    .end local v7           #hasApk:Z
    .end local v8           #i:I
    .end local v9           #manifestPackage:Ljava/lang/String;
    .end local v10           #numSigs:I
    .end local v11           #offset:I
    .end local v13           #platformVersion:I
    .end local v14           #policy:Lcom/android/server/BackupManagerService$RestorePolicy;
    .end local v15           #sigs:[Landroid/content/pm/Signature;
    .end local v16           #str:[Ljava/lang/String;
    .end local v17           #version:I
    :cond_1
    new-instance v18, Ljava/io/IOException;

    const-string v19, "Unexpected EOF in manifest"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 4011
    .restart local v9       #manifestPackage:Ljava/lang/String;
    .restart local v11       #offset:I
    .restart local v13       #platformVersion:I
    .restart local v14       #policy:Lcom/android/server/BackupManagerService$RestorePolicy;
    .restart local v16       #str:[Ljava/lang/String;
    .restart local v17       #version:I
    :cond_2
    const/16 v18, 0x0

    goto :goto_0

    .line 4022
    .restart local v7       #hasApk:Z
    .restart local v8       #i:I
    .restart local v10       #numSigs:I
    .restart local v15       #sigs:[Landroid/content/pm/Signature;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 4026
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/BackupManagerService;->access$600(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x40

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 4029
    .local v12, pkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 4030
    .local v6, flags:I
    const v18, 0x8000

    and-int v18, v18, v6

    if-eqz v18, :cond_9

    .line 4033
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    const/16 v19, 0x2710

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 4042
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/server/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    invoke-static {v0, v15, v12}, Lcom/android/server/BackupManagerService;->access$2000(Lcom/android/server/BackupManagerService;[Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 4043
    iget v0, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, v17

    if-lt v0, v1, :cond_6

    .line 4044
    const-string v18, "BackupManagerService"

    const-string v19, "Sig + version match; taking data"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4045
    sget-object v14, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/BackupManagerService$RestorePolicy;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4076
    .end local v6           #flags:I
    .end local v12           #pkgInfo:Landroid/content/pm/PackageInfo;
    :goto_2
    :try_start_3
    sget-object v18, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v18

    if-ne v14, v0, :cond_5

    if-nez v7, :cond_5

    .line 4077
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Cannot restore package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " without the matching .apk"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 4098
    .end local v7           #hasApk:Z
    .end local v8           #i:I
    .end local v9           #manifestPackage:Ljava/lang/String;
    .end local v10           #numSigs:I
    .end local v13           #platformVersion:I
    .end local v15           #sigs:[Landroid/content/pm/Signature;
    .end local v17           #version:I
    :cond_5
    :goto_3
    return-object v14

    .line 4050
    .restart local v6       #flags:I
    .restart local v7       #hasApk:Z
    .restart local v8       #i:I
    .restart local v9       #manifestPackage:Ljava/lang/String;
    .restart local v10       #numSigs:I
    .restart local v12       #pkgInfo:Landroid/content/pm/PackageInfo;
    .restart local v13       #platformVersion:I
    .restart local v15       #sigs:[Landroid/content/pm/Signature;
    .restart local v17       #version:I
    :cond_6
    :try_start_4
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Data version "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is newer than installed version "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " - requiring apk"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4053
    sget-object v14, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/BackupManagerService$RestorePolicy;

    goto :goto_2

    .line 4056
    :cond_7
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore manifest signatures do not match installed application for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 4067
    .end local v6           #flags:I
    .end local v12           #pkgInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v5

    .line 4071
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_5
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " not installed; requiring apk in dataset"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4073
    sget-object v14, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/BackupManagerService$RestorePolicy;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 4060
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6       #flags:I
    .restart local v12       #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_8
    :try_start_6
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is system level with no agent"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2

    .line 4092
    .end local v6           #flags:I
    .end local v7           #hasApk:Z
    .end local v8           #i:I
    .end local v9           #manifestPackage:Ljava/lang/String;
    .end local v10           #numSigs:I
    .end local v12           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v13           #platformVersion:I
    .end local v15           #sigs:[Landroid/content/pm/Signature;
    .end local v17           #version:I
    :catch_1
    move-exception v5

    .line 4093
    .local v5, e:Ljava/lang/NumberFormatException;
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Corrupt restore manifest for package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4064
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .restart local v6       #flags:I
    .restart local v7       #hasApk:Z
    .restart local v8       #i:I
    .restart local v9       #manifestPackage:Ljava/lang/String;
    .restart local v10       #numSigs:I
    .restart local v12       #pkgInfo:Landroid/content/pm/PackageInfo;
    .restart local v13       #platformVersion:I
    .restart local v15       #sigs:[Landroid/content/pm/Signature;
    .restart local v17       #version:I
    :cond_9
    :try_start_7
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore manifest from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " but allowBackup=false"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_2

    .line 4094
    .end local v6           #flags:I
    .end local v7           #hasApk:Z
    .end local v8           #i:I
    .end local v9           #manifestPackage:Ljava/lang/String;
    .end local v10           #numSigs:I
    .end local v12           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v13           #platformVersion:I
    .end local v15           #sigs:[Landroid/content/pm/Signature;
    .end local v17           #version:I
    :catch_2
    move-exception v5

    .line 4095
    .local v5, e:Ljava/lang/IllegalArgumentException;
    const-string v18, "BackupManagerService"

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4081
    .end local v5           #e:Ljava/lang/IllegalArgumentException;
    .restart local v7       #hasApk:Z
    .restart local v9       #manifestPackage:Ljava/lang/String;
    .restart local v10       #numSigs:I
    .restart local v13       #platformVersion:I
    .restart local v17       #version:I
    :cond_a
    :try_start_8
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Missing signature on backed-up package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4085
    .end local v7           #hasApk:Z
    .end local v10           #numSigs:I
    .end local v13           #platformVersion:I
    :cond_b
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Expected package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " but restore manifest claims "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4089
    .end local v9           #manifestPackage:Ljava/lang/String;
    :cond_c
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unknown restore manifest version "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " for package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_3
.end method

.method readExactly(Ljava/io/InputStream;[BII)I
    .locals 4
    .parameter "in"
    .parameter "buffer"
    .parameter "offset"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4271
    if-gtz p4, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "size must be > 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4273
    :cond_0
    const/4 v1, 0x0

    .line 4274
    .local v1, soFar:I
    :goto_0
    if-ge v1, p4, :cond_1

    .line 4275
    add-int v2, p3, v1

    sub-int v3, p4, v1

    invoke-virtual {p1, p2, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 4276
    .local v0, nRead:I
    if-gtz v0, :cond_2

    .line 4282
    .end local v0           #nRead:I
    :cond_1
    return v1

    .line 4280
    .restart local v0       #nRead:I
    :cond_2
    add-int/2addr v1, v0

    .line 4281
    goto :goto_0
.end method

.method readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3384
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x50

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3385
    .local v0, buffer:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, c:I
    if-ltz v1, :cond_0

    .line 3386
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 3389
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3387
    :cond_1
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method readPaxExtendedHeader(Ljava/io/InputStream;Lcom/android/server/BackupManagerService$FileMetadata;)Z
    .locals 15
    .parameter "instream"
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4297
    move-object/from16 v0, p2

    iget-wide v11, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    const-wide/32 v13, 0x8000

    cmp-long v11, v11, v13

    if-lez v11, :cond_0

    .line 4298
    const-string v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Suspiciously large pax header size "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " - aborting"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4300
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Sanity failure: pax header size "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 4304
    :cond_0
    move-object/from16 v0, p2

    iget-wide v11, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    const-wide/16 v13, 0x1ff

    add-long/2addr v11, v13

    const/16 v13, 0x9

    shr-long/2addr v11, v13

    long-to-int v7, v11

    .line 4305
    .local v7, numBlocks:I
    mul-int/lit16 v11, v7, 0x200

    new-array v2, v11, [B

    .line 4306
    .local v2, data:[B
    const/4 v11, 0x0

    array-length v12, v2

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v2, v11, v12}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v11

    array-length v12, v2

    if-ge v11, v12, :cond_1

    .line 4307
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Unable to read full pax header"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 4309
    :cond_1
    iget-wide v11, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    array-length v13, v2

    int-to-long v13, v13

    add-long/2addr v11, v13

    iput-wide v11, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    .line 4311
    move-object/from16 v0, p2

    iget-wide v11, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    long-to-int v1, v11

    .line 4312
    .local v1, contentSize:I
    const/4 v8, 0x0

    .line 4315
    .local v8, offset:I
    :cond_2
    add-int/lit8 v3, v8, 0x1

    .line 4316
    .local v3, eol:I
    :goto_0
    if-ge v3, v1, :cond_3

    aget-byte v11, v2, v3

    const/16 v12, 0x20

    if-eq v11, v12, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4317
    :cond_3
    if-lt v3, v1, :cond_4

    .line 4319
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Invalid pax data"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 4322
    :cond_4
    sub-int v11, v3, v8

    const/16 v12, 0xa

    invoke-virtual {p0, v2, v8, v11, v12}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractRadix([BIII)J

    move-result-wide v11

    long-to-int v6, v11

    .line 4323
    .local v6, linelen:I
    add-int/lit8 v4, v3, 0x1

    .line 4324
    .local v4, key:I
    add-int v11, v8, v6

    add-int/lit8 v3, v11, -0x1

    .line 4326
    add-int/lit8 v10, v4, 0x1

    .local v10, value:I
    :goto_1
    aget-byte v11, v2, v10

    const/16 v12, 0x3d

    if-eq v11, v12, :cond_5

    if-gt v10, v3, :cond_5

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 4327
    :cond_5
    if-le v10, v3, :cond_6

    .line 4328
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Invalid pax declaration"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 4332
    :cond_6
    new-instance v5, Ljava/lang/String;

    sub-int v11, v10, v4

    const-string v12, "UTF-8"

    invoke-direct {v5, v2, v4, v11, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 4334
    .local v5, keyStr:Ljava/lang/String;
    new-instance v9, Ljava/lang/String;

    add-int/lit8 v11, v10, 0x1

    sub-int v12, v3, v10

    add-int/lit8 v12, v12, -0x1

    const-string v13, "UTF-8"

    invoke-direct {v9, v2, v11, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 4336
    .local v9, valStr:Ljava/lang/String;
    const-string v11, "path"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 4337
    move-object/from16 v0, p2

    iput-object v9, v0, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 4344
    :goto_2
    add-int/2addr v8, v6

    .line 4345
    if-lt v8, v1, :cond_2

    .line 4347
    const/4 v11, 0x1

    return v11

    .line 4338
    :cond_7
    const-string v11, "size"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 4339
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    move-object/from16 v0, p2

    iput-wide v11, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    goto :goto_2

    .line 4341
    :cond_8
    const-string v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unhandled pax key: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method readTarHeader(Ljava/io/InputStream;[B)Z
    .locals 5
    .parameter "instream"
    .parameter "block"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x200

    const/4 v1, 0x0

    .line 4286
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 4287
    .local v0, got:I
    if-nez v0, :cond_0

    .line 4290
    :goto_0
    return v1

    .line 4288
    :cond_0
    if-ge v0, v2, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to read full block header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4289
    :cond_1
    iget-wide v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    const-wide/16 v3, 0x200

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    .line 4290
    const/4 v1, 0x1

    goto :goto_0
.end method

.method readTarHeaders(Ljava/io/InputStream;)Lcom/android/server/BackupManagerService$FileMetadata;
    .locals 13
    .parameter "instream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4152
    const/16 v8, 0x200

    new-array v0, v8, [B

    .line 4153
    .local v0, block:[B
    const/4 v3, 0x0

    .line 4155
    .local v3, info:Lcom/android/server/BackupManagerService$FileMetadata;
    invoke-virtual {p0, p1, v0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readTarHeader(Ljava/io/InputStream;[B)Z

    move-result v2

    .line 4156
    .local v2, gotHeader:Z
    if-eqz v2, :cond_7

    .line 4159
    :try_start_0
    new-instance v4, Lcom/android/server/BackupManagerService$FileMetadata;

    invoke-direct {v4}, Lcom/android/server/BackupManagerService$FileMetadata;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4160
    .end local v3           #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .local v4, info:Lcom/android/server/BackupManagerService$FileMetadata;
    const/16 v8, 0x7c

    const/16 v9, 0xc

    const/16 v10, 0x8

    :try_start_1
    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    .line 4161
    const/16 v8, 0x88

    const/16 v9, 0xc

    const/16 v10, 0x8

    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->mtime:J

    .line 4162
    const/16 v8, 0x64

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    .line 4164
    const/16 v8, 0x159

    const/16 v9, 0x9b

    invoke-virtual {p0, v0, v8, v9}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractString([BII)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 4165
    const/4 v8, 0x0

    const/16 v9, 0x64

    invoke-virtual {p0, v0, v8, v9}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractString([BII)Ljava/lang/String;

    move-result-object v5

    .line 4166
    .local v5, path:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 4167
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 4168
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 4172
    :cond_1
    const/16 v8, 0x9c

    aget-byte v7, v0, v8

    .line 4173
    .local v7, typeChar:I
    const/16 v8, 0x78

    if-ne v7, v8, :cond_4

    .line 4175
    invoke-virtual {p0, p1, v4}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readPaxExtendedHeader(Ljava/io/InputStream;Lcom/android/server/BackupManagerService$FileMetadata;)Z

    move-result v2

    .line 4176
    if-eqz v2, :cond_2

    .line 4179
    invoke-virtual {p0, p1, v0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readTarHeader(Ljava/io/InputStream;[B)Z

    move-result v2

    .line 4181
    :cond_2
    if-nez v2, :cond_3

    new-instance v8, Ljava/io/IOException;

    const-string v9, "Bad or missing pax header"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4238
    .end local v5           #path:Ljava/lang/String;
    .end local v7           #typeChar:I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 4240
    .end local v4           #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .local v1, e:Ljava/io/IOException;
    .restart local v3       #info:Lcom/android/server/BackupManagerService$FileMetadata;
    :goto_0
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Parse error in header: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4241
    invoke-direct {p0, v0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->HEXLOG([B)V

    .line 4243
    throw v1

    .line 4183
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .restart local v4       #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .restart local v5       #path:Ljava/lang/String;
    .restart local v7       #typeChar:I
    :cond_3
    const/16 v8, 0x9c

    :try_start_2
    aget-byte v7, v0, v8

    .line 4186
    :cond_4
    sparse-switch v7, :sswitch_data_0

    .line 4202
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown tar entity type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4203
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown entity type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 4187
    :sswitch_0
    const/4 v8, 0x1

    iput v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->type:I

    .line 4210
    :cond_5
    :goto_1
    const-string v8, "shared/"

    const/4 v9, 0x0

    iget-object v10, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "shared/"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 4213
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v9, "shared/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 4214
    const-string v8, "com.android.sharedstoragebackup"

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    .line 4215
    const-string v8, "shared"

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    .line 4216
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File in shared storage: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    move-object v3, v4

    .end local v4           #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .end local v5           #path:Ljava/lang/String;
    .end local v7           #typeChar:I
    .restart local v3       #info:Lcom/android/server/BackupManagerService$FileMetadata;
    :cond_7
    move-object v8, v3

    .line 4246
    :goto_3
    return-object v8

    .line 4189
    .end local v3           #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .restart local v4       #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .restart local v5       #path:Ljava/lang/String;
    .restart local v7       #typeChar:I
    :sswitch_1
    const/4 v8, 0x2

    iput v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->type:I

    .line 4190
    iget-wide v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    .line 4191
    const-string v8, "BackupManagerService"

    const-string v9, "Directory entry with nonzero size in header"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4192
    const-wide/16 v8, 0x0

    iput-wide v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    goto :goto_1

    .line 4198
    :sswitch_2
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Saw type=0 in tar header block, info="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4199
    const/4 v3, 0x0

    move-object v8, v3

    move-object v3, v4

    .end local v4           #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .restart local v3       #info:Lcom/android/server/BackupManagerService$FileMetadata;
    goto :goto_3

    .line 4217
    .end local v3           #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .restart local v4       #info:Lcom/android/server/BackupManagerService$FileMetadata;
    :cond_8
    const-string v8, "apps/"

    const/4 v9, 0x0

    iget-object v10, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "apps/"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 4222
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v9, "apps/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 4225
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 4226
    .local v6, slash:I
    if-gez v6, :cond_9

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal semantic path in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 4227
    :cond_9
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    .line 4228
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 4231
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v9, "_manifest"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 4232
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 4233
    if-gez v6, :cond_a

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal semantic path in non-manifest "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 4234
    :cond_a
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    .line 4235
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 4238
    .end local v4           #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #slash:I
    .end local v7           #typeChar:I
    .restart local v3       #info:Lcom/android/server/BackupManagerService$FileMetadata;
    :catch_1
    move-exception v1

    goto/16 :goto_0

    .line 4186
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x30 -> :sswitch_0
        0x35 -> :sswitch_1
    .end sparse-switch
.end method

.method restoreOneFile(Ljava/io/InputStream;[B)Z
    .locals 44
    .parameter "instream"
    .parameter "buffer"

    .prologue
    .line 3492
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readTarHeaders(Ljava/io/InputStream;)Lcom/android/server/BackupManagerService$FileMetadata;

    move-result-object v33

    .line 3493
    .local v33, info:Lcom/android/server/BackupManagerService$FileMetadata;
    if-eqz v33, :cond_2

    .line 3498
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    .line 3499
    .local v5, pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3502
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3503
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3508
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v4, :cond_1

    .line 3509
    const-string v4, "BackupManagerService"

    const-string v6, "Saw new package; tearing down old one"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3510
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    .line 3511
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 3512
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 3513
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgentPackage:Ljava/lang/String;

    .line 3517
    :cond_1
    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v6, "_manifest"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3518
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readAppManifest(Lcom/android/server/BackupManagerService$FileMetadata;Ljava/io/InputStream;)Lcom/android/server/BackupManagerService$RestorePolicy;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3519
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    move-object/from16 v0, v33

    iget-object v6, v0, Lcom/android/server/BackupManagerService$FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3523
    move-object/from16 v0, v33

    iget-wide v6, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v6, v7, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->skipTarPadding(JLjava/io/InputStream;)V

    .line 3524
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->sendOnRestorePackage(Ljava/lang/String;)V

    .line 3752
    .end local v5           #pkg:Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v33, :cond_17

    const/4 v4, 0x1

    :goto_1
    return v4

    .line 3528
    .restart local v5       #pkg:Ljava/lang/String;
    :cond_3
    const/16 v37, 0x1

    .line 3529
    .local v37, okay:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/server/BackupManagerService$RestorePolicy;

    .line 3530
    .local v40, policy:Lcom/android/server/BackupManagerService$RestorePolicy;
    sget-object v4, Lcom/android/server/BackupManagerService$3;->$SwitchMap$com$android$server$BackupManagerService$RestorePolicy:[I

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/BackupManagerService$RestorePolicy;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    .line 3575
    const-string v4, "BackupManagerService"

    const-string v6, "Invalid policy from manifest"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3576
    const/16 v37, 0x0

    .line 3577
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3583
    :cond_4
    :goto_2
    if-eqz v37, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v4, :cond_5

    .line 3584
    const-string v4, "BackupManagerService"

    const-string v6, "Reusing existing agent instance"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3586
    :cond_5
    if-eqz v37, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-nez v4, :cond_6

    .line 3587
    const-string v4, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Need to launch agent for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 3590
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/server/BackupManagerService;->access$600(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 3594
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 3598
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v4, :cond_10

    .line 3599
    const-string v4, "BackupManagerService"

    const-string v6, "Clearing app data preparatory to full restore"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3600
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    .line 3605
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3611
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->setUpPipes()V

    .line 3612
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v7, 0x3

    invoke-virtual {v4, v6, v7}, Lcom/android/server/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 3614
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgentPackage:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3621
    :goto_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-nez v4, :cond_6

    .line 3622
    const-string v4, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create agent for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3623
    const/16 v37, 0x0

    .line 3624
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    .line 3625
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3631
    :cond_6
    if-eqz v37, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 3632
    const-string v4, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restoring data for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but agent is for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3634
    const/16 v37, 0x0

    .line 3641
    :cond_7
    if-eqz v37, :cond_c

    .line 3642
    const/16 v29, 0x1

    .line 3643
    .local v29, agentSuccess:Z
    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v41, v0

    .line 3644
    .local v41, toCopy:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/BackupManagerService;->generateToken()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-result v15

    .line 3646
    .local v15, token:I
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    const-wide/32 v6, 0x493e0

    const/4 v8, 0x0

    invoke-virtual {v4, v15, v6, v7, v8}, Lcom/android/server/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/BackupManagerService$BackupRestoreTask;)V

    .line 3647
    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v6, "obb"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 3648
    const-string v4, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restoring OBB file for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v33

    iget-object v7, v0, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3650
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObbConnection:Lcom/android/server/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    move-object/from16 v0, v33

    iget-wide v7, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, v33

    iget v9, v0, Lcom/android/server/BackupManagerService$FileMetadata;->type:I

    move-object/from16 v0, v33

    iget-object v10, v0, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    move-object/from16 v0, v33

    iget-wide v11, v0, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    move-object/from16 v0, v33

    iget-wide v13, v0, Lcom/android/server/BackupManagerService$FileMetadata;->mtime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v4 .. v16}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3685
    :goto_6
    if-eqz v37, :cond_b

    .line 3686
    const/16 v39, 0x1

    .line 3687
    .local v39, pipeOkay:Z
    :try_start_4
    new-instance v38, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 3689
    .local v38, pipe:Ljava/io/FileOutputStream;
    :cond_8
    :goto_7
    const-wide/16 v6, 0x0

    cmp-long v4, v41, v6

    if-lez v4, :cond_a

    .line 3690
    move-object/from16 v0, p2

    array-length v4, v0

    int-to-long v6, v4

    cmp-long v4, v41, v6

    if-lez v4, :cond_14

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v43, v0

    .line 3692
    .local v43, toRead:I
    :goto_8
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v43

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v35

    .line 3693
    .local v35, nRead:I
    if-ltz v35, :cond_9

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    move/from16 v0, v35

    int-to-long v8, v0

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    .line 3694
    :cond_9
    if-gtz v35, :cond_15

    .line 3711
    .end local v35           #nRead:I
    .end local v43           #toRead:I
    :cond_a
    move-object/from16 v0, v33

    iget-wide v6, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v6, v7, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->skipTarPadding(JLjava/io/InputStream;)V

    .line 3715
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v4, v15}, Lcom/android/server/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v29

    .line 3720
    .end local v38           #pipe:Ljava/io/FileOutputStream;
    .end local v39           #pipeOkay:Z
    :cond_b
    if-nez v29, :cond_c

    .line 3721
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v6, 0x7

    invoke-virtual {v4, v6}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 3722
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    .line 3723
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 3724
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 3725
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3732
    .end local v15           #token:I
    .end local v29           #agentSuccess:Z
    .end local v41           #toCopy:J
    :cond_c
    if-nez v37, :cond_2

    .line 3733
    const-string v4, "BackupManagerService"

    const-string v6, "[discarding file content]"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3734
    move-object/from16 v0, v33

    iget-wide v6, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    const-wide/16 v8, 0x1ff

    add-long/2addr v6, v8

    const-wide/16 v8, -0x200

    and-long v30, v6, v8

    .line 3735
    .local v30, bytesToConsume:J
    :goto_9
    const-wide/16 v6, 0x0

    cmp-long v4, v30, v6

    if-lez v4, :cond_2

    .line 3736
    move-object/from16 v0, p2

    array-length v4, v0

    int-to-long v6, v4

    cmp-long v4, v30, v6

    if-lez v4, :cond_16

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v43, v0

    .line 3738
    .restart local v43       #toRead:I
    :goto_a
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v43

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v35, v0

    .line 3739
    .local v35, nRead:J
    const-wide/16 v6, 0x0

    cmp-long v4, v35, v6

    if-ltz v4, :cond_d

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    add-long v6, v6, v35

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    .line 3740
    :cond_d
    const-wide/16 v6, 0x0

    cmp-long v4, v35, v6

    if-lez v4, :cond_2

    .line 3741
    sub-long v30, v30, v35

    .line 3742
    goto :goto_9

    .line 3532
    .end local v30           #bytesToConsume:J
    .end local v35           #nRead:J
    .end local v43           #toRead:I
    :pswitch_0
    const/16 v37, 0x0

    .line 3533
    goto/16 :goto_2

    .line 3538
    :pswitch_1
    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v6, "a"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 3539
    const-string v4, "BackupManagerService"

    const-string v6, "APK file; installing"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3541
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 3542
    .local v34, installerName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->installApk(Lcom/android/server/BackupManagerService$FileMetadata;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v37

    .line 3544
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v37, :cond_e

    sget-object v4, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/BackupManagerService$RestorePolicy;

    :goto_b
    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3550
    move-object/from16 v0, v33

    iget-wide v6, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v6, v7, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->skipTarPadding(JLjava/io/InputStream;)V

    .line 3551
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 3544
    :cond_e
    sget-object v4, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    goto :goto_b

    .line 3555
    .end local v34           #installerName:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3556
    const/16 v37, 0x0

    .line 3558
    goto/16 :goto_2

    .line 3561
    :pswitch_2
    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v6, "a"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3562
    const-string v4, "BackupManagerService"

    const-string v6, "apk present but ACCEPT"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 3567
    const/16 v37, 0x0

    goto/16 :goto_2

    .line 3602
    :cond_10
    :try_start_5
    const-string v4, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "backup agent ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") => no clear"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3615
    :catch_0
    move-exception v4

    goto/16 :goto_5

    .line 3607
    :cond_11
    const-string v4, "BackupManagerService"

    const-string v6, "We\'ve initialized this app already; no clear required"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_4

    .line 3617
    :catch_1
    move-exception v4

    goto/16 :goto_5

    .line 3654
    .restart local v15       #token:I
    .restart local v29       #agentSuccess:Z
    .restart local v41       #toCopy:J
    :cond_12
    :try_start_6
    const-string v4, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invoking agent to restore file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v33

    iget-object v7, v0, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3660
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v6, "system"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 3661
    const-string v4, "BackupManagerService"

    const-string v6, "system process agent - spinning a thread"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3662
    new-instance v10, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x0

    aget-object v14, v4, v6

    move-object/from16 v11, p0

    move-object/from16 v13, v33

    invoke-direct/range {v10 .. v15}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;-><init>(Lcom/android/server/BackupManagerService$PerformFullRestoreTask;Landroid/app/IBackupAgent;Lcom/android/server/BackupManagerService$FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    .line 3664
    .local v10, runner:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_6

    .line 3671
    .end local v10           #runner:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;
    :catch_2
    move-exception v32

    .line 3673
    .local v32, e:Ljava/io/IOException;
    :try_start_7
    const-string v4, "BackupManagerService"

    const-string v6, "Couldn\'t establish restore"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 3674
    const/16 v29, 0x0

    .line 3675
    const/16 v37, 0x0

    .line 3682
    goto/16 :goto_6

    .line 3666
    .end local v32           #e:Ljava/io/IOException;
    :cond_13
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x0

    aget-object v17, v4, v6

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->type:I

    move/from16 v20, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    move-wide/from16 v23, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->mtime:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v0, v4, Lcom/android/server/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object/from16 v28, v0

    move/from16 v27, v15

    invoke-interface/range {v16 .. v28}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_6

    .line 3676
    :catch_3
    move-exception v32

    .line 3679
    .local v32, e:Landroid/os/RemoteException;
    :try_start_9
    const-string v4, "BackupManagerService"

    const-string v6, "Agent crashed during full restore"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 3680
    const/16 v29, 0x0

    .line 3681
    const/16 v37, 0x0

    goto/16 :goto_6

    .line 3690
    .end local v32           #e:Landroid/os/RemoteException;
    .restart local v38       #pipe:Ljava/io/FileOutputStream;
    .restart local v39       #pipeOkay:Z
    :cond_14
    move-wide/from16 v0, v41

    long-to-int v0, v0

    move/from16 v43, v0

    goto/16 :goto_8

    .line 3695
    .local v35, nRead:I
    .restart local v43       #toRead:I
    :cond_15
    move/from16 v0, v35

    int-to-long v6, v0

    sub-long v41, v41, v6

    .line 3699
    if-eqz v39, :cond_8

    .line 3701
    const/4 v4, 0x0

    :try_start_a
    move-object/from16 v0, v38

    move-object/from16 v1, p2

    move/from16 v2, v35

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_7

    .line 3702
    :catch_4
    move-exception v32

    .line 3703
    .local v32, e:Ljava/io/IOException;
    :try_start_b
    const-string v4, "BackupManagerService"

    const-string v6, "Failed to write to restore pipe"

    move-object/from16 v0, v32

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 3704
    const/16 v39, 0x0

    goto/16 :goto_7

    .line 3736
    .end local v15           #token:I
    .end local v29           #agentSuccess:Z
    .end local v32           #e:Ljava/io/IOException;
    .end local v35           #nRead:I
    .end local v38           #pipe:Ljava/io/FileOutputStream;
    .end local v39           #pipeOkay:Z
    .end local v41           #toCopy:J
    .end local v43           #toRead:I
    .restart local v30       #bytesToConsume:J
    :cond_16
    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v43, v0

    goto/16 :goto_a

    .line 3746
    .end local v5           #pkg:Ljava/lang/String;
    .end local v30           #bytesToConsume:J
    .end local v33           #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .end local v37           #okay:Z
    .end local v40           #policy:Lcom/android/server/BackupManagerService$RestorePolicy;
    :catch_5
    move-exception v32

    .line 3747
    .restart local v32       #e:Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v6, "io exception on restore socket read"

    move-object/from16 v0, v32

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3749
    const/16 v33, 0x0

    .restart local v33       #info:Lcom/android/server/BackupManagerService$FileMetadata;
    goto/16 :goto_0

    .line 3752
    .end local v32           #e:Ljava/io/IOException;
    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 3530
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public run()V
    .locals 24

    .prologue
    .line 3283
    const-string v20, "BackupManagerService"

    const-string v21, "--- Performing full-dataset restore ---"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObbConnection:Lcom/android/server/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->establish()V

    .line 3285
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->sendStartRestore()V

    .line 3288
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v20

    const-string v21, "mounted"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 3289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v20, v0

    const-string v21, "com.android.sharedstoragebackup"

    sget-object v22, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/BackupManagerService$RestorePolicy;

    invoke-virtual/range {v20 .. v22}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3292
    :cond_0
    const/16 v16, 0x0

    .line 3293
    .local v16, rawInStream:Ljava/io/FileInputStream;
    const/4 v14, 0x0

    .line 3295
    .local v14, rawDataIn:Ljava/io/DataInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mCurrentPassword:Ljava/lang/String;

    move-object/from16 v21, v0

    #calls: Lcom/android/server/BackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z
    invoke-static/range {v20 .. v21}, Lcom/android/server/BackupManagerService;->access$1300(Lcom/android/server/BackupManagerService;Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 3296
    const-string v20, "BackupManagerService"

    const-string v21, "Backup password mismatch; aborting"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 3357
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    .line 3358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 3361
    if-eqz v14, :cond_1

    :try_start_1
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V

    .line 3362
    :cond_1
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V

    .line 3363
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 3368
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 3369
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->clear()V

    .line 3370
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 3371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 3372
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v0

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->notifyAll()V

    .line 3374
    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 3375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObbConnection:Lcom/android/server/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3376
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->sendEndRestore()V

    .line 3377
    const-string v20, "BackupManagerService"

    const-string v21, "Full restore pass complete."

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v20, v0

    :goto_1
    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3380
    :goto_2
    return-void

    .line 3300
    :cond_3
    const-wide/16 v20, 0x0

    :try_start_4
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    .line 3301
    const v20, 0x8000

    move/from16 v0, v20

    new-array v4, v0, [B

    .line 3302
    .local v4, buffer:[B
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 3303
    .end local v16           #rawInStream:Ljava/io/FileInputStream;
    .local v17, rawInStream:Ljava/io/FileInputStream;
    :try_start_5
    new-instance v15, Ljava/io/DataInputStream;

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 3306
    .end local v14           #rawDataIn:Ljava/io/DataInputStream;
    .local v15, rawDataIn:Ljava/io/DataInputStream;
    const/4 v5, 0x0

    .line 3307
    .local v5, compressed:Z
    move-object/from16 v13, v17

    .line 3310
    .local v13, preCompressStream:Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 3311
    .local v11, okay:Z
    :try_start_6
    const-string v20, "ANDROID BACKUP\n"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v8

    .line 3312
    .local v8, headerLen:I
    new-array v0, v8, [B

    move-object/from16 v19, v0

    .line 3313
    .local v19, streamHeader:[B
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 3314
    const-string v20, "ANDROID BACKUP\n"

    const-string v21, "UTF-8"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 3315
    .local v10, magicBytes:[B
    move-object/from16 v0, v19

    invoke-static {v10, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 3317
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v18

    .line 3318
    .local v18, s:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3319
    .local v3, archiveVersion:I
    const/16 v20, 0x2

    move/from16 v0, v20

    if-gt v3, v0, :cond_d

    .line 3322
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_7

    const/4 v12, 0x1

    .line 3324
    .local v12, pbkdf2Fallback:Z
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v18

    .line 3325
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_8

    const/4 v5, 0x1

    .line 3326
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v18

    .line 3327
    const-string v20, "none"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 3329
    const/4 v11, 0x1

    .line 3340
    .end local v3           #archiveVersion:I
    .end local v12           #pbkdf2Fallback:Z
    .end local v18           #s:Ljava/lang/String;
    :cond_4
    :goto_5
    if-nez v11, :cond_11

    .line 3341
    const-string v20, "BackupManagerService"

    const-string v21, "Invalid restore data; aborting."

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 3357
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    .line 3358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 3361
    if-eqz v15, :cond_5

    :try_start_7
    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V

    .line 3362
    :cond_5
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    .line 3363
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 3368
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 3369
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->clear()V

    .line 3370
    monitor-exit v21
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 3371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 3372
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v0

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->notifyAll()V

    .line 3374
    monitor-exit v21
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 3375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObbConnection:Lcom/android/server/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3376
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->sendEndRestore()V

    .line 3377
    const-string v20, "BackupManagerService"

    const-string v21, "Full restore pass complete."

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object v14, v15

    .end local v15           #rawDataIn:Ljava/io/DataInputStream;
    .restart local v14       #rawDataIn:Ljava/io/DataInputStream;
    move-object/from16 v16, v17

    .line 3342
    .end local v17           #rawInStream:Ljava/io/FileInputStream;
    .restart local v16       #rawInStream:Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 3322
    .end local v14           #rawDataIn:Ljava/io/DataInputStream;
    .end local v16           #rawInStream:Ljava/io/FileInputStream;
    .restart local v3       #archiveVersion:I
    .restart local v15       #rawDataIn:Ljava/io/DataInputStream;
    .restart local v17       #rawInStream:Ljava/io/FileInputStream;
    .restart local v18       #s:Ljava/lang/String;
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 3325
    .restart local v12       #pbkdf2Fallback:Z
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 3330
    :cond_9
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDecryptPassword:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDecryptPassword:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_a

    .line 3331
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v12, v2}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->decodeAesHeaderAndInitialize(Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v13

    .line 3333
    if-eqz v13, :cond_4

    .line 3334
    const/4 v11, 0x1

    goto/16 :goto_5

    .line 3336
    :cond_a
    const-string v20, "BackupManagerService"

    const-string v21, "Archive is encrypted but no password given"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_5

    .line 3354
    .end local v3           #archiveVersion:I
    .end local v8           #headerLen:I
    .end local v10           #magicBytes:[B
    .end local v12           #pbkdf2Fallback:Z
    .end local v18           #s:Ljava/lang/String;
    .end local v19           #streamHeader:[B
    :catch_0
    move-exception v7

    move-object v14, v15

    .end local v15           #rawDataIn:Ljava/io/DataInputStream;
    .restart local v14       #rawDataIn:Ljava/io/DataInputStream;
    move-object/from16 v16, v17

    .line 3355
    .end local v4           #buffer:[B
    .end local v5           #compressed:Z
    .end local v11           #okay:Z
    .end local v13           #preCompressStream:Ljava/io/InputStream;
    .end local v17           #rawInStream:Ljava/io/FileInputStream;
    .local v7, e:Ljava/io/IOException;
    .restart local v16       #rawInStream:Ljava/io/FileInputStream;
    :goto_7
    :try_start_b
    const-string v20, "BackupManagerService"

    const-string v21, "Unable to read restore input"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 3357
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    .line 3358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 3361
    if-eqz v14, :cond_b

    :try_start_c
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V

    .line 3362
    :cond_b
    if-eqz v16, :cond_c

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V

    .line 3363
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    .line 3368
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 3369
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->clear()V

    .line 3370
    monitor-exit v21
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 3371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 3372
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v0

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->notifyAll()V

    .line 3374
    monitor-exit v21
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 3375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObbConnection:Lcom/android/server/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3376
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->sendEndRestore()V

    .line 3377
    const-string v20, "BackupManagerService"

    const-string v21, "Full restore pass complete."

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v20, v0

    goto/16 :goto_1

    .line 3337
    .end local v7           #e:Ljava/io/IOException;
    .end local v14           #rawDataIn:Ljava/io/DataInputStream;
    .end local v16           #rawInStream:Ljava/io/FileInputStream;
    .restart local v3       #archiveVersion:I
    .restart local v4       #buffer:[B
    .restart local v5       #compressed:Z
    .restart local v8       #headerLen:I
    .restart local v10       #magicBytes:[B
    .restart local v11       #okay:Z
    .restart local v13       #preCompressStream:Ljava/io/InputStream;
    .restart local v15       #rawDataIn:Ljava/io/DataInputStream;
    .restart local v17       #rawInStream:Ljava/io/FileInputStream;
    .restart local v18       #s:Ljava/lang/String;
    .restart local v19       #streamHeader:[B
    :cond_d
    :try_start_f
    const-string v20, "BackupManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Wrong header version: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_5

    .line 3357
    .end local v3           #archiveVersion:I
    .end local v8           #headerLen:I
    .end local v10           #magicBytes:[B
    .end local v18           #s:Ljava/lang/String;
    .end local v19           #streamHeader:[B
    :catchall_0
    move-exception v20

    move-object v14, v15

    .end local v15           #rawDataIn:Ljava/io/DataInputStream;
    .restart local v14       #rawDataIn:Ljava/io/DataInputStream;
    move-object/from16 v16, v17

    .end local v4           #buffer:[B
    .end local v5           #compressed:Z
    .end local v11           #okay:Z
    .end local v13           #preCompressStream:Ljava/io/InputStream;
    .end local v17           #rawInStream:Ljava/io/FileInputStream;
    .restart local v16       #rawInStream:Ljava/io/FileInputStream;
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    .line 3358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 3361
    if-eqz v14, :cond_e

    :try_start_10
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V

    .line 3362
    :cond_e
    if-eqz v16, :cond_f

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V

    .line 3363
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1

    .line 3368
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 3369
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->clear()V

    .line 3370
    monitor-exit v21
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 3371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 3372
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notifyAll()V

    .line 3374
    monitor-exit v21
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 3375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObbConnection:Lcom/android/server/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3376
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->sendEndRestore()V

    .line 3377
    const-string v21, "BackupManagerService"

    const-string v22, "Full restore pass complete."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3357
    throw v20

    .line 3338
    .end local v14           #rawDataIn:Ljava/io/DataInputStream;
    .end local v16           #rawInStream:Ljava/io/FileInputStream;
    .restart local v4       #buffer:[B
    .restart local v5       #compressed:Z
    .restart local v8       #headerLen:I
    .restart local v10       #magicBytes:[B
    .restart local v11       #okay:Z
    .restart local v13       #preCompressStream:Ljava/io/InputStream;
    .restart local v15       #rawDataIn:Ljava/io/DataInputStream;
    .restart local v17       #rawInStream:Ljava/io/FileInputStream;
    .restart local v19       #streamHeader:[B
    :cond_10
    :try_start_13
    const-string v20, "BackupManagerService"

    const-string v21, "Didn\'t read the right header magic"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 3346
    :cond_11
    if-eqz v5, :cond_15

    new-instance v9, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v9, v13}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3350
    .local v9, in:Ljava/io/InputStream;
    :cond_12
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v4}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->restoreOneFile(Ljava/io/InputStream;[B)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0

    move-result v6

    .line 3351
    .local v6, didRestore:Z
    if-nez v6, :cond_12

    .line 3357
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    .line 3358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 3361
    if-eqz v15, :cond_13

    :try_start_14
    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V

    .line 3362
    :cond_13
    if-eqz v17, :cond_14

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    .line 3363
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_5

    .line 3368
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 3369
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->clear()V

    .line 3370
    monitor-exit v21
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 3371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 3372
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v0

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->notifyAll()V

    .line 3374
    monitor-exit v21
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    .line 3375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObbConnection:Lcom/android/server/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3376
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->sendEndRestore()V

    .line 3377
    const-string v20, "BackupManagerService"

    const-string v21, "Full restore pass complete."

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object v14, v15

    .end local v15           #rawDataIn:Ljava/io/DataInputStream;
    .restart local v14       #rawDataIn:Ljava/io/DataInputStream;
    move-object/from16 v16, v17

    .line 3379
    .end local v17           #rawInStream:Ljava/io/FileInputStream;
    .restart local v16       #rawInStream:Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v6           #didRestore:Z
    .end local v9           #in:Ljava/io/InputStream;
    .end local v14           #rawDataIn:Ljava/io/DataInputStream;
    .end local v16           #rawInStream:Ljava/io/FileInputStream;
    .restart local v15       #rawDataIn:Ljava/io/DataInputStream;
    .restart local v17       #rawInStream:Ljava/io/FileInputStream;
    :cond_15
    move-object v9, v13

    .line 3346
    goto/16 :goto_b

    .line 3364
    .end local v4           #buffer:[B
    .end local v5           #compressed:Z
    .end local v8           #headerLen:I
    .end local v10           #magicBytes:[B
    .end local v11           #okay:Z
    .end local v13           #preCompressStream:Ljava/io/InputStream;
    .end local v15           #rawDataIn:Ljava/io/DataInputStream;
    .end local v17           #rawInStream:Ljava/io/FileInputStream;
    .end local v19           #streamHeader:[B
    .restart local v14       #rawDataIn:Ljava/io/DataInputStream;
    .restart local v16       #rawInStream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v7

    .line 3365
    .restart local v7       #e:Ljava/io/IOException;
    const-string v21, "BackupManagerService"

    const-string v22, "Close of restore data pipe threw"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 3370
    .end local v7           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v20

    :try_start_17
    monitor-exit v21
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    throw v20

    .line 3374
    :catchall_2
    move-exception v20

    :try_start_18
    monitor-exit v21
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    throw v20

    .line 3364
    .restart local v7       #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 3365
    const-string v20, "BackupManagerService"

    const-string v21, "Close of restore data pipe threw"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 3370
    :catchall_3
    move-exception v20

    :try_start_19
    monitor-exit v21
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    throw v20

    .line 3374
    :catchall_4
    move-exception v20

    :try_start_1a
    monitor-exit v21
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    throw v20

    .line 3364
    .end local v7           #e:Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 3365
    .restart local v7       #e:Ljava/io/IOException;
    const-string v20, "BackupManagerService"

    const-string v21, "Close of restore data pipe threw"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3370
    .end local v7           #e:Ljava/io/IOException;
    :catchall_5
    move-exception v20

    :try_start_1b
    monitor-exit v21
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    throw v20

    .line 3374
    :catchall_6
    move-exception v20

    :try_start_1c
    monitor-exit v21
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    throw v20

    .line 3364
    .end local v14           #rawDataIn:Ljava/io/DataInputStream;
    .end local v16           #rawInStream:Ljava/io/FileInputStream;
    .restart local v4       #buffer:[B
    .restart local v5       #compressed:Z
    .restart local v8       #headerLen:I
    .restart local v10       #magicBytes:[B
    .restart local v11       #okay:Z
    .restart local v13       #preCompressStream:Ljava/io/InputStream;
    .restart local v15       #rawDataIn:Ljava/io/DataInputStream;
    .restart local v17       #rawInStream:Ljava/io/FileInputStream;
    .restart local v19       #streamHeader:[B
    :catch_4
    move-exception v7

    .line 3365
    .restart local v7       #e:Ljava/io/IOException;
    const-string v20, "BackupManagerService"

    const-string v21, "Close of restore data pipe threw"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 3370
    .end local v7           #e:Ljava/io/IOException;
    :catchall_7
    move-exception v20

    :try_start_1d
    monitor-exit v21
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    throw v20

    .line 3374
    :catchall_8
    move-exception v20

    :try_start_1e
    monitor-exit v21
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    throw v20

    .line 3364
    .restart local v6       #didRestore:Z
    .restart local v9       #in:Ljava/io/InputStream;
    :catch_5
    move-exception v7

    .line 3365
    .restart local v7       #e:Ljava/io/IOException;
    const-string v20, "BackupManagerService"

    const-string v21, "Close of restore data pipe threw"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 3370
    .end local v7           #e:Ljava/io/IOException;
    :catchall_9
    move-exception v20

    :try_start_1f
    monitor-exit v21
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    throw v20

    .line 3374
    :catchall_a
    move-exception v20

    :try_start_20
    monitor-exit v21
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    throw v20

    .line 3357
    .end local v4           #buffer:[B
    .end local v5           #compressed:Z
    .end local v6           #didRestore:Z
    .end local v8           #headerLen:I
    .end local v9           #in:Ljava/io/InputStream;
    .end local v10           #magicBytes:[B
    .end local v11           #okay:Z
    .end local v13           #preCompressStream:Ljava/io/InputStream;
    .end local v15           #rawDataIn:Ljava/io/DataInputStream;
    .end local v17           #rawInStream:Ljava/io/FileInputStream;
    .end local v19           #streamHeader:[B
    .restart local v14       #rawDataIn:Ljava/io/DataInputStream;
    .restart local v16       #rawInStream:Ljava/io/FileInputStream;
    :catchall_b
    move-exception v20

    goto/16 :goto_9

    .end local v16           #rawInStream:Ljava/io/FileInputStream;
    .restart local v4       #buffer:[B
    .restart local v17       #rawInStream:Ljava/io/FileInputStream;
    :catchall_c
    move-exception v20

    move-object/from16 v16, v17

    .end local v17           #rawInStream:Ljava/io/FileInputStream;
    .restart local v16       #rawInStream:Ljava/io/FileInputStream;
    goto/16 :goto_9

    .line 3354
    .end local v4           #buffer:[B
    :catch_6
    move-exception v7

    goto/16 :goto_7

    .end local v16           #rawInStream:Ljava/io/FileInputStream;
    .restart local v4       #buffer:[B
    .restart local v17       #rawInStream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v7

    move-object/from16 v16, v17

    .end local v17           #rawInStream:Ljava/io/FileInputStream;
    .restart local v16       #rawInStream:Ljava/io/FileInputStream;
    goto/16 :goto_7
.end method

.method sendEndRestore()V
    .locals 3

    .prologue
    .line 4398
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 4400
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndRestore()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4406
    :cond_0
    :goto_0
    return-void

    .line 4401
    :catch_0
    move-exception v0

    .line 4402
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full restore observer went away: endRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4403
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 4386
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 4389
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onRestorePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4395
    :cond_0
    :goto_0
    return-void

    .line 4390
    :catch_0
    move-exception v0

    .line 4391
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full restore observer went away: restorePackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4392
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method sendStartRestore()V
    .locals 3

    .prologue
    .line 4375
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 4377
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartRestore()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4383
    :cond_0
    :goto_0
    return-void

    .line 4378
    :catch_0
    move-exception v0

    .line 4379
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full restore observer went away: startRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4380
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method setUpPipes()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3756
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 3757
    return-void
.end method

.method skipTarPadding(JLjava/io/InputStream;)V
    .locals 8
    .parameter "size"
    .parameter "instream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x200

    .line 3971
    add-long v4, p1, v6

    rem-long v2, v4, v6

    .line 3972
    .local v2, partial:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 3973
    long-to-int v4, v2

    rsub-int v1, v4, 0x200

    .line 3974
    .local v1, needed:I
    new-array v0, v1, [B

    .line 3975
    .local v0, buffer:[B
    const/4 v4, 0x0

    invoke-virtual {p0, p3, v0, v4, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 3976
    iget-wide v4, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    .line 3979
    .end local v0           #buffer:[B
    .end local v1           #needed:I
    :cond_0
    return-void

    .line 3977
    .restart local v0       #buffer:[B
    .restart local v1       #needed:I
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected EOF in padding"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method tearDownAgent(Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .parameter "app"

    .prologue
    .line 3774
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v1, :cond_0

    .line 3777
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v1}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 3782
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.backupconfirm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3784
    const-string v1, "BackupManagerService"

    const-string v2, "Killing host process"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3785
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v1}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3792
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 3794
    :cond_0
    return-void

    .line 3787
    :cond_1
    :try_start_1
    const-string v1, "BackupManagerService"

    const-string v2, "Not killing after full restore"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3789
    :catch_0
    move-exception v0

    .line 3790
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Lost app trying to shut down"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method tearDownPipes()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3760
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 3762
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3763
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 3764
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3765
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3769
    :goto_0
    iput-object v4, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 3771
    :cond_0
    return-void

    .line 3766
    :catch_0
    move-exception v0

    .line 3767
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    const-string v2, "Couldn\'t close agent pipes"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
