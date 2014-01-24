.class Lmiui/widget/MiCloudAdvancedSettingsBase$6;
.super Ljava/lang/Object;
.source "MiCloudAdvancedSettingsBase.java"

# interfaces
.implements Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/MiCloudAdvancedSettingsBase;->handleSyncPrefClick(ILmiui/widget/SyncStatePreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

.field final synthetic val$simIndex:I

.field final synthetic val$syncPref:Lmiui/widget/SyncStatePreference;


# direct methods
.method constructor <init>(Lmiui/widget/MiCloudAdvancedSettingsBase;ILmiui/widget/SyncStatePreference;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    iput p2, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->val$simIndex:I

    iput-object p3, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->val$syncPref:Lmiui/widget/SyncStatePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckPhoneResult(Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 475
    sget-object v0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;->RESULT_NOT_ACTIVATED:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;

    if-ne p1, v0, :cond_0

    .line 478
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    new-instance v1, Lmiui/widget/MiCloudAdvancedSettingsBase$6$1;

    invoke-direct {v1, p0}, Lmiui/widget/MiCloudAdvancedSettingsBase$6$1;-><init>(Lmiui/widget/MiCloudAdvancedSettingsBase$6;)V

    new-instance v2, Lmiui/widget/MiCloudAdvancedSettingsBase$6$2;

    invoke-direct {v2, p0}, Lmiui/widget/MiCloudAdvancedSettingsBase$6$2;-><init>(Lmiui/widget/MiCloudAdvancedSettingsBase$6;)V

    #calls: Lmiui/widget/MiCloudAdvancedSettingsBase;->showSendSmsForSyncDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    invoke-static {v0, v1, v2}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$900(Lmiui/widget/MiCloudAdvancedSettingsBase;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 507
    :goto_0
    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    iget v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->val$simIndex:I

    #calls: Lmiui/widget/MiCloudAdvancedSettingsBase;->startActivate(I)V
    invoke-static {v0, v1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$700(Lmiui/widget/MiCloudAdvancedSettingsBase;I)V

    .line 504
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->val$syncPref:Lmiui/widget/SyncStatePreference;

    const/4 v2, 0x1

    #calls: Lmiui/widget/MiCloudAdvancedSettingsBase;->enableSync(Lmiui/widget/SyncStatePreference;Z)V
    invoke-static {v0, v1, v2}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$800(Lmiui/widget/MiCloudAdvancedSettingsBase;Lmiui/widget/SyncStatePreference;Z)V

    .line 505
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    iget v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->val$simIndex:I

    #calls: Lmiui/widget/MiCloudAdvancedSettingsBase;->updateSyncState(I)V
    invoke-static {v0, v1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$600(Lmiui/widget/MiCloudAdvancedSettingsBase;I)V

    goto :goto_0
.end method
