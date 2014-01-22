.class public Lcom/android/bluetooth/map/BluetoothMns;
.super Ljava/lang/Object;
.source "BluetoothMns.java"

# interfaces
.implements Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMns$MnsClient;,
        Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;,
        Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;,
        Lcom/android/bluetooth/map/BluetoothMns$EventHandler;
    }
.end annotation


# static fields
.field public static final DELIVERY_FAILURE:Ljava/lang/String; = "DeliveryFailure"

.field public static final DELIVERY_SUCCESS:Ljava/lang/String; = "DeliverySuccess"

.field public static final MEMORY_AVAILABLE:Ljava/lang/String; = "MemoryAvailable"

.field public static final MEMORY_FULL:Ljava/lang/String; = "MemoryFull"

.field public static final MESSAGE_DELETED:Ljava/lang/String; = "MessageDeleted"

.field public static final MESSAGE_SHIFT:Ljava/lang/String; = "MessageShift"

.field public static final MNS_BLUETOOTH_OFF:I = 0x12

.field public static final MNS_CONNECT:I = 0xd

.field public static final MNS_DISCONNECT:I = 0xe

.field public static final MNS_SEND_EVENT:I = 0xf

.field public static final MNS_SEND_EVENT_DONE:I = 0x10

.field public static final MNS_SEND_TIMEOUT:I = 0x11

.field public static final MNS_SEND_TIMEOUT_DURATION:I = 0x7530

.field private static final MNS_UUID16:S = 0x1133s

.field public static final NEW_MESSAGE:Ljava/lang/String; = "NewMessage"

.field public static final RFCOMM_CONNECTED:I = 0xb

.field public static final RFCOMM_ERROR:I = 0xa

.field public static final SENDING_FAILURE:Ljava/lang/String; = "SendingFailure"

.field public static final SENDING_SUCCESS:Ljava/lang/String; = "SendingSuccess"

.field private static final TAG:Ljava/lang/String; = "BtMns"

.field private static final V:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mConnectThread:Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;

.field private mContext:Landroid/content/Context;

.field private final mEventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMnsClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMns$MnsClient;",
            ">;"
        }
    .end annotation
.end field

.field private mSendingEvent:Z

.field private mSession:Lcom/android/bluetooth/map/BluetoothMnsObexSession;

.field private mSessionHandler:Lcom/android/bluetooth/map/BluetoothMns$EventHandler;

