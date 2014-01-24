.class public Lcom/miui/internal/app/MiuiLicenseActivity;
.super Landroid/app/Activity;
.source "MiuiLicenseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static CACHE_PATH_MIUI_COPYRIGHT:Ljava/lang/String;

.field public static CACHE_PATH_MIUI_MIBI_LICENSE:Ljava/lang/String;

.field public static CACHE_PATH_MIUI_PRIVACY_POLICY:Ljava/lang/String;

.field public static CACHE_PATH_MIUI_USER_AGREEMENT:Ljava/lang/String;

.field public static CACHE_PATH_MIUI_USER_MANUAL:Ljava/lang/String;

.field private static CACHE_SUFFIX:Ljava/lang/String;

.field public static EXTRA_MIUI_DOC_URL:Ljava/lang/String;

.field public static URL_MIUI_COPYRIGHT:Ljava/lang/String;

.field public static URL_MIUI_MIBI_LICENSE:Ljava/lang/String;

.field public static URL_MIUI_PRIVACY_POLICY:Ljava/lang/String;

.field public static URL_MIUI_USER_AGREEMENT:Ljava/lang/String;

.field public static URL_MIUI_USER_MANUAL:Ljava/lang/String;


# instance fields
.field private mCachePath:Ljava/lang/String;

.field private mSpinnerDlg:Landroid/app/ProgressDialog;

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "http://www.miui.com/res/doc/copyright.html?lang=%s"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_COPYRIGHT:Ljava/lang/String;

    .line 39
    const-string v0, "http://www.miui.com/res/doc/privacy.html?lang=%s"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_PRIVACY_POLICY:Ljava/lang/String;

    .line 40
    const-string v0, "http://www.miui.com/res/doc/eula.html?lang=%s"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_USER_AGREEMENT:Ljava/lang/String;

    .line 41
    const-string v0, "http://www.miui.com/res/doc/manual.html?lang=%s&miphone=%s"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_USER_MANUAL:Ljava/lang/String;

    .line 42
    const-string v0, "http://www.miui.com/res/doc/mibilicense.html?lang=%s"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_MIBI_LICENSE:Ljava/lang/String;

    .line 44
    const-string v0, "file://"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_SUFFIX:Ljava/lang/String;

    .line 45
    const-string v0, "/system/etc/license/%s/copyright.html"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_PATH_MIUI_COPYRIGHT:Ljava/lang/String;

    .line 46
    const-string v0, "/system/etc/license/%s/privacy.html"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_PATH_MIUI_PRIVACY_POLICY:Ljava/lang/String;

    .line 47
    const-string v0, "/system/etc/license/%s/eula.html"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_PATH_MIUI_USER_AGREEMENT:Ljava/lang/String;

    .line 48
    const-string v0, "/system/etc/user_manual_%s/%s/index.html"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_PATH_MIUI_USER_MANUAL:Ljava/lang/String;

    .line 49
    const-string v0, "/system/etc/license/%s/mibilicense.html"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_PATH_MIUI_MIBI_LICENSE:Ljava/lang/String;

    .line 51
    const-string v0, "url"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->EXTRA_MIUI_DOC_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/app/MiuiLicenseActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/internal/app/MiuiLicenseActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/miui/internal/app/MiuiLicenseActivity;->showErrorAndFinish(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/internal/app/MiuiLicenseActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/internal/app/MiuiLicenseActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/miui/internal/app/MiuiLicenseActivity;->dismissSpinnerDlg()V

    return-void
.end method

.method private deviceIsProvisioned()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/miui/internal/app/MiuiLicenseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 183
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private dismissSpinnerDlg()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 229
    :cond_0
    return-void
.end method

.method private showErrorAndFinish(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 193
    invoke-direct {p0}, Lcom/miui/internal/app/MiuiLicenseActivity;->dismissSpinnerDlg()V

    .line 194
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x60c019d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/miui/internal/app/MiuiLicenseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 200
    return-void
.end method


# virtual methods
.method public isConnectivityActive()Z
    .locals 2

    .prologue
    .line 187
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/MiuiLicenseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 188
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 209
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/miui/internal/app/MiuiLicenseActivity;->finish()V

    .line 217
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/miui/internal/app/MiuiLicenseActivity;->finish()V

    .line 213
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/miui/internal/app/MiuiLicenseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    sget-object v11, Lcom/miui/internal/app/MiuiLicenseActivity;->EXTRA_MIUI_DOC_URL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    .line 63
    const-string v4, "zh_CN"

    .line 64
    .local v4, defaultLanguage:Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 65
    .local v1, am:Landroid/app/IActivityManager;
    move-object v6, v4

    .line 67
    .local v6, language:Ljava/lang/String;
    :try_start_0
    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 68
    .local v3, config:Landroid/content/res/Configuration;
    iget-object v10, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 72
    .end local v3           #config:Landroid/content/res/Configuration;
    :goto_0
    const/4 v2, 0x0

    .line 73
    .local v2, cachepath:Ljava/lang/String;
    sget-object v10, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_COPYRIGHT:Ljava/lang/String;

    iget-object v11, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 74
    const v10, 0x60c0174

    invoke-virtual {p0, v10}, Lcom/miui/internal/app/MiuiLicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mTitle:Ljava/lang/String;

    .line 75
    sget-object v2, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_PATH_MIUI_COPYRIGHT:Ljava/lang/String;

    .line 87
    :cond_0
    :goto_1
    sget-object v10, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_USER_MANUAL:Ljava/lang/String;

    iget-object v11, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 88
    const v10, 0x60c0178

    invoke-virtual {p0, v10}, Lcom/miui/internal/app/MiuiLicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mTitle:Ljava/lang/String;

    .line 89
    sget-object v10, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_PATH_MIUI_USER_MANUAL:Ljava/lang/String;

    new-array v11, v13, [Ljava/lang/Object;

    sget-object v12, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v12, v11, v9

    aput-object v6, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    .line 90
    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 91
    sget-object v10, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_PATH_MIUI_USER_MANUAL:Ljava/lang/String;

    new-array v11, v13, [Ljava/lang/Object;

    sget-object v12, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v12, v11, v9

    aput-object v4, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    .line 93
    :cond_1
    iget-object v10, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v6, v11, v9

    sget-object v12, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v12, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    .line 101
    :cond_2
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_SUFFIX:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    .line 102
    new-instance v10, Landroid/webkit/WebView;

    invoke-direct {v10, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 103
    iget-object v10, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v10}, Lcom/miui/internal/app/MiuiLicenseActivity;->setContentView(Landroid/view/View;)V

    .line 105
    invoke-direct {p0}, Lcom/miui/internal/app/MiuiLicenseActivity;->deviceIsProvisioned()Z

    move-result v10

    if-nez v10, :cond_9

    move v5, v8

    .line 107
    .local v5, isInProvision:Z
    :goto_3
    iget-object v10, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 108
    iget-object v10, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v11, Lcom/miui/internal/app/MiuiLicenseActivity$1;

    invoke-direct {v11, p0, v5}, Lcom/miui/internal/app/MiuiLicenseActivity$1;-><init>(Lcom/miui/internal/app/MiuiLicenseActivity;Z)V

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 150
    iget-object v10, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v11, Lcom/miui/internal/app/MiuiLicenseActivity$2;

    invoke-direct {v11, p0}, Lcom/miui/internal/app/MiuiLicenseActivity$2;-><init>(Lcom/miui/internal/app/MiuiLicenseActivity;)V

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 161
    invoke-virtual {p0}, Lcom/miui/internal/app/MiuiLicenseActivity;->isConnectivityActive()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 162
    iget-object v10, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v11, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 171
    :goto_4
    invoke-virtual {p0}, Lcom/miui/internal/app/MiuiLicenseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 172
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_3

    .line 173
    iget-object v10, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 176
    :cond_3
    const-string v10, ""

    iget-object v11, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mTitle:Ljava/lang/String;

    invoke-static {p0, v10, v11, v8, v9}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v7

    .line 177
    .local v7, pd:Landroid/app/ProgressDialog;
    invoke-virtual {v7, v9}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 178
    iput-object v7, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 179
    return-void

    .line 76
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v5           #isInProvision:Z
    .end local v7           #pd:Landroid/app/ProgressDialog;
    :cond_4
    sget-object v10, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_PRIVACY_POLICY:Ljava/lang/String;

    iget-object v11, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 77
    const v10, 0x60c0176

    invoke-virtual {p0, v10}, Lcom/miui/internal/app/MiuiLicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mTitle:Ljava/lang/String;

    .line 78
    sget-object v2, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_PATH_MIUI_PRIVACY_POLICY:Ljava/lang/String;

    goto/16 :goto_1

    .line 79
    :cond_5
    sget-object v10, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_USER_AGREEMENT:Ljava/lang/String;

    iget-object v11, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 80
    const v10, 0x60c0177

    invoke-virtual {p0, v10}, Lcom/miui/internal/app/MiuiLicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mTitle:Ljava/lang/String;

    .line 81
    sget-object v2, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_PATH_MIUI_USER_AGREEMENT:Ljava/lang/String;

    goto/16 :goto_1

    .line 82
    :cond_6
    sget-object v10, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_MIBI_LICENSE:Ljava/lang/String;

    iget-object v11, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 83
    const v10, 0x60c0175

    invoke-virtual {p0, v10}, Lcom/miui/internal/app/MiuiLicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mTitle:Ljava/lang/String;

    .line 84
    sget-object v2, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_PATH_MIUI_MIBI_LICENSE:Ljava/lang/String;

    goto/16 :goto_1

    .line 94
    :cond_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 95
    new-array v10, v8, [Ljava/lang/Object;

    aput-object v6, v10, v9

    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    .line 96
    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_8

    .line 97
    new-array v10, v8, [Ljava/lang/Object;

    aput-object v4, v10, v9

    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    .line 99
    :cond_8
    iget-object v10, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    new-array v11, v8, [Ljava/lang/Object;

    aput-object v6, v11, v9

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    move v5, v9

    .line 105
    goto/16 :goto_3

    .line 164
    .restart local v5       #isInProvision:Z
    :cond_a
    iget-object v10, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 165
    iget-object v10, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/miui/internal/app/MiuiLicenseActivity;->showErrorAndFinish(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 167
    :cond_b
    iget-object v10, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v11, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 69
    .end local v2           #cachepath:Ljava/lang/String;
    .end local v5           #isInProvision:Z
    :catch_0
    move-exception v10

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/miui/internal/app/MiuiLicenseActivity;->dismissSpinnerDlg()V

    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 223
    return-void
.end method
