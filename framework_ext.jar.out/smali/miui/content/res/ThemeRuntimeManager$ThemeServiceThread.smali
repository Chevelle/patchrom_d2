.class Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;
.super Ljava/lang/Thread;
.source "ThemeRuntimeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/res/ThemeRuntimeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeServiceThread"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/content/res/ThemeRuntimeManager;


# direct methods
.method private constructor <init>(Lmiui/content/res/ThemeRuntimeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/content/res/ThemeRuntimeManager;Lmiui/content/res/ThemeRuntimeManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;-><init>(Lmiui/content/res/ThemeRuntimeManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 120
    :goto_0
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    #calls: Lmiui/content/res/ThemeRuntimeManager;->bindService()V
    invoke-static {v1}, Lmiui/content/res/ThemeRuntimeManager;->access$300(Lmiui/content/res/ThemeRuntimeManager;)V

    .line 121
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    #getter for: Lmiui/content/res/ThemeRuntimeManager;->mJobLocker:[B
    invoke-static {v1}, Lmiui/content/res/ThemeRuntimeManager;->access$400(Lmiui/content/res/ThemeRuntimeManager;)[B

    move-result-object v2

    monitor-enter v2

    .line 122
    :goto_1
    :try_start_0
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    #getter for: Lmiui/content/res/ThemeRuntimeManager;->mPendingJobs:Ljava/util/Stack;
    invoke-static {v1}, Lmiui/content/res/ThemeRuntimeManager;->access$500(Lmiui/content/res/ThemeRuntimeManager;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    #getter for: Lmiui/content/res/ThemeRuntimeManager;->mServiceLocker:[B
    invoke-static {v1}, Lmiui/content/res/ThemeRuntimeManager;->access$100(Lmiui/content/res/ThemeRuntimeManager;)[B

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 124
    :try_start_1
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    #getter for: Lmiui/content/res/ThemeRuntimeManager;->mService:Lmiui/content/res/IThemeService;
    invoke-static {v1}, Lmiui/content/res/ThemeRuntimeManager;->access$200(Lmiui/content/res/ThemeRuntimeManager;)Lmiui/content/res/IThemeService;

    move-result-object v1

    if-nez v1, :cond_1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :cond_0
    :try_start_2
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    #getter for: Lmiui/content/res/ThemeRuntimeManager;->mJobLocker:[B
    invoke-static {v1}, Lmiui/content/res/ThemeRuntimeManager;->access$400(Lmiui/content/res/ThemeRuntimeManager;)[B

    move-result-object v1

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 135
    :goto_2
    :try_start_3
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    #getter for: Lmiui/content/res/ThemeRuntimeManager;->mPendingJobs:Ljava/util/Stack;
    invoke-static {v1}, Lmiui/content/res/ThemeRuntimeManager;->access$500(Lmiui/content/res/ThemeRuntimeManager;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    #calls: Lmiui/content/res/ThemeRuntimeManager;->unbindService()V
    invoke-static {v1}, Lmiui/content/res/ThemeRuntimeManager;->access$700(Lmiui/content/res/ThemeRuntimeManager;)V

    .line 137
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    const/4 v3, 0x1

    #setter for: Lmiui/content/res/ThemeRuntimeManager;->mThreadFinished:Z
    invoke-static {v1, v3}, Lmiui/content/res/ThemeRuntimeManager;->access$802(Lmiui/content/res/ThemeRuntimeManager;Z)Z

    .line 138
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 142
    return-void

    .line 125
    :cond_1
    :try_start_4
    iget-object v4, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    #getter for: Lmiui/content/res/ThemeRuntimeManager;->mPendingJobs:Ljava/util/Stack;
    invoke-static {v1}, Lmiui/content/res/ThemeRuntimeManager;->access$500(Lmiui/content/res/ThemeRuntimeManager;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    #calls: Lmiui/content/res/ThemeRuntimeManager;->saveIconInner(Ljava/lang/String;)V
    invoke-static {v4, v1}, Lmiui/content/res/ThemeRuntimeManager;->access$600(Lmiui/content/res/ThemeRuntimeManager;Ljava/lang/String;)V

    .line 126
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    .line 140
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 140
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_2
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0
.end method
