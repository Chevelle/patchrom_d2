.class Lmiui/widget/MiCloudAdvancedSettingsBase$5;
.super Ljava/lang/Object;
.source "MiCloudAdvancedSettingsBase.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lmiui/widget/MiCloudAdvancedSettingsBase;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$5;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    iput p2, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$5;->val$simIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$5;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    iget v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$5;->val$simIndex:I

    #calls: Lmiui/widget/MiCloudAdvancedSettingsBase;->updateSyncState(I)V
    invoke-static {v0, v1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$600(Lmiui/widget/MiCloudAdvancedSettingsBase;I)V

    .line 453
    return-void
.end method
