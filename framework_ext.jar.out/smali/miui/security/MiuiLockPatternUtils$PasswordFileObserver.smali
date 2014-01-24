.class Lmiui/security/MiuiLockPatternUtils$PasswordFileObserver;
.super Landroid/os/FileObserver;
.source "MiuiLockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/security/MiuiLockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PasswordFileObserver"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "path"
    .parameter "mask"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 60
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 9
    .parameter "event"
    .parameter "path"

    .prologue
    .line 64
    invoke-static {}, Lmiui/security/MiuiLockPatternUtils;->access$000()[Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;

    move-result-object v3

    array-length v2, v3

    .line 65
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 66
    invoke-static {}, Lmiui/security/MiuiLockPatternUtils;->access$000()[Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;

    move-result-object v3

    aget-object v0, v3, v1

    .line 67
    .local v0, data:Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;
    iget-object v3, v0, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFile:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    const-string v3, "MiuiLockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "password file changed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
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

    :goto_1
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 65
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 72
    .end local v0           #data:Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;
    :cond_2
    return-void
.end method
