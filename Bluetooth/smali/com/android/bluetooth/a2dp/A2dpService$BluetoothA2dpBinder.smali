.class Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;
.super Landroid/bluetooth/IBluetoothA2dp$Stub;
.source "A2dpService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothA2dpBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/a2dp/A2dpService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/a2dp/A2dpService;)V
    .locals 0
    .parameter "svc"

    .prologue
    .line 196
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;-><init>()V

    .line 197
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    .line 198
    return-void
.end method

.method private getService()Lcom/android/bluetooth/a2dp/A2dpService;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 185
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    const-string v1, "A2dpService"

    const-string v2, "A2dp call not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    :goto_0
    return-object v0

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    #calls: Lcom/android/bluetooth/a2dp/A2dpService;->isAvailable()Z
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpService;->access$000(Lcom/android/bluetooth/a2dp/A2dpService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    goto :goto_0
.end method


# virtual methods
.method public cleanup()Z
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 207
    .local v0, service:Lcom/android/bluetooth/a2dp/A2dpService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 208
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 213
    .local v0, service:Lcom/android/bluetooth/a2dp/A2dpService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 214
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/List;
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
    .line 218
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 219
    .local v0, service:Lcom/android/bluetooth/a2dp/A2dpService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 220
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 231
    .local v0, service:Lcom/android/bluetooth/a2dp/A2dpService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 232
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    goto :goto_0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 3
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
    .line 224
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 225
    .local v0, service:Lcom/android/bluetooth/a2dp/A2dpService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 226
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 243
    .local v0, service:Lcom/android/bluetooth/a2dp/A2dpService;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .line 244
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    goto :goto_0
.end method

.method public isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 249
    .local v0, service:Lcom/android/bluetooth/a2dp/A2dpService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 250
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 237
    .local v0, service:Lcom/android/bluetooth/a2dp/A2dpService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 238
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    goto :goto_0
.end method
