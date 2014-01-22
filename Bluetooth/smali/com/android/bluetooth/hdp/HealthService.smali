.class public Lcom/android/bluetooth/hdp/HealthService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "HealthService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hdp/HealthService$1;,
        Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;,
        Lcom/android/bluetooth/hdp/HealthService$HealthChannel;,
        Lcom/android/bluetooth/hdp/HealthService$AppInfo;,
        Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;,
        Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;,
        Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;
    }
.end annotation


# static fields
.field private static final APP_REG_STATE_DEREG_FAILED:I = 0x3

.field private static final APP_REG_STATE_DEREG_SUCCESS:I = 0x2

.field private static final APP_REG_STATE_REG_FAILED:I = 0x1

.field private static final APP_REG_STATE_REG_SUCCESS:I = 0x0

.field private static final CHANNEL_TYPE_ANY:I = 0x2

.field private static final CHANNEL_TYPE_RELIABLE:I = 0x0

.field private static final CHANNEL_TYPE_STREAMING:I = 0x1

.field private static final CONN_STATE_CONNECTED:I = 0x1

.field private static final CONN_STATE_CONNECTING:I = 0x0

.field private static final CONN_STATE_DESTROYED:I = 0x4

.field private static final CONN_STATE_DISCONNECTED:I = 0x3

.field private static final CONN_STATE_DISCONNECTING:I = 0x2

.field private static final DBG:Z = false

.field private static final MDEP_ROLE_SINK:I = 0x1

.field private static final MDEP_ROLE_SOURCE:I = 0x0

.field private static final MESSAGE_APP_REGISTRATION_CALLBACK:I = 0xb

.field private static final MESSAGE_CHANNEL_STATE_CALLBACK:I = 0xc

.field private static final MESSAGE_CONNECT_CHANNEL:I = 0x3

.field private static final MESSAGE_DISCONNECT_CHANNEL:I = 0x4

.field private static final MESSAGE_REGISTER_APPLICATION:I = 0x1

.field private static final MESSAGE_UNREGISTER_APPLICATION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HealthService"


# instance fields
.field private mApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/BluetoothHealthAppConfiguration;",
            "Lcom/android/bluetooth/hdp/HealthService$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

