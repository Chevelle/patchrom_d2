.class public Lcom/android/internal/util/AsyncChannel;
.super Ljava/lang/Object;
.source "AsyncChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/AsyncChannel$1;,
        Lcom/android/internal/util/AsyncChannel$DeathMonitor;,
        Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;,
        Lcom/android/internal/util/AsyncChannel$SyncMessenger;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x11000

.field public static final CMD_CHANNEL_DISCONNECT:I = 0x11003

.field public static final CMD_CHANNEL_DISCONNECTED:I = 0x11004

.field public static final CMD_CHANNEL_FULLY_CONNECTED:I = 0x11002

.field public static final CMD_CHANNEL_FULL_CONNECTION:I = 0x11001

.field public static final CMD_CHANNEL_HALF_CONNECTED:I = 0x11000

.field private static final CMD_TO_STRING_COUNT:I = 0x5

.field private static final DBG:Z = false

.field public static final STATUS_BINDING_UNSUCCESSFUL:I = 0x1

.field public static final STATUS_FULL_CONNECTION_REFUSED_ALREADY_CONNECTED:I = 0x3

.field public static final STATUS_REMOTE_DISCONNECTION:I = 0x4

.field public static final STATUS_SEND_UNSUCCESSFUL:I = 0x2

.field public static final STATUS_SUCCESSFUL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AsyncChannel"

