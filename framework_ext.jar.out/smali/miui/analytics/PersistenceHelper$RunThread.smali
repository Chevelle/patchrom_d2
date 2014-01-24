.class Lmiui/analytics/PersistenceHelper$RunThread;
.super Ljava/lang/Thread;
.source "PersistenceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/analytics/PersistenceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunThread"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/analytics/PersistenceHelper;


# direct methods
.method private constructor <init>(Lmiui/analytics/PersistenceHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lmiui/analytics/PersistenceHelper$RunThread;->this$0:Lmiui/analytics/PersistenceHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/analytics/PersistenceHelper;Lmiui/analytics/PersistenceHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lmiui/analytics/PersistenceHelper$RunThread;-><init>(Lmiui/analytics/PersistenceHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 61
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 63
    iget-object v0, p0, Lmiui/analytics/PersistenceHelper$RunThread;->this$0:Lmiui/analytics/PersistenceHelper;

    #getter for: Lmiui/analytics/PersistenceHelper;->mSynchronized:Ljava/lang/Object;
    invoke-static {v0}, Lmiui/analytics/PersistenceHelper;->access$000(Lmiui/analytics/PersistenceHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 64
    :try_start_0
    iget-object v0, p0, Lmiui/analytics/PersistenceHelper$RunThread;->this$0:Lmiui/analytics/PersistenceHelper;

    new-instance v2, Lmiui/analytics/PersistenceHelper$RunThread$1;

    invoke-direct {v2, p0}, Lmiui/analytics/PersistenceHelper$RunThread$1;-><init>(Lmiui/analytics/PersistenceHelper$RunThread;)V

    #setter for: Lmiui/analytics/PersistenceHelper;->mWorkHandler:Landroid/os/Handler;
    invoke-static {v0, v2}, Lmiui/analytics/PersistenceHelper;->access$102(Lmiui/analytics/PersistenceHelper;Landroid/os/Handler;)Landroid/os/Handler;

    .line 85
    iget-object v0, p0, Lmiui/analytics/PersistenceHelper$RunThread;->this$0:Lmiui/analytics/PersistenceHelper;

    #getter for: Lmiui/analytics/PersistenceHelper;->mSynchronized:Ljava/lang/Object;
    invoke-static {v0}, Lmiui/analytics/PersistenceHelper;->access$000(Lmiui/analytics/PersistenceHelper;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 86
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 89
    return-void

    .line 86
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
