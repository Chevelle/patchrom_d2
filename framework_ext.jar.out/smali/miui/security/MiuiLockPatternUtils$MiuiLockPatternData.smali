.class public Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;
.super Ljava/lang/Object;
.source "MiuiLockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/security/MiuiLockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiuiLockPatternData"
.end annotation


# instance fields
.field public final mHaveNonZeroFile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mLockFile:Ljava/lang/String;

.field public mLockFilename:Ljava/lang/String;

.field public mPasswordObserver:Landroid/os/FileObserver;

.field public mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "lockFile"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;->mHaveNonZeroFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    iput-object p1, p0, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;->mTag:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFile:Ljava/lang/String;

    .line 46
    return-void
.end method
