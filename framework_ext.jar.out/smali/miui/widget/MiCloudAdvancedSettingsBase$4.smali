.class Lmiui/widget/MiCloudAdvancedSettingsBase$4;
.super Ljava/lang/Object;
.source "MiCloudAdvancedSettingsBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/MiCloudAdvancedSettingsBase;->handleIntent()V
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
    .line 382
    iput-object p1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$4;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 385
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$4;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    #getter for: Lmiui/widget/MiCloudAdvancedSettingsBase;->mCloudManager:Lmiui/net/CloudManager;
    invoke-static {v0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$000(Lmiui/widget/MiCloudAdvancedSettingsBase;)Lmiui/net/CloudManager;

    move-result-object v0

    const v1, 0x10000001

    invoke-virtual {v0, v1}, Lmiui/net/CloudManager;->cancelNotification(I)Lmiui/net/CloudManager$CloudManagerFuture;

    .line 387
    return-void
.end method
