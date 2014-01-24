.class Lcom/miui/internal/app/MiuiLicenseActivity$2;
.super Landroid/webkit/WebChromeClient;
.source "MiuiLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/app/MiuiLicenseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/app/MiuiLicenseActivity;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/MiuiLicenseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/miui/internal/app/MiuiLicenseActivity$2;->this$0:Lcom/miui/internal/app/MiuiLicenseActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 154
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity$2;->this$0:Lcom/miui/internal/app/MiuiLicenseActivity;

    #calls: Lcom/miui/internal/app/MiuiLicenseActivity;->dismissSpinnerDlg()V
    invoke-static {v0}, Lcom/miui/internal/app/MiuiLicenseActivity;->access$300(Lcom/miui/internal/app/MiuiLicenseActivity;)V

    .line 157
    :cond_0
    return-void
.end method
