.class Lcom/android/bluetooth/btservice/AdapterState$OnState;
.super Lcom/android/internal/util/State;
.source "AdapterState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterState;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/btservice/AdapterState;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState$OnState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string v1, "Entering On State"

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->infoLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->access$300(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #getter for: Lcom/android/bluetooth/btservice/AdapterState;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterState;->access$700(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->autoConnect()V

    .line 148
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 153
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 173
    const/4 v1, 0x0

    .line 175
    :goto_0
    return v1

    .line 156
    :sswitch_0
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v3, 0xd

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->notifyAdapterStateChange(I)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/btservice/AdapterState;->access$400(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 157
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #getter for: Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;
    invoke-static {v2}, Lcom/android/bluetooth/btservice/AdapterState;->access$500(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOff(Z)V

    .line 158
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #getter for: Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;
    invoke-static {v3}, Lcom/android/bluetooth/btservice/AdapterState;->access$500(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v3

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/btservice/AdapterState;->access$800(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    .line 162
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v3, 0x69

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 163
    .local v0, m:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 164
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #getter for: Lcom/android/bluetooth/btservice/AdapterState;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;
    invoke-static {v2}, Lcom/android/bluetooth/btservice/AdapterState;->access$900(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/AdapterProperties;->onBluetoothDisable()V

    goto :goto_0

    .line 169
    .end local v0           #m:Landroid/os/Message;
    :sswitch_1
    const-string v2, "BluetoothAdapterState"

    const-string v3, "Bluetooth already ON, ignoring USER_TURN_ON"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method
