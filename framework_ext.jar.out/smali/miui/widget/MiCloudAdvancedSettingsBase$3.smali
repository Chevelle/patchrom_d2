.class Lmiui/widget/MiCloudAdvancedSettingsBase$3;
.super Ljava/lang/Object;
.source "MiCloudAdvancedSettingsBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 376
    iput-object p1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$3;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 379
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$3;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    invoke-virtual {v0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->turnOffUnActivatedSync()V

    .line 380
    return-void
.end method
