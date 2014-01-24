.class Lcom/miui/internal/app/MiuiLicenseActivity$1;
.super Landroid/webkit/WebViewClient;
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
.field private mHasLoadFirstPage:Z

.field final synthetic this$0:Lcom/miui/internal/app/MiuiLicenseActivity;

.field final synthetic val$isInProvision:Z


# direct methods
.method constructor <init>(Lcom/miui/internal/app/MiuiLicenseActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/miui/internal/app/MiuiLicenseActivity$1;->this$0:Lcom/miui/internal/app/MiuiLicenseActivity;

    iput-boolean p2, p0, Lcom/miui/internal/app/MiuiLicenseActivity$1;->val$isInProvision:Z

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "url"

    .prologue
    .line 112
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity$1;->val$isInProvision:Z

    if-eqz v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity$1;->this$0:Lcom/miui/internal/app/MiuiLicenseActivity;

    #getter for: Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/internal/app/MiuiLicenseActivity;->access$000(Lcom/miui/internal/app/MiuiLicenseActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity$1;->this$0:Lcom/miui/internal/app/MiuiLicenseActivity;

    #calls: Lcom/miui/internal/app/MiuiLicenseActivity;->showErrorAndFinish(Ljava/lang/String;)V
    invoke-static {v0, p4}, Lcom/miui/internal/app/MiuiLicenseActivity;->access$100(Lcom/miui/internal/app/MiuiLicenseActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity$1;->this$0:Lcom/miui/internal/app/MiuiLicenseActivity;

    #getter for: Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/miui/internal/app/MiuiLicenseActivity;->access$200(Lcom/miui/internal/app/MiuiLicenseActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/MiuiLicenseActivity$1;->this$0:Lcom/miui/internal/app/MiuiLicenseActivity;

    #getter for: Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/internal/app/MiuiLicenseActivity;->access$000(Lcom/miui/internal/app/MiuiLicenseActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 131
    iget-boolean v3, p0, Lcom/miui/internal/app/MiuiLicenseActivity$1;->val$isInProvision:Z

    if-eqz v3, :cond_0

    .line 132
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 146
    :goto_0
    return v1

    .line 136
    :cond_0
    iget-boolean v3, p0, Lcom/miui/internal/app/MiuiLicenseActivity$1;->mHasLoadFirstPage:Z

    if-eqz v3, :cond_1

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/app/MiuiLicenseActivity$1;->this$0:Lcom/miui/internal/app/MiuiLicenseActivity;

    invoke-virtual {v1, v0}, Lcom/miui/internal/app/MiuiLicenseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v1, v2

    .line 143
    goto :goto_0

    .line 145
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iput-boolean v2, p0, Lcom/miui/internal/app/MiuiLicenseActivity$1;->mHasLoadFirstPage:Z

    goto :goto_0

    .line 141
    .restart local v0       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_1
.end method
