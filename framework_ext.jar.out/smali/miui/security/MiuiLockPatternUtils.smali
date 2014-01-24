.class public Lmiui/security/MiuiLockPatternUtils;
.super Lcom/android/internal/widget/LockPatternUtils;
.source "MiuiLockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/security/MiuiLockPatternUtils$PasswordFileObserver;,
        Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;
    }
.end annotation


# static fields
.field public static final FAILED_ATTEMPT_TIMEOUT_SECONDS_ARRAY:[I = null

.field public static final MIUI_LOCK_PATTERN_DATA_TYPE_AC:I = 0x0

.field public static final MIUI_LOCK_PATTERN_DATA_TYPE_SMS:I = 0x1

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TAG:Ljava/lang/String; = "MiuiLockPatternUtils"

.field private static mMiuiLockPatternDatas:[Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/security/MiuiLockPatternUtils;->FAILED_ATTEMPT_TIMEOUT_SECONDS_ARRAY:[I

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;

    const/4 v1, 0x0

    new-instance v2, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;

    const-string v3, "access_control"

    const-string v4, "access_control.key"

    invoke-direct {v2, v3, v4}, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;

    const-string v3, "sms"

    const-string v4, "sms_private.key"

    invoke-direct {v2, v3, v4}, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lmiui/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;

    return-void

    .line 30
    :array_0
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x8t 0x7t 0x0t 0x0t
        0x20t 0x1ct 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 9
    .parameter "context"
    .parameter "type"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 88
    iput-object p1, p0, Lmiui/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    .line 89
    iput p2, p0, Lmiui/security/MiuiLockPatternUtils;->mType:I

    .line 90
    sget-object v3, Lmiui/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;

    aget-object v0, v3, p2

    .line 91
    .local v0, data:Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;
    iget-object v3, v0, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/system/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, dataSystemDirectory:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    .line 94
    iget-object v4, v0, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;->mHaveNonZeroFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/io/File;

    iget-object v5, v0, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 95
    const/16 v2, 0x388

    .line 97
    .local v2, fileObserverMask:I
    new-instance v3, Lmiui/security/MiuiLockPatternUtils$PasswordFileObserver;

    invoke-direct {v3, v1, v2}, Lmiui/security/MiuiLockPatternUtils$PasswordFileObserver;-><init>(Ljava/lang/String;I)V

    iput-object v3, v0, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;->mPasswordObserver:Landroid/os/FileObserver;

    .line 98
    iget-object v3, v0, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;->mPasswordObserver:Landroid/os/FileObserver;

    invoke-virtual {v3}, Landroid/os/FileObserver;->startWatching()V

    .line 100
    .end local v1           #dataSystemDirectory:Ljava/lang/String;
    .end local v2           #fileObserverMask:I
    :cond_0
    return-void

    .line 94
    .restart local v1       #dataSystemDirectory:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static synthetic access$000()[Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lmiui/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;

    return-object v0
.end method

.method private getTimeoutInMsByFailedAttempts(I)I
    .locals 3
    .parameter "failedAttempts"

    .prologue
    .line 191
    add-int/lit8 v1, p1, -0x5

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget-object v2, Lmiui/security/MiuiLockPatternUtils;->FAILED_ATTEMPT_TIMEOUT_SECONDS_ARRAY:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 192
    .local v0, timeoutIdx:I
    sget-object v1, Lmiui/security/MiuiLockPatternUtils;->FAILED_ATTEMPT_TIMEOUT_SECONDS_ARRAY:[I

    aget v1, v1, v0

    mul-int/lit16 v1, v1, 0x3e8

    return v1
.end method


# virtual methods
.method public checkMiuiLockPattern(Ljava/util/List;)Z
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v6, 0x1

    .line 111
    :try_start_0
    sget-object v7, Lmiui/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v8, p0, Lmiui/security/MiuiLockPatternUtils;->mType:I

    aget-object v7, v7, v8

    iget-object v0, v7, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    .line 112
    .local v0, filename:Ljava/lang/String;
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    invoke-direct {v4, v0, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .local v4, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v5, v7, [B

    .line 114
    .local v5, stored:[B
    const/4 v7, 0x0

    array-length v8, v5

    invoke-virtual {v4, v5, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    .line 115
    .local v2, got:I
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 116
    if-gtz v2, :cond_0

    .line 124
    .end local v0           #filename:Ljava/lang/String;
    .end local v2           #got:I
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .end local v5           #stored:[B
    :goto_0
    return v6

    .line 120
    .restart local v0       #filename:Ljava/lang/String;
    .restart local v2       #got:I
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #stored:[B
    :cond_0
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->callPatternToHash(Ljava/util/List;)[B

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    goto :goto_0

    .line 121
    .end local v0           #filename:Ljava/lang/String;
    .end local v2           #got:I
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .end local v5           #stored:[B
    :catch_0
    move-exception v1

    .line 122
    .local v1, fnfe:Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 123
    .end local v1           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 124
    .local v3, ioe:Ljava/io/IOException;
    goto :goto_0
.end method

.method public clearLockoutAttemptDeadline()V
    .locals 3

    .prologue
    .line 166
    const-string v0, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lmiui/security/MiuiLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 167
    return-void
.end method

.method public getKeyguardLockoutAttemptDeadline(I)J
    .locals 7
    .parameter "failedAttempts"

    .prologue
    const-wide/16 v4, 0x0

    .line 178
    const-string v6, "lockscreen.lockoutattemptdeadline"

    invoke-virtual {p0, v6, v4, v5}, Lmiui/security/MiuiLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 179
    .local v0, deadline:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 180
    .local v2, now:J
    cmp-long v6, v0, v2

    if-gez v6, :cond_1

    move-wide v0, v4

    .line 187
    .end local v0           #deadline:J
    :cond_0
    :goto_0
    return-wide v0

    .line 183
    .restart local v0       #deadline:J
    :cond_1
    invoke-direct {p0, p1}, Lmiui/security/MiuiLockPatternUtils;->getTimeoutInMsByFailedAttempts(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 184
    const-string v4, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, p1}, Lmiui/security/MiuiLockPatternUtils;->getTimeoutInMsByFailedAttempts(I)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v5, v2

    invoke-virtual {p0, v4, v5, v6}, Lmiui/security/MiuiLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 185
    invoke-direct {p0, p1}, Lmiui/security/MiuiLockPatternUtils;->getTimeoutInMsByFailedAttempts(I)I

    move-result v4

    int-to-long v4, v4

    add-long v0, v2, v4

    goto :goto_0
.end method

.method public getOwnerInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lmiui/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_owner_info"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isOwnerInfoEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 200
    iget-object v1, p0, Lmiui/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_owner_info_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveMiuiLockPattern(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->callPatternToHash(Ljava/util/List;)[B

    move-result-object v2

    .line 143
    .local v2, hash:[B
    sget-object v5, Lmiui/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v6, p0, Lmiui/security/MiuiLockPatternUtils;->mType:I

    aget-object v5, v5, v6

    iget-object v0, v5, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    .line 146
    .local v0, filename:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .local v4, raf:Ljava/io/RandomAccessFile;
    if-nez p1, :cond_0

    .line 149
    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 153
    :goto_0
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 161
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    :goto_1
    return-void

    .line 151
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :cond_0
    const/4 v5, 0x0

    array-length v6, v2

    invoke-virtual {v4, v2, v5, v6}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 154
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 156
    .local v1, fnfe:Ljava/io/FileNotFoundException;
    const-string v5, "MiuiLockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to save lock pattern to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 157
    .end local v1           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 159
    .local v3, ioe:Ljava/io/IOException;
    const-string v5, "MiuiLockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to save lock pattern to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public savedMiuiLockPatternExists()Z
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lmiui/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v1, p0, Lmiui/security/MiuiLockPatternUtils;->mType:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;->mHaveNonZeroFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setKeyguardLockoutAttemptDeadline(I)J
    .locals 6
    .parameter "failedAttempts"

    .prologue
    .line 171
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, p1}, Lmiui/security/MiuiLockPatternUtils;->getTimeoutInMsByFailedAttempts(I)I

    move-result v4

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 172
    .local v0, deadline:J
    const-string v2, "lockscreen.lockoutattemptdeadline"

    invoke-virtual {p0, v2, v0, v1}, Lmiui/security/MiuiLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 173
    return-wide v0
.end method
