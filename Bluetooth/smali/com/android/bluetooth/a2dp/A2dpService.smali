.class public Lcom/android/bluetooth/a2dp/A2dpService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "A2dpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "A2dpService"

.field private static sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;


# instance fields
.field private mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/a2dp/A2dpService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method private static declared-synchronized clearA2dpService()V
    .locals 2

    .prologue
    .line 104
    const-class v0, Lcom/android/bluetooth/a2dp/A2dpService;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit v0

    return-void

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;
    .locals 2

    .prologue
    .line 74
    const-class v1, Lcom/android/bluetooth/a2dp/A2dpService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized setA2dpService(Lcom/android/bluetooth/a2dp/A2dpService;)V
    .locals 2
    .parameter "instance"

    .prologue
    .line 89
    const-class v1, Lcom/android/bluetooth/a2dp/A2dpService;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    sput-object p0, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    monitor-exit v1

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected cleanup()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->cleanup()V

    .line 67
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->clearA2dpService()V

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 108
    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-nez v3, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v1

    .line 115
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 116
    .local v0, connectionState:I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v1, v2, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessage(ILjava/lang/Object;)V

    move v1, v2

    .line 122
    goto :goto_0
.end method

.method disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 126
    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 129
    .local v0, connectionState:I
    if-eq v0, v4, :cond_0

    if-eq v0, v1, :cond_0

    .line 131
    const/4 v1, 0x0

    .line 135
    :goto_0
    return v1

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v2, v4, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 149
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 2
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "A2dpService"

    return-object v0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .parameter "device"

    .prologue
    .line 164
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getBluetoothA2dpSinkPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 169
    .local v0, priority:I
    return v0
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;-><init>(Lcom/android/bluetooth/a2dp/A2dpService;)V

    return-object v0
.end method

.method declared-synchronized isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 154
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->getBluetoothA2dpSinkPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method protected start()Z
    .locals 1

    .prologue
    .line 53
    invoke-static {p0, p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->make(Lcom/android/bluetooth/a2dp/A2dpService;Landroid/content/Context;)Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 54
    invoke-static {p0}, Lcom/android/bluetooth/a2dp/A2dpService;->setA2dpService(Lcom/android/bluetooth/a2dp/A2dpService;)V

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method protected stop()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->doQuit()V

    .line 60
    const/4 v0, 0x1

    return v0
.end method
