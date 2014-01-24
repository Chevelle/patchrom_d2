.class Lmiui/widget/MiCloudAdvancedSettingsBase$2;
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

.field final synthetic val$simIndex:I


# direct methods
.method constructor <init>(Lmiui/widget/MiCloudAdvancedSettingsBase;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$2;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    iput p2, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$2;->val$simIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 373
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$2;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    iget v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$2;->val$simIndex:I

    #calls: Lmiui/widget/MiCloudAdvancedSettingsBase;->startActivate(I)V
    invoke-static {v0, v1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$700(Lmiui/widget/MiCloudAdvancedSettingsBase;I)V

    .line 374
    return-void
.end method
