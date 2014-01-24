.class Lmiui/maml/ActionCommand$DataSwitchCommand;
.super Lmiui/maml/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataSwitchCommand"
.end annotation


# instance fields
.field private mApnEnable:Z

.field private mCm:Landroid/net/ConnectivityManager;

.field private mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)V
    .locals 2
    .parameter "root"
    .parameter "value"

    .prologue
    .line 584
    const-string v0, "data_state"

    sget-object v1, Lmiui/maml/NotifierManager;->TYPE_MOBILE_DATA:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/ActionCommand$NotificationReceiver;-><init>(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    new-instance v0, Lmiui/maml/ActionCommand$OnOffCommandHelper;

    invoke-direct {v0, p2}, Lmiui/maml/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    .line 586
    return-void
.end method

.method private ensureConnectivityManager()Z
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 590
    iget-object v0, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mCm:Landroid/net/ConnectivityManager;

    .line 592
    :cond_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mCm:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected doPerform()V
    .locals 2

    .prologue
    .line 606
    invoke-direct {p0}, Lmiui/maml/ActionCommand$DataSwitchCommand;->ensureConnectivityManager()Z

    move-result v1

    if-nez v1, :cond_1

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    iget-boolean v0, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    .line 610
    .local v0, enable:Z
    iget-object v1, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v1, v1, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    if-eqz v1, :cond_3

    .line 611
    iget-boolean v1, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 615
    :goto_1
    iget-boolean v1, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    if-eq v1, v0, :cond_0

    .line 616
    iget-object v1, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0

    .line 611
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 613
    :cond_3
    iget-object v1, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v0, v1, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    goto :goto_1
.end method

.method protected update()V
    .locals 1

    .prologue
    .line 597
    invoke-direct {p0}, Lmiui/maml/ActionCommand$DataSwitchCommand;->ensureConnectivityManager()Z

    move-result v0

    if-nez v0, :cond_0

    .line 602
    :goto_0
    return-void

    .line 600
    :cond_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    .line 601
    iget-boolean v0, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lmiui/maml/ActionCommand$DataSwitchCommand;->updateState(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
