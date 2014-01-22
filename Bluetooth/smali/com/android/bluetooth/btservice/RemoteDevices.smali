.class final Lcom/android/bluetooth/btservice/RemoteDevices;
.super Ljava/lang/Object;
.source "RemoteDevices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MESSAGE_UUID_INTENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothRemoteDevices"

.field private static final UUID_INTENT_DELAY:I = 0x1770

.field private static mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private static mSdpTracker:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;

    .line 433
    new-instance v0, Lcom/android/bluetooth/btservice/RemoteDevices$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/RemoteDevices$1;-><init>(Lcom/android/bluetooth/btservice/RemoteDevices;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mHandler:Landroid/os/Handler;

    .line 54
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 55
    sput-object p1, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mSdpTracker:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    .line 58
    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/bluetooth/btservice/AdapterService;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/bluetooth/btservice/RemoteDevices;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->sendUuidIntent(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 453
    return-void
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 448
    const-string v0, "BluetoothRemoteDevices"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-void
.end method

.method private infoLog(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 457
    return-void
.end method

.method private sendDisplayPinIntent([BI)V
    .locals 3
    .parameter "address"
    .parameter "pin"

    .prologue
    .line 227
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 229
    const-string v1, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 230
    const-string v1, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    sget-object v1, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v2, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method private sendUuidIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "device"

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v1

    .line 217
    .local v1, prop:Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.UUID"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 219
    const-string v3, "android.bluetooth.device.extra.UUID"

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 220
    sget-object v2, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v0, v3}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 223
    sget-object v2, Lcom/android/bluetooth/btservice/RemoteDevices;->mSdpTracker:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 224
    return-void

    .line 219
    :cond_0
    #getter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mUuids:[Landroid/os/ParcelUuid;
    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$300(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)[Landroid/os/ParcelUuid;

    move-result-object v2

    goto :goto_0
.end method

.method private warnLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 460
    const-string v0, "BluetoothRemoteDevices"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void
.end method


# virtual methods
.method public Clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method aclStateChangeCallback(I[BI)V
    .locals 4
    .parameter "status"
    .parameter "address"
    .parameter "newState"

    .prologue
    .line 401
    invoke-virtual {p0, p2}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 403
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_0

    .line 404
    const-string v2, "aclStateChangeCallback: Device is NULL"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    .line 419
    :goto_0
    return-void

    .line 408
    :cond_0
    const/4 v1, 0x0

    .line 409
    .local v1, intent:Landroid/content/Intent;
    if-nez p3, :cond_1

    .line 410
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aclStateChangeCallback: State:Connected to Device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    .line 416
    :goto_1
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 417
    const/high16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 418
    sget-object v2, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v3, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v1, v3}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 413
    :cond_1
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aclStateChangeCallback: State:DisConnected to Device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    .locals 5
    .parameter "address"

    .prologue
    .line 89
    iget-object v3, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    monitor-enter v3

    .line 90
    :try_start_0
    new-instance v1, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;-><init>(Lcom/android/bluetooth/btservice/RemoteDevices;)V

    .line 91
    .local v1, prop:Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    sget-object v2, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 93
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    #setter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAddress:[B
    invoke-static {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$002(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;[B)[B

    .line 94
    iget-object v2, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    monitor-exit v3

    return-object v1

    .line 96
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #prop:Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method cleanup()V
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mSdpTracker:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mSdpTracker:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 67
    :cond_1
    return-void
.end method

.method deviceFoundCallback([B)V
    .locals 6
    .parameter "address"

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 308
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceFoundCallback: Remote Address is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v1

    .line 310
    .local v1, deviceProp:Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-nez v1, :cond_0

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device Properties is null for Device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    .line 323
    :goto_0
    return-void

    .line 315
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.action.FOUND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 317
    const-string v3, "android.bluetooth.device.extra.CLASS"

    new-instance v4, Landroid/bluetooth/BluetoothClass;

    #getter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBluetoothClass:I
    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$600(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 319
    const-string v3, "android.bluetooth.device.extra.RSSI"

    #getter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mRssi:S
    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$800(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)S

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    .line 320
    const-string v3, "android.bluetooth.device.extra.NAME"

    #getter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$400(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    sget-object v3, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v4, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v2, v4}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method devicePropertyChangedCallback([B[I[[B)V
    .locals 12
    .parameter "address"
    .parameter "types"
    .parameter "values"

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 241
    .local v0, bdDevice:Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_0

    .line 242
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v1

    .line 243
    .local v1, device:Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 248
    :goto_0
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    array-length v7, p2

    if-ge v3, v7, :cond_3

    .line 249
    aget v5, p2, v3

    .line 250
    .local v5, type:I
    aget-object v6, p3, v3

    .line 251
    .local v6, val:[B
    array-length v7, v6

    if-gtz v7, :cond_1

    .line 252
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "devicePropertyChangedCallback: bdDevice: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value is empty for type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    .line 248
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 245
    .end local v1           #device:Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    .end local v3           #j:I
    .end local v5           #type:I
    .end local v6           #val:[B
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v1

    .restart local v1       #device:Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    goto :goto_0

    .line 254
    .restart local v3       #j:I
    .restart local v5       #type:I
    .restart local v6       #val:[B
    :cond_1
    iget-object v8, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;

    monitor-enter v8

    .line 255
    packed-switch v5, :pswitch_data_0

    .line 299
    :goto_3
    :pswitch_0
    :try_start_0
    monitor-exit v8

    goto :goto_2

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 257
    :pswitch_1
    :try_start_1
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    #setter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mName:Ljava/lang/String;
    invoke-static {v1, v7}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$402(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 260
    const-string v7, "android.bluetooth.device.extra.NAME"

    #getter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$400(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const/high16 v7, 0x800

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 262
    sget-object v7, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v9, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v9, "android.permission.BLUETOOTH"

    invoke-virtual {v7, v2, v9}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 263
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Remote Device name is: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    #getter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$400(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    goto :goto_3

    .line 266
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_2
    #getter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAlias:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$500(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 267
    const/4 v7, 0x0

    #getter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAlias:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$500(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    array-length v11, v6

    invoke-static {v6, v7, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 270
    :cond_2
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    #setter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAlias:Ljava/lang/String;
    invoke-static {v1, v7}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$502(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    .line 274
    :pswitch_3
    #setter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAddress:[B
    invoke-static {v1, v6}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$002(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;[B)[B

    .line 275
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Remote Address is:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 278
    :pswitch_4
    invoke-static {v6}, Lcom/android/bluetooth/Utils;->byteArrayToInt([B)I

    move-result v7

    #setter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBluetoothClass:I
    invoke-static {v1, v7}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$602(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I

    .line 279
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.bluetooth.device.action.CLASS_CHANGED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 281
    const-string v7, "android.bluetooth.device.extra.CLASS"

    new-instance v9, Landroid/bluetooth/BluetoothClass;

    #getter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBluetoothClass:I
    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$600(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 283
    const/high16 v7, 0x800

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 284
    sget-object v7, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v9, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v9, "android.permission.BLUETOOTH"

    invoke-virtual {v7, v2, v9}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 285
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Remote class is:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    #getter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBluetoothClass:I
    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$600(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 288
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_5
    array-length v7, v6

    div-int/lit8 v4, v7, 0x10

    .line 289
    .local v4, numUuids:I
    invoke-static {v6}, Lcom/android/bluetooth/Utils;->byteArrayToUuid([B)[Landroid/os/ParcelUuid;

    move-result-object v7

    #setter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mUuids:[Landroid/os/ParcelUuid;
    invoke-static {v1, v7}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$302(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;[Landroid/os/ParcelUuid;)[Landroid/os/ParcelUuid;

    .line 290
    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->sendUuidIntent(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_3

    .line 293
    .end local v4           #numUuids:I
    :pswitch_6
    invoke-static {v6}, Lcom/android/bluetooth/Utils;->byteArrayToInt([B)I

    move-result v7

    #setter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mDeviceType:I
    invoke-static {v1, v7}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$702(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I

    goto/16 :goto_3

    .line 296
    :pswitch_7
    invoke-static {v6}, Lcom/android/bluetooth/Utils;->byteArrayToShort([B)S

    move-result v7

    #setter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mRssi:S
    invoke-static {v1, v7}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$802(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;S)S
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 302
    .end local v5           #type:I
    .end local v6           #val:[B
    :cond_3
    return-void

    .line 255
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_7
    .end packed-switch
.end method

.method fetchUuids(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "device"

    .prologue
    .line 422
    sget-object v1, Lcom/android/bluetooth/btservice/RemoteDevices;->mSdpTracker:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    :goto_0
    return-void

    .line 423
    :cond_0
    sget-object v1, Lcom/android/bluetooth/btservice/RemoteDevices;->mSdpTracker:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 426
    .local v0, message:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 427
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 430
    sget-object v1, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteServicesNative([B)Z

    goto :goto_0
.end method

.method getDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 4
    .parameter "address"

    .prologue
    .line 80
    iget-object v2, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 81
    .local v0, dev:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    .end local v0           #dev:Landroid/bluetooth/BluetoothDevice;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    .locals 2
    .parameter "device"

    .prologue
    .line 74
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    monitor-enter v1

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    monitor-exit v1

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method pinRequestCallback([B[BI)V
    .locals 9
    .parameter "address"
    .parameter "name"
    .parameter "cod"

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 328
    .local v0, bdDevice:Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_0

    .line 329
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    .line 331
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 332
    .local v1, btClass:Landroid/bluetooth/BluetoothClass;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    .line 333
    .local v2, btDeviceClass:I
    const/16 v5, 0x540

    if-eq v2, v5, :cond_1

    const/16 v5, 0x5c0

    if-ne v2, v5, :cond_2

    .line 345
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide v7, 0x412e848000000000L

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v4, v5

    .line 346
    .local v4, pin:I
    invoke-direct {p0, p1, v4}, Lcom/android/bluetooth/btservice/RemoteDevices;->sendDisplayPinIntent([BI)V

    .line 356
    .end local v4           #pin:I
    :goto_0
    return-void

    .line 349
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pinRequestCallback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cod:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/bluetooth/btservice/RemoteDevices;->infoLog(Ljava/lang/String;)V

    .line 351
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 353
    const-string v5, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    sget-object v5, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v6, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v6, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v5, v3, v6}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method sspRequestCallback([B[BIII)V
    .locals 7
    .parameter "address"
    .parameter "name"
    .parameter "cod"
    .parameter "pairingVariant"
    .parameter "passkey"

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 363
    .local v0, bdDevice:Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_0

    .line 364
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    .line 367
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sspRequestCallback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cod: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pairingVariant "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " passkey: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/bluetooth/btservice/RemoteDevices;->infoLog(Ljava/lang/String;)V

    .line 370
    const/4 v2, 0x0

    .line 371
    .local v2, displayPasskey:Z
    if-nez p4, :cond_3

    .line 372
    const/4 v4, 0x2

    .line 373
    .local v4, variant:I
    const/4 v2, 0x1

    .line 385
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 386
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v1, :cond_1

    .line 387
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Device is not known for:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/bluetooth/btservice/RemoteDevices;->warnLog(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    .line 389
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 391
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 393
    if-eqz v2, :cond_2

    .line 394
    const-string v5, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v3, v5, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 396
    :cond_2
    const-string v5, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 397
    sget-object v5, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v6, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v6, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v5, v3, v6}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 398
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #variant:I
    :goto_1
    return-void

    .line 374
    :cond_3
    const/4 v5, 0x2

    if-ne p4, v5, :cond_4

    .line 375
    const/4 v4, 0x3

    .restart local v4       #variant:I
    goto :goto_0

    .line 376
    .end local v4           #variant:I
    :cond_4
    const/4 v5, 0x1

    if-ne p4, v5, :cond_5

    .line 377
    const/4 v4, 0x1

    .restart local v4       #variant:I
    goto :goto_0

    .line 378
    .end local v4           #variant:I
    :cond_5
    const/4 v5, 0x3

    if-ne p4, v5, :cond_6

    .line 379
    const/4 v4, 0x4

    .line 380
    .restart local v4       #variant:I
    const/4 v2, 0x1

    goto :goto_0

    .line 382
    .end local v4           #variant:I
    :cond_6
    const-string v5, "SSP Pairing variant not present"

    invoke-direct {p0, v5}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    goto :goto_1
.end method
