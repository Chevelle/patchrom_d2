.class public Lmiui/maml/data/BatteryVariableUpdater;
.super Lmiui/maml/data/NotifierVariableUpdater;
.source "BatteryVariableUpdater.java"


# static fields
.field public static final USE_TAG:Ljava/lang/String; = "Battery"


# instance fields
.field private mBatteryLevel:Lmiui/maml/util/IndexedNumberVariable;


# direct methods
.method public constructor <init>(Lmiui/maml/data/VariableUpdaterManager;)V
    .locals 3
    .parameter "m"

    .prologue
    .line 15
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p0, p1, v0}, Lmiui/maml/data/NotifierVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "battery_level"

    invoke-virtual {p0}, Lmiui/maml/data/BatteryVariableUpdater;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/BatteryVariableUpdater;->mBatteryLevel:Lmiui/maml/util/IndexedNumberVariable;

    .line 17
    return-void
.end method


# virtual methods
.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 4
    .parameter "context"
    .parameter "intent"
    .parameter "o"

    .prologue
    const/4 v3, -0x1

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    const-string v1, "level"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 23
    .local v0, level:I
    if-eq v0, v3, :cond_0

    .line 24
    iget-object v3, p0, Lmiui/maml/data/BatteryVariableUpdater;->mBatteryLevel:Lmiui/maml/util/IndexedNumberVariable;

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    const-wide/high16 v1, 0x4059

    :goto_0
    invoke-virtual {v3, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 25
    invoke-virtual {p0}, Lmiui/maml/data/BatteryVariableUpdater;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    .line 28
    .end local v0           #level:I
    :cond_0
    return-void

    .line 24
    .restart local v0       #level:I
    :cond_1
    int-to-double v1, v0

    goto :goto_0
.end method
