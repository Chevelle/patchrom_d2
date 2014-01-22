.class Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;
.super Landroid/bluetooth/IBluetoothHeadset$Stub;
.source "HeadsetService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothHeadsetBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/hfp/HeadsetService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/hfp/HeadsetService;)V
    .locals 0
    .parameter "svc"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    .line 121
    return-void
.end method

.method private getService()Lcom/android/bluetooth/hfp/HeadsetService;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_1

    .line 129
    const-string v1, "HeadsetService"

    const-string v2, "Headset call not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    :goto_0
    return-object v0

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    #calls: Lcom/android/bluetooth/hfp/HeadsetService;->isAvailable()Z
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetService;->access$100(Lcom/android/bluetooth/hfp/HeadsetService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    goto :goto_0
.end method


# virtual methods
.method public acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 213
    .local v0, service:Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 214
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public clccResponse(IIIIZLjava/lang/String;I)V
    .locals 8
    .parameter "index"
    .parameter "direction"
    .parameter "status"
    .parameter "mode"
    .parameter "mpty"
    .parameter "number"
    .parameter "type"

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 269
    .local v0, service:Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    .line 271
    :goto_0
    return-void

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    .line 270
    #calls: Lcom/android/bluetooth/hfp/HeadsetService;->clccResponse(IIIIZLjava/lang/String;I)V
    invoke-static/range {v0 .. v7}, Lcom/android/bluetooth/hfp/HeadsetService;->access$500(Lcom/android/bluetooth/hfp/HeadsetService;IIIIZLjava/lang/String;I)V

    goto :goto_0
.end method

.method public cleanup()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 141
    .local v0, service:Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 142
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public connectAudio()Z
    .locals 2

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 231
    .local v0, service:Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 232
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->connectAudio()Z

    move-result v1

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 147
    .local v0, service:Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 148
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public disconnectAudio()Z
    .locals 2

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 237
    .local v0, service:Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 238
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->disconnectAudio()Z

    move-result v1

    goto :goto_0
.end method

.method public getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 225
    .local v0, service:Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/16 v1, 0xa

    .line 226
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    goto :goto_0
.end method

.method public getBatteryUsageHint(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 207
    .local v0, service:Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 208
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getBatteryUsageHint(Landroid/bluetooth/BluetoothDevice;)I

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
    .line 152
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 153
    .local v0, service:Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 165
    .local v0, service:Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 166
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

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
    .line 158
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 159
    .local v0, service:Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 160
    :goto_0
    return-object v1

    :cond_0
    #calls: Lcom/android/bluetooth/hfp/HeadsetService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    invoke-static {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->access$200(Lcom/android/bluetooth/hfp/HeadsetService;[I)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 177
    .local v0, service:Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .line 178
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    goto :goto_0
.end method

.method public isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 201
    .local v0, service:Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 202
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public isAudioOn()Z
    .locals 2

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 195
    .local v0, service:Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 196
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->isAudioOn()Z

    move-result v1

    goto :goto_0
.end method

.method public phoneStateChanged(IIILjava/lang/String;I)V
    .locals 6
    .parameter "numActive"
    .parameter "numHeld"
    .parameter "callState"
    .parameter "number"
    .parameter "type"

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 256
    .local v0, service:Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    .line 258
    :goto_0
    return-void

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 257
    #calls: Lcom/android/bluetooth/hfp/HeadsetService;->phoneStateChanged(IIILjava/lang/String;I)V
    invoke-static/range {v0 .. v5}, Lcom/android/bluetooth/hfp/HeadsetService;->access$300(Lcom/android/bluetooth/hfp/HeadsetService;IIILjava/lang/String;I)V

    goto :goto_0
.end method

.method public rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 219
    .local v0, service:Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 220
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public roamChanged(Z)V
    .locals 1
    .parameter "roam"

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 262
    .local v0, service:Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    .line 264
    :goto_0
    return-void

    .line 263
    :cond_0
    #calls: Lcom/android/bluetooth/hfp/HeadsetService;->roamChanged(Z)V
    invoke-static {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->access$400(Lcom/android/bluetooth/hfp/HeadsetService;Z)V

    goto :goto_0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 171
    .local v0, service:Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 172
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    goto :goto_0
.end method

.method public startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 243
    .local v0, service:Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 244
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 183
    .local v0, service:Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 184
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 249
    .local v0, service:Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 250
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 189
    .local v0, service:Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 190
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method
