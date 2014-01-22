.class public Lcom/android/bluetooth/btservice/AdapterService;
.super Landroid/app/Service;
.source "AdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;
    }
.end annotation


# static fields
.field public static final ACTION_LOAD_ADAPTER_PROPERTIES:Ljava/lang/String; = "com.android.bluetooth.btservice.action.LOAD_ADAPTER_PROPERTIES"

.field public static final ACTION_SERVICE_STATE_CHANGED:Ljava/lang/String; = "com.android.bluetooth.btservice.action.STATE_CHANGED"

.field private static final ADAPTER_SERVICE_TYPE:I = 0x1

.field static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final CONNECT_OTHER_PROFILES_TIMEOUT:I = 0x1770

.field private static final DBG:Z = false

.field public static final EXTRA_ACTION:Ljava/lang/String; = "action"

.field private static final MESSAGE_CONNECT_OTHER_PROFILES:I = 0x1e

.field private static final MESSAGE_PROFILE_CONNECTION_STATE_CHANGED:I = 0x14

.field private static final MESSAGE_PROFILE_SERVICE_STATE_CHANGED:I = 0x1

.field public static final PROFILE_CONN_CONNECTED:I = 0x1

.field public static final PROFILE_CONN_REJECTED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapterService"

.field private static final TRACE_REF:Z = true

.field private static sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private static sRefCount:I


# instance fields
.field private mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

.field private mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

.field private mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

.field private mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCleaningUp:Z

.field private mCurrentRequestId:I

.field private final mHandler:Landroid/os/Handler;

.field private mJniCallbacks:Lcom/android/bluetooth/btservice/JniCallbacks;

.field private mNativeAvailable:Z

.field private mProfileServicesState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProfilesStarted:Z

.field private mQuietmode:Z

