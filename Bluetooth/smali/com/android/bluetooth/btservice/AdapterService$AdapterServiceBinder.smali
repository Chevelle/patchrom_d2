.class Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;
.super Landroid/bluetooth/IBluetooth$Stub;
.source "AdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdapterServiceBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/btservice/AdapterService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 0
    .parameter "svc"

    .prologue
    .line 483
    invoke-direct {p0}, Landroid/bluetooth/IBluetooth$Stub;-><init>()V

    .line 484
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 485
    return-void
.end method


# virtual methods
.method public cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 706
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 707
    const-string v2, "BluetoothAdapterService"

    const-string v3, "cancelBondProcess(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_0
    :goto_0
    return v1

    .line 711
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 712
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public cancelDiscovery()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 649
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 650
    const-string v2, "BluetoothAdapterService"

    const-string v3, "cancelDiscovery(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_0
    :goto_0
    return v1

    .line 654
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 655
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 656
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->cancelDiscovery()Z

    move-result v1

    goto :goto_0
.end method

.method public cleanup()Z
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 488
    const/4 v0, 0x1

    return v0
.end method

.method public connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .parameter "device"
    .parameter "type"
    .parameter "uuid"
    .parameter "port"
    .parameter "flag"

    .prologue
    const/4 v1, 0x0

    .line 842
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 843
    const-string v2, "BluetoothAdapterService"

    const-string v3, "connectSocket(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_0
    :goto_0
    return-object v1

    .line 847
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 848
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 849
    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/btservice/AdapterService;->connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_0
.end method

.method public createBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 695
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 696
    const-string v2, "BluetoothAdapterService"

    const-string v3, "createBond(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_0
    :goto_0
    return v1

    .line 700
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 701
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 702
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->createBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .parameter "type"
    .parameter "serviceName"
    .parameter "uuid"
    .parameter "port"
    .parameter "flag"

    .prologue
    const/4 v1, 0x0

    .line 854
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 855
    const-string v2, "BluetoothAdapterService"

    const-string v3, "createSocketChannel(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_0
    :goto_0
    return-object v1

    .line 859
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 860
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 861
    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/btservice/AdapterService;->createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_0
.end method

.method public disable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 536
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 538
    const-string v2, "BluetoothAdapterService"

    const-string v3, "disable(): not allowed for non-active user and non system user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_0
    :goto_0
    return v1

    .line 542
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 543
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->disable()Z

    move-result v1

    goto :goto_0
.end method

.method public enable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 512
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 514
    const-string v2, "BluetoothAdapterService"

    const-string v3, "enable(): not allowed for non-active user and non system user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_0
    :goto_0
    return v1

    .line 518
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 519
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->enable()Z

    move-result v1

    goto :goto_0
.end method

.method public enableNoAutoConnect()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 524
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 526
    const-string v2, "BluetoothAdapterService"

    const-string v3, "enableNoAuto(): not allowed for non-active user and non system user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_0
    :goto_0
    return v1

    .line 530
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 531
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->enableNoAutoConnect()Z

    move-result v1

    goto :goto_0
.end method

.method public fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 790
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 791
    const-string v2, "BluetoothAdapterService"

    const-string v3, "fetchRemoteUuids(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_0
    :goto_0
    return v1

    .line 795
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 796
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 797
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAdapterConnectionState()I
    .locals 2

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 679
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 680
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterConnectionState()I

    move-result v1

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 548
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 550
    const-string v2, "BluetoothAdapterService"

    const-string v3, "getAddress(): not allowed for non-active user and non system user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_0
    :goto_0
    return-object v1

    .line 554
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 555
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getBondState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 730
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    const/16 v1, 0xa

    .line 731
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getBondState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    goto :goto_0
.end method

