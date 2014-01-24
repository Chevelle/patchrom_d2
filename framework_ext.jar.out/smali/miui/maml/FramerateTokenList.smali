.class public Lmiui/maml/FramerateTokenList;
.super Ljava/lang/Object;
.source "FramerateTokenList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/FramerateTokenList$FramerateToken;,
        Lmiui/maml/FramerateTokenList$FramerateChangeListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FramerateTokenList"


# instance fields
.field private mCurFramerate:F

.field private mFramerateChangeListener:Lmiui/maml/FramerateTokenList$FramerateChangeListener;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/FramerateTokenList$FramerateToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method public constructor <init>(Lmiui/maml/FramerateTokenList$FramerateChangeListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    .line 47
    iput-object p1, p0, Lmiui/maml/FramerateTokenList;->mFramerateChangeListener:Lmiui/maml/FramerateTokenList$FramerateChangeListener;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lmiui/maml/FramerateTokenList;)Lmiui/maml/FramerateTokenList$FramerateChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lmiui/maml/FramerateTokenList;->mFramerateChangeListener:Lmiui/maml/FramerateTokenList$FramerateChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/maml/FramerateTokenList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 8
    invoke-direct {p0}, Lmiui/maml/FramerateTokenList;->onChange()V

    return-void
.end method

.method private onChange()V
    .locals 5

    .prologue
    .line 60
    const/4 v1, 0x0

    .line 61
    .local v1, r:F
    iget-object v4, p0, Lmiui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 62
    :try_start_0
    iget-object v3, p0, Lmiui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/FramerateTokenList$FramerateToken;

    .line 63
    .local v2, t:Lmiui/maml/FramerateTokenList$FramerateToken;
    iget v3, v2, Lmiui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_0

    .line 64
    iget v1, v2, Lmiui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    goto :goto_0

    .line 66
    .end local v2           #t:Lmiui/maml/FramerateTokenList$FramerateToken;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iput v1, p0, Lmiui/maml/FramerateTokenList;->mCurFramerate:F

    .line 68
    return-void

    .line 66
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;
    .locals 4
    .parameter "name"

    .prologue
    .line 51
    const-string v1, "FramerateTokenList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Lmiui/maml/FramerateTokenList$FramerateToken;

    invoke-direct {v0, p0, p1}, Lmiui/maml/FramerateTokenList$FramerateToken;-><init>(Lmiui/maml/FramerateTokenList;Ljava/lang/String;)V

    .line 53
    .local v0, token:Lmiui/maml/FramerateTokenList$FramerateToken;
    iget-object v2, p0, Lmiui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 54
    :try_start_0
    iget-object v1, p0, Lmiui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    monitor-exit v2

    .line 56
    return-object v0

    .line 55
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFramerate()F
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lmiui/maml/FramerateTokenList;->mCurFramerate:F

    return v0
.end method
