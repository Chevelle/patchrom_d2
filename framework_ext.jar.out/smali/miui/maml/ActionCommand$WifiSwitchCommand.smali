.class Lmiui/maml/ActionCommand$WifiSwitchCommand;
.super Lmiui/maml/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiSwitchCommand"
.end annotation


# instance fields
.field private mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

.field private final mWifiState:Lmiui/maml/ActionCommand$StateTracker;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)V
    .locals 2
    .parameter "root"
    .parameter "value"

    .prologue
    .line 525
    const-string v0, "wifi_state"

    sget-object v1, Lmiui/maml/NotifierManager;->TYPE_WIFI_STATE:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/ActionCommand$NotificationReceiver;-><init>(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    new-instance v0, Lmiui/maml/ActionCommand$WifiStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/maml/ActionCommand$WifiStateTracker;-><init>(Lmiui/maml/ActionCommand$1;)V

    iput-object v0, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/maml/ActionCommand$StateTracker;

    .line 526
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$WifiSwitchCommand;->update()V

    .line 527
    new-instance v0, Lmiui/maml/ActionCommand$OnOffCommandHelper;

    invoke-direct {v0, p2}, Lmiui/maml/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    .line 528
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 4

    .prologue
    .line 538
    iget-object v1, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v1, v1, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    if-eqz v1, :cond_1

    .line 539
    iget-object v1, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/maml/ActionCommand$StateTracker;

    iget-object v2, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lmiui/maml/ActionCommand$StateTracker;->toggleState(Landroid/content/Context;)V

    .line 559
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$WifiSwitchCommand;->update()V

    .line 560
    return-void

    .line 541
    :cond_1
    const/4 v0, 0x0

    .line 542
    .local v0, change:Z
    iget-object v1, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/maml/ActionCommand$StateTracker;

    iget-object v2, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lmiui/maml/ActionCommand$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 555
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 556
    iget-object v1, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/maml/ActionCommand$StateTracker;

    iget-object v2, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v3, v3, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    invoke-virtual {v1, v2, v3}, Lmiui/maml/ActionCommand$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_0

    .line 544
    :pswitch_0
    iget-object v1, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v1, v1, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    if-eqz v1, :cond_2

    .line 545
    const/4 v0, 0x1

    goto :goto_1

    .line 548
    :pswitch_1
    iget-object v1, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v1, v1, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    if-nez v1, :cond_2

    .line 549
    const/4 v0, 0x1

    goto :goto_1

    .line 542
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "intent"
    .parameter "o"

    .prologue
    .line 532
    iget-object v0, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/maml/ActionCommand$StateTracker;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/ActionCommand$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 533
    invoke-super {p0, p1, p2, p3}, Lmiui/maml/ActionCommand$NotificationReceiver;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 534
    return-void
.end method

.method protected update()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 564
    iget-object v1, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/maml/ActionCommand$StateTracker;

    iget-object v2, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lmiui/maml/ActionCommand$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 575
    :goto_0
    :pswitch_0
    return-void

    .line 566
    :pswitch_1
    invoke-virtual {p0, v0}, Lmiui/maml/ActionCommand$WifiSwitchCommand;->updateState(I)V

    goto :goto_0

    .line 569
    :pswitch_2
    iget-object v0, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/maml/ActionCommand$StateTracker;

    check-cast v0, Lmiui/maml/ActionCommand$WifiStateTracker;

    iget-boolean v0, v0, Lmiui/maml/ActionCommand$WifiStateTracker;->zConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lmiui/maml/ActionCommand$WifiSwitchCommand;->updateState(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    .line 572
    :pswitch_3
    iget-object v1, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/maml/ActionCommand$StateTracker;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$StateTracker;->isTurningOn()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    :cond_1
    invoke-virtual {p0, v0}, Lmiui/maml/ActionCommand$WifiSwitchCommand;->updateState(I)V

    goto :goto_0

    .line 564
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
