.class Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;
.super Landroid/bluetooth/IBluetoothHealth$Stub;
.source "HealthService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hdp/HealthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothHealthBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/hdp/HealthService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/hdp/HealthService;)V
    .locals 0
    .parameter "svc"

    .prologue
    .line 308
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHealth$Stub;-><init>()V

    .line 309
    iput-object p1, p0, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->mService:Lcom/android/bluetooth/hdp/HealthService;

    .line 310
    return-void
.end method

.method private getService()Lcom/android/bluetooth/hdp/HealthService;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 318
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_1

    .line 319
    const-string v1, "HealthService"

    const-string v2, "Health call not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_0
    :goto_0
    return-object v0

    .line 323
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->mService:Lcom/android/bluetooth/hdp/HealthService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->mService:Lcom/android/bluetooth/hdp/HealthService;

    #calls: Lcom/android/bluetooth/hdp/HealthService;->isAvailable()Z
    invoke-static {v1}, Lcom/android/bluetooth/hdp/HealthService;->access$2600(Lcom/android/bluetooth/hdp/HealthService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->mService:Lcom/android/bluetooth/hdp/HealthService;

    goto :goto_0
.end method


# virtual methods
.method public cleanup()Z
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->mService:Lcom/android/bluetooth/hdp/HealthService;

    .line 314
    const/4 v0, 0x1

    return v0
.end method

.method public connectChannelToSink(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .locals 2
    .parameter "device"
    .parameter "config"
    .parameter "channelType"

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->getService()Lcom/android/bluetooth/hdp/HealthService;

    move-result-object v0

    .line 352
    .local v0, service:Lcom/android/bluetooth/hdp/HealthService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 353
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/hdp/HealthService;->connectChannelToSink(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v1

    goto :goto_0
.end method

.method public connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .locals 2
    .parameter "device"
    .parameter "config"

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->getService()Lcom/android/bluetooth/hdp/HealthService;

    move-result-object v0

    .line 345
    .local v0, service:Lcom/android/bluetooth/hdp/HealthService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 346
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hdp/HealthService;->connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    move-result v1

    goto :goto_0
.end method

.method public disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .locals 2
    .parameter "device"
    .parameter "config"
    .parameter "channelId"

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->getService()Lcom/android/bluetooth/hdp/HealthService;

    move-result-object v0

    .line 359
    .local v0, service:Lcom/android/bluetooth/hdp/HealthService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 360
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/hdp/HealthService;->disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v1

    goto :goto_0
.end method

.method public getConnectedHealthDevices()Ljava/util/List;
    .locals 3
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
    .line 377
    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->getService()Lcom/android/bluetooth/hdp/HealthService;

    move-result-object v0

    .line 378
    .local v0, service:Lcom/android/bluetooth/hdp/HealthService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 379
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hdp/HealthService;->getConnectedHealthDevices()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->getService()Lcom/android/bluetooth/hdp/HealthService;

    move-result-object v0

    .line 372
    .local v0, service:Lcom/android/bluetooth/hdp/HealthService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 373
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hdp/HealthService;->getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    goto :goto_0
.end method

.method public getHealthDevicesMatchingConnectionStates([I)Ljava/util/List;
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
    .line 383
    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->getService()Lcom/android/bluetooth/hdp/HealthService;

    move-result-object v0

    .line 384
    .local v0, service:Lcom/android/bluetooth/hdp/HealthService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 385
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hdp/HealthService;->getHealthDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .parameter "device"
    .parameter "config"

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->getService()Lcom/android/bluetooth/hdp/HealthService;

    move-result-object v0

    .line 366
    .local v0, service:Lcom/android/bluetooth/hdp/HealthService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 367
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hdp/HealthService;->getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_0
.end method

.method public registerAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/IBluetoothHealthCallback;)Z
    .locals 2
    .parameter "config"
    .parameter "callback"

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->getService()Lcom/android/bluetooth/hdp/HealthService;

    move-result-object v0

    .line 332
    .local v0, service:Lcom/android/bluetooth/hdp/HealthService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 333
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hdp/HealthService;->registerAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/IBluetoothHealthCallback;)Z

    move-result v1

    goto :goto_0
.end method

.method public unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->getService()Lcom/android/bluetooth/hdp/HealthService;

    move-result-object v0

    .line 338
    .local v0, service:Lcom/android/bluetooth/hdp/HealthService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 339
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hdp/HealthService;->unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    move-result v1

    goto :goto_0
.end method
