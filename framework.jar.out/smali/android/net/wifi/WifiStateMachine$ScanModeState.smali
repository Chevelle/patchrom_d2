.class Landroid/net/wifi/WifiStateMachine$ScanModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanModeState"
.end annotation


# instance fields
.field private mLastOperationMode:I

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 3445
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    .line 3449
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$8900(Landroid/net/wifi/WifiStateMachine;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->mLastOperationMode:I

    .line 3450
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 3453
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3483
    const/4 v0, 0x0

    .line 3485
    :goto_0
    return v0

    .line 3455
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_1

    .line 3457
    iget v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->mLastOperationMode:I

    if-ne v0, v2, :cond_0

    .line 3458
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$3900(Landroid/net/wifi/WifiStateMachine;I)V

    .line 3461
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$6200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfigStore;->loadAndEnableAllNetworks()V

    .line 3462
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v2, 0x20083

    invoke-virtual {v0, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 3467
    :goto_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->reconnect()Z

    .line 3469
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$8902(Landroid/net/wifi/WifiStateMachine;I)I

    .line 3470
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$11700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$14900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    :goto_2
    move v0, v1

    .line 3485
    goto :goto_0

    .line 3464
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$6200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    goto :goto_1

    :cond_1
    move v0, v1

    .line 3473
    goto :goto_0

    .line 3479
    :pswitch_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/WorkSource;

    #calls: Landroid/net/wifi/WifiStateMachine;->noteScanStart(ILandroid/os/WorkSource;)V
    invoke-static {v2, v3, v0}, Landroid/net/wifi/WifiStateMachine;->access$12100(Landroid/net/wifi/WifiStateMachine;ILandroid/os/WorkSource;)V

    .line 3480
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->startScanNative(I)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$12200(Landroid/net/wifi/WifiStateMachine;I)V

    goto :goto_2

    .line 3453
    nop

    :pswitch_data_0
    .packed-switch 0x20047
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