.field private mHealthChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/hdp/HealthService$HealthChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mHealthDevices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 74
    invoke-static {}, Lcom/android/bluetooth/hdp/HealthService;->classInitNative()V

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 830
    return-void
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/hdp/HealthService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->unregisterHealthAppNative(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/hdp/HealthService;[BI)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hdp/HealthService;->connectChannelNative([BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p6}, Lcom/android/bluetooth/hdp/HealthService;->callHealthChannelCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/hdp/HealthService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->disconnectChannelNative(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/hdp/HealthService;I)Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->findAppConfigByAppId(I)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/hdp/HealthService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->convertHalRegStatus(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/hdp/HealthService;I)Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->findChannelById(I)Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/bluetooth/hdp/HealthService;[B)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthChannels:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/bluetooth/hdp/HealthService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->convertHalChannelState(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/bluetooth/hdp/HealthService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/bluetooth/hdp/HealthService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/hdp/HealthService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->convertRoleToHal(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/hdp/HealthService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->convertChannelTypeToHal(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/hdp/HealthService;IILjava/lang/String;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/hdp/HealthService;->registerHealthAppNative(IILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hdp/HealthService;->callStatusCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    return-void
.end method

.method private broadcastHealthDeviceStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 7
    .parameter "device"
    .parameter "newChannelState"

    .prologue
    const/4 v6, 0x2

    .line 627
    iget-object v4, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 628
    iget-object v4, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 632
    .local v1, currDeviceState:I
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hdp/HealthService;->convertState(I)I

    move-result v2

    .line 634
    .local v2, newDeviceState:I
    if-ne v1, v2, :cond_2

    .line 685
    :cond_1
    :goto_0
    return-void

    .line 636
    :cond_2
    const/4 v3, 0x0

    .line 638
    .local v3, sendIntent:Z
    packed-switch v1, :pswitch_data_0

    .line 683
    :cond_3
    :goto_1
    if-eqz v3, :cond_1

    .line 684
    invoke-direct {p0, p1, v2, v1}, Lcom/android/bluetooth/hdp/HealthService;->updateAndSendIntent(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 641
    :pswitch_0
    const/4 v3, 0x1

    .line 642
    goto :goto_1

    .line 647
    :pswitch_1
    if-ne v2, v6, :cond_4

    .line 648
    const/4 v3, 0x1

    goto :goto_1

    .line 651
    :cond_4
    new-array v4, v6, [I

    fill-array-data v4, :array_0

    invoke-direct {p0, p1, v4}, Lcom/android/bluetooth/hdp/HealthService;->findChannelByStates(Landroid/bluetooth/BluetoothDevice;[I)Ljava/util/List;

    move-result-object v0

    .line 654
    .local v0, chan:Ljava/util/List;,"Ljava/util/List<Lcom/android/bluetooth/hdp/HealthService$HealthChannel;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 655
    const/4 v3, 0x1

    goto :goto_1

    .line 663
    .end local v0           #chan:Ljava/util/List;,"Ljava/util/List<Lcom/android/bluetooth/hdp/HealthService$HealthChannel;>;"
    :pswitch_2
    new-array v4, v6, [I

    fill-array-data v4, :array_1

    invoke-direct {p0, p1, v4}, Lcom/android/bluetooth/hdp/HealthService;->findChannelByStates(Landroid/bluetooth/BluetoothDevice;[I)Ljava/util/List;

    move-result-object v0

    .line 666
    .restart local v0       #chan:Ljava/util/List;,"Ljava/util/List<Lcom/android/bluetooth/hdp/HealthService$HealthChannel;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 667
    const/4 v3, 0x1

    goto :goto_1

    .line 675
    .end local v0           #chan:Ljava/util/List;,"Ljava/util/List<Lcom/android/bluetooth/hdp/HealthService$HealthChannel;>;"
    :pswitch_3
    new-array v4, v6, [I

    fill-array-data v4, :array_2

    invoke-direct {p0, p1, v4}, Lcom/android/bluetooth/hdp/HealthService;->findChannelByStates(Landroid/bluetooth/BluetoothDevice;[I)Ljava/util/List;

    move-result-object v0

    .line 678
    .restart local v0       #chan:Ljava/util/List;,"Ljava/util/List<Lcom/android/bluetooth/hdp/HealthService$HealthChannel;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 679
    invoke-direct {p0, p1, v2, v1}, Lcom/android/bluetooth/hdp/HealthService;->updateAndSendIntent(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_1

    .line 638
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 651
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 663
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 675
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private callHealthChannelCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V
    .locals 8
    .parameter "config"
    .parameter "device"
    .parameter "state"
    .parameter "prevState"
    .parameter "fd"
    .parameter "id"

    .prologue
    .line 579
    invoke-direct {p0, p2, p3}, Lcom/android/bluetooth/hdp/HealthService;->broadcastHealthDeviceStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Health Device Callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " State Change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hdp/HealthService;->log(Ljava/lang/String;)V

    .line 584
    const/4 v5, 0x0

    .line 585
    .local v5, dupedFd:Landroid/os/ParcelFileDescriptor;
    if-eqz p5, :cond_0

    .line 587
    :try_start_0
    invoke-virtual {p5}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 594
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/hdp/HealthService$AppInfo;

    #getter for: Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mCallback:Landroid/bluetooth/IBluetoothHealthCallback;
    invoke-static {v1}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->access$800(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)Landroid/bluetooth/IBluetoothHealthCallback;

    move-result-object v0

    .line 595
    .local v0, callback:Landroid/bluetooth/IBluetoothHealthCallback;
    if-nez v0, :cond_1

    .line 596
    const-string v1, "HealthService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No callback found for config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :goto_1
    return-void

    .line 588
    .end local v0           #callback:Landroid/bluetooth/IBluetoothHealthCallback;
    :catch_0
    move-exception v7

    .line 589
    .local v7, e:Ljava/io/IOException;
    const/4 v5, 0x0

    .line 590
    const-string v1, "HealthService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while duping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v7           #e:Ljava/io/IOException;
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothHealthCallback;
    :cond_1
    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p3

    move v6, p6

    .line 601
    :try_start_1
    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothHealthCallback;->onHealthChannelStateChange(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 602
    :catch_1
    move-exception v7

    .line 603
    .local v7, e:Landroid/os/RemoteException;
    const-string v1, "HealthService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private callStatusCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    .locals 5
    .parameter "config"
    .parameter "status"

    .prologue
    .line 501
    iget-object v2, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/hdp/HealthService$AppInfo;

    #getter for: Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mCallback:Landroid/bluetooth/IBluetoothHealthCallback;
    invoke-static {v2}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->access$800(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)Landroid/bluetooth/IBluetoothHealthCallback;

    move-result-object v0

    .line 502
    .local v0, callback:Landroid/bluetooth/IBluetoothHealthCallback;
    if-nez v0, :cond_0

    .line 503
    const-string v2, "HealthService"

    const-string v3, "Callback object null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothHealthCallback;->onHealthAppConfigurationStatusChange(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :goto_0
    return-void

    .line 508
    :catch_0
    move-exception v1

    .line 509
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "HealthService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static native classInitNative()V
.end method

.method private cleanupApps()V
    .locals 7

    .prologue
    .line 111
    iget-object v4, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 113
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothHealthAppConfiguration;Lcom/android/bluetooth/hdp/HealthService$AppInfo;>;"
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;

    .line 114
    .local v0, appInfo:Lcom/android/bluetooth/hdp/HealthService$AppInfo;
    #calls: Lcom/android/bluetooth/hdp/HealthService$AppInfo;->cleanup()V
    invoke-static {v0}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->access$100(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)V

    .line 115
    iget-object v4, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    .end local v0           #appInfo:Lcom/android/bluetooth/hdp/HealthService$AppInfo;
    :catch_0
    move-exception v1

    .line 117
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "HealthService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to cleanup appInfo for appid ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothHealthAppConfiguration;Lcom/android/bluetooth/hdp/HealthService$AppInfo;>;"
    :cond_0
    return-void
.end method

.method private native cleanupNative()V
.end method

.method private connectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .locals 7
    .parameter "device"
    .parameter "config"
    .parameter "channelType"

    .prologue
    .line 563
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 564
    const-string v1, "HealthService"

    const-string v2, "connectChannel fail to get a app id from config"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/4 v1, 0x0

    .line 574
    :goto_0
    return v1

    .line 568
    :cond_0
    new-instance v0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;-><init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;ILcom/android/bluetooth/hdp/HealthService$1;)V

    .line 570
    .local v0, chan:Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 571
    .local v6, msg:Landroid/os/Message;
    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 572
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    invoke-virtual {v1, v6}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 574
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private native connectChannelNative([BI)I
.end method

.method private convertChannelTypeToHal(I)I
    .locals 4
    .parameter "channelType"

    .prologue
    const/4 v0, 0x2

    .line 726
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    .line 730
    :cond_0
    :goto_0
    return v0

    .line 727
    :cond_1
    const/16 v1, 0xb

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 728
    :cond_2
    const/16 v1, 0xc

    if-eq p1, v1, :cond_0

    .line 729
    const-string v1, "HealthService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unkonw channel type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private convertHalChannelState(I)I
    .locals 4
    .parameter "halChannelState"

    .prologue
    const/4 v0, 0x0

    .line 543
    packed-switch p1, :pswitch_data_0

    .line 556
    const-string v1, "HealthService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected channel state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :goto_0
    :pswitch_0
    return v0

    .line 545
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 547
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 549
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 543
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private convertHalRegStatus(I)I
    .locals 4
    .parameter "halRegStatus"

    .prologue
    const/4 v0, 0x1

    .line 528
    packed-switch p1, :pswitch_data_0

    .line 538
    const-string v1, "HealthService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected App Registration state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :goto_0
    :pswitch_0
    return v0

    .line 530
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 534
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 536
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 528
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private convertRoleToHal(I)I
    .locals 4
    .parameter "role"

    .prologue
    const/4 v0, 0x1

    .line 719
    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    .line 722
    :cond_0
    :goto_0
    return v0

    .line 720
    :cond_1
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 721
    const-string v1, "HealthService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unkonw role: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private convertState(I)I
    .locals 4
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    .line 704
    packed-switch p1, :pswitch_data_0

    .line 714
    const-string v1, "HealthService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mismatch in Channel and Health Device State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :goto_0
    :pswitch_0
    return v0

    .line 706
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 708
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 710
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 704
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private native disconnectChannelNative(I)Z
.end method

.method private findAppConfigByAppId(I)Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .locals 6
    .parameter "appId"

    .prologue
    .line 514
    const/4 v0, 0x0

    .line 515
    .local v0, appConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    iget-object v3, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 516
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothHealthAppConfiguration;Lcom/android/bluetooth/hdp/HealthService$AppInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/hdp/HealthService$AppInfo;

    #getter for: Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mAppId:I
    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->access$900(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 517
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #appConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    check-cast v0, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 521
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothHealthAppConfiguration;Lcom/android/bluetooth/hdp/HealthService$AppInfo;>;"
    .restart local v0       #appConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :cond_1
    if-nez v0, :cond_2

    .line 522
    const-string v3, "HealthService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No appConfig found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_2
    return-object v0
.end method

.method private findChannelById(I)Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    .locals 5
    .parameter "id"

    .prologue
    .line 734
    iget-object v2, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthChannels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    .line 735
    .local v0, chan:Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelId:I
    invoke-static {v0}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1300(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 738
    .end local v0           #chan:Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    :goto_0
    return-object v0

    .line 737
    :cond_1
    const-string v2, "HealthService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No channel found by id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findChannelByStates(Landroid/bluetooth/BluetoothDevice;[I)Ljava/util/List;
    .locals 8
    .parameter "device"
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/hdp/HealthService$HealthChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 742
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 743
    .local v2, channels:Ljava/util/List;,"Ljava/util/List<Lcom/android/bluetooth/hdp/HealthService$HealthChannel;>;"
    iget-object v7, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthChannels:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    .line 744
    .local v1, chan:Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1100(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 745
    move-object v0, p2

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget v6, v0, v4

    .line 746
    .local v6, state:I
    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mState:I
    invoke-static {v1}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$2500(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I

    move-result v7

    if-ne v7, v6, :cond_1

    .line 747
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 752
    .end local v0           #arr$:[I
    .end local v1           #chan:Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #state:I
    :cond_2
    return-object v2
.end method

.method private getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 757
    const/4 v0, 0x0

    .line 759
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private getStringChannelType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 490
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 491
    const-string v0, "Reliable"

    .line 495
    :goto_0
    return-object v0

    .line 492
    :cond_0
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 493
    const-string v0, "Streaming"

    goto :goto_0

    .line 495
    :cond_1
    const-string v0, "Any"

    goto :goto_0
.end method

.method private native initializeNative()V
.end method

.method private onAppRegistrationState(II)V
    .locals 3
    .parameter "appId"
    .parameter "state"

    .prologue
    .line 474
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 475
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 476
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 477
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 478
    return-void
.end method

.method private onChannelStateChanged(I[BIIILjava/io/FileDescriptor;)V
    .locals 10
    .parameter "appId"
    .parameter "addr"
    .parameter "cfgIndex"
    .parameter "channelId"
    .parameter "state"
    .parameter "pfd"

    .prologue
    .line 482
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 483
    .local v9, msg:Landroid/os/Message;
    new-instance v0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;-><init>(Lcom/android/bluetooth/hdp/HealthService;I[BIIILjava/io/FileDescriptor;Lcom/android/bluetooth/hdp/HealthService$1;)V

    .line 485
    .local v0, channelStateEvent:Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;
    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 486
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    invoke-virtual {v1, v9}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 487
    return-void
.end method

.method private native registerHealthAppNative(IILjava/lang/String;I)I
.end method

.method private native unregisterHealthAppNative(I)Z
.end method

.method private updateAndSendIntent(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 2
    .parameter "device"
    .parameter "newDeviceState"
    .parameter "prevDeviceState"

    .prologue
    .line 689
    if-nez p2, :cond_0

    .line 690
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/bluetooth/hdp/HealthService;->notifyProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    .line 695
    return-void

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected cleanup()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    .line 124
    iget-boolean v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mNativeAvailable:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService;->cleanupNative()V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mNativeAvailable:Z

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthChannels:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 137
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method connectChannelToSink(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .locals 2
    .parameter "device"
    .parameter "config"
    .parameter "channelType"

    .prologue
    .line 422
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hdp/HealthService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/hdp/HealthService;->connectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v0

    return v0
.end method

.method connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .locals 2
    .parameter "device"
    .parameter "config"

    .prologue
    .line 416
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hdp/HealthService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const/16 v0, 0xc

    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/hdp/HealthService;->connectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v0

    return v0
.end method

.method disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .locals 4
    .parameter "device"
    .parameter "config"
    .parameter "channelId"

    .prologue
    .line 428
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hdp/HealthService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-direct {p0, p3}, Lcom/android/bluetooth/hdp/HealthService;->findChannelById(I)Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    move-result-object v0

    .line 430
    .local v0, chan:Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    if-nez v0, :cond_0

    .line 432
    const/4 v2, 0x0

    .line 436
    :goto_0
    return v2

    .line 434
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 435
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 436
    const/4 v2, 0x1

    goto :goto_0
.end method

.method getConnectedHealthDevices()Ljava/util/List;
    .locals 4
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
    .line 461
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hdp/HealthService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hdp/HealthService;->lookupHealthDevicesMatchingStates([I)Ljava/util/List;

    move-result-object v0

    .line 464
    .local v0, devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    return-object v0
.end method

.method getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 456
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hdp/HealthService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method getHealthDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 3
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
    .line 468
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hdp/HealthService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->lookupHealthDevicesMatchingStates([I)Ljava/util/List;

    move-result-object v0

    .line 470
    .local v0, devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    return-object v0
.end method

.method getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .parameter "device"
    .parameter "config"

    .prologue
    .line 441
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hdp/HealthService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const/4 v1, 0x0

    .line 443
    .local v1, healthChan:Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    iget-object v3, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthChannels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    .line 444
    .local v0, chan:Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1100(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    invoke-static {v0}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1200(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 445
    move-object v1, v0

    goto :goto_0

    .line 448
    .end local v0           #chan:Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    :cond_1
    if-nez v1, :cond_2

    .line 449
    const-string v3, "HealthService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No channel found for device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " config: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/4 v3, 0x0

    .line 452
    :goto_1
    return-object v3

    :cond_2
    #getter for: Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;
    invoke-static {v1}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->access$1500(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    goto :goto_1
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "HealthService"

    return-object v0
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;-><init>(Lcom/android/bluetooth/hdp/HealthService;)V

    return-object v0
.end method

.method lookupHealthDevicesMatchingStates([I)Ljava/util/List;
    .locals 9
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
    .line 763
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 765
    .local v3, healthDevices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v8, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 766
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v1}, Lcom/android/bluetooth/hdp/HealthService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 767
    .local v2, healthDeviceState:I
    move-object v0, p1

    .local v0, arr$:[I
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_0

    aget v7, v0, v5

    .line 768
    .local v7, state:I
    if-ne v7, v2, :cond_1

    .line 769
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 767
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 774
    .end local v0           #arr$:[I
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #healthDeviceState:I
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #state:I
    :cond_2
    return-object v3
.end method

.method registerAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/IBluetoothHealthCallback;)Z
    .locals 5
    .parameter "config"
    .parameter "callback"

    .prologue
    const/4 v1, 0x1

    .line 391
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hdp/HealthService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v2, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 395
    const/4 v1, 0x0

    .line 400
    :goto_0
    return v1

    .line 397
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    new-instance v3, Lcom/android/bluetooth/hdp/HealthService$AppInfo;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v4}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;-><init>(Landroid/bluetooth/IBluetoothHealthCallback;Lcom/android/bluetooth/hdp/HealthService$1;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    iget-object v2, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    invoke-virtual {v2, v1, p1}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 399
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected start()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 86
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthChannels:Ljava/util/List;

    .line 87
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    .line 89
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    .line 91
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "BluetoothHdpHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 93
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 94
    .local v0, looper:Landroid/os/Looper;
    new-instance v2, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;-><init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/os/Looper;Lcom/android/bluetooth/hdp/HealthService$1;)V

    iput-object v2, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    .line 95
    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService;->initializeNative()V

    .line 96
    iput-boolean v4, p0, Lcom/android/bluetooth/hdp/HealthService;->mNativeAvailable:Z

    .line 97
    return v4
.end method

.method protected stop()Z
    .locals 3

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 102
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    invoke-virtual {v1}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 103
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService;->cleanupApps()V

    .line 107
    const/4 v1, 0x1

    return v1
.end method

.method unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .locals 3
    .parameter "config"

    .prologue
    .line 404
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hdp/HealthService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 407
    const/4 v1, 0x0

    .line 411
    :goto_0
    return v1

    .line 409
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 410
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 411
    const/4 v1, 0x1

    goto :goto_0
.end method
