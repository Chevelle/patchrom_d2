.class Lcom/android/server/wifi/WifiController$ApEnabledState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApEnabledState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 608
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 624
    :goto_0
    return v0

    .line 610
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, v1, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, v1, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v2, v0}, Landroid/net/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 612
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$2400(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v1

    #calls: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$3600(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    .line 624
    :cond_0
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 616
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_0

    .line 617
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, v1, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v2, v0}, Landroid/net/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 618
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$2400(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v1

    #calls: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$3700(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 608
    nop

    :pswitch_data_0
    .packed-switch 0x26009
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
