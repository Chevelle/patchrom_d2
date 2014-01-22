.class Landroid/webkit/BrowserFrame;
.super Landroid/os/Handler;
.source "BrowserFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/BrowserFrame$ConfigCallback;,
        Landroid/webkit/BrowserFrame$JSObject;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field static final DRAWABLEDIR:I = 0x3

.field private static final FILE_UPLOAD_LABEL:I = 0x4

.field private static final FILE_UPLOAD_NO_FILE_CHOSEN:I = 0x7

.field static final FRAME_COMPLETED:I = 0x3e9

.field static final FRAME_LOADTYPE_BACK:I = 0x1

.field static final FRAME_LOADTYPE_FORWARD:I = 0x2

.field static final FRAME_LOADTYPE_INDEXEDBACKFORWARD:I = 0x3

.field static final FRAME_LOADTYPE_REDIRECT:I = 0x7

.field static final FRAME_LOADTYPE_RELOAD:I = 0x4

.field static final FRAME_LOADTYPE_RELOADALLOWINGSTALEDATA:I = 0x5

.field static final FRAME_LOADTYPE_REPLACE:I = 0x8

.field static final FRAME_LOADTYPE_SAME:I = 0x6

.field static final FRAME_LOADTYPE_STANDARD:I = 0x0

.field private static final LOADERROR:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final MAX_OUTSTANDING_REQUESTS:I = 0x12c

.field private static final NODOMAIN:I = 0x1

.field static final ORIENTATION_CHANGED:I = 0x3ea

.field static final POLICY_FUNCTION:I = 0x3eb

.field static final POLICY_IGNORE:I = 0x2

.field static final POLICY_USE:I = 0x0

.field private static final RESET_LABEL:I = 0x5

.field private static final SCHEME_HOST_DELIMITER:Ljava/lang/String; = "://"

.field private static final SUBMIT_LABEL:I = 0x6

.field private static final TRANSITION_SWITCH_THRESHOLD:I = 0x4b

.field static sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

.field static sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;


# instance fields
.field private mBlockMessages:Z

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mCommitted:Z

.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Landroid/webkit/WebViewDatabaseClassic;

.field private mFirstLayoutDone:Z

.field private mIsMainFrame:Z

.field private mJavaScriptObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/webkit/BrowserFrame$JSObject;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

.field mLoadInitFromJava:Z

.field private mLoadType:I

.field mNativeFrame:I

.field private mOrientation:I

.field private mRemovedJavaScriptObjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Landroid/webkit/WebSettingsClassic;

