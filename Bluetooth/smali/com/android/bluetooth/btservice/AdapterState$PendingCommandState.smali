.class Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;
.super Lcom/android/internal/util/State;
.source "AdapterState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingCommandState"
.end annotation


# instance fields
.field private mIsTurningOff:Z

.field private mIsTurningOn:Z

.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterState;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/btservice/AdapterState;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering PendingCommandState State: isTurningOn()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->isTurningOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isTurningOff()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->isTurningOff()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->infoLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->access$300(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public isTurningOff()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->mIsTurningOff:Z

    return v0
.end method

.method public isTurningOn()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->mIsTurningOn:Z

    return v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .parameter "msg"

    .prologue
    const/16 v6, 0x65

    const/16 v9, 0xc

    const/16 v7, 0x67

    const/16 v8, 0xa

    const/4 v3, 0x0

    .line 206
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->isTurningOn()Z

    move-result v1

    .line 207
    .local v1, isTurningOn:Z
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->isTurningOff()Z

    move-result v0

    .line 209
    .local v0, isTurningOff:Z
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 319
    :goto_0
    return v3

    .line 213
    :sswitch_0
    if-eqz v1, :cond_1

    .line 214
    const-string v3, "BluetoothAdapterState"

    const-string v4, "CURRENT_STATE=PENDING: Alreadying turning on bluetooth... Ignoring USER_TURN_ON..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 216
    :cond_1
    const-string v3, "BluetoothAdapterState"

    const-string v4, "CURRENT_STATE=PENDING: Deferring request USER_TURN_ON"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Lcom/android/bluetooth/btservice/AdapterState;->access$1000(Lcom/android/bluetooth/btservice/AdapterState;Landroid/os/Message;)V

    goto :goto_1

    .line 223
    :sswitch_1
    if-eqz v0, :cond_2

    .line 224
    const-string v3, "BluetoothAdapterState"

    const-string v4, "CURRENT_STATE=PENDING: Alreadying turning off bluetooth... Ignoring USER_TURN_OFF..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 226
    :cond_2
    const-string v3, "BluetoothAdapterState"

    const-string v4, "CURRENT_STATE=PENDING: Deferring request USER_TURN_OFF"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Lcom/android/bluetooth/btservice/AdapterState;->access$1100(Lcom/android/bluetooth/btservice/AdapterState;Landroid/os/Message;)V

    goto :goto_1

    .line 233
    :sswitch_2
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v4, 0x64

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->removeMessages(I)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterState;->access$1200(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 236
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #getter for: Lcom/android/bluetooth/btservice/AdapterState;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;
    invoke-static {v3}, Lcom/android/bluetooth/btservice/AdapterState;->access$700(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/bluetooth/btservice/AdapterService;->enableNative()Z

    move-result v2

    .line 237
    .local v2, ret:Z
    if-nez v2, :cond_3

    .line 238
    const-string v3, "BluetoothAdapterState"

    const-string v4, "Error while turning Bluetooth On"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->notifyAdapterStateChange(I)V
    invoke-static {v3, v8}, Lcom/android/bluetooth/btservice/AdapterState;->access$400(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 240
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #getter for: Lcom/android/bluetooth/btservice/AdapterState;->mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;
    invoke-static {v4}, Lcom/android/bluetooth/btservice/AdapterState;->access$1300(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;

    move-result-object v4

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterState;->access$1400(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 242
    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-wide/16 v4, 0x1f40

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessageDelayed(IJ)V

    goto :goto_1

    .line 249
    .end local v2           #ret:Z
    :sswitch_3
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->removeMessages(I)V
    invoke-static {v4, v6}, Lcom/android/bluetooth/btservice/AdapterState;->access$1500(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 250
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #getter for: Lcom/android/bluetooth/btservice/AdapterState;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;
    invoke-static {v4}, Lcom/android/bluetooth/btservice/AdapterState;->access$900(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/bluetooth/btservice/AdapterProperties;->onBluetoothReady()V

    .line 251
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #getter for: Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;
    invoke-static {v4}, Lcom/android/bluetooth/btservice/AdapterState;->access$500(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOn(Z)V

    .line 252
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #getter for: Lcom/android/bluetooth/btservice/AdapterState;->mOnState:Lcom/android/bluetooth/btservice/AdapterState$OnState;
    invoke-static {v4}, Lcom/android/bluetooth/btservice/AdapterState;->access$1600(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OnState;

    move-result-object v4

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterState;->access$1700(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    .line 253
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->notifyAdapterStateChange(I)V
    invoke-static {v3, v9}, Lcom/android/bluetooth/btservice/AdapterState;->access$400(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto :goto_1

    .line 257
    :sswitch_4
    const-string v4, "BluetoothAdapterState"

    const-string v5, "Timeout will setting scan mode..Continuing with disable..."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :sswitch_5
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v5, 0x69

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->removeMessages(I)V
    invoke-static {v4, v5}, Lcom/android/bluetooth/btservice/AdapterState;->access$1800(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 262
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-wide/16 v5, 0x1f40

    invoke-virtual {v4, v7, v5, v6}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessageDelayed(IJ)V

    .line 263
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #getter for: Lcom/android/bluetooth/btservice/AdapterState;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;
    invoke-static {v4}, Lcom/android/bluetooth/btservice/AdapterState;->access$700(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/bluetooth/btservice/AdapterService;->disableNative()Z

    move-result v2

    .line 264
    .restart local v2       #ret:Z
    if-nez v2, :cond_0

    .line 265
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->removeMessages(I)V
    invoke-static {v4, v7}, Lcom/android/bluetooth/btservice/AdapterState;->access$1900(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 266
    const-string v4, "BluetoothAdapterState"

    const-string v5, "Error while turning Bluetooth Off"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #getter for: Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;
    invoke-static {v4}, Lcom/android/bluetooth/btservice/AdapterState;->access$500(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOff(Z)V

    .line 269
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->notifyAdapterStateChange(I)V
    invoke-static {v3, v9}, Lcom/android/bluetooth/btservice/AdapterState;->access$400(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_1

    .line 275
    .end local v2           #ret:Z
    :sswitch_6
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->removeMessages(I)V
    invoke-static {v4, v7}, Lcom/android/bluetooth/btservice/AdapterState;->access$2000(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 276
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v5, 0x68

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessageDelayed(IJ)V

    .line 277
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #getter for: Lcom/android/bluetooth/btservice/AdapterState;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;
    invoke-static {v4}, Lcom/android/bluetooth/btservice/AdapterState;->access$700(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/bluetooth/btservice/AdapterService;->stopProfileServices()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 278
    const-string v3, "BluetoothAdapterState"

    const-string v4, "Stopping profile services that were post enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 284
    :cond_4
    :sswitch_7
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v5, 0x68

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->removeMessages(I)V
    invoke-static {v4, v5}, Lcom/android/bluetooth/btservice/AdapterState;->access$2100(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 285
    invoke-virtual {p0, v3}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOff(Z)V

    .line 286
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #getter for: Lcom/android/bluetooth/btservice/AdapterState;->mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;
    invoke-static {v4}, Lcom/android/bluetooth/btservice/AdapterState;->access$1300(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;

    move-result-object v4

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterState;->access$2200(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    .line 287
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->notifyAdapterStateChange(I)V
    invoke-static {v3, v8}, Lcom/android/bluetooth/btservice/AdapterState;->access$400(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_1

    .line 291
    :sswitch_8
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string v5, "Error enabling Bluetooth"

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->errorLog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/bluetooth/btservice/AdapterState;->access$2300(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 292
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #getter for: Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;
    invoke-static {v4}, Lcom/android/bluetooth/btservice/AdapterState;->access$500(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOn(Z)V

    .line 293
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #getter for: Lcom/android/bluetooth/btservice/AdapterState;->mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;
    invoke-static {v4}, Lcom/android/bluetooth/btservice/AdapterState;->access$1300(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;

    move-result-object v4

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterState;->access$2400(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    .line 294
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->notifyAdapterStateChange(I)V
    invoke-static {v3, v8}, Lcom/android/bluetooth/btservice/AdapterState;->access$400(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_1

    .line 298
    :sswitch_9
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string v5, "Error enabling Bluetooth"

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->errorLog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/bluetooth/btservice/AdapterState;->access$2300(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 299
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #getter for: Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;
    invoke-static {v4}, Lcom/android/bluetooth/btservice/AdapterState;->access$500(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOn(Z)V

    .line 300
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #getter for: Lcom/android/bluetooth/btservice/AdapterState;->mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;
    invoke-static {v4}, Lcom/android/bluetooth/btservice/AdapterState;->access$1300(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;

    move-result-object v4

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterState;->access$2500(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    .line 301
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->notifyAdapterStateChange(I)V
    invoke-static {v3, v8}, Lcom/android/bluetooth/btservice/AdapterState;->access$400(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_1

    .line 305
    :sswitch_a
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string v5, "Error stopping Bluetooth profiles"

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->errorLog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/bluetooth/btservice/AdapterState;->access$2300(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 306
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #getter for: Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;
    invoke-static {v4}, Lcom/android/bluetooth/btservice/AdapterState;->access$500(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOff(Z)V

    .line 307
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #getter for: Lcom/android/bluetooth/btservice/AdapterState;->mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;
    invoke-static {v4}, Lcom/android/bluetooth/btservice/AdapterState;->access$1300(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;

    move-result-object v4

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterState;->access$2600(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 311
    :sswitch_b
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string v5, "Error disabling Bluetooth"

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->errorLog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/bluetooth/btservice/AdapterState;->access$2300(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 312
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #getter for: Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;
    invoke-static {v4}, Lcom/android/bluetooth/btservice/AdapterState;->access$500(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOff(Z)V

    .line 313
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #getter for: Lcom/android/bluetooth/btservice/AdapterState;->mOnState:Lcom/android/bluetooth/btservice/AdapterState$OnState;
    invoke-static {v4}, Lcom/android/bluetooth/btservice/AdapterState;->access$1600(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OnState;

    move-result-object v4

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterState;->access$2700(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 209
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x14 -> :sswitch_1
        0x15 -> :sswitch_5
        0x18 -> :sswitch_6
        0x19 -> :sswitch_7
        0x64 -> :sswitch_8
        0x65 -> :sswitch_9
        0x67 -> :sswitch_b
        0x68 -> :sswitch_a
        0x69 -> :sswitch_4
    .end sparse-switch
.end method

.method public setTurningOff(Z)V
    .locals 0
    .parameter "isTurningOff"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->mIsTurningOff:Z

    .line 197
    return-void
.end method

.method public setTurningOn(Z)V
    .locals 0
    .parameter "isTurningOn"

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->mIsTurningOn:Z

    .line 189
    return-void
.end method