.method public getBondedDevices()[Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 672
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/bluetooth/BluetoothDevice;

    .line 673
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    goto :goto_0
.end method

.method public getDiscoverableTimeout()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 616
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 617
    const-string v2, "BluetoothAdapterService"

    const-string v3, "getDiscoverableTimeout(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_0
    :goto_0
    return v1

    .line 621
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 622
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDiscoverableTimeout()I

    move-result v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 571
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 573
    const-string v2, "BluetoothAdapterService"

    const-string v3, "getName(): not allowed for non-active user and non system user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_0
    :goto_0
    return-object v1

    .line 577
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 578
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getProfileConnectionState(I)I
    .locals 4
    .parameter "profile"

    .prologue
    const/4 v1, 0x0

    .line 684
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 685
    const-string v2, "BluetoothAdapterService"

    const-string v3, "getProfileConnectionState: not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_0
    :goto_0
    return v1

    .line 689
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 690
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getProfileConnectionState(I)I

    move-result v1

    goto :goto_0
.end method

.method public getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 4
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 746
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 747
    const-string v2, "BluetoothAdapterService"

    const-string v3, "getRemoteAlias(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_0
    :goto_0
    return-object v1

    .line 751
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 752
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 753
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 768
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 769
    const-string v2, "BluetoothAdapterService"

    const-string v3, "getRemoteClass(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_0
    :goto_0
    return v1

    .line 773
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 774
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 775
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    goto :goto_0
.end method

.method public getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 4
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 735
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 736
    const-string v2, "BluetoothAdapterService"

    const-string v3, "getRemoteName(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_0
    :goto_0
    return-object v1

    .line 740
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 741
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 742
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;
    .locals 4
    .parameter "device"

    .prologue
    const/4 v3, 0x0

    .line 779
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 780
    const-string v1, "BluetoothAdapterService"

    const-string v2, "getRemoteUuids(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    new-array v1, v3, [Landroid/os/ParcelUuid;

    .line 786
    :goto_0
    return-object v1

    .line 784
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 785
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    new-array v1, v3, [Landroid/os/ParcelUuid;

    goto :goto_0

    .line 786
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;

    move-result-object v1

    goto :goto_0
.end method

.method public getScanMode()I
    .locals 4

    .prologue
    const/16 v1, 0x14

    .line 594
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 595
    const-string v2, "BluetoothAdapterService"

    const-string v3, "getScanMode(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_0
    :goto_0
    return v1

    .line 599
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 600
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getScanMode()I

    move-result v1

    goto :goto_0
.end method

.method public getService()Lcom/android/bluetooth/btservice/AdapterService;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    #calls: Lcom/android/bluetooth/btservice/AdapterService;->isAvailable()Z
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$300(Lcom/android/bluetooth/btservice/AdapterService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 495
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 507
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    const/16 v1, 0xa

    .line 508
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v1

    goto :goto_0
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 560
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 561
    const-string v1, "BluetoothAdapterService"

    const-string v2, "getUuids(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    new-array v1, v3, [Landroid/os/ParcelUuid;

    .line 567
    :goto_0
    return-object v1

    .line 565
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 566
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    new-array v1, v3, [Landroid/os/ParcelUuid;

    goto :goto_0

    .line 567
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    goto :goto_0
.end method

.method public isDiscovering()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 659
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 660
    const-string v2, "BluetoothAdapterService"

    const-string v3, "isDiscovering(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_0
    :goto_0
    return v1

    .line 664
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 665
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isDiscovering()Z

    move-result v1

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 500
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 501
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method public registerCallback(Landroid/bluetooth/IBluetoothCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 866
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    .line 868
    :goto_0
    return-void

    .line 867
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V

    goto :goto_0
.end method

.method public removeBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 717
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 718
    const-string v2, "BluetoothAdapterService"

    const-string v3, "removeBond(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_0
    :goto_0
    return v1

    .line 722
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 723
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->removeBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 1
    .parameter "device"
    .parameter "profile"
    .parameter "state"
    .parameter "prevState"

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 836
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    .line 838
    :goto_0
    return-void

    .line 837
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    goto :goto_0
.end method

.method public setDiscoverableTimeout(I)Z
    .locals 4
    .parameter "timeout"

    .prologue
    const/4 v1, 0x0

    .line 627
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 628
    const-string v2, "BluetoothAdapterService"

    const-string v3, "setDiscoverableTimeout(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_0
    :goto_0
    return v1

    .line 632
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 633
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 634
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->setDiscoverableTimeout(I)Z

    move-result v1

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 583
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 584
    const-string v2, "BluetoothAdapterService"

    const-string v3, "setName(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_0
    :goto_0
    return v1

    .line 588
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 589
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->setName(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 4
    .parameter "device"
    .parameter "accept"

    .prologue
    const/4 v1, 0x0

    .line 823
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 824
    const-string v2, "BluetoothAdapterService"

    const-string v3, "setPairingConfirmation(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_0
    :goto_0
    return v1

    .line 828
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 829
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 830
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public setPasskey(Landroid/bluetooth/BluetoothDevice;ZI[B)Z
    .locals 4
    .parameter "device"
    .parameter "accept"
    .parameter "len"
    .parameter "passkey"

    .prologue
    const/4 v1, 0x0

    .line 812
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 813
    const-string v2, "BluetoothAdapterService"

    const-string v3, "setPasskey(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_0
    :goto_0
    return v1

    .line 817
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 818
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->setPasskey(Landroid/bluetooth/BluetoothDevice;ZI[B)Z

    move-result v1

    goto :goto_0
.end method

.method public setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z
    .locals 4
    .parameter "device"
    .parameter "accept"
    .parameter "len"
    .parameter "pinCode"

    .prologue
    const/4 v1, 0x0

    .line 801
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 802
    const-string v2, "BluetoothAdapterService"

    const-string v3, "setPin(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_0
    :goto_0
    return v1

    .line 806
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 807
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 808
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z

    move-result v1

    goto :goto_0
.end method

.method public setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 4
    .parameter "device"
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 757
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 758
    const-string v2, "BluetoothAdapterService"

    const-string v3, "setRemoteAlias(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_0
    :goto_0
    return v1

    .line 762
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 763
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 764
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public setScanMode(II)Z
    .locals 4
    .parameter "mode"
    .parameter "duration"

    .prologue
    const/4 v1, 0x0

    .line 605
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 606
    const-string v2, "BluetoothAdapterService"

    const-string v3, "setScanMode(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_0
    :goto_0
    return v1

    .line 610
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 611
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 612
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setScanMode(II)Z

    move-result v1

    goto :goto_0
.end method

.method public startDiscovery()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 638
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 639
    const-string v2, "BluetoothAdapterService"

    const-string v3, "startDiscovery(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_0
    :goto_0
    return v1

    .line 643
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 644
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->startDiscovery()Z

    move-result v1

    goto :goto_0
.end method

.method public unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 871
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 872
    .local v0, service:Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    .line 874
    :goto_0
    return-void

    .line 873
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V

    goto :goto_0
.end method
