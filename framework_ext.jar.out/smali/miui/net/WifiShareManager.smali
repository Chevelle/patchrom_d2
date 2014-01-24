.class public Lmiui/net/WifiShareManager;
.super Ljava/lang/Object;
.source "WifiShareManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/WifiShareManager$WifiShareListener;,
        Lmiui/net/WifiShareManager$WifiShareTask;
    }
.end annotation


# static fields
.field public static final AUTH_TOKEN_TYPE:Ljava/lang/String; = "micloud"

.field private static final DEBUG:Z = true

.field public static final ERROR_CODE_AUTHENTICATION_ERROR:I = 0x4

.field public static final ERROR_CODE_CANCELED:I = 0x2

.field public static final ERROR_CODE_EXCEPTION:I = 0x1

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WifiShareManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMainHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/net/WifiShareManager;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lmiui/net/WifiShareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/net/WifiShareManager;->mMainHandler:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lmiui/net/WifiShareManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lmiui/net/WifiShareManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/net/WifiShareManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lmiui/net/WifiShareManager;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lmiui/net/WifiShareManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    new-instance v0, Lmiui/net/WifiShareManager;

    invoke-direct {v0, p0}, Lmiui/net/WifiShareManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 3
    .parameter "context"

    .prologue
    .line 59
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 60
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v2, "com.xiaomi"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 61
    .local v1, accounts:[Landroid/accounts/Account;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 62
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 65
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public downloadWifi(Landroid/content/Context;Landroid/os/Bundle;Lmiui/net/WifiShareManager$WifiShareListener;)V
    .locals 2
    .parameter "context"
    .parameter "extra"
    .parameter "wifiShareListener"

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    new-instance v0, Lmiui/net/WifiShareManager$2;

    invoke-direct {v0, p0, p1, p3, p2}, Lmiui/net/WifiShareManager$2;-><init>(Lmiui/net/WifiShareManager;Landroid/content/Context;Lmiui/net/WifiShareManager$WifiShareListener;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lmiui/net/WifiShareManager$2;->start()V

    .line 108
    return-void
.end method

.method public feedback(Landroid/content/Context;Landroid/os/Bundle;Lmiui/net/WifiShareManager$WifiShareListener;)V
    .locals 2
    .parameter "context"
    .parameter "extra"
    .parameter "wifiShareListener"

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    new-instance v0, Lmiui/net/WifiShareManager$3;

    invoke-direct {v0, p0, p1, p3, p2}, Lmiui/net/WifiShareManager$3;-><init>(Lmiui/net/WifiShareManager;Landroid/content/Context;Lmiui/net/WifiShareManager$WifiShareListener;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lmiui/net/WifiShareManager$3;->start()V

    .line 129
    return-void
.end method

.method public uploadWifi(Landroid/content/Context;Landroid/os/Bundle;Lmiui/net/WifiShareManager$WifiShareListener;)V
    .locals 2
    .parameter "context"
    .parameter "extra"
    .parameter "wifiShareListener"

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    new-instance v0, Lmiui/net/WifiShareManager$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lmiui/net/WifiShareManager$1;-><init>(Lmiui/net/WifiShareManager;Landroid/content/Context;Lmiui/net/WifiShareManager$WifiShareListener;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lmiui/net/WifiShareManager$1;->start()V

    .line 87
    return-void
.end method
