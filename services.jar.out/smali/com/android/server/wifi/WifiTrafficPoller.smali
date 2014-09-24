.class final Lcom/android/server/wifi/WifiTrafficPoller;
.super Ljava/lang/Object;
.source "WifiTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;
    }
.end annotation


# static fields
.field private static final ADD_CLIENT:I = 0x3

.field private static final ENABLE_TRAFFIC_STATS_POLL:I = 0x1

.field private static final POLL_TRAFFIC_STATS_INTERVAL_MSECS:I = 0x3e8

.field private static final REMOVE_CLIENT:I = 0x4

.field private static final TRAFFIC_STATS_POLL:I = 0x2


# instance fields
.field private final mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private mDataActivity:I

.field private mEnableTrafficStatsPoll:Z

.field private final mInterface:Ljava/lang/String;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mRxPkts:J

.field private mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

.field private mTrafficStatsPollToken:I

.field private mTxPkts:J


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "iface"

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    .line 55
    iput v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;

    .line 64
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    iput-object p2, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mInterface:Ljava/lang/String;

    .line 71
    new-instance v1, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;-><init>(Lcom/android/server/wifi/WifiTrafficPoller;Lcom/android/server/wifi/WifiTrafficPoller$1;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    new-instance v1, Lcom/android/server/wifi/WifiTrafficPoller$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiTrafficPoller$1;-><init>(Lcom/android/server/wifi/WifiTrafficPoller;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    return-void
.end method

.method static synthetic access$102(Lcom/android/server/wifi/WifiTrafficPoller;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiTrafficPoller;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/server/wifi/WifiTrafficPoller;->evaluateTrafficStatsPolling()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiTrafficPoller;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/wifi/WifiTrafficPoller;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiTrafficPoller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$508(Lcom/android/server/wifi/WifiTrafficPoller;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiTrafficPoller;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/server/wifi/WifiTrafficPoller;->notifyOnDataActivity()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;

    return-object v0
.end method

.method private evaluateTrafficStatsPolling()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 137
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v1, :cond_0

    .line 146
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    invoke-static {v1, v4, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 145
    .local v0, msg:Landroid/os/Message;
    :goto_1
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 142
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    invoke-static {v1, v4, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_1
.end method

.method private notifyOnDataActivity()V
    .locals 14

    .prologue
    .line 150
    iget-wide v6, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    .local v6, preTxPkts:J
    iget-wide v4, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    .line 151
    .local v4, preRxPkts:J
    const/4 v1, 0x0

    .line 153
    .local v1, dataActivity:I
    iget-object v12, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mInterface:Ljava/lang/String;

    invoke-static {v12}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    .line 154
    iget-object v12, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mInterface:Ljava/lang/String;

    invoke-static {v12}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    .line 156
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-gtz v12, :cond_0

    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-lez v12, :cond_3

    .line 157
    :cond_0
    iget-wide v12, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    sub-long v10, v12, v6

    .line 158
    .local v10, sent:J
    iget-wide v12, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    sub-long v8, v12, v4

    .line 159
    .local v8, received:J
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-lez v12, :cond_1

    .line 160
    or-int/lit8 v1, v1, 0x2

    .line 162
    :cond_1
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-lez v12, :cond_2

    .line 163
    or-int/lit8 v1, v1, 0x1

    .line 166
    :cond_2
    iget v12, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    if-eq v1, v12, :cond_3

    iget-object v12, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 167
    iput v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    .line 168
    iget-object v12, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 169
    .local v0, client:Landroid/os/Messenger;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 170
    .local v3, msg:Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v3, Landroid/os/Message;->what:I

    .line 171
    iget v12, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    iput v12, v3, Landroid/os/Message;->arg1:I

    .line 173
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v12

    goto :goto_0

    .line 181
    .end local v0           #client:Landroid/os/Messenger;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #msg:Landroid/os/Message;
    .end local v8           #received:J
    .end local v10           #sent:J
    :cond_3
    return-void
.end method


# virtual methods
.method addClient(Landroid/os/Messenger;)V
    .locals 2
    .parameter "client"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 98
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnableTrafficStatsPoll "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTrafficStatsPollToken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTxPkts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRxPkts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataActivity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method removeClient(Landroid/os/Messenger;)V
    .locals 2
    .parameter "client"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 102
    return-void
.end method
