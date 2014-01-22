.class Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;
.super Landroid/bluetooth/IBluetoothPan$Stub;
.source "PanService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pan/PanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothPanBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/pan/PanService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/pan/PanService;)V
    .locals 0
    .parameter "svc"

    .prologue
    .line 174
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothPan$Stub;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->mService:Lcom/android/bluetooth/pan/PanService;

    .line 176
    return-void
.end method

.method private getService()Lcom/android/bluetooth/pan/PanService;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 182
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_1

    .line 183
    const-string v1, "PanService"

    const-string v2, "Pan call not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    :goto_0
    return-object v0

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->mService:Lcom/android/bluetooth/pan/PanService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->mService:Lcom/android/bluetooth/pan/PanService;

    #calls: Lcom/android/bluetooth/pan/PanService;->isAvailable()Z
    invoke-static {v1}, Lcom/android/bluetooth/pan/PanService;->access$500(Lcom/android/bluetooth/pan/PanService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->mService:Lcom/android/bluetooth/pan/PanService;

    goto :goto_0
.end method

.method private isPanNapOn()Z
    .locals 2

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->getService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v0

    .line 209
    .local v0, service:Lcom/android/bluetooth/pan/PanService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 210
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/pan/PanService;->isPanNapOn()Z

    move-result v1

    goto :goto_0
.end method

.method private isPanUOn()Z
    .locals 2

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->getService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v0

    .line 215
    .local v0, service:Lcom/android/bluetooth/pan/PanService;
    invoke-virtual {v0}, Lcom/android/bluetooth/pan/PanService;->isPanUOn()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public cleanup()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->mService:Lcom/android/bluetooth/pan/PanService;

    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->getService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v0

    .line 194
    .local v0, service:Lcom/android/bluetooth/pan/PanService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 195
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pan/PanService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->getService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v0

    .line 199
    .local v0, service:Lcom/android/bluetooth/pan/PanService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 200
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pan/PanService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

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
    .line 231
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->getService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v0

    .line 232
    .local v0, service:Lcom/android/bluetooth/pan/PanService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 233
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/pan/PanService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->getService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v0

    .line 204
    .local v0, service:Lcom/android/bluetooth/pan/PanService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 205
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pan/PanService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

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
    .line 237
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->getService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v0

    .line 238
    .local v0, service:Lcom/android/bluetooth/pan/PanService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 239
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pan/PanService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public isTetheringOn()Z
    .locals 2

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->getService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v0

    .line 220
    .local v0, service:Lcom/android/bluetooth/pan/PanService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 221
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/pan/PanService;->isTetheringOn()Z

    move-result v1

    goto :goto_0
.end method

.method public setBluetoothTethering(Z)V
    .locals 4
    .parameter "value"

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->getService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v0

    .line 225
    .local v0, service:Lcom/android/bluetooth/pan/PanService;
    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    const-string v1, "PanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBluetoothTethering: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mTetherOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z
    invoke-static {v0}, Lcom/android/bluetooth/pan/PanService;->access$600(Lcom/android/bluetooth/pan/PanService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pan/PanService;->setBluetoothTethering(Z)V

    goto :goto_0
.end method
