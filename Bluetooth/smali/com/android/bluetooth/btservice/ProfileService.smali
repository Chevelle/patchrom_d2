.class public abstract Lcom/android/bluetooth/btservice/ProfileService;
.super Landroid/app/Service;
.source "ProfileService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field public static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final DBG:Z = false

.field private static final PROFILE_SERVICE_MODE:I = 0x2

.field private static sReferenceCount:Ljava/util/HashMap;
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


# instance fields
.field protected mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field protected mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

.field private mCleaningUp:Z

.field protected mName:Ljava/lang/String;

.field protected mStartError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/bluetooth/btservice/ProfileService;->sReferenceCount:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mStartError:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mCleaningUp:Z

    .line 70
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    .line 83
    return-void
.end method

.method private doStart(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v1, "Error starting profile. BluetoothAdapter is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->start()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mStartError:Z

    .line 175
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mStartError:Z

    if-nez v0, :cond_2

    .line 176
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/ProfileService;->notifyProfileServiceStateChanged(I)V

    goto :goto_0

    .line 174
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v1, "Error starting profile. BluetoothAdapter is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doStop(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->stop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/ProfileService;->notifyProfileServiceStateChanged(I)V

    .line 187
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->stopSelf()V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v1, "Unable to stop profile"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected cleanup()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method protected getDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 2
    .parameter "address"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
.end method

.method protected isAvailable()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mStartError:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mCleaningUp:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void
.end method

.method public notifyProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 1
    .parameter "device"
    .parameter "profileId"
    .parameter "newState"
    .parameter "prevState"

    .prologue
    .line 203
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 204
    .local v0, svc:Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->onProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    .line 207
    :cond_0
    return-void
.end method

.method protected notifyProfileServiceStateChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 195
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 196
    .local v0, sAdapter:Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/bluetooth/btservice/AdapterService;->onProfileServiceStateChanged(Ljava/lang/String;I)V

    .line 199
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 104
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 105
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    .line 106
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mCleaningUp:Z

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 165
    iput-object v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 166
    return-void

    .line 157
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mCleaningUp:Z

    .line 158
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->cleanup()Z

    .line 159
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    invoke-interface {v0}, Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;->cleanup()Z

    .line 161
    iput-object v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v4, 0x2

    .line 110
    iget-boolean v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mStartError:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_2

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v3, "Stopping profile service: device does not have BT"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->doStop(Landroid/content/Intent;)V

    .line 137
    :cond_1
    :goto_0
    return v4

    .line 116
    :cond_2
    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/btservice/ProfileService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 117
    iget-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v3, "Permission denied!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :cond_3
    if-nez p1, :cond_4

    .line 122
    iget-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v3, "Restarting profile service..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    :cond_4
    const-string v2, "action"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.android.bluetooth.btservice.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 128
    .local v1, state:I
    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    .line 129
    iget-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v3, "Received stop request...Stopping profile..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->doStop(Landroid/content/Intent;)V

    goto :goto_0

    .line 131
    :cond_5
    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 132
    iget-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v3, "Received start request. Starting profile..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->doStart(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected abstract start()Z
.end method

.method protected abstract stop()Z
.end method
