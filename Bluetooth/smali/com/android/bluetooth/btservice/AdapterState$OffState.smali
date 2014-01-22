.class Lcom/android/bluetooth/btservice/AdapterState$OffState;
.super Lcom/android/internal/util/State;
.source "AdapterState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterState;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/btservice/AdapterState;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterState$OffState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState$OffState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState$OffState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string v1, "Entering OffState"

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->infoLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->access$300(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 122
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 137
    const/4 v0, 0x0

    .line 139
    :goto_0
    :sswitch_0
    return v0

    .line 125
    :sswitch_1
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState$OffState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v2, 0xb

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->notifyAdapterStateChange(I)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/btservice/AdapterState;->access$400(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 126
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState$OffState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #getter for: Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;
    invoke-static {v1}, Lcom/android/bluetooth/btservice/AdapterState;->access$500(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOn(Z)V

    .line 127
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState$OffState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterState$OffState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #getter for: Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;
    invoke-static {v2}, Lcom/android/bluetooth/btservice/AdapterState;->access$500(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v2

    #calls: Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/btservice/AdapterState;->access$600(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    .line 128
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState$OffState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v2, 0x64

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessageDelayed(IJ)V

    .line 129
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState$OffState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    #getter for: Lcom/android/bluetooth/btservice/AdapterState;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;
    invoke-static {v1}, Lcom/android/bluetooth/btservice/AdapterState;->access$700(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->processStart()V

    goto :goto_0

    .line 122
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method
