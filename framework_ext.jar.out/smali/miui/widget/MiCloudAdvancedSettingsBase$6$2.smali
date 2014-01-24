.class Lmiui/widget/MiCloudAdvancedSettingsBase$6$2;
.super Ljava/lang/Object;
.source "MiCloudAdvancedSettingsBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 492
    iput-object p1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6$2;->this$1:Lmiui/widget/MiCloudAdvancedSettingsBase$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 496
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6$2;->this$1:Lmiui/widget/MiCloudAdvancedSettingsBase$6;

    iget-object v0, v0, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6$2;->this$1:Lmiui/widget/MiCloudAdvancedSettingsBase$6;

    iget v1, v1, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->val$simIndex:I

    #calls: Lmiui/widget/MiCloudAdvancedSettingsBase;->updateSyncState(I)V
    invoke-static {v0, v1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$600(Lmiui/widget/MiCloudAdvancedSettingsBase;I)V

    .line 497
    return-void
.end method
