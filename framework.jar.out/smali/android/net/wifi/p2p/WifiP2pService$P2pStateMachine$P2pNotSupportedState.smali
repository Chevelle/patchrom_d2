.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;
.super Lcom/android/internal/util/State;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "P2pNotSupportedState"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 674
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "message"

    .prologue
    const/4 v0, 0x1

    .line 677
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 758
    const/4 v0, 0x0

    .line 760
    :goto_0
    return v0

    .line 679
    :sswitch_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v2, 0x22002

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, p1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto :goto_0

    .line 683
    :sswitch_1
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v2, 0x22005

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, p1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto :goto_0

    .line 687
    :sswitch_2
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v2, 0x2202f

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, p1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto :goto_0

    .line 691
    :sswitch_3
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v2, 0x22008

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, p1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto :goto_0

    .line 695
    :sswitch_4
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v2, 0x2200b

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, p1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto :goto_0

    .line 699
    :sswitch_5
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v2, 0x2200e

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, p1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto :goto_0

    .line 703
    :sswitch_6
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v2, 0x22011

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, p1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto :goto_0

    .line 707
    :sswitch_7
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v2, 0x2201d

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, p1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto :goto_0

    .line 711
    :sswitch_8
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v2, 0x22020

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, p1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto :goto_0

    .line 715
    :sswitch_9
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v2, 0x22023

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, p1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto :goto_0

    .line 719
    :sswitch_a
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v2, 0x22026

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, p1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto :goto_0

    .line 723
    :sswitch_b
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v2, 0x22029

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, p1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto :goto_0

    .line 728
    :sswitch_c
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v2, 0x2202c

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, p1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto :goto_0

    .line 733
    :sswitch_d
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v2, 0x22034

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, p1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto :goto_0

    .line 737
    :sswitch_e
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v2, 0x22036

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, p1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 741
    :sswitch_f
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v2, 0x2203c

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, p1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 745
    :sswitch_10
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v2, 0x2203f

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, p1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 749
    :sswitch_11
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v2, 0x22042

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, p1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 753
    :sswitch_12
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v2, 0x22045

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, p1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 677
    :sswitch_data_0
    .sparse-switch
        0x22001 -> :sswitch_0
        0x22004 -> :sswitch_1
        0x22007 -> :sswitch_3
        0x2200a -> :sswitch_4
        0x2200d -> :sswitch_5
        0x22010 -> :sswitch_6
        0x2201c -> :sswitch_7
        0x2201f -> :sswitch_8
        0x22022 -> :sswitch_9
        0x22025 -> :sswitch_a
        0x22028 -> :sswitch_b
        0x2202b -> :sswitch_c
        0x2202e -> :sswitch_2
        0x22033 -> :sswitch_d
        0x22036 -> :sswitch_e
        0x2203b -> :sswitch_f
        0x2203e -> :sswitch_10
        0x22041 -> :sswitch_11
        0x22044 -> :sswitch_12
    .end sparse-switch
.end method
