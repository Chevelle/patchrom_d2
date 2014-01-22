.class public Lcom/android/bluetooth/map/BluetoothMasService;
.super Landroid/app/Service;
.source "BluetoothMasService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;,
        Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;,
        Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;
    }
.end annotation


# static fields
.field public static final ACCESS_ALLOWED_ACTION:Ljava/lang/String; = "com.android.bluetooth.map.accessallowed"

.field private static final ACCESS_AUTHORITY_CLASS:Ljava/lang/String; = "com.android.settings.bluetooth.BluetoothPermissionRequest"

.field private static final ACCESS_AUTHORITY_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field public static final ACCESS_DISALLOWED_ACTION:Ljava/lang/String; = "com.android.bluetooth.map.accessdisallowed"

.field public static final ACCESS_REQUEST_ACTION:Ljava/lang/String; = "com.android.bluetooth.map.accessrequest"

.field public static final AUTH_CANCELLED_ACTION:Ljava/lang/String; = "com.android.bluetooth.map.authcancelled"

.field public static final AUTH_CHALL_ACTION:Ljava/lang/String; = "com.android.bluetooth.map.authchall"

.field public static final AUTH_RESPONSE_ACTION:Ljava/lang/String; = "com.android.bluetooth.map.authresponse"

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

#the value of this static final field might be set in the static constructor
.field public static final DEBUG:Z = false

.field public static final EMAIL_MAS_END:I = 0x1

.field public static final EMAIL_MAS_START:I = 0x1

.field public static final EXTRA_ALWAYS_ALLOWED:Ljava/lang/String; = "com.android.bluetooth.map.alwaysallowed"

.field public static final EXTRA_BLUETOOTH_DEVICE:Ljava/lang/String; = "com.android.bluetooth.map.bluetoothdevice"

.field public static final EXTRA_SESSION_KEY:Ljava/lang/String; = "com.android.bluetooth.map.sessionkey"