.field private mStorageStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mWaitingMasId:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field opList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMns;->V:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMns;->mMnsClients:Ljava/util/List;

    .line 126
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMns;->mWaitingMasId:Ljava/util/HashSet;

    .line 127
    new-instance v4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMns;->mEventQueue:Ljava/util/Queue;

    .line 128
    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMns;->mSendingEvent:Z

    .line 439
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMns;->opList:Ljava/util/List;

    .line 584
    new-instance v4, Lcom/android/bluetooth/map/BluetoothMns$1;

    invoke-direct {v4, p0}, Lcom/android/bluetooth/map/BluetoothMns$1;-><init>(Lcom/android/bluetooth/map/BluetoothMns;)V

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMns;->mStorageStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMns;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 138
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMns;->mContext:Landroid/content/Context;

    .line 140
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v8, :cond_0

    .line 144
    :try_start_0
    sget-object v4, Lcom/android/bluetooth/map/BluetoothMasService;->MAS_INS_INFO:[Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;->mMnsClientClass:Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/Integer;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 146
    .local v0, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lcom/android/bluetooth/map/BluetoothMns$MnsClient;>;"
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMns;->mMnsClients:Ljava/util/List;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMns;->mContext:Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5

    .line 140
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lcom/android/bluetooth/map/BluetoothMns$MnsClient;>;"
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "BtMns"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMasService;->MAS_INS_INFO:[Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;->mMnsClientClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'s constructor arguments mismatch"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 150
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 151
    .local v1, e:Ljava/lang/InstantiationException;
    const-string v4, "BtMns"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMasService;->MAS_INS_INFO:[Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;->mMnsClientClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cannot be instantiated"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 153
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 154
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v4, "BtMns"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMasService;->MAS_INS_INFO:[Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;->mMnsClientClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cannot be instantiated"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 156
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 157
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "BtMns"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception during "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMasService;->MAS_INS_INFO:[Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;->mMnsClientClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'s constructor invocation"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 159
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v1

    .line 160
    .local v1, e:Ljava/lang/SecurityException;
    const-string v4, "BtMns"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMasService;->MAS_INS_INFO:[Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;->mMnsClientClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'s constructor is not accessible"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 162
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_5
    move-exception v1

    .line 163
    .local v1, e:Ljava/lang/NoSuchMethodException;
    const-string v4, "BtMns"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMasService;->MAS_INS_INFO:[Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;->mMnsClientClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has no matched constructor"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 168
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMns;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 169
    const-string v4, "BtMns"

    const-string v5, "Can\'t send event when Bluetooth is disabled "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_2
    return-void

    .line 173
    :cond_1
    new-instance v4, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;

    invoke-direct {v4, p0}, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;-><init>(Lcom/android/bluetooth/map/BluetoothMns;)V

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMns;->mSessionHandler:Lcom/android/bluetooth/map/BluetoothMns$EventHandler;

    .line 175
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 176
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v4, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMns;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMns;->mStorageStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_2
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMns;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/map/BluetoothMns;)Lcom/android/bluetooth/map/BluetoothMnsObexSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->mSession:Lcom/android/bluetooth/map/BluetoothMnsObexSession;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/map/BluetoothMns;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->mSendingEvent:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/bluetooth/map/BluetoothMns;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMns;->mSendingEvent:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/map/BluetoothMns;)Ljava/util/Queue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->mEventQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/map/BluetoothMns;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMns;->sendEvent(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/map/BluetoothMns;)Lcom/android/bluetooth/map/BluetoothMns$EventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->mSessionHandler:Lcom/android/bluetooth/map/BluetoothMns$EventHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/map/BluetoothMns;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMns;->register(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/map/BluetoothMns;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->mWaitingMasId:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/map/BluetoothMns;)Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->mConnectThread:Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/map/BluetoothMns;Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;)Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMns;->mConnectThread:Lcom/android/bluetooth/map/BluetoothMns$SocketConnectThread;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/bluetooth/map/BluetoothMns;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMns;->deregister(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/bluetooth/map/BluetoothMns;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMns;->canDisconnect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/map/BluetoothMns;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMns;->mnsCleanupInstances()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/bluetooth/map/BluetoothMns;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMns;->deregisterAll()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/bluetooth/map/BluetoothMns;Ljavax/obex/ObexTransport;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMns;->startObexSession(Ljavax/obex/ObexTransport;)V

    return-void
.end method

.method private assertMasid(I)Z
    .locals 4
    .parameter "masId"

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMns;->mMnsClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 192
    .local v0, size:I
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 193
    :cond_0
    const-string v1, "BtMns"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MAS id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is out of maximum number of MAS instances: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v1, 0x0

    .line 196
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private declared-synchronized canDisconnect()Z
    .locals 3

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMns;->mMnsClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;

    .line 218
    .local v0, client:Lcom/android/bluetooth/map/BluetoothMns$MnsClient;
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->isRegistered()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    const/4 v2, 0x0

    .line 222
    .end local v0           #client:Lcom/android/bluetooth/map/BluetoothMns$MnsClient;
    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 217
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private deregister(I)V
    .locals 4
    .parameter "masId"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMns;->assertMasid(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    const-string v1, "BtMns"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to register MAS id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMns;->mMnsClients:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;

    .line 231
    .local v0, client:Lcom/android/bluetooth/map/BluetoothMns$MnsClient;
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->register(Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;)V

    goto :goto_0
.end method

.method private deregisterAll()V
    .locals 3

    .prologue
    .line 237
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMns;->mMnsClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;

    .line 238
    .local v0, client:Lcom/android/bluetooth/map/BluetoothMns$MnsClient;
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->register(Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;)V

    goto :goto_0

    .line 242
    .end local v0           #client:Lcom/android/bluetooth/map/BluetoothMns$MnsClient;
    :cond_1
    return-void
.end method

.method private mnsCleanupInstances()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 245
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMns;->V:Z

    if-eqz v2, :cond_0

    const-string v2, "BtMns"

    const-string v3, "MNS_BT: entered mnsCleanupInstances"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMns;->mStorageStatusReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_1

    .line 247
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMns;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMns;->mStorageStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 248
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMns;->mStorageStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 250
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMns;->mMnsClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;

    .line 251
    .local v0, client:Lcom/android/bluetooth/map/BluetoothMns$MnsClient;
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMns;->V:Z

    if-eqz v2, :cond_3

    const-string v2, "BtMns"

    const-string v3, "MNS_BT: mnsCleanupInstances: inside for loop"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_3
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 253
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMns;->V:Z

    if-eqz v2, :cond_4

    const-string v2, "BtMns"

    const-string v3, "MNS_BT: mnsCleanupInstances: Attempt to deregister MnsClient"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_4
    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->register(Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;)V

    .line 255
    const/4 v0, 0x0

    .line 256
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMns;->V:Z

    if-eqz v2, :cond_2

    const-string v2, "BtMns"

    const-string v3, "MNS_BT: mnsCleanupInstances: made client = null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 259
    .end local v0           #client:Lcom/android/bluetooth/map/BluetoothMns$MnsClient;
    :cond_5
    return-void
.end method

.method private register(I)Z
    .locals 6
    .parameter "masId"

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMns;->assertMasid(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 201
    const-string v3, "BtMns"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to register MAS id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_0
    return v2

    .line 204
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMns;->mMnsClients:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;

    .line 205
    .local v0, client:Lcom/android/bluetooth/map/BluetoothMns$MnsClient;
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->isRegistered()Z

    move-result v3

    if-nez v3, :cond_1

    .line 207
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->register(Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 208
    :catch_0
    move-exception v1

    .line 209
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "BtMns"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occured while register MNS for MAS id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendEvent(Ljava/lang/String;I)V
    .locals 8
    .parameter "str"
    .parameter "masId"

    .prologue
    .line 541
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 542
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMns;->V:Z

    if-eqz v5, :cond_0

    .line 543
    const-string v5, "BtMns"

    const-string v6, "--------------"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const-string v5, "BtMns"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " CONTENT OF EVENT REPORT FILE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EventReport"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, FILENAME:Ljava/lang/String;
    const/4 v4, 0x0

    .line 549
    .local v4, fos:Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMns;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 550
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 552
    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMns;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 553
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 554
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 555
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 562
    :goto_0
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMns;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 563
    .local v3, fileR:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 564
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMns;->V:Z

    if-eqz v5, :cond_1

    .line 565
    const-string v5, "BtMns"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Sending event report file for Mas "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMns;->mSession:Lcom/android/bluetooth/map/BluetoothMnsObexSession;

    if-eqz v5, :cond_2

    .line 569
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMns;->mSession:Lcom/android/bluetooth/map/BluetoothMnsObexSession;

    int-to-byte v6, p2

    invoke-virtual {v5, v3, v6}, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->sendEvent(Ljava/io/File;B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 582
    .end local v0           #FILENAME:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fileR:Ljava/io/File;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    return-void

    .line 556
    .restart local v0       #FILENAME:Ljava/lang/String;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 557
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 558
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 559
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 571
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #fileR:Ljava/io/File;
    :catch_2
    move-exception v1

    .line 572
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 575
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMns;->V:Z

    if-eqz v5, :cond_2

    .line 576
    const-string v5, "BtMns"

    const-string v6, " ERROR IN CREATING SEND EVENT OBJ FILE"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 579
    .end local v0           #FILENAME:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fileR:Ljava/io/File;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    :cond_4
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMns;->V:Z

    if-eqz v5, :cond_2

    .line 580
    const-string v5, "BtMns"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendEvent(null, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private startObexSession(Ljavax/obex/ObexTransport;)V
    .locals 3
    .parameter "transport"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 616
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMns;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "BtMns"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create Client session with transport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_0
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMnsObexSession;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMns;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/bluetooth/map/BluetoothMnsObexSession;-><init>(Landroid/content/Context;Ljavax/obex/ObexTransport;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->mSession:Lcom/android/bluetooth/map/BluetoothMnsObexSession;

    .line 618
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->mSession:Lcom/android/bluetooth/map/BluetoothMnsObexSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->connect()V

    .line 619
    return-void
.end method


# virtual methods
.method public addMceInitiatedOperation(Ljava/lang/String;)V
    .locals 2
    .parameter "msgHandle"

    .prologue
    .line 446
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;-><init>(Lcom/android/bluetooth/map/BluetoothMns;)V

    .line 447
    .local v0, op:Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;
    iput-object p1, v0, Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;->msgHandle:Ljava/lang/String;

    .line 448
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, v0, Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;->time:Landroid/text/format/Time;

    .line 449
    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;->time:Landroid/text/format/Time;

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 450
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMns;->opList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    return-void
.end method

.method public findLocationMceInitiatedOperation(Ljava/lang/String;)I
    .locals 10
    .parameter "msgHandle"

    .prologue
    const/4 v9, 0x0

    .line 465
    const/4 v2, -0x1

    .line 467
    .local v2, location:I
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 468
    .local v0, currentTime:Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 470
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v4, staleOpList:Ljava/util/List;,"Ljava/util/List<Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;>;"
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMns;->opList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;

    .line 472
    .local v3, op:Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;
    invoke-virtual {v0, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    iget-object v7, v3, Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;->time:Landroid/text/format/Time;

    invoke-virtual {v7, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x2710

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 474
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 477
    .end local v3           #op:Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 478
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;

    .line 480
    .restart local v3       #op:Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMns;->opList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 484
    .end local v3           #op:Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;
    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMns;->opList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;

    .line 485
    .restart local v3       #op:Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;
    iget-object v5, v3, Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;->msgHandle:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 486
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMns;->opList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 491
    .end local v3           #op:Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;
    :cond_4
    const/4 v5, -0x1

    if-ne v2, v5, :cond_6

    .line 492
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMns;->opList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;

    .line 493
    .restart local v3       #op:Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;
    iget-object v5, v3, Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;->msgHandle:Ljava/lang/String;

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 494
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMns;->opList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 499
    .end local v3           #op:Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;
    :cond_6
    return v2
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->mSessionHandler:Lcom/android/bluetooth/map/BluetoothMns$EventHandler;

    return-object v0
.end method

.method public onDeliveryFailure(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "masId"
    .parameter "handle"
    .parameter "folder"
    .parameter "msgType"

    .prologue
    .line 690
    const-string v2, "DeliveryFailure"

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/map/BluetoothMns;->sendMnsEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    return-void
.end method

.method public onDeliverySuccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "masId"
    .parameter "handle"
    .parameter "folder"
    .parameter "msgType"

    .prologue
    .line 694
    const-string v2, "DeliverySuccess"

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/map/BluetoothMns;->sendMnsEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    return-void
.end method

.method public onMessageDeleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "masId"
    .parameter "handle"
    .parameter "folder"
    .parameter "msgType"

    .prologue
    .line 715
    const-string v2, "MessageDeleted"

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/map/BluetoothMns;->sendMnsEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    return-void
.end method

.method public onMessageShift(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "masId"
    .parameter "handle"
    .parameter "toFolder"
    .parameter "fromFolder"
    .parameter "msgType"

    .prologue
    .line 699
    const-string v2, "MessageShift"

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/map/BluetoothMns;->sendMnsEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    return-void
.end method

.method public onNewMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "masId"
    .parameter "handle"
    .parameter "folder"
    .parameter "msgType"

    .prologue
    .line 703
    const-string v2, "NewMessage"

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/map/BluetoothMns;->sendMnsEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    return-void
.end method

.method public onSendingFailure(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "masId"
    .parameter "handle"
    .parameter "folder"
    .parameter "msgType"

    .prologue
    .line 707
    const-string v2, "SendingFailure"

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/map/BluetoothMns;->sendMnsEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    return-void
.end method

.method public onSendingSuccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "masId"
    .parameter "handle"
    .parameter "folder"
    .parameter "msgType"

    .prologue
    .line 711
    const-string v2, "SendingSuccess"

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/map/BluetoothMns;->sendMnsEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    return-void
.end method

.method public removeMceInitiatedOperation(I)V
    .locals 1
    .parameter "location"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->opList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 458
    return-void
.end method

.method public sendMnsEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "masId"
    .parameter "msg"
    .parameter "handle"
    .parameter "folder"
    .parameter "old_folder"
    .parameter "msgType"

    .prologue
    const/4 v5, -0x1

    .line 508
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMns;->V:Z

    if-eqz v2, :cond_0

    .line 509
    const-string v2, "BtMns"

    const-string v3, "sendMnsEvent()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const-string v2, "BtMns"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const-string v2, "BtMns"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const-string v2, "BtMns"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "folder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const-string v2, "BtMns"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "old_folder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const-string v2, "BtMns"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msgType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_0
    const/4 v0, -0x1

    .line 522
    .local v0, location:I
    const-string v2, "MemoryAvailable"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "MemoryFull"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 523
    :cond_1
    const/4 v0, -0x1

    .line 528
    :goto_0
    if-ne v0, v5, :cond_4

    .line 529
    invoke-static {p2, p3, p4, p5, p6}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->mapEventReportXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, str:Ljava/lang/String;
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMns;->V:Z

    if-eqz v2, :cond_2

    const-string v2, "BtMns"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notification to MAS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMns;->mSessionHandler:Lcom/android/bluetooth/map/BluetoothMns$EventHandler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3, p1, v5, v1}, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 535
    .end local v1           #str:Ljava/lang/String;
    :goto_1
    return-void

    .line 525
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/bluetooth/map/BluetoothMns;->findLocationMceInitiatedOperation(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 533
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMns;->removeMceInitiatedOperation(I)V

    goto :goto_1
.end method

.method public sendMnsEventMemory(Ljava/lang/String;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 682
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->mMnsClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;

    .line 683
    .local v7, client:Lcom/android/bluetooth/map/BluetoothMns$MnsClient;
    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->getMasId()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/map/BluetoothMns;->sendMnsEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 687
    .end local v7           #client:Lcom/android/bluetooth/map/BluetoothMns$MnsClient;
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 604
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMns;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "BtMns"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->mSession:Lcom/android/bluetooth/map/BluetoothMnsObexSession;

    if-eqz v0, :cond_2

    .line 606
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMns;->V:Z

    if-eqz v0, :cond_1

    const-string v0, "BtMns"

    const-string v1, "Stop mSession"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->mSession:Lcom/android/bluetooth/map/BluetoothMnsObexSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMnsObexSession;->disconnect()V

    .line 608
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns;->mSession:Lcom/android/bluetooth/map/BluetoothMnsObexSession;

    .line 610
    :cond_2
    return-void
.end method