.field private final mWebViewCore:Landroid/webkit/WebViewCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/BrowserFrame;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebViewCore;Landroid/webkit/CallbackProxy;Landroid/webkit/WebSettingsClassic;Ljava/util/Map;)V
    .locals 4
    .parameter "context"
    .parameter "w"
    .parameter "proxy"
    .parameter "settings"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/WebViewCore;",
            "Landroid/webkit/CallbackProxy;",
            "Landroid/webkit/WebSettingsClassic;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, javascriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x1

    .line 214
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 82
    iput-boolean v2, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    .line 83
    iput-boolean v2, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    .line 87
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/BrowserFrame;->mBlockMessages:Z

    .line 88
    const/4 v2, -0x1

    iput v2, p0, Landroid/webkit/BrowserFrame;->mOrientation:I

    .line 109
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/BrowserFrame;->mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 220
    .local v1, appContext:Landroid/content/Context;
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v2, :cond_0

    .line 221
    new-instance v2, Landroid/webkit/JWebCoreJavaBridge;

    invoke-direct {v2}, Landroid/webkit/JWebCoreJavaBridge;-><init>()V

    sput-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    .line 223
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 225
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    const/16 v3, 0x10

    if-le v2, v3, :cond_2

    .line 226
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    const/high16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/webkit/JWebCoreJavaBridge;->setCacheSize(I)V

    .line 231
    :goto_0
    invoke-static {v1}, Landroid/webkit/CacheManager;->init(Landroid/content/Context;)V

    .line 233
    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 235
    invoke-static {v1}, Landroid/webkit/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;

    .line 238
    .end local v0           #am:Landroid/app/ActivityManager;
    :cond_0
    sget-object v2, Landroid/webkit/BrowserFrame;->sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

    if-nez v2, :cond_1

    .line 239
    new-instance v3, Landroid/webkit/BrowserFrame$ConfigCallback;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-direct {v3, v2}, Landroid/webkit/BrowserFrame$ConfigCallback;-><init>(Landroid/view/WindowManager;)V

    sput-object v3, Landroid/webkit/BrowserFrame;->sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

    .line 242
    sget-object v2, Landroid/webkit/BrowserFrame;->sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/content/ComponentCallbacks;)V

    .line 244
    :cond_1
    sget-object v2, Landroid/webkit/BrowserFrame;->sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

    invoke-virtual {v2, p0}, Landroid/webkit/BrowserFrame$ConfigCallback;->addHandler(Landroid/os/Handler;)V

    .line 246
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    .line 247
    invoke-direct {p0, p5}, Landroid/webkit/BrowserFrame;->addJavaScriptObjects(Ljava/util/Map;)V

    .line 248
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Landroid/webkit/BrowserFrame;->mRemovedJavaScriptObjects:Ljava/util/Set;

    .line 250
    iput-object p4, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettingsClassic;

    .line 251
    iput-object p1, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    .line 252
    iput-object p3, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 253
    invoke-static {v1}, Landroid/webkit/WebViewDatabaseClassic;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabaseClassic;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;

    .line 254
    iput-object p2, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 257
    .local v0, am:Landroid/content/res/AssetManager;
    invoke-virtual {p3}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardListClassic;

    move-result-object v2

    invoke-direct {p0, p2, v0, v2}, Landroid/webkit/BrowserFrame;->nativeCreateFrame(Landroid/webkit/WebViewCore;Landroid/content/res/AssetManager;Landroid/webkit/WebBackForwardList;)V

    .line 262
    return-void

    .line 228
    .local v0, am:Landroid/app/ActivityManager;
    :cond_2
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    const/high16 v3, 0x40

    invoke-virtual {v2, v3}, Landroid/webkit/JWebCoreJavaBridge;->setCacheSize(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/webkit/BrowserFrame;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/BrowserFrame;->nativeAuthenticationProceed(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/webkit/BrowserFrame;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/webkit/BrowserFrame;->nativeAuthenticationCancel(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/webkit/BrowserFrame;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/webkit/BrowserFrame;->nativeSslCertErrorProceed(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/BrowserFrame;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/webkit/BrowserFrame;->nativeSslCertErrorCancel(II)V

    return-void
.end method

.method private addJavaScriptObjects(Ljava/util/Map;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 622
    .local p1, javascriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 631
    :cond_0
    return-void

    .line 623
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 624
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 625
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 626
    .local v0, interfaceName:Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 627
    .local v2, object:Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 628
    iget-object v3, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    new-instance v4, Landroid/webkit/BrowserFrame$JSObject;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v2, v5}, Landroid/webkit/BrowserFrame$JSObject;-><init>(Landroid/webkit/BrowserFrame;Ljava/lang/Object;Z)V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private autoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "realm"
    .parameter "account"
    .parameter "args"

    .prologue
    .line 1225
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/CallbackProxy;->onReceivedLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    return-void
.end method

.method private native childFramesAsText()Ljava/lang/String;
.end method

.method private closeWindow(Landroid/webkit/WebViewCore;)V
    .locals 2
    .parameter "w"

    .prologue
    .line 935
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {p1}, Landroid/webkit/WebViewCore;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/CallbackProxy;->onCloseWindow(Landroid/webkit/WebViewClassic;)V

    .line 936
    return-void
.end method

.method private createWindow(ZZ)Landroid/webkit/BrowserFrame;
    .locals 1
    .parameter "dialog"
    .parameter "userGesture"

    .prologue
    .line 921
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->createWindow(ZZ)Landroid/webkit/BrowserFrame;

    move-result-object v0

    return-object v0
.end method

.method private decidePolicyForFormResubmission(I)V
    .locals 4
    .parameter "policyFunction"

    .prologue
    const/16 v3, 0x3eb

    .line 943
    const/4 v2, 0x2

    invoke-virtual {p0, v3, p1, v2}, Landroid/webkit/BrowserFrame;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 945
    .local v0, dontResend:Landroid/os/Message;
    const/4 v2, 0x0

    invoke-virtual {p0, v3, p1, v2}, Landroid/webkit/BrowserFrame;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 947
    .local v1, resend:Landroid/os/Message;
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2, v0, v1}, Landroid/webkit/CallbackProxy;->onFormResubmission(Landroid/os/Message;Landroid/os/Message;)V

    .line 948
    return-void
.end method

.method private density()F
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->getFixedDisplayDensity(Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method private didFinishLoading()V
    .locals 2

    .prologue
    .line 1200
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

    iget-object v1, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/KeyStoreHandler;->installCert(Landroid/content/Context;)V

    .line 1202
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/BrowserFrame;->mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

    .line 1204
    :cond_0
    return-void
.end method

.method private didReceiveAuthenticationChallenge(ILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .parameter "handle"
    .parameter "host"
    .parameter "realm"
    .parameter "useCachedCredentials"
    .parameter "suppressDialog"

    .prologue
    .line 1052
    new-instance v0, Landroid/webkit/BrowserFrame$1;

    invoke-direct {v0, p0, p4, p1, p5}, Landroid/webkit/BrowserFrame$1;-><init>(Landroid/webkit/BrowserFrame;ZIZ)V

    .line 1074
    .local v0, handler:Landroid/webkit/HttpAuthHandler;
    iget-object v1, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v0, p2, p3}, Landroid/webkit/CallbackProxy;->onReceivedHttpAuthRequest(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    return-void
.end method

.method private didReceiveData([BI)V
    .locals 1
    .parameter "data"
    .parameter "size"

    .prologue
    .line 1196
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/KeyStoreHandler;->didReceiveData([BI)V

    .line 1197
    :cond_0
    return-void
.end method

.method private didReceiveIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 908
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onReceivedIcon(Landroid/graphics/Bitmap;)V

    .line 909
    return-void
.end method

.method private didReceiveTouchIconUrl(Ljava/lang/String;Z)V
    .locals 1
    .parameter "url"
    .parameter "precomposed"

    .prologue
    .line 913
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onReceivedTouchIconUrl(Ljava/lang/String;Z)V

    .line 914
    return-void
.end method

.method private native documentAsText()Ljava/lang/String;
.end method

.method private downloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimeType"
    .parameter "referer"
    .parameter "contentLength"

    .prologue
    .line 1170
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1172
    const/16 v0, 0x2e

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1173
    .local v8, extension:Ljava/lang/String;
    invoke-static {v8}, Llibcore/net/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1175
    if-nez p4, :cond_0

    .line 1176
    const-string p4, ""
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1181
    .end local v8           #extension:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p4, p1, p3}, Landroid/webkit/MimeTypeMap;->remapGenericMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1184
    invoke-static {p4}, Landroid/webkit/CertTool;->getCertType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1185
    new-instance v0, Landroid/webkit/KeyStoreHandler;

    invoke-direct {v0, p4}, Landroid/webkit/KeyStoreHandler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/webkit/BrowserFrame;->mKeyStoreHandler:Landroid/webkit/KeyStoreHandler;

    .line 1190
    :goto_1
    return-void

    .line 1187
    :cond_1
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/webkit/CallbackProxy;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    goto :goto_1

    .line 1177
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private native externalRepresentation()Ljava/lang/String;
.end method

.method private getFile(Ljava/lang/String;[BII)I
    .locals 7
    .parameter "uri"
    .parameter "buffer"
    .parameter "offset"
    .parameter "expectedSize"

    .prologue
    .line 693
    const/4 v2, 0x0

    .line 695
    .local v2, size:I
    :try_start_0
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 697
    .local v3, stream:Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 698
    if-gt v2, p4, :cond_0

    if-eqz p2, :cond_0

    array-length v4, p2

    sub-int/2addr v4, p3

    if-lt v4, v2, :cond_0

    .line 700
    invoke-virtual {v3, p2, p3, v2}, Ljava/io/InputStream;->read([BII)I

    .line 704
    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 712
    .end local v3           #stream:Ljava/io/InputStream;
    :goto_1
    return v2

    .line 702
    .restart local v3       #stream:Ljava/io/InputStream;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 705
    .end local v3           #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 706
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string/jumbo v4, "webkit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileNotFoundException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const/4 v2, 0x0

    .line 711
    goto :goto_1

    .line 708
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 709
    .local v1, e2:Ljava/io/IOException;
    const-string/jumbo v4, "webkit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getFileSize(Ljava/lang/String;)I
    .locals 4
    .parameter "uri"

    .prologue
    .line 672
    const/4 v0, 0x0

    .line 674
    .local v0, size:I
    :try_start_0
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 676
    .local v1, stream:Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 677
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    .end local v1           #stream:Ljava/io/InputStream;
    :goto_0
    return v0

    .line 678
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getRawResFilename(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 981
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Landroid/webkit/BrowserFrame;->getRawResFilename(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getRawResFilename(ILandroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "id"
    .parameter "context"

    .prologue
    .line 985
    packed-switch p0, :pswitch_data_0

    .line 1016
    const-string/jumbo v4, "webkit"

    const-string v5, "getRawResFilename got incompatible resource ID"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    const-string v4, ""

    .line 1030
    :goto_0
    return-object v4

    .line 987
    :pswitch_0
    const v2, 0x1100004

    .line 1019
    .local v2, resid:I
    :goto_1
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 1020
    .local v3, value:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v3, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1021
    const/4 v4, 0x3

    if-ne p0, v4, :cond_1

    .line 1022
    iget-object v4, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1023
    .local v1, path:Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1024
    .local v0, index:I
    if-gez v0, :cond_0

    .line 1025
    const-string/jumbo v4, "webkit"

    const-string v5, "Can\'t find drawable directory."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const-string v4, ""

    goto :goto_0

    .line 991
    .end local v0           #index:I
    .end local v1           #path:Ljava/lang/String;
    .end local v2           #resid:I
    .end local v3           #value:Landroid/util/TypedValue;
    :pswitch_1
    const v2, 0x1100003

    .line 992
    .restart local v2       #resid:I
    goto :goto_1

    .line 996
    .end local v2           #resid:I
    :pswitch_2
    const v2, 0x10800e1

    .line 997
    .restart local v2       #resid:I
    goto :goto_1

    .line 1000
    .end local v2           #resid:I
    :pswitch_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10404fe

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1004
    :pswitch_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040500

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1008
    :pswitch_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040501

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1012
    :pswitch_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10404ff

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1028
    .restart local v0       #index:I
    .restart local v1       #path:Ljava/lang/String;
    .restart local v2       #resid:I
    .restart local v3       #value:Landroid/util/TypedValue;
    :cond_0
    const/4 v4, 0x0

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1030
    .end local v0           #index:I
    .end local v1           #path:Ljava/lang/String;
    :cond_1
    iget-object v4, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 985
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private native getUsernamePassword()[Ljava/lang/String;
.end method

.method private native hasPasswordField()Z
.end method

.method private inputStreamForAndroidResource(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 23
    .parameter "url"

    .prologue
    .line 725
    const-string v3, "file:///android_asset/"

    .line 726
    .local v3, ANDROID_ASSET:Ljava/lang/String;
    const-string v5, "file:///android_res/"

    .line 727
    .local v5, ANDROID_RESOURCE:Ljava/lang/String;
    const-string v4, "content:"

    .line 729
    .local v4, ANDROID_CONTENT:Ljava/lang/String;
    const-string v19, "file:///android_res/"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 730
    const-string v19, "file:///android_res/"

    const-string v20, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 731
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_1

    .line 732
    :cond_0
    const-string/jumbo v19, "webkit"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "url has length 0 "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const/16 v19, 0x0

    .line 792
    :goto_0
    return-object v19

    .line 735
    :cond_1
    const/16 v19, 0x2f

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 736
    .local v15, slash:I
    const/16 v19, 0x2e

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 737
    .local v8, dot:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v15, v0, :cond_2

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_3

    .line 738
    :cond_2
    const-string/jumbo v19, "webkit"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Incorrect res path: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const/16 v19, 0x0

    goto :goto_0

    .line 741
    :cond_3
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 742
    .local v16, subClassName:Ljava/lang/String;
    add-int/lit8 v19, v15, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 743
    .local v12, fieldName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 745
    .local v10, errorMsg:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".R$"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 749
    .local v7, d:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v7, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 750
    .local v11, field:Ljava/lang/reflect/Field;
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v13

    .line 751
    .local v13, id:I
    new-instance v18, Landroid/util/TypedValue;

    invoke-direct/range {v18 .. v18}, Landroid/util/TypedValue;-><init>()V

    .line 752
    .local v18, value:Landroid/util/TypedValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 753
    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/TypedValue;->assetCookie:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x2

    invoke-virtual/range {v19 .. v22}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v19

    goto/16 :goto_0

    .line 759
    :cond_4
    const-string/jumbo v19, "webkit"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "not of type string: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 762
    .end local v7           #d:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v11           #field:Ljava/lang/reflect/Field;
    .end local v13           #id:I
    .end local v18           #value:Landroid/util/TypedValue;
    :catch_0
    move-exception v9

    .line 763
    .local v9, e:Ljava/lang/Exception;
    const-string/jumbo v19, "webkit"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 766
    .end local v8           #dot:I
    .end local v9           #e:Ljava/lang/Exception;
    .end local v10           #errorMsg:Ljava/lang/String;
    .end local v12           #fieldName:Ljava/lang/String;
    .end local v15           #slash:I
    .end local v16           #subClassName:Ljava/lang/String;
    :cond_5
    const-string v19, "file:///android_asset/"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 767
    const-string v19, "file:///android_asset/"

    const-string v20, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 769
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    .line 770
    .local v6, assets:Landroid/content/res/AssetManager;
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 771
    .local v17, uri:Landroid/net/Uri;
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v19

    goto/16 :goto_0

    .line 772
    .end local v6           #assets:Landroid/content/res/AssetManager;
    .end local v17           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v9

    .line 773
    .local v9, e:Ljava/io/IOException;
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 775
    .end local v9           #e:Ljava/io/IOException;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettingsClassic;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebSettingsClassic;->getAllowContentAccess()Z

    move-result v19

    if-eqz v19, :cond_8

    const-string v19, "content:"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 781
    const/16 v19, 0x3f

    :try_start_2
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 782
    .local v14, mimeIndex:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v14, v0, :cond_7

    .line 783
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 785
    :cond_7
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 786
    .restart local v17       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v19

    goto/16 :goto_0

    .line 787
    .end local v14           #mimeIndex:I
    .end local v17           #uri:Landroid/net/Uri;
    :catch_2
    move-exception v9

    .line 788
    .local v9, e:Ljava/lang/Exception;
    const-string/jumbo v19, "webkit"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 792
    .end local v9           #e:Ljava/lang/Exception;
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_0
.end method

.method private loadFinished(Ljava/lang/String;IZ)V
    .locals 1
    .parameter "url"
    .parameter "loadType"
    .parameter "isMainFrame"

    .prologue
    .line 470
    if-nez p3, :cond_0

    if-nez p2, :cond_1

    .line 471
    :cond_0
    if-eqz p3, :cond_1

    .line 472
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->resetLoadingStates()V

    .line 473
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->switchOutDrawHistory()V

    .line 474
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onPageFinished(Ljava/lang/String;)V

    .line 477
    :cond_1
    return-void
.end method

.method private loadStarted(Ljava/lang/String;Landroid/graphics/Bitmap;IZ)V
    .locals 2
    .parameter "url"
    .parameter "favicon"
    .parameter "loadType"
    .parameter "isMainFrame"

    .prologue
    const/4 v1, 0x0

    .line 405
    iput-boolean p4, p0, Landroid/webkit/BrowserFrame;->mIsMainFrame:Z

    .line 407
    if-nez p4, :cond_0

    if-nez p3, :cond_1

    .line 408
    :cond_0
    iput p3, p0, Landroid/webkit/BrowserFrame;->mLoadType:I

    .line 410
    if-eqz p4, :cond_1

    .line 412
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onPageStarted(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 415
    iput-boolean v1, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    .line 416
    iput-boolean v1, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    .line 419
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->clearContent()V

    .line 420
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 423
    :cond_1
    return-void
.end method

.method private maybeSavePassword([BLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "postData"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 809
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 854
    :cond_0
    :goto_0
    return-void

    .line 815
    :cond_1
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettingsClassic;

    invoke-virtual {v4}, Landroid/webkit/WebSettingsClassic;->getSavePassword()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 824
    :try_start_0
    new-instance v3, Landroid/net/WebAddress;

    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v4}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardListClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebBackForwardListClassic;->getCurrentItem()Landroid/webkit/WebHistoryItemClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebHistoryItemClassic;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 826
    .local v3, uri:Landroid/net/WebAddress;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/net/WebAddress;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 830
    .local v2, schemePlusHost:Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 831
    .local v0, postString:Ljava/lang/String;
    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 833
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;

    invoke-virtual {v4, v2}, Landroid/webkit/WebViewDatabaseClassic;->getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 835
    .local v1, saved:[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 838
    const/4 v4, 0x0

    aget-object v4, v1, v4

    if-eqz v4, :cond_0

    .line 842
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;

    invoke-virtual {v4, v2, p2, p3}, Landroid/webkit/WebViewDatabaseClassic;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 851
    .end local v0           #postString:Ljava/lang/String;
    .end local v1           #saved:[Ljava/lang/String;
    .end local v2           #schemePlusHost:Ljava/lang/String;
    .end local v3           #uri:Landroid/net/WebAddress;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 847
    .restart local v0       #postString:Ljava/lang/String;
    .restart local v1       #saved:[Ljava/lang/String;
    .restart local v2       #schemePlusHost:Ljava/lang/String;
    .restart local v3       #uri:Landroid/net/WebAddress;
    :cond_2
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, p2, p3, v5}, Landroid/webkit/CallbackProxy;->onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private native nativeAddJavascriptInterface(ILjava/lang/Object;Ljava/lang/String;Z)V
.end method

.method private native nativeAuthenticationCancel(I)V
.end method

.method private native nativeAuthenticationProceed(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeCallPolicyFunction(II)V
.end method

.method private native nativeCreateFrame(Landroid/webkit/WebViewCore;Landroid/content/res/AssetManager;Landroid/webkit/WebBackForwardList;)V
.end method

.method private native nativeGetShouldStartScrolledRight(I)Z
.end method

.method private native nativeGoBackOrForward(I)V
.end method

.method private native nativeLoadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeLoadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native nativeOrientationChanged(I)V
.end method

.method private native nativePostUrl(Ljava/lang/String;[B)V
.end method

.method private native nativeSaveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method private native nativeSslCertErrorCancel(II)V
.end method

.method private native nativeSslCertErrorProceed(I)V
.end method

.method private native nativeStopLoading()V
.end method

.method private reportError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 365
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->resetLoadingStates()V

    .line 366
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    :cond_0
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Landroid/net/http/ErrorStrings;->getString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 369
    :cond_1
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/CallbackProxy;->onReceivedError(ILjava/lang/String;Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method private reportSslCertError(II[BLjava/lang/String;)V
    .locals 7
    .parameter "handle"
    .parameter "certError"
    .parameter "certDER"
    .parameter "url"

    .prologue
    .line 1088
    :try_start_0
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v0, p3}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    .line 1089
    .local v0, cert:Ljava/security/cert/X509Certificate;
    new-instance v3, Landroid/net/http/SslCertificate;

    invoke-direct {v3, v0}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 1090
    .local v3, sslCert:Landroid/net/http/SslCertificate;
    invoke-static {p2, v3, p4}, Landroid/net/http/SslError;->SslErrorFromChromiumErrorCode(ILandroid/net/http/SslCertificate;Ljava/lang/String;)Landroid/net/http/SslError;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1098
    .local v4, sslError:Landroid/net/http/SslError;
    invoke-static {}, Landroid/webkit/SslCertLookupTable;->getInstance()Landroid/webkit/SslCertLookupTable;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/webkit/SslCertLookupTable;->isAllowed(Landroid/net/http/SslError;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1099
    invoke-direct {p0, p1}, Landroid/webkit/BrowserFrame;->nativeSslCertErrorProceed(I)V

    .line 1100
    iget-object v5, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v5, v4}, Landroid/webkit/CallbackProxy;->onProceededAfterSslError(Landroid/net/http/SslError;)V

    .line 1124
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    .end local v3           #sslCert:Landroid/net/http/SslCertificate;
    .end local v4           #sslError:Landroid/net/http/SslError;
    :goto_0
    return-void

    .line 1091
    :catch_0
    move-exception v1

    .line 1093
    .local v1, e:Ljava/io/IOException;
    const-string/jumbo v5, "webkit"

    const-string v6, "Can\'t get the certificate from WebKit, canceling"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    invoke-direct {p0, p1, p2}, Landroid/webkit/BrowserFrame;->nativeSslCertErrorCancel(II)V

    goto :goto_0

    .line 1104
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #cert:Ljava/security/cert/X509Certificate;
    .restart local v3       #sslCert:Landroid/net/http/SslCertificate;
    .restart local v4       #sslError:Landroid/net/http/SslError;
    :cond_0
    new-instance v2, Landroid/webkit/BrowserFrame$2;

    invoke-direct {v2, p0, v4, p1, p2}, Landroid/webkit/BrowserFrame$2;-><init>(Landroid/webkit/BrowserFrame;Landroid/net/http/SslError;II)V

    .line 1123
    .local v2, handler:Landroid/webkit/SslErrorHandler;
    iget-object v5, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v5, v2, v4}, Landroid/webkit/CallbackProxy;->onReceivedSslError(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_0
.end method

.method private requestClientCert(ILjava/lang/String;)V
    .locals 4
    .parameter "handle"
    .parameter "hostAndPort"

    .prologue
    .line 1134
    invoke-static {}, Landroid/webkit/SslClientCertLookupTable;->getInstance()Landroid/webkit/SslClientCertLookupTable;

    move-result-object v1

    .line 1135
    .local v1, table:Landroid/webkit/SslClientCertLookupTable;
    invoke-virtual {v1, p2}, Landroid/webkit/SslClientCertLookupTable;->IsAllowed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1137
    invoke-virtual {v1, p2}, Landroid/webkit/SslClientCertLookupTable;->PrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    .line 1138
    .local v0, pkey:Ljava/security/PrivateKey;
    instance-of v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;

    if-eqz v2, :cond_0

    .line 1139
    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;

    .end local v0           #pkey:Ljava/security/PrivateKey;
    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->getPkeyContext()I

    move-result v2

    invoke-virtual {v1, p2}, Landroid/webkit/SslClientCertLookupTable;->CertificateChain(Ljava/lang/String;)[[B

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Landroid/webkit/BrowserFrame;->nativeSslClientCert(II[[B)V

    .line 1159
    :goto_0
    return-void

    .line 1142
    .restart local v0       #pkey:Ljava/security/PrivateKey;
    :cond_0
    instance-of v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;

    if-eqz v2, :cond_1

    .line 1143
    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;

    .end local v0           #pkey:Ljava/security/PrivateKey;
    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->getPkeyContext()I

    move-result v2

    invoke-virtual {v1, p2}, Landroid/webkit/SslClientCertLookupTable;->CertificateChain(Ljava/lang/String;)[[B

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Landroid/webkit/BrowserFrame;->nativeSslClientCert(II[[B)V

    goto :goto_0

    .line 1147
    .restart local v0       #pkey:Ljava/security/PrivateKey;
    :cond_1
    invoke-interface {v0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, p2}, Landroid/webkit/SslClientCertLookupTable;->CertificateChain(Ljava/lang/String;)[[B

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Landroid/webkit/BrowserFrame;->nativeSslClientCert(I[B[[B)V

    goto :goto_0

    .line 1151
    .end local v0           #pkey:Ljava/security/PrivateKey;
    :cond_2
    invoke-virtual {v1, p2}, Landroid/webkit/SslClientCertLookupTable;->IsDenied(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1153
    const/4 v3, 0x0

    const/4 v2, 0x0

    check-cast v2, [[B

    invoke-virtual {p0, p1, v3, v2}, Landroid/webkit/BrowserFrame;->nativeSslClientCert(II[[B)V

    goto :goto_0

    .line 1156
    :cond_3
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    new-instance v3, Landroid/webkit/ClientCertRequestHandler;

    invoke-direct {v3, p0, p1, p2, v1}, Landroid/webkit/ClientCertRequestHandler;-><init>(Landroid/webkit/BrowserFrame;ILjava/lang/String;Landroid/webkit/SslClientCertLookupTable;)V

    invoke-virtual {v2, v3, p2}, Landroid/webkit/CallbackProxy;->onReceivedClientCertRequest(Landroid/webkit/ClientCertRequestHandler;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestFocus()V
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->onRequestFocus()V

    .line 929
    return-void
.end method

.method private resetLoadingStates()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 373
    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    .line 374
    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    .line 375
    return-void
.end method

.method private saveFormData(Ljava/util/HashMap;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 427
    .local p1, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettingsClassic;

    invoke-virtual {v2}, Landroid/webkit/WebSettingsClassic;->getSaveFormData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardListClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebBackForwardListClassic;->getCurrentItem()Landroid/webkit/WebHistoryItemClassic;

    move-result-object v0

    .line 430
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/WebTextView;->urlForAutoCompleteData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, url:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 433
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;

    invoke-virtual {v2, v1, p1}, Landroid/webkit/WebViewDatabaseClassic;->setFormData(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 437
    .end local v0           #h:Landroid/webkit/WebHistoryItem;
    .end local v1           #url:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setCertificate([B)V
    .locals 4
    .parameter "cert_der"

    .prologue
    .line 1212
    :try_start_0
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    .line 1213
    .local v0, cert:Ljava/security/cert/X509Certificate;
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    new-instance v3, Landroid/net/http/SslCertificate;

    invoke-direct {v3, v0}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v2, v3}, Landroid/webkit/CallbackProxy;->onReceivedCertificate(Landroid/net/http/SslCertificate;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1219
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    :goto_0
    return-void

    .line 1214
    :catch_0
    move-exception v1

    .line 1216
    .local v1, e:Ljava/io/IOException;
    const-string/jumbo v2, "webkit"

    const-string v3, "Can\'t get the certificate from WebKit, canceling"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setProgress(I)V
    .locals 3
    .parameter "newProgress"

    .prologue
    .line 891
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onProgressChanged(I)V

    .line 892
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 893
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Landroid/webkit/BrowserFrame;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/webkit/BrowserFrame;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 898
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4b

    if-le p1, v0, :cond_1

    .line 899
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->switchOutDrawHistory()V

    .line 901
    :cond_1
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 547
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onReceivedTitle(Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method private native setUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private shouldInterceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 8
    .parameter "url"

    .prologue
    const/4 v7, 0x0

    .line 858
    invoke-direct {p0, p1}, Landroid/webkit/BrowserFrame;->inputStreamForAndroidResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 859
    .local v0, androidResource:Ljava/io/InputStream;
    if-eqz v0, :cond_1

    .line 860
    new-instance v4, Landroid/webkit/WebResourceResponse;

    invoke-direct {v4, v7, v7, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 881
    :cond_0
    :goto_0
    return-object v4

    .line 865
    :cond_1
    iget-object v6, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettingsClassic;

    invoke-virtual {v6}, Landroid/webkit/WebSettingsClassic;->getAllowFileAccess()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "file://"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 866
    new-instance v4, Landroid/webkit/WebResourceResponse;

    invoke-direct {v4, v7, v7, v7}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    .line 869
    :cond_2
    iget-object v6, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v6, p1}, Landroid/webkit/CallbackProxy;->shouldInterceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v4

    .line 870
    .local v4, response:Landroid/webkit/WebResourceResponse;
    if-nez v4, :cond_0

    const-string v6, "browser:incognito"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 872
    :try_start_0
    iget-object v6, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 873
    .local v3, res:Landroid/content/res/Resources;
    const v6, 0x1100002

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 875
    .local v2, ins:Ljava/io/InputStream;
    new-instance v5, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v6, "text/html"

    const-string/jumbo v7, "utf8"

    invoke-direct {v5, v6, v7, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #response:Landroid/webkit/WebResourceResponse;
    .local v5, response:Landroid/webkit/WebResourceResponse;
    move-object v4, v5

    .line 879
    .end local v5           #response:Landroid/webkit/WebResourceResponse;
    .restart local v4       #response:Landroid/webkit/WebResourceResponse;
    goto :goto_0

    .line 876
    .end local v2           #ins:Ljava/io/InputStream;
    .end local v3           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 878
    .local v1, ex:Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v6, "webkit"

    const-string v7, "Failed opening raw.incognito_mode_start_page"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private shouldSaveFormData()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 441
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettingsClassic;

    invoke-virtual {v2}, Landroid/webkit/WebSettingsClassic;->getSaveFormData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 442
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardListClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebBackForwardListClassic;->getCurrentItem()Landroid/webkit/WebHistoryItemClassic;

    move-result-object v0

    .line 444
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 446
    .end local v0           #h:Landroid/webkit/WebHistoryItem;
    :cond_0
    return v1
.end method

.method private transitionToCommitted(IZ)V
    .locals 1
    .parameter "loadType"
    .parameter "isMainFrame"

    .prologue
    .line 455
    if-eqz p2, :cond_0

    .line 456
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    .line 457
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v0}, Landroid/webkit/ViewManager;->postResetStateAll()V

    .line 459
    :cond_0
    return-void
.end method

.method private updateVisitedHistory(Ljava/lang/String;Z)V
    .locals 1
    .parameter "url"
    .parameter "isReload"

    .prologue
    .line 954
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->doUpdateVisitedHistory(Ljava/lang/String;Z)V

    .line 955
    return-void
.end method

.method private windowObjectCleared(I)V
    .locals 5
    .parameter "nativeFramePointer"

    .prologue
    .line 600
    iget-object v3, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 601
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 602
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 603
    .local v0, interfaceName:Ljava/lang/String;
    iget-object v3, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/BrowserFrame$JSObject;

    .line 604
    .local v2, jsobject:Landroid/webkit/BrowserFrame$JSObject;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/webkit/BrowserFrame$JSObject;->object:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 605
    iget-object v3, v2, Landroid/webkit/BrowserFrame$JSObject;->object:Ljava/lang/Object;

    iget-boolean v4, v2, Landroid/webkit/BrowserFrame$JSObject;->requireAnnotation:Z

    invoke-direct {p0, p1, v3, v0, v4}, Landroid/webkit/BrowserFrame;->nativeAddJavascriptInterface(ILjava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 609
    .end local v0           #interfaceName:Ljava/lang/String;
    .end local v2           #jsobject:Landroid/webkit/BrowserFrame$JSObject;
    :cond_1
    iget-object v3, p0, Landroid/webkit/BrowserFrame;->mRemovedJavaScriptObjects:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 610
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 2
    .parameter "obj"
    .parameter "interfaceName"
    .parameter "requireAnnotation"

    .prologue
    .line 652
    sget-boolean v0, Landroid/webkit/BrowserFrame;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 653
    :cond_0
    invoke-virtual {p0, p2}, Landroid/webkit/BrowserFrame;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    new-instance v1, Landroid/webkit/BrowserFrame$JSObject;

    invoke-direct {v1, p0, p1, p3}, Landroid/webkit/BrowserFrame$JSObject;-><init>(Landroid/webkit/BrowserFrame;Ljava/lang/Object;Z)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    return-void
.end method

.method public native clearCache()V
.end method

.method committed()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    return v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 483
    invoke-virtual {p0}, Landroid/webkit/BrowserFrame;->nativeDestroyFrame()V

    .line 484
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mBlockMessages:Z

    .line 485
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/BrowserFrame;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 486
    return-void
.end method

.method didFirstLayout()V
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    if-nez v0, :cond_0

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    .line 394
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->contentDraw()V

    .line 396
    :cond_0
    return-void
.end method

.method public documentAsText(Landroid/os/Message;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 572
    .local v0, text:Ljava/lang/StringBuilder;
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    .line 574
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->documentAsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_1

    .line 578
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->childFramesAsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 581
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 582
    return-void
.end method

.method public native documentHasImages()Z
.end method

.method public externalRepresentation(Landroid/os/Message;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 556
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->externalRepresentation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 557
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 558
    return-void
.end method

.method firstLayoutDone()Z
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    return v0
.end method

.method getCallbackProxy()Landroid/webkit/CallbackProxy;
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    return-object v0
.end method

.method getShouldStartScrolledRight()Z
    .locals 1

    .prologue
    .line 1351
    iget v0, p0, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-direct {p0, v0}, Landroid/webkit/BrowserFrame;->nativeGetShouldStartScrolledRight(I)Z

    move-result v0

    return v0
.end method

.method getUserAgentString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettingsClassic;

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goBackOrForward(I)V
    .locals 1
    .parameter "steps"

    .prologue
    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 347
    invoke-direct {p0, p1}, Landroid/webkit/BrowserFrame;->nativeGoBackOrForward(I)V

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 349
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 494
    iget-boolean v4, p0, Landroid/webkit/BrowserFrame;->mBlockMessages:Z

    if-eqz v4, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 499
    :pswitch_0
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettingsClassic;

    invoke-virtual {v4}, Landroid/webkit/WebSettingsClassic;->getSavePassword()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->hasPasswordField()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 500
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v4}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardListClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebBackForwardListClassic;->getCurrentItem()Landroid/webkit/WebHistoryItemClassic;

    move-result-object v0

    .line 502
    .local v0, item:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    .line 503
    new-instance v3, Landroid/net/WebAddress;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 504
    .local v3, uri:Landroid/net/WebAddress;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/net/WebAddress;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, schemePlusHost:Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;

    invoke-virtual {v4, v1}, Landroid/webkit/WebViewDatabaseClassic;->getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 508
    .local v2, up:[Ljava/lang/String;
    if-nez v2, :cond_2

    .line 509
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/net/WebAddress;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 510
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;

    invoke-virtual {v4, v1}, Landroid/webkit/WebViewDatabaseClassic;->getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 512
    :cond_2
    if-eqz v2, :cond_0

    aget-object v4, v2, v6

    if-eqz v4, :cond_0

    .line 513
    aget-object v4, v2, v6

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-direct {p0, v4, v5}, Landroid/webkit/BrowserFrame;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 521
    .end local v0           #item:Landroid/webkit/WebHistoryItem;
    .end local v1           #schemePlusHost:Ljava/lang/String;
    .end local v2           #up:[Ljava/lang/String;
    .end local v3           #uri:Landroid/net/WebAddress;
    :pswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v4, v5}, Landroid/webkit/BrowserFrame;->nativeCallPolicyFunction(II)V

    goto/16 :goto_0

    .line 526
    :pswitch_2
    iget v4, p0, Landroid/webkit/BrowserFrame;->mOrientation:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eq v4, v5, :cond_0

    .line 527
    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, p0, Landroid/webkit/BrowserFrame;->mOrientation:I

    .line 528
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v4}, Landroid/webkit/BrowserFrame;->nativeOrientationChanged(I)V

    goto/16 :goto_0

    .line 497
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleUrl(Ljava/lang/String;)Z
    .locals 3
    .parameter "url"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 638
    iget-boolean v2, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    if-ne v2, v1, :cond_1

    .line 646
    :cond_0
    :goto_0
    return v0

    .line 641
    :cond_1
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2, p1}, Landroid/webkit/CallbackProxy;->shouldOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 643
    invoke-virtual {p0}, Landroid/webkit/BrowserFrame;->didFirstLayout()V

    move v0, v1

    .line 644
    goto :goto_0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "baseUrl"
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"
    .parameter "historyUrl"

    .prologue
    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 309
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 310
    :cond_0
    const-string p5, "about:blank"

    .line 312
    :cond_1
    if-nez p2, :cond_2

    .line 313
    const-string p2, ""

    .line 318
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 319
    :cond_3
    const-string p1, "about:blank"

    .line 321
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 322
    :cond_5
    const-string/jumbo p3, "text/html"

    .line 324
    :cond_6
    invoke-direct/range {p0 .. p5}, Landroid/webkit/BrowserFrame;->nativeLoadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 326
    return-void
.end method

.method loadType()I
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Landroid/webkit/BrowserFrame;->mLoadType:I

    return v0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p2, extraHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 275
    invoke-static {p1}, Landroid/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    const-string v0, "javascript:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/BrowserFrame;->stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 283
    return-void

    .line 280
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/webkit/BrowserFrame;->nativeLoadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public native nativeDestroyFrame()V
.end method

.method native nativeSslClientCert(II[[B)V
.end method

.method native nativeSslClientCert(I[B[[B)V
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1
    .parameter "url"
    .parameter "data"

    .prologue
    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 292
    invoke-direct {p0, p1, p2}, Landroid/webkit/BrowserFrame;->nativePostUrl(Ljava/lang/String;[B)V

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 294
    return-void
.end method

.method public native reload(Z)V
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 2
    .parameter "interfaceName"

    .prologue
    .line 661
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mRemovedJavaScriptObjects:Ljava/util/Set;

    iget-object v1, p0, Landroid/webkit/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 664
    :cond_0
    return-void
.end method

.method saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "basename"
    .parameter "autoname"

    .prologue
    .line 337
    invoke-direct {p0, p1, p2}, Landroid/webkit/BrowserFrame;->nativeSaveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 1293
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mIsMainFrame:Z

    if-eqz v0, :cond_0

    .line 1294
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->resetLoadingStates()V

    .line 1296
    :cond_0
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->nativeStopLoading()V

    .line 1297
    return-void
.end method

.method public native stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;
.end method
