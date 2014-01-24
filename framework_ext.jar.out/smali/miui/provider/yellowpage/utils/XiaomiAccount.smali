.class public Lmiui/provider/yellowpage/utils/XiaomiAccount;
.super Ljava/lang/Object;
.source "XiaomiAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/yellowpage/utils/XiaomiAccount$LoginCallBack;
    }
.end annotation


# static fields
.field public static final SERVICE_TOKEN:Ljava/lang/String; = "serviceToken"

.field public static final SERVICE_TOKEN_ESHOP_MOBILE:Ljava/lang/String; = "eshopmobile"

.field public static final SERVICE_TOKEN_OAUTH2:Ljava/lang/String; = "oauth2.0"

.field public static final SERVICE_TOKEN_YELLOW_PAGE:Ljava/lang/String; = "spbook"

.field private static final TAG:Ljava/lang/String; = "Account"

.field public static final USER_ID:Ljava/lang/String; = "userId"

.field private static sAccountChangeListener:Landroid/content/BroadcastReceiver;

.field private static sLoginCallBackList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lmiui/provider/yellowpage/utils/XiaomiAccount$LoginCallBack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lmiui/provider/yellowpage/utils/XiaomiAccount;->sLoginCallBackList:Ljava/util/Set;

    return-object v0
.end method

.method public static getAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public static getAuthToken(Landroid/content/Context;Ljava/lang/String;)Lmiui/net/ExtendedAuthToken;
    .locals 11
    .parameter "context"
    .parameter "serviceId"

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    .line 116
    .local v1, account:Landroid/accounts/Account;
    if-nez v1, :cond_0

    .line 142
    :goto_0
    return-object v3

    .line 119
    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v4, 0x1

    move-object v2, p1

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v9

    .line 122
    .local v9, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    if-eqz v9, :cond_2

    .line 123
    :try_start_0
    invoke-interface {v9}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    .line 124
    .local v10, result:Landroid/os/Bundle;
    if-eqz v10, :cond_1

    .line 125
    invoke-interface {v9}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "authtoken"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 127
    .local v8, extTokenStr:Ljava/lang/String;
    invoke-static {v8}, Lmiui/net/ExtendedAuthToken;->parse(Ljava/lang/String;)Lmiui/net/ExtendedAuthToken;

    move-result-object v3

    goto :goto_0

    .line 129
    .end local v8           #extTokenStr:Ljava/lang/String;
    :cond_1
    const-string v0, "Account"

    const-string v2, "getAuthToken: future getResult is null"

    invoke-static {v0, v2}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 135
    .end local v10           #result:Landroid/os/Bundle;
    :catch_0
    move-exception v7

    .line 136
    .local v7, e:Landroid/accounts/OperationCanceledException;
    invoke-virtual {v7}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_0

    .line 133
    .end local v7           #e:Landroid/accounts/OperationCanceledException;
    :cond_2
    :try_start_1
    const-string v0, "Account"

    const-string v2, "getAuthToken: future is null"

    invoke-static {v0, v2}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 137
    :catch_1
    move-exception v7

    .line 138
    .local v7, e:Landroid/accounts/AuthenticatorException;
    invoke-virtual {v7}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    goto :goto_0

    .line 139
    .end local v7           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v7

    .line 140
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static hasLogin(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/XiaomiAccount;->getAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static invalidAuthToken(Landroid/content/Context;Lmiui/net/ExtendedAuthToken;)V
    .locals 6
    .parameter "context"
    .parameter "token"

    .prologue
    .line 146
    if-nez p1, :cond_1

    .line 162
    :cond_0
    return-void

    .line 150
    :cond_1
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/XiaomiAccount;->getAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 151
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 155
    const-string v3, "Account"

    const-string v4, "Invalid xiaomi account auth token"

    invoke-static {v3, v4}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p1}, Lmiui/net/ExtendedAuthToken;->toPlain()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget-object v3, Lmiui/provider/yellowpage/utils/XiaomiAccount;->sLoginCallBackList:Ljava/util/Set;

    if-eqz v3, :cond_0

    sget-object v3, Lmiui/provider/yellowpage/utils/XiaomiAccount;->sLoginCallBackList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 158
    sget-object v3, Lmiui/provider/yellowpage/utils/XiaomiAccount;->sLoginCallBackList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/provider/yellowpage/utils/XiaomiAccount$LoginCallBack;

    .line 159
    .local v1, callBack:Lmiui/provider/yellowpage/utils/XiaomiAccount$LoginCallBack;
    invoke-interface {v1}, Lmiui/provider/yellowpage/utils/XiaomiAccount$LoginCallBack;->onInvalidToken()V

    goto :goto_0
.end method

.method public static login(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .parameter "activity"
    .parameter "serviceId"
    .parameter "accountOptions"

    .prologue
    const/4 v3, 0x0

    .line 109
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 110
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v1, "com.xiaomi"

    move-object v2, p1

    move-object v4, p2

    move-object v5, p0

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 112
    return-void
.end method

.method public static registerLoginCallBackListener(Landroid/content/Context;Lmiui/provider/yellowpage/utils/XiaomiAccount$LoginCallBack;)V
    .locals 3
    .parameter "context"
    .parameter "callBack"

    .prologue
    .line 56
    sget-object v0, Lmiui/provider/yellowpage/utils/XiaomiAccount;->sLoginCallBackList:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/provider/yellowpage/utils/XiaomiAccount;->sLoginCallBackList:Ljava/util/Set;

    .line 59
    :cond_0
    sget-object v0, Lmiui/provider/yellowpage/utils/XiaomiAccount;->sLoginCallBackList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lmiui/provider/yellowpage/utils/XiaomiAccount;->sAccountChangeListener:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 62
    new-instance v0, Lmiui/provider/yellowpage/utils/XiaomiAccount$1;

    invoke-direct {v0}, Lmiui/provider/yellowpage/utils/XiaomiAccount$1;-><init>()V

    sput-object v0, Lmiui/provider/yellowpage/utils/XiaomiAccount;->sAccountChangeListener:Landroid/content/BroadcastReceiver;

    .line 92
    sget-object v0, Lmiui/provider/yellowpage/utils/XiaomiAccount;->sAccountChangeListener:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.accounts.LOGIN_ACCOUNTS_PRE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    :cond_1
    return-void
.end method

.method public static unregisterLoginCallBackListener(Landroid/content/Context;Lmiui/provider/yellowpage/utils/XiaomiAccount$LoginCallBack;)V
    .locals 1
    .parameter "context"
    .parameter "callBack"

    .prologue
    .line 98
    sget-object v0, Lmiui/provider/yellowpage/utils/XiaomiAccount;->sLoginCallBackList:Ljava/util/Set;

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/provider/yellowpage/utils/XiaomiAccount;->sLoginCallBackList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lmiui/provider/yellowpage/utils/XiaomiAccount;->sLoginCallBackList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    sget-object v0, Lmiui/provider/yellowpage/utils/XiaomiAccount;->sLoginCallBackList:Ljava/util/Set;

    if-eqz v0, :cond_1

    sget-object v0, Lmiui/provider/yellowpage/utils/XiaomiAccount;->sLoginCallBackList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 103
    :cond_1
    sget-object v0, Lmiui/provider/yellowpage/utils/XiaomiAccount;->sAccountChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 104
    const/4 v0, 0x0

    sput-object v0, Lmiui/provider/yellowpage/utils/XiaomiAccount;->sAccountChangeListener:Landroid/content/BroadcastReceiver;

    .line 106
    :cond_2
    return-void
.end method