.field private static sCmdToString:[Ljava/lang/String;


# instance fields
.field private mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

.field private mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

.field private mDstMessenger:Landroid/os/Messenger;

.field private mSrcContext:Landroid/content/Context;

.field private mSrcHandler:Landroid/os/Handler;

.field private mSrcMessenger:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 154
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    .line 156
    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CMD_CHANNEL_HALF_CONNECTED"

    aput-object v2, v0, v1

    .line 157
    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "CMD_CHANNEL_FULL_CONNECTION"

    aput-object v2, v0, v1

    .line 158
    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "CMD_CHANNEL_FULLY_CONNECTED"

    aput-object v2, v0, v1

    .line 159
    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "CMD_CHANNEL_DISCONNECT"

    aput-object v2, v0, v1

    .line 160
    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "CMD_CHANNEL_DISCONNECTED"

    aput-object v2, v0, v1

    .line 161
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/util/AsyncChannel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/internal/util/AsyncChannel;->replyHalfConnected(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/util/AsyncChannel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/internal/util/AsyncChannel;->replyDisconnected(I)V

    return-void
.end method

.method protected static cmdToString(I)Ljava/lang/String;
    .locals 1
    .parameter "cmd"

    .prologue
    .line 163
    const v0, 0x11000

    sub-int/2addr p0, v0

    .line 164
    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 165
    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 167
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 904
    const-string v0, "AsyncChannel"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    return-void
.end method

.method private replyDisconnected(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 871
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    const v2, 0x11004

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 872
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 873
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 874
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 875
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 876
    return-void
.end method

.method private replyHalfConnected(I)V
    .locals 5
    .parameter "status"

    .prologue
    .line 842
    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    const v3, 0x11000

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 843
    .local v1, msg:Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 844
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 845
    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 850
    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    if-nez v2, :cond_0

    .line 851
    new-instance v2, Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    invoke-direct {v2, p0}, Lcom/android/internal/util/AsyncChannel$DeathMonitor;-><init>(Lcom/android/internal/util/AsyncChannel;)V

    iput-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    .line 853
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    invoke-virtual {v2}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/util/AsyncChannel;->mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 862
    return-void

    .line 854
    :catch_0
    move-exception v0

    .line 855
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    .line 857
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    goto :goto_0
.end method


# virtual methods
.method public connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1
    .parameter "srcContext"
    .parameter "srcHandler"
    .parameter "dstHandler"

    .prologue
    .line 418
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 419
    return-void
.end method

.method public connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    .locals 1
    .parameter "srcContext"
    .parameter "srcHandler"
    .parameter "dstMessenger"

    .prologue
    .line 377
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 380
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/util/AsyncChannel;->replyHalfConnected(I)V

    .line 383
    return-void
.end method

.method public connect(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Class;)V
    .locals 2
    .parameter "srcContext"
    .parameter "srcHandler"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p3, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public connect(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "srcContext"
    .parameter "srcHandler"
    .parameter "dstPackageName"
    .parameter "dstClassName"

    .prologue
    .line 341
    new-instance v0, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;-><init>(Lcom/android/internal/util/AsyncChannel;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .local v0, ca:Lcom/android/internal/util/AsyncChannel$1ConnectAsync;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 345
    return-void
.end method

.method public connect(Lcom/android/internal/util/AsyncService;Landroid/os/Messenger;)V
    .locals 1
    .parameter "srcAsyncService"
    .parameter "dstMessenger"

    .prologue
    .line 432
    invoke-virtual {p1}, Lcom/android/internal/util/AsyncService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 433
    return-void
.end method

.method public connectSrcHandlerToPackageSync(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "srcContext"
    .parameter "srcHandler"
    .parameter "dstPackageName"
    .parameter "dstClassName"

    .prologue
    const/4 v2, 0x1

    .line 226
    new-instance v3, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    invoke-direct {v3, p0}, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;-><init>(Lcom/android/internal/util/AsyncChannel;)V

    iput-object v3, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    .line 229
    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcContext:Landroid/content/Context;

    .line 230
    iput-object p2, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    .line 231
    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    .line 238
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    iget-object v3, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    invoke-virtual {p1, v0, v3, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 245
    .local v1, result:Z
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :cond_0
    return v2
.end method

.method public connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I
    .locals 1
    .parameter "srcContext"
    .parameter "srcHandler"
    .parameter "dstHandler"

    .prologue
    .line 279
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    move-result v0

    return v0
.end method

.method public connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I
    .locals 1
    .parameter "srcContext"
    .parameter "srcHandler"
    .parameter "dstMessenger"

    .prologue
    .line 262
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    .locals 2
    .parameter "srcContext"
    .parameter "srcHandler"
    .parameter "dstMessenger"

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcContext:Landroid/content/Context;

    .line 400
    iput-object p2, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    .line 401
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    .line 404
    iput-object p3, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    .line 407
    return-void
.end method

.method public disconnect()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 451
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 457
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 458
    .local v0, msg:Landroid/os/Message;
    const v1, 0x11004

    iput v1, v0, Landroid/os/Message;->what:I

    .line 459
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 460
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 465
    invoke-direct {p0, v3}, Lcom/android/internal/util/AsyncChannel;->replyDisconnected(I)V

    .line 468
    :cond_1
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    if-eqz v1, :cond_2

    .line 469
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    invoke-virtual {v1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 471
    :cond_2
    return-void

    .line 461
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public disconnected()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 439
    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcContext:Landroid/content/Context;

    .line 440
    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    .line 441
    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    .line 442
    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    .line 443
    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    .line 444
    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    .line 445
    return-void
.end method

.method public fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I
    .locals 3
    .parameter "srcContext"
    .parameter "srcHandler"
    .parameter "dstHandler"

    .prologue
    .line 293
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    move-result v1

    .line 294
    .local v1, status:I
    if-nez v1, :cond_0

    .line 295
    const v2, 0x11001

    invoke-virtual {p0, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 296
    .local v0, response:Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 298
    .end local v0           #response:Landroid/os/Message;
    :cond_0
    return v1
.end method

.method public replyToMessage(Landroid/os/Message;I)V
    .locals 1
    .parameter "srcMsg"
    .parameter "what"

    .prologue
    .line 579
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 580
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 581
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 582
    return-void
.end method

.method public replyToMessage(Landroid/os/Message;II)V
    .locals 1
    .parameter "srcMsg"
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 592
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 593
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 594
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 595
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 596
    return-void
.end method

.method public replyToMessage(Landroid/os/Message;III)V
    .locals 1
    .parameter "srcMsg"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 607
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 608
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 609
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 610
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 611
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 612
    return-void
.end method

.method public replyToMessage(Landroid/os/Message;IIILjava/lang/Object;)V
    .locals 1
    .parameter "srcMsg"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 624
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 625
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 626
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 627
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 628
    iput-object p5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 629
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 630
    return-void
.end method

.method public replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 1
    .parameter "srcMsg"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 640
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 641
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 642
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 643
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 644
    return-void
.end method

.method public replyToMessage(Landroid/os/Message;Landroid/os/Message;)V
    .locals 3
    .parameter "srcMsg"
    .parameter "dstMsg"

    .prologue
    .line 564
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    iput-object v1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 565
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :goto_0
    return-void

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TODO: handle replyToMessage RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/AsyncChannel;->log(Ljava/lang/String;)V

    .line 568
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendMessage(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 493
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 494
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 495
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 496
    return-void
.end method

.method public sendMessage(II)V
    .locals 1
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 505
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 506
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 507
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 508
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 509
    return-void
.end method

.method public sendMessage(III)V
    .locals 1
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 519
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 520
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 521
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 522
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 523
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 524
    return-void
.end method

.method public sendMessage(IIILjava/lang/Object;)V
    .locals 1
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 535
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 536
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 537
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 538
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 539
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 540
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 541
    return-void
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 1
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 550
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 551
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 552
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 553
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 554
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 479
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    iput-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 481
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :goto_0
    return-void

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/internal/util/AsyncChannel;->replyDisconnected(I)V

    goto :goto_0
.end method

.method public sendMessageSynchronously(I)Landroid/os/Message;
    .locals 2
    .parameter "what"

    .prologue
    .line 664
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 665
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 666
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 667
    .local v1, resultMsg:Landroid/os/Message;
    return-object v1
.end method

.method public sendMessageSynchronously(II)Landroid/os/Message;
    .locals 2
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 678
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 679
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 680
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 681
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 682
    .local v1, resultMsg:Landroid/os/Message;
    return-object v1
.end method

.method public sendMessageSynchronously(III)Landroid/os/Message;
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 694
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 695
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 696
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 697
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 698
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 699
    .local v1, resultMsg:Landroid/os/Message;
    return-object v1
.end method

.method public sendMessageSynchronously(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 712
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 713
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 714
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 715
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 716
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 717
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 718
    .local v1, resultMsg:Landroid/os/Message;
    return-object v1
.end method

.method public sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 729
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 730
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 731
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 732
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 733
    .local v1, resultMsg:Landroid/os/Message;
    return-object v1
.end method

.method public sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;
    .locals 2
    .parameter "msg"

    .prologue
    .line 653
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    #calls: Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sendMessageSynchronously(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;
    invoke-static {v1, p1}, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->access$100(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 654
    .local v0, resultMsg:Landroid/os/Message;
    return-object v0
.end method
