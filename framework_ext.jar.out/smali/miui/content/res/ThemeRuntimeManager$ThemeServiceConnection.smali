.class Lmiui/content/res/ThemeRuntimeManager$ThemeServiceConnection;
.super Ljava/lang/Object;
.source "ThemeRuntimeManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/res/ThemeRuntimeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/content/res/ThemeRuntimeManager;


# direct methods
.method private constructor <init>(Lmiui/content/res/ThemeRuntimeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceConnection;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/content/res/ThemeRuntimeManager;Lmiui/content/res/ThemeRuntimeManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceConnection;-><init>(Lmiui/content/res/ThemeRuntimeManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 96
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceConnection;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    #getter for: Lmiui/content/res/ThemeRuntimeManager;->mServiceLocker:[B
    invoke-static {v0}, Lmiui/content/res/ThemeRuntimeManager;->access$100(Lmiui/content/res/ThemeRuntimeManager;)[B

    move-result-object v1

    monitor-enter v1

    .line 97
    :try_start_0
    const-string v0, "themeservice"

    const-string v2, "service connected"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceConnection;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    invoke-static {p2}, Lmiui/content/res/IThemeService$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/content/res/IThemeService;

    move-result-object v2

    #setter for: Lmiui/content/res/ThemeRuntimeManager;->mService:Lmiui/content/res/IThemeService;
    invoke-static {v0, v2}, Lmiui/content/res/ThemeRuntimeManager;->access$202(Lmiui/content/res/ThemeRuntimeManager;Lmiui/content/res/IThemeService;)Lmiui/content/res/IThemeService;

    .line 99
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceConnection;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    #getter for: Lmiui/content/res/ThemeRuntimeManager;->mServiceLocker:[B
    invoke-static {v0}, Lmiui/content/res/ThemeRuntimeManager;->access$100(Lmiui/content/res/ThemeRuntimeManager;)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 100
    monitor-exit v1

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 105
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceConnection;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    #getter for: Lmiui/content/res/ThemeRuntimeManager;->mServiceLocker:[B
    invoke-static {v0}, Lmiui/content/res/ThemeRuntimeManager;->access$100(Lmiui/content/res/ThemeRuntimeManager;)[B

    move-result-object v1

    monitor-enter v1

    .line 106
    :try_start_0
    const-string v0, "themeservice"

    const-string v2, "service disconnected"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceConnection;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    const/4 v2, 0x0

    #setter for: Lmiui/content/res/ThemeRuntimeManager;->mService:Lmiui/content/res/IThemeService;
    invoke-static {v0, v2}, Lmiui/content/res/ThemeRuntimeManager;->access$202(Lmiui/content/res/ThemeRuntimeManager;Lmiui/content/res/IThemeService;)Lmiui/content/res/IThemeService;

    .line 108
    monitor-exit v1

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
