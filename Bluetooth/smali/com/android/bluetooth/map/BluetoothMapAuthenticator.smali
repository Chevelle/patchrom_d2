.class public Lcom/android/bluetooth/map/BluetoothMapAuthenticator;
.super Ljava/lang/Object;
.source "BluetoothMapAuthenticator.java"

# interfaces
.implements Ljavax/obex/Authenticator;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothMapAuthenticator"


# instance fields
.field private mAuthCancelled:Z

.field private mCallback:Landroid/os/Handler;

.field private mChallenged:Z

.field private mSessionKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;->mCallback:Landroid/os/Handler;

    .line 56
    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;->mChallenged:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;->mAuthCancelled:Z

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;->mSessionKey:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private waitUserConfirmation()V
    .locals 4

    .prologue
    .line 74
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;->mCallback:Landroid/os/Handler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 75
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x138f

    iput v2, v1, Landroid/os/Message;->what:I

    .line 76
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 77
    monitor-enter p0

    .line 78
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;->mChallenged:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;->mAuthCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 80
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "BluetoothMapAuthenticator"

    const-string v3, "Interrupted while waiting on isChalled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    return-void
.end method


# virtual methods
.method public onAuthenticationChallenge(Ljava/lang/String;ZZ)Ljavax/obex/PasswordAuthentication;
    .locals 3
    .parameter "description"
    .parameter "isUserIdRequired"
    .parameter "isFullAccess"

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;->waitUserConfirmation()V

    .line 91
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    new-instance v0, Ljavax/obex/PasswordAuthentication;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/obex/PasswordAuthentication;-><init>([B[B)V

    .line 95
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public onAuthenticationResponse([B)[B
    .locals 1
    .parameter "userName"

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized setCancelled(Z)V
    .locals 1
    .parameter "bool"

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;->mAuthCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setChallenged(Z)V
    .locals 1
    .parameter "bool"

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;->mChallenged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setSessionKey(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;->mSessionKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
