.class public Lcom/android/bluetooth/pbap/BluetoothPbapService;
.super Landroid/app/Service;
.source "BluetoothPbapService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;
    }
.end annotation


# static fields
.field private static final ACCESS_AUTHORITY_CLASS:Ljava/lang/String; = "com.android.settings.bluetooth.BluetoothPermissionRequest"

.field private static final ACCESS_AUTHORITY_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field public static final AUTH_CANCELLED_ACTION:Ljava/lang/String; = "com.android.bluetooth.pbap.authcancelled"

.field public static final AUTH_CHALL_ACTION:Ljava/lang/String; = "com.android.bluetooth.pbap.authchall"

.field public static final AUTH_RESPONSE_ACTION:Ljava/lang/String; = "com.android.bluetooth.pbap.authresponse"

.field private static final AUTH_TIMEOUT:I = 0x3

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field public static final DEBUG:Z = true

.field public static final EXTRA_SESSION_KEY:Ljava/lang/String; = "com.android.bluetooth.pbap.sessionkey"

.field public static final MSG_OBEX_AUTH_CHALL:I = 0x138b

.field public static final MSG_SERVERSESSION_CLOSE:I = 0x1388

.field public static final MSG_SESSION_DISCONNECTED:I = 0x138a

.field public static final MSG_SESSION_ESTABLISHED:I = 0x1389

.field private static final NOTIFICATION_ID_ACCESS:I = -0xf4241

.field private static final NOTIFICATION_ID_AUTH:I = -0xf4242

.field private static final START_LISTENER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapService"

.field public static final THIS_PACKAGE_NAME:Ljava/lang/String; = "com.android.bluetooth"

.field public static final USER_CONFIRM_TIMEOUT_ACTION:Ljava/lang/String; = "com.android.bluetooth.pbap.userconfirmtimeout"

.field private static final USER_CONFIRM_TIMEOUT_VALUE:I = 0x7530

.field private static final USER_TIMEOUT:I = 0x2

.field public static final VERBOSE:Z

.field private static sLocalPhoneName:Ljava/lang/String;

.field private static sLocalPhoneNum:Ljava/lang/String;

.field private static sRemoteDeviceName:Ljava/lang/String;


# instance fields
.field private isWaitingAuthorization:Z

.field private mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

.field private final mBinder:Landroid/bluetooth/IBluetoothPbap$Stub;

.field private mConnSocket:Landroid/bluetooth/BluetoothSocket;

.field private mHasStarted:Z

.field private volatile mInterrupted:Z

.field private mPbapServer:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

.field private mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mServerSession:Ljavax/obex/ServerSession;

.field private mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private final mSessionStatusHandler:Landroid/os/Handler;

.field private mStartId:I

