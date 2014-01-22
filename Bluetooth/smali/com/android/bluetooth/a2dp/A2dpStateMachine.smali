.class final Lcom/android/bluetooth/a2dp/A2dpStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "A2dpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;,
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;,
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;,
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;,
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;,
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;
    }
.end annotation


# static fields
.field private static final A2DP_UUIDS:[Landroid/os/ParcelUuid; = null

.field static final AUDIO_STATE_REMOTE_SUSPEND:I = 0x0

.field static final AUDIO_STATE_STARTED:I = 0x2

.field static final AUDIO_STATE_STOPPED:I = 0x1

.field static final CONNECT:I = 0x1

.field static final CONNECTION_STATE_CONNECTED:I = 0x2

.field static final CONNECTION_STATE_CONNECTING:I = 0x1

.field static final CONNECTION_STATE_DISCONNECTED:I = 0x0

.field static final CONNECTION_STATE_DISCONNECTING:I = 0x3

.field private static final CONNECT_TIMEOUT:I = 0xc9

.field private static final DBG:Z = false

.field static final DISCONNECT:I = 0x2

.field private static final EVENT_TYPE_AUDIO_STATE_CHANGED:I = 0x2

.field private static final EVENT_TYPE_CONNECTION_STATE_CHANGED:I = 0x1

.field private static final EVENT_TYPE_NONE:I = 0x0

.field private static final MSG_CONNECTION_STATE_CHANGED:I = 0x0

.field private static final STACK_EVENT:I = 0x65

.field private static final TAG:Ljava/lang/String; = "A2dpStateMachine"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

.field private mContext:Landroid/content/Context;

.field private mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

.field private mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

.field private mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

.field private mPending:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

.field private mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

.field private mService:Lcom/android/bluetooth/a2dp/A2dpService;

.field private mTargetDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->A2DP_UUIDS:[Landroid/os/ParcelUuid;

    .line 115
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->classInitNative()V

    .line 116
    return-void
.end method

.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpService;Landroid/content/Context;)V
    .locals 4
    .parameter "svc"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 119
    const-string v1, "A2dpStateMachine"

    invoke-direct {p0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 108
    iput-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    .line 109
    iput-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 110
    iput-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 111
    iput-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    .line 120
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    .line 121
    iput-object p2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    .line 122
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 124
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->initNative()V

    .line 126
    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    invoke-direct {v1, p0, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    .line 127
    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

    invoke-direct {v1, p0, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

    .line 128
    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    invoke-direct {v1, p0, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    .line 130
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 131
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 132
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 134
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 136
    const-string v1, "power"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 137
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "BluetoothA2dpService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 139
    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

    .line 141
    const-string v1, "audio"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;

    .line 143
    return-void
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->connectA2dpNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->disconnectA2dpNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->onConnectionStateChanged(I[B)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method private broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 3
    .parameter "device"
    .parameter "state"
    .parameter "prevState"

    .prologue
    .line 692
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 693
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 694
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 695
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 696
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 697
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A2DP Playing state : device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 700
    return-void
.end method

.method private broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 5
    .parameter "device"
    .parameter "newState"
    .parameter "prevState"

    .prologue
    .line 680
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1, p2}, Landroid/media/AudioManager;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    .line 682
    .local v0, delay:I
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 683
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p3, p2, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 689
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private native connectA2dpNative([B)Z
.end method

.method private native disconnectA2dpNative([B)Z
.end method

.method private getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1
    .parameter "device"

    .prologue
    .line 703
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private getDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 2
    .parameter "address"

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method private native initNative()V
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 724
    const-string v0, "A2dpStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    return-void
.end method

.method static make(Lcom/android/bluetooth/a2dp/A2dpService;Landroid/content/Context;)Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .locals 3
    .parameter "svc"
    .parameter "context"

    .prologue
    .line 146
    const-string v1, "A2dpStateMachine"

    const-string v2, "make"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;-><init>(Lcom/android/bluetooth/a2dp/A2dpService;Landroid/content/Context;)V

    .line 148
    .local v0, a2dpSm:Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->start()V

    .line 149
    return-object v0
.end method

.method private onAudioStateChanged(I[B)V
    .locals 3
    .parameter "state"
    .parameter "address"

    .prologue
    .line 714
    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;ILcom/android/bluetooth/a2dp/A2dpStateMachine$1;)V

    .line 715
    .local v0, event:Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    .line 716
    invoke-direct {p0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 717
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 718
    return-void
.end method

.method private onConnectionStateChanged(I[B)V
    .locals 3
    .parameter "state"
    .parameter "address"

    .prologue
    .line 707
    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;ILcom/android/bluetooth/a2dp/A2dpStateMachine$1;)V

    .line 708
    .local v0, event:Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    .line 709
    invoke-direct {p0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 710
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 711
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->cleanupNative()V

    .line 158
    return-void
.end method

.method public doQuit()V
    .locals 0

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->quitNow()V

    .line 154
    return-void
.end method

.method getConnectedDevices()Ljava/util/List;
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
    .line 617
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 618
    .local v0, devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-enter p0

    .line 619
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    if-ne v1, v2, :cond_0

    .line 620
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    :cond_0
    monitor-exit p0

    .line 623
    return-object v0

    .line 622
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .parameter "device"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 585
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    if-ne v3, v4, :cond_0

    .line 611
    :goto_0
    return v1

    .line 589
    :cond_0
    monitor-enter p0

    .line 590
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 591
    .local v0, currentState:Lcom/android/internal/util/IState;
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

    if-ne v0, v3, :cond_4

    .line 592
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 593
    monitor-exit p0

    move v1, v2

    goto :goto_0

    .line 595
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 596
    const/4 v1, 0x3

    monitor-exit p0

    goto :goto_0

    .line 613
    .end local v0           #currentState:Lcom/android/internal/util/IState;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 598
    .restart local v0       #currentState:Lcom/android/internal/util/IState;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 599
    monitor-exit p0

    move v1, v2

    goto :goto_0

    .line 601
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 604
    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    if-ne v0, v2, :cond_6

    .line 605
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 606
    const/4 v1, 0x2

    monitor-exit p0

    goto :goto_0

    .line 608
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 610
    :cond_6
    const-string v2, "A2dpStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad currentState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 8
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
    .line 657
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .local v3, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v7, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 661
    .local v0, bondedDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 662
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    .line 663
    .local v4, featureUuids:[Landroid/os/ParcelUuid;
    sget-object v7, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->A2DP_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v4, v7}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 666
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 667
    .local v1, connectionState:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v7, p1

    if-ge v5, v7, :cond_0

    .line 668
    aget v7, p1, v5

    if-ne v1, v7, :cond_1

    .line 669
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 673
    .end local v1           #connectionState:I
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #featureUuids:[Landroid/os/ParcelUuid;
    .end local v5           #i:I
    :cond_2
    monitor-exit p0

    return-object v3

    .line 657
    .end local v0           #bondedDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v3           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method isPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 627
    monitor-enter p0

    .line 628
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    const/4 v0, 0x1

    monitor-exit p0

    .line 632
    :goto_0
    return v0

    .line 631
    :cond_0
    monitor-exit p0

    .line 632
    const/4 v0, 0x0

    goto :goto_0

    .line 631
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method okToConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    .line 636
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 637
    .local v0, adapterService:Lcom/android/bluetooth/btservice/AdapterService;
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 638
    .local v1, priority:I
    const/4 v2, 0x0

    .line 640
    .local v2, ret:Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isQuietModeEnabled()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_2

    .line 643
    :cond_0
    const/4 v2, 0x0

    .line 653
    :cond_1
    :goto_0
    return v2

    .line 648
    :cond_2
    if-gtz v1, :cond_3

    const/4 v3, -0x1

    if-ne v3, v1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    .line 651
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method