.field private mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput v0, Lcom/android/bluetooth/btservice/AdapterService;->sRefCount:I

    .line 90
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->classInitNative()V

    .line 91
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mQuietmode:Z

    .line 399
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/AdapterService$1;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    .line 144
    const-class v1, Lcom/android/bluetooth/btservice/AdapterService;

    monitor-enter v1

    .line 145
    :try_start_0
    sget v0, Lcom/android/bluetooth/btservice/AdapterService;->sRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/bluetooth/btservice/AdapterService;->sRefCount:I

    .line 146
    const-string v0, "BluetoothAdapterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REFCOUNT: CREATED. INSTANCE_COUNT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/bluetooth/btservice/AdapterService;->sRefCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    monitor-exit v1

    .line 149
    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->processProfileServiceStateChanged(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/btservice/AdapterService;Landroid/bluetooth/BluetoothDevice;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->processProfileStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/btservice/AdapterService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->processConnectOtherProfiles(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/btservice/AdapterService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method private adjustOtherHeadsetPriorities(Lcom/android/bluetooth/hfp/HeadsetService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .parameter "hsService"
    .parameter "connectedDevice"

    .prologue
    .line 1131
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .local v0, arr$:[Landroid/bluetooth/BluetoothDevice;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1132
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/16 v5, 0x3e8

    if-lt v4, v5, :cond_0

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1134
    const/16 v4, 0x64

    invoke-virtual {p1, v1, v4}, Lcom/android/bluetooth/hfp/HeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 1131
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1137
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    return-void
.end method

.method private adjustOtherSinkPriorities(Lcom/android/bluetooth/a2dp/A2dpService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .parameter "a2dpService"
    .parameter "connectedDevice"

    .prologue
    .line 1141
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .local v0, arr$:[Landroid/bluetooth/BluetoothDevice;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1142
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/16 v5, 0x3e8

    if-lt v4, v5, :cond_0

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1144
    const/16 v4, 0x64

    invoke-virtual {p1, v1, v4}, Lcom/android/bluetooth/a2dp/A2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 1141
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1147
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    return-void
.end method

.method private autoConnectA2dp()V
    .locals 9

    .prologue
    .line 1075
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 1076
    .local v0, a2dpSservice:Lcom/android/bluetooth/a2dp/A2dpService;
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 1077
    .local v2, bondedDevices:[Landroid/bluetooth/BluetoothDevice;
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 1086
    :cond_0
    return-void

    .line 1080
    :cond_1
    move-object v1, v2

    .local v1, arr$:[Landroid/bluetooth/BluetoothDevice;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v1, v4

    .line 1081
    .local v3, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, v3}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    const/16 v7, 0x3e8

    if-ne v6, v7, :cond_2

    .line 1082
    const-string v6, "BluetoothAdapterService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Auto Connecting A2DP Profile with device "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    invoke-virtual {v0, v3}, Lcom/android/bluetooth/a2dp/A2dpService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1080
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private autoConnectHeadset()V
    .locals 9

    .prologue
    .line 1060
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v3

    .line 1062
    .local v3, hsService:Lcom/android/bluetooth/hfp/HeadsetService;
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 1063
    .local v1, bondedDevices:[Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_0

    if-nez v3, :cond_1

    .line 1072
    :cond_0
    return-void

    .line 1066
    :cond_1
    move-object v0, v1

    .local v0, arr$:[Landroid/bluetooth/BluetoothDevice;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 1067
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v3, v2}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    const/16 v7, 0x3e8

    if-ne v6, v7, :cond_2

    .line 1068
    const-string v6, "BluetoothAdapterService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Auto Connecting Headset Profile with device "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    invoke-virtual {v3, v2}, Lcom/android/bluetooth/hfp/HeadsetService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1066
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private native cancelDiscoveryNative()Z
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private static declared-synchronized clearAdapterService()V
    .locals 2

    .prologue
    .line 125
    const-class v0, Lcom/android/bluetooth/btservice/AdapterService;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit v0

    return-void

    .line 125
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private native connectSocketNative([BI[BII)I
.end method

.method static convertScanModeFromHal(I)I
    .locals 1
    .parameter "mode"

    .prologue
    .line 1329
    packed-switch p0, :pswitch_data_0

    .line 1338
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 1331
    :pswitch_0
    const/16 v0, 0x14

    goto :goto_0

    .line 1333
    :pswitch_1
    const/16 v0, 0x15

    goto :goto_0

    .line 1335
    :pswitch_2
    const/16 v0, 0x17

    goto :goto_0

    .line 1329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static convertScanModeToHal(I)I
    .locals 1
    .parameter "mode"

    .prologue
    .line 1316
    packed-switch p0, :pswitch_data_0

    .line 1325
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 1318
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1320
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1322
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 1316
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private native createSocketChannelNative(ILjava/lang/String;[BII)I
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothAdapterService("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    return-void
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothAdapterService("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    return-void
.end method

.method public static declared-synchronized getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;
    .locals 2

    .prologue
    .line 95
    const-class v1, Lcom/android/bluetooth/btservice/AdapterService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-boolean v0, v0, Lcom/android/bluetooth/btservice/AdapterService;->mCleaningUp:Z

    if-nez v0, :cond_0

    .line 97
    sget-object v0, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private native initNative()Z
.end method

.method private isAvailable()Z
    .locals 1

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCleaningUp:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native pinReplyNative([BZI[B)Z
.end method

.method private processConnectOtherProfiles(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 7
    .parameter "device"
    .parameter "firstProfileStatus"

    .prologue
    const/16 v6, 0x64

    .line 1099
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_1

    .line 1127
    :cond_0
    :goto_0
    return-void

    .line 1102
    :cond_1
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v3

    .line 1103
    .local v3, hsService:Lcom/android/bluetooth/hfp/HeadsetService;
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v1

    .line 1105
    .local v1, a2dpService:Lcom/android/bluetooth/a2dp/A2dpService;
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 1108
    invoke-virtual {v1}, Lcom/android/bluetooth/a2dp/A2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 1109
    .local v0, a2dpConnDevList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 1115
    .local v2, hfConnDevList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    if-eq v4, p2, :cond_0

    .line 1119
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-lt v4, v6, :cond_3

    .line 1121
    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 1123
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-lt v4, v6, :cond_0

    .line 1125
    invoke-virtual {v1, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0
.end method

.method private processProfileServiceStateChanged(Ljava/lang/String;I)V
    .locals 10
    .parameter "serviceName"
    .parameter "state"

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 191
    .local v0, doUpdate:Z
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    monitor-enter v7

    .line 192
    :try_start_0
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 193
    .local v5, prevState:Ljava/lang/Integer;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, p2, :cond_0

    .line 194
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const/4 v0, 0x1

    .line 197
    :cond_0
    monitor-exit v7

    .line 200
    if-nez v0, :cond_2

    .line 246
    :cond_1
    :goto_0
    return-void

    .line 197
    .end local v5           #prevState:Ljava/lang/Integer;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 204
    .restart local v5       #prevState:Ljava/lang/Integer;
    :cond_2
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    monitor-enter v7

    .line 205
    :try_start_1
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v6}, Lcom/android/bluetooth/btservice/AdapterState;->isTurningOff()Z

    move-result v3

    .line 206
    .local v3, isTurningOff:Z
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v6}, Lcom/android/bluetooth/btservice/AdapterState;->isTurningOn()Z

    move-result v4

    .line 207
    .local v4, isTurningOn:Z
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 209
    if-eqz v3, :cond_5

    .line 213
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    monitor-enter v7

    .line 214
    :try_start_2
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 215
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 216
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 217
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v8, 0xa

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v8, v6, :cond_3

    .line 218
    const-string v8, "BluetoothAdapterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Profile still running: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    monitor-exit v7

    goto :goto_0

    .line 222
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 207
    .end local v3           #isTurningOff:Z
    .end local v4           #isTurningOn:Z
    :catchall_2
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v6

    .line 222
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v3       #isTurningOff:Z
    .restart local v4       #isTurningOn:Z
    :cond_4
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 225
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfilesStarted:Z

    .line 226
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0x19

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 227
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_5
    if-eqz v4, :cond_1

    .line 231
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    monitor-enter v7

    .line 232
    :try_start_5
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 233
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 234
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 235
    .restart local v1       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v8, 0xc

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v8, v6, :cond_6

    .line 236
    const-string v8, "BluetoothAdapterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Profile still not running:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    monitor-exit v7

    goto/16 :goto_0

    .line 240
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :catchall_3
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v6

    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_7
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 242
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfilesStarted:Z

    .line 244
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method private processProfileStateChanged(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 4
    .parameter "device"
    .parameter "profileId"
    .parameter "newState"
    .parameter "prevState"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 163
    if-eq p2, v3, :cond_0

    if-ne p2, v2, :cond_1

    :cond_0
    if-ne p3, v3, :cond_1

    .line 166
    invoke-virtual {p0, p1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V

    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setProfileAutoConnectionPriority(Landroid/bluetooth/BluetoothDevice;I)V

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    .line 170
    .local v0, binder:Landroid/bluetooth/IBluetooth$Stub;
    if-eqz v0, :cond_2

    .line 172
    :try_start_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/bluetooth/IBluetooth$Stub;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_2
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, re:Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapterService"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static declared-synchronized setAdapterService(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 2
    .parameter "instance"

    .prologue
    .line 110
    const-class v1, Lcom/android/bluetooth/btservice/AdapterService;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCleaningUp:Z

    if-nez v0, :cond_0

    .line 112
    sput-object p0, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    monitor-exit v1

    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setProfileServiceState([Ljava/lang/Class;I)V
    .locals 10
    .parameter "services"
    .parameter "state"

    .prologue
    const/16 v9, 0xa

    .line 426
    const/16 v6, 0xc

    if-eq p2, v6, :cond_1

    if-eq p2, v9, :cond_1

    .line 427
    const-string v6, "BluetoothAdapterService"

    const-string v7, "setProfileServiceState(): invalid state...Leaving..."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_0
    return-void

    .line 431
    :cond_1
    const/16 v0, 0xa

    .line 432
    .local v0, expectedCurrentState:I
    const/16 v3, 0xb

    .line 433
    .local v3, pendingState:I
    if-ne p2, v9, :cond_2

    .line 434
    const/16 v0, 0xc

    .line 435
    const/16 v3, 0xd

    .line 438
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_0

    .line 439
    aget-object v6, p1, v1

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 440
    .local v4, serviceName:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 441
    .local v5, serviceState:Ljava/lang/Integer;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v0, :cond_4

    .line 442
    const-string v7, "BluetoothAdapterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-ne p2, v9, :cond_3

    const-string v6, "start"

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " service "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ". Invalid state: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    :cond_3
    const-string v6, "stop"

    goto :goto_1

    .line 452
    :cond_4
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    new-instance v2, Landroid/content/Intent;

    aget-object v6, p1, v1

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 454
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "action"

    const-string v7, "com.android.bluetooth.btservice.action.STATE_CHANGED"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const-string v6, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 456
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2
.end method

.method private native sspReplyNative([BIZI)Z
.end method

.method private native startDiscoveryNative()Z
.end method


# virtual methods
.method public autoConnect()V
    .locals 2

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    .line 1046
    const-string v0, "BT is not ON. Exiting autoConnect"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->errorLog(Ljava/lang/String;)V

    .line 1057
    :cond_0
    :goto_0
    return-void

    .line 1049
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->isQuietModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1051
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->autoConnectHeadset()V

    .line 1052
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->autoConnectA2dp()V

    goto :goto_0
.end method

.method native cancelBondNative([B)Z
.end method

.method cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 1169
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    .line 1171
    .local v0, addr:[B
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->cancelBondNative([B)Z

    move-result v1

    return v1
.end method

.method cancelDiscovery()Z
    .locals 2

    .prologue
    .line 995
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->cancelDiscoveryNative()Z

    move-result v0

    return v0
.end method

.method cleanup()V
    .locals 2

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCleaningUp:Z

    if-eqz v0, :cond_1

    .line 341
    const-string v0, "BluetoothAdapterService"

    const-string v1, "*************service already starting to cleanup... Ignoring cleanup request........."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCleaningUp:Z

    .line 347
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterState;->doQuit()V

    .line 349
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterState;->cleanup()V

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    if-eqz v0, :cond_3

    .line 353
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->doQuit()V

    .line 354
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->cleanup()V

    .line 357
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    if-eqz v0, :cond_4

    .line 358
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->cleanup()V

    .line 361
    :cond_4
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mNativeAvailable:Z

    if-eqz v0, :cond_5

    .line 362
    const-string v0, "BluetoothAdapterService"

    const-string v1, "Cleaning up adapter native...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->cleanupNative()V

    .line 364
    const-string v0, "BluetoothAdapterService"

    const-string v1, "Done cleaning up adapter native...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mNativeAvailable:Z

    .line 368
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    if-eqz v0, :cond_6

    .line 369
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->cleanup()V

    .line 372
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mJniCallbacks:Lcom/android/bluetooth/btservice/JniCallbacks;

    if-eqz v0, :cond_7

    .line 373
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mJniCallbacks:Lcom/android/bluetooth/btservice/JniCallbacks;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/JniCallbacks;->cleanup()V

    .line 376
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    if-eqz v0, :cond_8

    .line 377
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 380
    :cond_8
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->clearAdapterService()V

    .line 382
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    if-eqz v0, :cond_9

    .line 383
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->cleanup()Z

    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    .line 387
    :cond_9
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    goto :goto_0
.end method

.method public connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 4
    .parameter "device"
    .parameter "firstProfileStatus"

    .prologue
    const/16 v2, 0x1e

    .line 1089
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->isQuietModeEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1091
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1092
    .local v0, m:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1093
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1094
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1096
    .end local v0           #m:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .parameter "device"
    .parameter "type"
    .parameter "uuid"
    .parameter "port"
    .parameter "flag"

    .prologue
    .line 1285
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p3}, Lcom/android/bluetooth/Utils;->uuidToByteArray(Landroid/os/ParcelUuid;)[B

    move-result-object v3

    move-object v0, p0

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/btservice/AdapterService;->connectSocketNative([BI[BII)I

    move-result v6

    .line 1288
    .local v6, fd:I
    if-gez v6, :cond_0

    .line 1289
    const-string v0, "Failed to connect socket"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->errorLog(Ljava/lang/String;)V

    .line 1290
    const/4 v0, 0x0

    .line 1292
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v6}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method createBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v2, 0x1

    .line 1026
    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 1029
    .local v0, deviceProp:Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    .line 1030
    const/4 v2, 0x0

    .line 1036
    :goto_0
    return v2

    .line 1033
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1034
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1035
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method native createBondNative([B)Z
.end method

.method createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .parameter "type"
    .parameter "serviceName"
    .parameter "uuid"
    .parameter "port"
    .parameter "flag"

    .prologue
    .line 1297
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    invoke-static {p3}, Lcom/android/bluetooth/Utils;->uuidToByteArray(Landroid/os/ParcelUuid;)[B

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/btservice/AdapterService;->createSocketChannelNative(ILjava/lang/String;[BII)I

    move-result v6

    .line 1300
    .local v6, fd:I
    if-gez v6, :cond_0

    .line 1301
    const-string v0, "Failed to create socket channel"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->errorLog(Ljava/lang/String;)V

    .line 1302
    const/4 v0, 0x0

    .line 1304
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v6}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method disable()Z
    .locals 3

    .prologue
    .line 917
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 923
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V

    .line 924
    const/4 v1, 0x1

    return v1
.end method

.method native disableNative()Z
.end method

.method enable()Z
    .locals 1

    .prologue
    .line 898
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->enable(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized enable(Z)Z
    .locals 4
    .parameter "quietMode"

    .prologue
    const/4 v3, 0x1

    .line 906
    monitor-enter p0

    :try_start_0
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    iput-boolean p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mQuietmode:Z

    .line 910
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 912
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    monitor-exit p0

    return v3

    .line 906
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method native enableNative()Z
.end method

.method public enableNoAutoConnect()Z
    .locals 1

    .prologue
    .line 902
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->enable(Z)Z

    move-result v0

    return v0
.end method

.method fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 1233
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->fetchUuids(Landroid/bluetooth/BluetoothDevice;)V

    .line 1235
    const/4 v0, 0x1

    return v0
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 1382
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->cleanup()V

    .line 1384
    const-class v1, Lcom/android/bluetooth/btservice/AdapterService;

    monitor-enter v1

    .line 1385
    :try_start_0
    sget v0, Lcom/android/bluetooth/btservice/AdapterService;->sRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/bluetooth/btservice/AdapterService;->sRefCount:I

    .line 1386
    const-string v0, "BluetoothAdapterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REFCOUNT: FINALIZED. INSTANCE_COUNT= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/bluetooth/btservice/AdapterService;->sRefCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    monitor-exit v1

    .line 1389
    return-void

    .line 1387
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getAdapterConnectionState()I
    .locals 2

    .prologue
    .line 1014
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getConnectionState()I

    move-result v0

    return v0
.end method

.method native getAdapterPropertiesNative()Z
.end method

.method native getAdapterPropertyNative(I)Z
.end method

.method getAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 928
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    const/4 v0, 0x0

    .line 931
    .local v0, addrString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/AdapterProperties;->getAddress()[B

    move-result-object v1

    .line 932
    .local v1, address:[B
    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method getBondState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 1187
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 1189
    .local v0, deviceProp:Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-nez v0, :cond_0

    .line 1190
    const/16 v1, 0xa

    .line 1192
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v1

    goto :goto_0
.end method

.method getBondedDevices()[Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .prologue
    .line 1008
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    const-string v0, "Get Bonded Devices being called"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 1010
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method native getDevicePropertyNative([BI)Z
.end method

.method getDiscoverableTimeout()I
    .locals 2

    .prologue
    .line 976
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getDiscoverableTimeout()I

    move-result v0

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 942
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterProperties;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 950
    :goto_0
    return-object v1

    .line 947
    :catch_0
    move-exception v0

    .line 948
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothAdapterService"

    const-string v2, "Unexpected exception while calling getName()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 950
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getProfileConnectionState(I)I
    .locals 2
    .parameter "profile"

    .prologue
    .line 1020
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->getProfileConnectionState(I)I

    move-result v0

    return v0
.end method

.method getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 3
    .parameter "device"

    .prologue
    .line 1203
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 1205
    .local v0, deviceProp:Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1206
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getAlias()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 1218
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 1220
    .local v0, deviceProp:Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1222
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBluetoothClass()I

    move-result v1

    goto :goto_0
.end method

.method getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 3
    .parameter "device"

    .prologue
    .line 1196
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 1198
    .local v0, deviceProp:Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1199
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method native getRemoteServicesNative([B)Z
.end method

.method getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;
    .locals 3
    .parameter "device"

    .prologue
    .line 1226
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 1228
    .local v0, deviceProp:Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1229
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    goto :goto_0
.end method

.method getScanMode()I
    .locals 2

    .prologue
    .line 961
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getScanMode()I

    move-result v0

    return v0
.end method

.method getState()I
    .locals 2

    .prologue
    .line 886
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    if-nez v0, :cond_0

    .line 889
    const/16 v0, 0xa

    .line 893
    :goto_0
    return v0

    .line 892
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getState(): mAdapterProperties: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 893
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result v0

    goto :goto_0
.end method

.method getUuids()[Landroid/os/ParcelUuid;
    .locals 2

    .prologue
    .line 936
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0
.end method

.method isDiscovering()Z
    .locals 2

    .prologue
    .line 1002
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->isDiscovering()Z

    move-result v0

    return v0
.end method

.method isEnabled()Z
    .locals 2

    .prologue
    .line 880
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQuietModeEnabled()Z
    .locals 1

    .prologue
    .line 1041
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mQuietmode:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 250
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 252
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    .line 253
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/AdapterProperties;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    .line 254
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-static {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->make(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;)Lcom/android/bluetooth/btservice/AdapterState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    .line 255
    new-instance v0, Lcom/android/bluetooth/btservice/JniCallbacks;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/btservice/JniCallbacks;-><init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterProperties;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mJniCallbacks:Lcom/android/bluetooth/btservice/JniCallbacks;

    .line 256
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->initNative()Z

    .line 257
    iput-boolean v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mNativeAvailable:Z

    .line 258
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 260
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterPropertyNative(I)Z

    .line 261
    invoke-virtual {p0, v3}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterPropertyNative(I)Z

    .line 263
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 277
    const-string v0, "****onDestroy()********"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public onProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 4
    .parameter "device"
    .parameter "profileId"
    .parameter "newState"
    .parameter "prevState"

    .prologue
    .line 152
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 153
    .local v1, m:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 154
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 155
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 156
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 157
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "prevState"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 159
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 160
    return-void
.end method

.method public onProfileServiceStateChanged(Ljava/lang/String;I)V
    .locals 3
    .parameter "serviceName"
    .parameter "state"

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 181
    .local v0, m:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 182
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 183
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->cleanup()V

    .line 273
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method processStart()V
    .locals 5

    .prologue
    .line 282
    invoke-static {}, Lcom/android/bluetooth/btservice/Config;->getSupportedProfiles()[Ljava/lang/Class;

    move-result-object v1

    .line 284
    .local v1, supportedProfileServices:[Ljava/lang/Class;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 285
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_0
    new-instance v2, Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/btservice/RemoteDevices;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    .line 288
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/btservice/AdapterProperties;->init(Lcom/android/bluetooth/btservice/RemoteDevices;)V

    .line 291
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {p0, v2, v3}, Lcom/android/bluetooth/btservice/BondStateMachine;->make(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;Lcom/android/bluetooth/btservice/RemoteDevices;)Lcom/android/bluetooth/btservice/BondStateMachine;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    .line 293
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mJniCallbacks:Lcom/android/bluetooth/btservice/JniCallbacks;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, v3, v4}, Lcom/android/bluetooth/btservice/JniCallbacks;->init(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/bluetooth/btservice/RemoteDevices;)V

    .line 296
    invoke-static {p0}, Lcom/android/bluetooth/btservice/AdapterService;->setAdapterService(Lcom/android/bluetooth/btservice/AdapterService;)V

    .line 299
    iget-boolean v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfilesStarted:Z

    if-nez v2, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 301
    const/16 v2, 0xc

    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->setProfileServiceState([Ljava/lang/Class;I)V

    .line 306
    :goto_1
    return-void

    .line 304
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V

    goto :goto_1
.end method

.method registerCallback(Landroid/bluetooth/IBluetoothCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1309
    return-void
.end method

.method removeBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    .line 1175
    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 1177
    .local v0, deviceProp:Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    .line 1178
    :cond_0
    const/4 v2, 0x0

    .line 1183
    :goto_0
    return v2

    .line 1180
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/btservice/BondStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1181
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1182
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1183
    const/4 v2, 0x1

    goto :goto_0
.end method

.method native removeBondNative([B)Z
.end method

.method sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 2
    .parameter "device"
    .parameter "profile"
    .parameter "state"
    .parameter "prevState"

    .prologue
    .line 1277
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 1281
    :goto_0
    return-void

    .line 1279
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterProperties;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    goto :goto_0
.end method

.method native setAdapterPropertyNative(I)Z
.end method

.method native setAdapterPropertyNative(I[B)Z
.end method

.method native setDevicePropertyNative([BI[B)Z
.end method

.method setDiscoverableTimeout(I)Z
    .locals 2
    .parameter "timeout"

    .prologue
    .line 982
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->setDiscoverableTimeout(I)Z

    move-result v0

    return v0
.end method

.method setName(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 954
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->setName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 5
    .parameter "device"
    .parameter "accept"

    .prologue
    const/4 v2, 0x0

    .line 1262
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v1

    .line 1264
    .local v1, deviceProp:Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_1

    .line 1269
    :cond_0
    :goto_0
    return v2

    .line 1268
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    .line 1269
    .local v0, addr:[B
    invoke-direct {p0, v0, v2, p2, v2}, Lcom/android/bluetooth/btservice/AdapterService;->sspReplyNative([BIZI)Z

    move-result v2

    goto :goto_0
.end method

.method setPasskey(Landroid/bluetooth/BluetoothDevice;ZI[B)Z
    .locals 4
    .parameter "device"
    .parameter "accept"
    .parameter "len"
    .parameter "passkey"

    .prologue
    .line 1250
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v1

    .line 1252
    .local v1, deviceProp:Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_1

    .line 1253
    :cond_0
    const/4 v2, 0x0

    .line 1257
    :goto_0
    return v2

    .line 1256
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    .line 1257
    .local v0, addr:[B
    const/4 v2, 0x1

    invoke-static {p4}, Lcom/android/bluetooth/Utils;->byteArrayToInt([B)I

    move-result v3

    invoke-direct {p0, v0, v2, p2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->sspReplyNative([BIZI)Z

    move-result v2

    goto :goto_0
.end method

.method setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z
    .locals 4
    .parameter "device"
    .parameter "accept"
    .parameter "len"
    .parameter "pinCode"

    .prologue
    .line 1239
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v1

    .line 1241
    .local v1, deviceProp:Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_1

    .line 1242
    :cond_0
    const/4 v2, 0x0

    .line 1246
    :goto_0
    return v2

    .line 1245
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    .line 1246
    .local v0, addr:[B
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->pinReplyNative([BZI[B)Z

    move-result v2

    goto :goto_0
.end method

.method setProfileAutoConnectionPriority(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 4
    .parameter "device"
    .parameter "profileId"

    .prologue
    const/16 v3, 0x3e8

    .line 1150
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 1151
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v1

    .line 1152
    .local v1, hsService:Lcom/android/bluetooth/hfp/HeadsetService;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-eq v3, v2, :cond_0

    .line 1154
    invoke-direct {p0, v1, p1}, Lcom/android/bluetooth/btservice/AdapterService;->adjustOtherHeadsetPriorities(Lcom/android/bluetooth/hfp/HeadsetService;Landroid/bluetooth/BluetoothDevice;)V

    .line 1155
    invoke-virtual {v1, p1, v3}, Lcom/android/bluetooth/hfp/HeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 1166
    .end local v1           #hsService:Lcom/android/bluetooth/hfp/HeadsetService;
    :cond_0
    :goto_0
    return-void

    .line 1158
    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 1159
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 1160
    .local v0, a2dpService:Lcom/android/bluetooth/a2dp/A2dpService;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-eq v3, v2, :cond_0

    .line 1162
    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->adjustOtherSinkPriorities(Lcom/android/bluetooth/a2dp/A2dpService;Landroid/bluetooth/BluetoothDevice;)V

    .line 1163
    invoke-virtual {v0, p1, v3}, Lcom/android/bluetooth/a2dp/A2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 3
    .parameter "device"
    .parameter "name"

    .prologue
    .line 1210
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 1212
    .local v0, deviceProp:Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1214
    :goto_0
    return v1

    .line 1213
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->setAlias(Ljava/lang/String;)V

    .line 1214
    const/4 v1, 0x1

    goto :goto_0
.end method

.method setScanMode(II)Z
    .locals 3
    .parameter "mode"
    .parameter "duration"

    .prologue
    .line 967
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    invoke-virtual {p0, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setDiscoverableTimeout(I)Z

    .line 971
    invoke-static {p1}, Lcom/android/bluetooth/btservice/AdapterService;->convertScanModeToHal(I)I

    move-result v0

    .line 972
    .local v0, newMode:I
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setScanMode(I)Z

    move-result v1

    return v1
.end method

.method startBluetoothDisable()V
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V

    .line 310
    return-void
.end method

.method startDiscovery()Z
    .locals 2

    .prologue
    .line 988
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->startDiscoveryNative()Z

    move-result v0

    return v0
.end method

.method stopProfileServices()Z
    .locals 2

    .prologue
    .line 313
    invoke-static {}, Lcom/android/bluetooth/btservice/Config;->getSupportedProfiles()[Ljava/lang/Class;

    move-result-object v0

    .line 314
    .local v0, supportedProfileServices:[Ljava/lang/Class;
    iget-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfilesStarted:Z

    if-eqz v1, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 315
    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->setProfileServiceState([Ljava/lang/Class;I)V

    .line 316
    const/4 v1, 0x1

    .line 319
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1313
    return-void
.end method

.method updateAdapterState(II)V
    .locals 6
    .parameter "prevState"
    .parameter "newState"

    .prologue
    .line 324
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v3, :cond_1

    .line 325
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 326
    .local v2, n:I
    const-string v3, "BluetoothAdapterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting updateAdapterState() to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 329
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v3, p1, p2}, Landroid/bluetooth/IBluetoothCallback;->onBluetoothStateChange(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "BluetoothAdapterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothStateChange() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 334
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 336
    .end local v1           #i:I
    .end local v2           #n:I
    :cond_1
    return-void
.end method