.field public static final MAS_INS_INFO:[Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo; = null

.field public static final MAX_INSTANCES:I = 0x2

.field private static final MSG_INTERNAL_START_LISTENER:I = 0x1

.field private static final MSG_INTERNAL_USER_TIMEOUT:I = 0x2

.field public static final MSG_OBEX_AUTH_CHALL:I = 0x138f

.field public static final MSG_SERVERSESSION_CLOSE:I = 0x138c

.field public static final MSG_SESSION_DISCONNECTED:I = 0x138e

.field public static final MSG_SESSION_ESTABLISHED:I = 0x138d

.field private static final NOTIFICATION_ID_ACCESS:I = -0xf4245

.field private static final TAG:Ljava/lang/String; = "BluetoothMasService"

.field public static final THIS_PACKAGE_NAME:Ljava/lang/String; = "com.android.bluetooth"

.field public static final USER_CONFIRM_TIMEOUT_ACTION:Ljava/lang/String; = "com.android.bluetooth.map.userconfirmtimeout"

.field private static final USER_CONFIRM_TIMEOUT_VALUE:I = 0x7530

.field public static final VERBOSE:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

.field private mAuthSync:Ljava/lang/Object;

.field mConnectionManager:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;

.field private mEmailAccountObserver:Landroid/database/ContentObserver;

.field private mHasStarted:Z

.field private volatile mIsRequestBeingNotified:Z

.field private final mSessionStatusHandler:Landroid/os/Handler;

.field private mStartId:I

.field mnsClient:Lcom/android/bluetooth/map/BluetoothMns;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v2, 0x2

    const/4 v7, 0x1

    .line 75
    const-string v0, "BluetoothMasService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->DEBUG:Z

    .line 76
    const-string v0, "BluetoothMasService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    .line 201
    new-array v0, v2, [Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMasService;->MAS_INS_INFO:[Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    .line 207
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMasService;->MAS_INS_INFO:[Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    const/16 v3, 0xe

    const-class v4, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    const-string v5, "SMS/MMS"

    const/16 v6, 0x10

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;-><init>(ILjava/lang/Class;Ljava/lang/String;I)V

    aput-object v2, v0, v1

    .line 208
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMasService;->MAS_INS_INFO:[Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    const-class v2, Lcom/android/bluetooth/map/BluetoothMnsEmail;

    const-string v3, "E-Mail"

    const/16 v4, 0x11

    invoke-direct {v1, v7, v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;-><init>(ILjava/lang/Class;Ljava/lang/String;I)V

    aput-object v1, v0, v7

    .line 209
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 232
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 163
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAuthSync:Ljava/lang/Object;

    .line 165
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    .line 167
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;

    .line 171
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mHasStarted:Z

    .line 172
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mStartId:I

    .line 177
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mIsRequestBeingNotified:Z

    .line 379
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasService$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMasService$2;-><init>(Lcom/android/bluetooth/map/BluetoothMasService;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mSessionStatusHandler:Landroid/os/Handler;

    .line 233
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;-><init>(Lcom/android/bluetooth/map/BluetoothMasService;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;

    .line 234
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasService$1;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/map/BluetoothMasService$1;-><init>(Lcom/android/bluetooth/map/BluetoothMasService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mEmailAccountObserver:Landroid/database/ContentObserver;

    .line 240
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/map/BluetoothMasService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasService;->updateEmailAccount()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/map/BluetoothMasService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/map/BluetoothMasService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mSessionStatusHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/map/BluetoothMasService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAuthSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/map/BluetoothMasService;)Lcom/android/bluetooth/map/BluetoothMapAuthenticator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/bluetooth/map/BluetoothMasService;Lcom/android/bluetooth/map/BluetoothMapAuthenticator;)Lcom/android/bluetooth/map/BluetoothMapAuthenticator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/map/BluetoothMasService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMasService;->createMapNotification(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/map/BluetoothMasService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasService;->closeService()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/map/BluetoothMasService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMasService;->removeMapNotification(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/map/BluetoothMasService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mIsRequestBeingNotified:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/map/BluetoothMasService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mIsRequestBeingNotified:Z

    return p1
.end method

.method private final closeService()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 354
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothMasService"

    const-string v2, "MNS_BT: inside closeService"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    if-eqz v1, :cond_2

    .line 357
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v1, :cond_1

    const-string v1, "BluetoothMasService"

    const-string v2, "MNS_BT: about to send MNS_BLUETOOTH_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMns;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 359
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mnsClient:Lcom/android/bluetooth/map/BluetoothMns;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :cond_2
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v1, :cond_3

    const-string v1, "BluetoothMasService"

    const-string v2, "MNS_BT: successfully sent MNS_BLUETOOTH_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->closeAll()V

    .line 366
    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mHasStarted:Z

    .line 367
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mStartId:I

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMasService;->stopSelfResult(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 368
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v1, :cond_4

    const-string v1, "BluetoothMasService"

    const-string v2, "successfully stopped map service"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_4
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothMasService"

    const-string v2, "MNS_BT: exception while sending MNS_BLUETOOTH_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v1, :cond_5

    const-string v1, "BluetoothMasService"

    const-string v2, "MNS_BT: successfully sent MNS_BLUETOOTH_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->closeAll()V

    .line 366
    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mHasStarted:Z

    .line 367
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mStartId:I

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMasService;->stopSelfResult(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 368
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v1, :cond_4

    const-string v1, "BluetoothMasService"

    const-string v2, "successfully stopped map service"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 364
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v2, :cond_6

    const-string v2, "BluetoothMasService"

    const-string v3, "MNS_BT: successfully sent MNS_BLUETOOTH_OFF"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_6
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->closeAll()V

    .line 366
    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mHasStarted:Z

    .line 367
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mStartId:I

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/map/BluetoothMasService;->stopSelfResult(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 368
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v2, :cond_7

    const-string v2, "BluetoothMasService"

    const-string v3, "successfully stopped map service"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    throw v1
.end method

.method private createMapNotification(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "device"

    .prologue
    .line 424
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothMasService"

    const-string v2, "Creating MAS access notification"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mIsRequestBeingNotified:Z

    .line 461
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 462
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    const-string v1, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 465
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 466
    const-string v1, "android.bluetooth.device.extra.PACKAGE_NAME"

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    const-string v1, "android.bluetooth.device.extra.CLASS_NAME"

    const-class v2, Lcom/android/bluetooth/map/BluetoothMasReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/map/BluetoothMasService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 471
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v1, :cond_1

    const-string v1, "BluetoothMasService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Awaiting Authorization : MAS Connection : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_1
    return-void
.end method

.method private notifyAuthCancelled()V
    .locals 3

    .prologue
    .line 493
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAuthSync:Ljava/lang/Object;

    monitor-enter v1

    .line 494
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;->setCancelled(Z)V

    .line 495
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 496
    monitor-exit v1

    .line 497
    return-void

    .line 496
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
    .line 483
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAuthSync:Ljava/lang/Object;

    monitor-enter v1

    .line 484
    if-eqz p1, :cond_0

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;->setSessionKey(Ljava/lang/String;)V

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;->setChallenged(Z)V

    .line 488
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 489
    monitor-exit v1

    .line 490
    return-void

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 291
    const-string v6, "action"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, action:Ljava/lang/String;
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v6, :cond_0

    .line 293
    const-string v6, "BluetoothMasService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    const-string v6, "android.bluetooth.adapter.extra.STATE"

    const/high16 v7, -0x8000

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 297
    .local v5, state:I
    const/4 v2, 0x1

    .line 298
    .local v2, removeTimeoutMsg:Z
    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 299
    const/16 v6, 0xd

    if-ne v5, v6, :cond_4

    .line 301
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasService;->closeService()V

    .line 335
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 336
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 337
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v6, :cond_2

    const-string v6, "BluetoothMasService"

    const-string v7, "MAS access request notification flag off"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_2
    iput-boolean v9, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mIsRequestBeingNotified:Z

    .line 340
    :cond_3
    return-void

    .line 303
    :cond_4
    const/4 v2, 0x0

    .line 304
    const/16 v6, 0xc

    if-ne v5, v6, :cond_1

    .line 305
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasService;->updateEmailAccount()V

    goto :goto_0

    .line 308
    :cond_5
    const-string v6, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 309
    const-string v6, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    invoke-virtual {p1, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v10, :cond_8

    .line 312
    const-string v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 313
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    const-string v6, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 314
    if-eqz v1, :cond_7

    .line 315
    invoke-virtual {v1, v10}, Landroid/bluetooth/BluetoothDevice;->setTrust(Z)Z

    move-result v3

    .line 316
    .local v3, result:Z
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v6, :cond_6

    const-string v6, "BluetoothMasService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setTrust() result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .end local v3           #result:Z
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasService;->updateEmailAccount()V

    .line 322
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;

    invoke-virtual {v6, v1}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->initiateObexServerSession(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 318
    :cond_7
    const-string v6, "BluetoothMasService"

    const-string v7, "No BluetoothDevice from intent"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 324
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_8
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;

    invoke-virtual {v6}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->stopObexServerSessionWaiting()V

    goto :goto_0

    .line 326
    :cond_9
    const-string v6, "com.android.bluetooth.map.authresponse"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 327
    const-string v6, "com.android.bluetooth.map.sessionkey"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 328
    .local v4, sessionkey:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/bluetooth/map/BluetoothMasService;->notifyAuthKeyInput(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 329
    .end local v4           #sessionkey:Ljava/lang/String;
    :cond_a
    const-string v6, "com.android.bluetooth.map.authcancelled"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 330
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasService;->notifyAuthCancelled()V

    goto/16 :goto_0

    .line 332
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private removeMapNotification(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 477
    .local v0, context:Landroid/content/Context;
    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 479
    .local v1, nm:Landroid/app/NotificationManager;
    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 480
    return-void
.end method

.method private updateEmailAccount()V
    .locals 10

    .prologue
    .line 214
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v8, :cond_0

    const-string v8, "BluetoothMasService"

    const-string v9, "updateEmailAccount()"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getEmailAccountIdList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 216
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v7, notAssigned:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {v5}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->removeMasIdIfNotPresent(Ljava/util/List;)V

    .line 218
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 219
    .local v4, id:Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getMasId(J)I

    move-result v6

    .line 220
    .local v6, masId:I
    const/4 v8, -0x1

    if-ne v6, v8, :cond_1

    .line 221
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    .end local v4           #id:Ljava/lang/Long;
    .end local v6           #masId:I
    :cond_2
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    const/4 v8, 0x1

    if-gt v2, v8, :cond_4

    .line 225
    invoke-static {v2}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getAccountId(I)J

    move-result-wide v0

    .line 226
    .local v0, accountId:J
    const-wide/16 v8, -0x1

    cmp-long v8, v0, v8

    if-nez v8, :cond_3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 227
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9, v2}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->updateMapTable(JI)V

    .line 224
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 230
    .end local v0           #accountId:J
    :cond_4
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 375
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasService"

    const-string v1, "Map Service onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 244
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 245
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v1, :cond_0

    .line 246
    const-string v1, "BluetoothMasService"

    const-string v2, "Map Service onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->init()V

    .line 249
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 251
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mHasStarted:Z

    if-nez v1, :cond_2

    .line 252
    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mHasStarted:Z

    .line 253
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v1, :cond_1

    const-string v1, "BluetoothMasService"

    const-string v2, "Starting MAS instances"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 256
    .local v0, state:I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 257
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 262
    .end local v0           #state:I
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->EMAIL_ACCOUNT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mEmailAccountObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 264
    return-void

    .line 258
    .restart local v0       #state:I
    :cond_3
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v1, :cond_2

    .line 259
    const-string v1, "BluetoothMasService"

    const-string v2, "BT is not ON, no start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 344
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 345
    const-string v0, "BluetoothMasService"

    const-string v1, "Map Service onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 348
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mEmailAccountObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 349
    invoke-static {}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->clearMapTable()V

    .line 350
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasService;->closeService()V

    .line 351
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 268
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v1, :cond_0

    .line 269
    const-string v1, "BluetoothMasService"

    const-string v2, "Map Service onStartCommand"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 271
    .local v0, retCode:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 272
    iput p3, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mStartId:I

    .line 273
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_2

    .line 274
    const-string v1, "BluetoothMasService"

    const-string v2, "Stopping BluetoothMasService: device does not have BT or device is not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasService;->closeService()V

    .line 286
    :cond_1
    :goto_0
    return v0

    .line 281
    :cond_2
    if-eqz p1, :cond_1

    .line 282
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMasService;->parseIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method
