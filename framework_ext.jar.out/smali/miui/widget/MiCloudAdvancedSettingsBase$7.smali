.class Lmiui/widget/MiCloudAdvancedSettingsBase$7;
.super Landroid/content/BroadcastReceiver;
.source "MiCloudAdvancedSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/MiCloudAdvancedSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;


# direct methods
.method constructor <init>(Lmiui/widget/MiCloudAdvancedSettingsBase;)V
    .locals 0
    .parameter

    .prologue
    .line 785
    iput-object p1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$7;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 788
    if-nez p2, :cond_1

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.xiaomi.xmsf.action.ACTIVATE_STATUS_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 793
    const-string v4, "activate_status"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 795
    .local v1, activateStatus:I
    const-string v4, "sim_index"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 796
    .local v2, simIndex:I
    const-string v4, "MiCloudAdvancedSettingsBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onActivate status changed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v4, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$7;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    #getter for: Lmiui/widget/MiCloudAdvancedSettingsBase;->mActivateStatus:[I
    invoke-static {v4}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$400(Lmiui/widget/MiCloudAdvancedSettingsBase;)[I

    move-result-object v4

    aput v1, v4, v2

    .line 798
    iget-object v4, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$7;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    #calls: Lmiui/widget/MiCloudAdvancedSettingsBase;->updateSyncState(I)V
    invoke-static {v4, v2}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$600(Lmiui/widget/MiCloudAdvancedSettingsBase;I)V

    goto :goto_0

    .line 799
    .end local v1           #activateStatus:I
    .end local v2           #simIndex:I
    :cond_2
    const-string v4, "com.xiaomi.xmsf.action.MICLOUD_SIM_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 801
    const-string v4, "sim_index"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 802
    .restart local v2       #simIndex:I
    const-string v4, "sim_inserted"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 803
    .local v3, simInsertState:Z
    iget-object v4, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$7;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    #getter for: Lmiui/widget/MiCloudAdvancedSettingsBase;->mSimInsertStates:[Z
    invoke-static {v4}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$500(Lmiui/widget/MiCloudAdvancedSettingsBase;)[Z

    move-result-object v4

    aput-boolean v3, v4, v2

    .line 804
    iget-object v4, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$7;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    #calls: Lmiui/widget/MiCloudAdvancedSettingsBase;->updateSyncState(I)V
    invoke-static {v4, v2}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$600(Lmiui/widget/MiCloudAdvancedSettingsBase;I)V

    goto :goto_0
.end method