.field private mState:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 161
    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneNum:Ljava/lang/String;

    .line 163
    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneName:Ljava/lang/String;

    .line 165
    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sRemoteDeviceName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 143
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 147
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    .line 149
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    .line 153
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    .line 155
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 157
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    .line 159
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 167
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mHasStarted:Z

    .line 173
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mStartId:I

    .line 177
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->isWaitingAuthorization:Z

    .line 596
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    .line 720
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mBinder:Landroid/bluetooth/IBluetoothPbap$Stub;

    .line 185
    iput v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    .line 186
    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->startRfcommSocketListener()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopObexServerSession()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/pbap/BluetoothPbapService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->removePbapNotification(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->notifyAuthCancelled()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/pbap/BluetoothPbapService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->createPbapNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/pbap/BluetoothPbapService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Ljavax/obex/ServerSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/bluetooth/pbap/BluetoothPbapService;Ljavax/obex/ServerSession;)Ljavax/obex/ServerSession;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/pbap/BluetoothPbapService;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeSocket(ZZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/pbap/BluetoothPbapService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setState(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->initSocket()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeService()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    sput-object p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->startObexServerSession()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/bluetooth/pbap/BluetoothPbapService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->isWaitingAuthorization:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private final closeService()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 399
    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeSocket(ZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    if-eqz v1, :cond_0

    .line 406
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->shutdown()V

    .line 407
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->join()V

    .line 408
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 413
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    invoke-virtual {v1}, Ljavax/obex/ServerSession;->close()V

    .line 415
    iput-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    .line 418
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mHasStarted:Z

    .line 419
    iget v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mStartId:I

    if-eq v1, v4, :cond_2

    iget v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mStartId:I

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopSelfResult(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 421
    iput v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mStartId:I

    .line 424
    :cond_2
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "BluetoothPbapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CloseSocket error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 409
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 410
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v1, "BluetoothPbapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAcceptThread close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private final closeSocket(ZZ)V
    .locals 3
    .parameter "server"
    .parameter "accept"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 377
    if-ne p1, v1, :cond_0

    .line 379
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mInterrupted:Z

    .line 381
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    .line 383
    iput-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 387
    :cond_0
    if-ne p2, v1, :cond_1

    .line 388
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 390
    iput-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    .line 393
    :cond_1
    return-void
.end method

.method private createPbapNotification(Ljava/lang/String;)V
    .locals 11
    .parameter "action"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 666
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 670
    .local v3, nm:Landroid/app/NotificationManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 671
    .local v0, clickIntent:Landroid/content/Intent;
    const-class v5, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;

    invoke-virtual {v0, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 672
    const/high16 v5, 0x1000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 673
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 678
    .local v1, deleteIntent:Landroid/content/Intent;
    const-class v5, Lcom/android/bluetooth/pbap/BluetoothPbapReceiver;

    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 680
    const/4 v4, 0x0

    .line 681
    .local v4, notification:Landroid/app/Notification;
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 683
    .local v2, name:Ljava/lang/String;
    const-string v5, "com.android.bluetooth.pbap.authchall"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 684
    const-string v5, "com.android.bluetooth.pbap.authcancelled"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    new-instance v4, Landroid/app/Notification;

    .end local v4           #notification:Landroid/app/Notification;
    const v5, 0x1080080

    const v6, 0x7f040072

    invoke-virtual {p0, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 687
    .restart local v4       #notification:Landroid/app/Notification;
    const v5, 0x7f040073

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f040074

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v9, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v4, p0, v5, v6, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 691
    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 692
    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 693
    iput v10, v4, Landroid/app/Notification;->defaults:I

    .line 694
    invoke-static {p0, v9, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 695
    const v5, -0xf4242

    invoke-virtual {v3, v5, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 697
    :cond_0
    return-void
.end method

.method public static getLocalPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 710
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneName:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocalPhoneNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 706
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public static getRemoteDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 714
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method private final initSocket()Z
    .locals 8

    .prologue
    .line 329
    const/4 v3, 0x1

    .line 330
    .local v3, initSocketOK:Z
    const/16 v0, 0xa

    .line 333
    .local v0, CREATE_RETRY_TIME:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v5, 0xa

    if-ge v2, v5, :cond_0

    iget-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mInterrupted:Z

    if-nez v5, :cond_0

    .line 337
    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v6, "OBEX Phonebook Access Server"

    sget-object v7, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    invoke-virtual {v7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/bluetooth/BluetoothAdapter;->listenUsingEncryptedRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v5

    iput-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_1
    if-nez v3, :cond_0

    .line 346
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v5, :cond_1

    .line 367
    :cond_0
    :goto_2
    if-eqz v3, :cond_3

    .line 373
    :goto_3
    return v3

    .line 340
    :catch_0
    move-exception v1

    .line 341
    .local v1, e:Ljava/io/IOException;
    const-string v5, "BluetoothPbapService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error create RfcommServerSocket "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v3, 0x0

    goto :goto_1

    .line 347
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v4

    .line 348
    .local v4, state:I
    const/16 v5, 0xb

    if-eq v4, v5, :cond_2

    const/16 v5, 0xc

    if-eq v4, v5, :cond_2

    .line 350
    const-string v5, "BluetoothPbapService"

    const-string v6, "initServerSocket failed as BT is (being) turned off"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 353
    :cond_2
    monitor-enter p0

    .line 356
    const-wide/16 v5, 0x12c

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 361
    :goto_4
    :try_start_2
    monitor-exit p0

    .line 333
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 357
    :catch_1
    move-exception v1

    .line 358
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v5, "BluetoothPbapService"

    const-string v6, "socketAcceptThread thread was interrupted (3)"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mInterrupted:Z

    goto :goto_4

    .line 361
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 371
    .end local v4           #state:I
    :cond_3
    const-string v5, "BluetoothPbapService"

    const-string v6, "Error to create listening socket after 10 try"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private notifyAuthCancelled()V
    .locals 3

    .prologue
    .line 501
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    monitor-enter v1

    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setCancelled(Z)V

    .line 503
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 504
    monitor-exit v1

    .line 505
    return-void

    .line 504
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyAuthKeyInput(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 491
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    monitor-enter v1

    .line 492
    if-eqz p1, :cond_0

    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setSessionKey(Ljava/lang/String;)V

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setChallenged(Z)V

    .line 496
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 497
    monitor-exit v1

    .line 498
    return-void

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    .line 231
    const-string v6, "action"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.bluetooth.adapter.extra.STATE"

    const/high16 v7, -0x8000

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 237
    .local v4, state:I
    const/4 v2, 0x1

    .line 238
    .local v2, removeTimeoutMsg:Z
    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 239
    const/16 v6, 0xd

    if-ne v4, v6, :cond_2

    .line 241
    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 242
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v5, timeoutIntent:Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string v6, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, v5, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 248
    .end local v5           #timeoutIntent:Landroid/content/Intent;
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeService()V

    .line 289
    :goto_0
    if-eqz v2, :cond_1

    .line 290
    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 292
    :cond_1
    return-void

    .line 250
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 252
    :cond_3
    const-string v6, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 253
    iget-boolean v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->isWaitingAuthorization:Z

    if-eqz v6, :cond_1

    .line 258
    iput-boolean v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->isWaitingAuthorization:Z

    .line 260
    const-string v6, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v10, :cond_6

    .line 264
    const-string v6, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 265
    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6, v10}, Landroid/bluetooth/BluetoothDevice;->setTrust(Z)Z

    .line 269
    :cond_4
    :try_start_0
    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v6, :cond_5

    .line 270
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->startObexServerSession()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v1

    .line 275
    .local v1, ex:Ljava/io/IOException;
    const-string v6, "BluetoothPbapService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught the error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 272
    .end local v1           #ex:Ljava/io/IOException;
    :cond_5
    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopObexServerSession()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 278
    :cond_6
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopObexServerSession()V

    goto :goto_0

    .line 280
    :cond_7
    const-string v6, "com.android.bluetooth.pbap.authresponse"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 281
    const-string v6, "com.android.bluetooth.pbap.sessionkey"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, sessionkey:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->notifyAuthKeyInput(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    .end local v3           #sessionkey:Ljava/lang/String;
    :cond_8
    const-string v6, "com.android.bluetooth.pbap.authcancelled"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 284
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->notifyAuthCancelled()V

    goto :goto_0

    .line 286
    :cond_9
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private removePbapNotification(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 700
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 702
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 703
    return-void
.end method

.method private setState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 642
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setState(II)V

    .line 643
    return-void
.end method

.method private declared-synchronized setState(II)V
    .locals 6
    .parameter "state"
    .parameter "result"

    .prologue
    .line 646
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    if-eq p1, v3, :cond_0

    .line 647
    const-string v3, "BluetoothPbapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pbap state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    .line 650
    .local v1, prevState:I
    iput p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    .line 651
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 652
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.pbap.intent.PBAP_PREVIOUS_STATE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 653
    const-string v3, "android.bluetooth.pbap.intent.PBAP_STATE"

    iget v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 654
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 655
    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 656
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v2

    .line 657
    .local v2, s:Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v2, :cond_0

    .line 658
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x6

    iget v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/bluetooth/btservice/AdapterService;->onProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #prevState:I
    .end local v2           #s:Lcom/android/bluetooth/btservice/AdapterService;
    :cond_0
    monitor-exit p0

    return-void

    .line 646
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private final startObexServerSession()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 430
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_0

    .line 431
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 432
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "StartingObexPbapTransaction"

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 434
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 435
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 437
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 438
    .local v1, tm:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    .line 439
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneNum:Ljava/lang/String;

    .line 440
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneName:Ljava/lang/String;

    .line 441
    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 442
    const v3, 0x7f040077

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneName:Ljava/lang/String;

    .line 446
    :cond_1
    new-instance v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-direct {v3, v4, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapServer:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

    .line 447
    monitor-enter p0

    .line 448
    :try_start_0
    new-instance v3, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-direct {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;-><init>(Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    .line 449
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setChallenged(Z)V

    .line 450
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setCancelled(Z)V

    .line 451
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    new-instance v2, Lcom/android/bluetooth/pbap/BluetoothPbapRfcommTransport;

    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapRfcommTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 453
    .local v2, transport:Lcom/android/bluetooth/pbap/BluetoothPbapRfcommTransport;
    new-instance v3, Ljavax/obex/ServerSession;

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapServer:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    invoke-direct {v3, v2, v4, v5}, Ljavax/obex/ServerSession;-><init>(Ljavax/obex/ObexTransport;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)V

    iput-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    .line 454
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setState(I)V

    .line 458
    return-void

    .line 451
    .end local v2           #transport:Lcom/android/bluetooth/pbap/BluetoothPbapRfcommTransport;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private startRfcommSocketListener()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;Lcom/android/bluetooth/pbap/BluetoothPbapService$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    .line 321
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    const-string v1, "BluetoothPbapAcceptThread"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->setName(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->start()V

    .line 324
    :cond_0
    return-void
.end method

.method private stopObexServerSession()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 464
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 466
    iput-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    if-eqz v1, :cond_1

    .line 470
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    invoke-virtual {v1}, Ljavax/obex/ServerSession;->close()V

    .line 471
    iput-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    .line 474
    :cond_1
    iput-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    .line 477
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeSocket(ZZ)V

    .line 478
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 485
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->startRfcommSocketListener()V

    .line 487
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setState(I)V

    .line 488
    return-void

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BluetoothPbapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeSocket error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mBinder:Landroid/bluetooth/IBluetoothPbap$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 190
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 193
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mInterrupted:Z

    .line 194
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 196
    iget-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mHasStarted:Z

    if-nez v1, :cond_0

    .line 197
    iput-boolean v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mHasStarted:Z

    .line 199
    invoke-static {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->init(Landroid/content/Context;)V

    .line 200
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 201
    .local v0, state:I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 206
    .end local v0           #state:I
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 298
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 299
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setState(II)V

    .line 300
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 302
    iput-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 304
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeService()V

    .line 305
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 308
    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 212
    iput p3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mStartId:I

    .line 213
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 214
    const-string v0, "BluetoothPbapService"

    const-string v1, "Stopping BluetoothPbapService: device does not have BT or device is not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeService()V

    .line 226
    :cond_0
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 221
    :cond_1
    if-eqz p1, :cond_0

    .line 222
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->parseIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method
