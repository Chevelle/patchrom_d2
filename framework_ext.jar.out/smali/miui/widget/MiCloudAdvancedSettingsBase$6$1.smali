.class Lmiui/widget/MiCloudAdvancedSettingsBase$6$1;
.super Ljava/lang/Object;
.source "MiCloudAdvancedSettingsBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/MiCloudAdvancedSettingsBase$6;->onCheckPhoneResult(Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/widget/MiCloudAdvancedSettingsBase$6;


# direct methods
.method constructor <init>(Lmiui/widget/MiCloudAdvancedSettingsBase$6;)V
    .locals 0
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6$1;->this$1:Lmiui/widget/MiCloudAdvancedSettingsBase$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 484
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6$1;->this$1:Lmiui/widget/MiCloudAdvancedSettingsBase$6;

    iget-object v0, v0, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6$1;->this$1:Lmiui/widget/MiCloudAdvancedSettingsBase$6;

    iget v1, v1, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->val$simIndex:I

    #calls: Lmiui/widget/MiCloudAdvancedSettingsBase;->startActivate(I)V
    invoke-static {v0, v1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$700(Lmiui/widget/MiCloudAdvancedSettingsBase;I)V

    .line 485
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6$1;->this$1:Lmiui/widget/MiCloudAdvancedSettingsBase$6;

    iget-object v0, v0, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->val$syncPref:Lmiui/widget/SyncStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SyncStatePreference;->setEnabled(Z)V

    .line 487
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6$1;->this$1:Lmiui/widget/MiCloudAdvancedSettingsBase$6;

    iget-object v0, v0, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6$1;->this$1:Lmiui/widget/MiCloudAdvancedSettingsBase$6;

    iget-object v1, v1, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->val$syncPref:Lmiui/widget/SyncStatePreference;

    const/4 v2, 0x1

    #calls: Lmiui/widget/MiCloudAdvancedSettingsBase;->enableSync(Lmiui/widget/SyncStatePreference;Z)V
    invoke-static {v0, v1, v2}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$800(Lmiui/widget/MiCloudAdvancedSettingsBase;Lmiui/widget/SyncStatePreference;Z)V

    .line 489
    return-void
.end method
