.class public Lmiui/net/PaymentManager;
.super Ljava/lang/Object;
.source "PaymentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/PaymentManager$PaymentManagerFuture;,
        Lmiui/net/PaymentManager$PmsTask;,
        Lmiui/net/PaymentManager$PaymentCallback;,
        Lmiui/net/PaymentManager$PaymentManagerCallback;,
        Lmiui/net/PaymentManager$PaymentListener;,
        Lmiui/net/PaymentManager$AddAccountCallback;,
        Lmiui/net/PaymentManager$LoginCallback;
    }
.end annotation


# static fields
.field public static final CAPABILITY:I = 0x3

.field private static final DEBUG:Z = true

.field public static final ERROR_CODE_ACCOUNT_CHANGED:I = 0xa

.field public static final ERROR_CODE_ACCOUNT_FROZEN:I = 0x9

.field public static final ERROR_CODE_AUTHENTICATION_ERROR:I = 0x5

.field public static final ERROR_CODE_CALLER_INVALID:I = 0xc

.field public static final ERROR_CODE_CALL_TOO_FAST:I = 0xe

.field public static final ERROR_CODE_CANCELED:I = 0x4

.field public static final ERROR_CODE_DUPLICATE_PURCHASE:I = 0x7

.field public static final ERROR_CODE_EXCEPTION:I = 0x1

.field public static final ERROR_CODE_INVALID_PARAMS:I = 0x2

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x3

.field public static final ERROR_CODE_ORDER_ERROR:I = 0xd

.field public static final ERROR_CODE_SERVER_ERROR:I = 0x6

.field public static final ERROR_CODE_THIRD_PARTY:I = 0xb

.field public static final ERROR_CODE_USER_ID_MISMATCH:I = 0x8

.field public static final KEY_ACCOUNT:Ljava/lang/String; = "account"

.field public static final KEY_INTENT:Ljava/lang/String; = "intent"

.field public static final PAYMENT_KEY_PAYMENT_RESULT:Ljava/lang/String; = "payment_payment_result"

.field public static final PAYMENT_KEY_QUICK:Ljava/lang/String; = "payment_quick"

.field public static final PAYMENT_KEY_TRADE_BALANCE:Ljava/lang/String; = "payment_trade_balance"

.field private static final TAG:Ljava/lang/String; = "PaymentManager"

.field public static final XIAOMI_ACCOUNT_TYPE:Ljava/lang/String; = "com.xiaomi"

.field private static final XIAOMI_PAYMENT_AUTH_TOKEN_TYPE:Ljava/lang/String; = "billcenter"


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mContext:Landroid/content/Context;

.field private final mMainHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/net/PaymentManager;->mContext:Landroid/content/Context;

    .line 96
    iget-object v0, p0, Lmiui/net/PaymentManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/net/PaymentManager;->mAccountManager:Landroid/accounts/AccountManager;

    .line 97
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lmiui/net/PaymentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/net/PaymentManager;->mMainHandler:Landroid/os/Handler;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lmiui/net/PaymentManager;Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Lmiui/net/PaymentManager$PaymentManagerCallback;)Lmiui/net/PaymentManager$PaymentManagerFuture;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p5}, Lmiui/net/PaymentManager;->internalPayForOrder(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Lmiui/net/PaymentManager$PaymentManagerCallback;)Lmiui/net/PaymentManager$PaymentManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lmiui/net/PaymentManager;Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Lmiui/net/PaymentManager$PaymentManagerFuture;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/net/PaymentManager;->internalRecharge(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Lmiui/net/PaymentManager$PaymentManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lmiui/net/PaymentManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lmiui/net/PaymentManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/net/PaymentManager;Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Lmiui/net/PaymentManager$PaymentManagerCallback;)Lmiui/net/PaymentManager$PaymentManagerFuture;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p5}, Lmiui/net/PaymentManager;->internalGetMiliBalance(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Lmiui/net/PaymentManager$PaymentManagerCallback;)Lmiui/net/PaymentManager$PaymentManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lmiui/net/PaymentManager;Landroid/app/Activity;Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lmiui/net/PaymentManager;->internalGotoMiliCenter(Landroid/app/Activity;Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$400(Lmiui/net/PaymentManager;Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/net/PaymentManager;->internalGotoRechargeRecord(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lmiui/net/PaymentManager;Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/net/PaymentManager;->internalGotoPayRecord(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lmiui/net/PaymentManager;)Landroid/accounts/AccountManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lmiui/net/PaymentManager;->mAccountManager:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method static synthetic access$900(Lmiui/net/PaymentManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lmiui/net/PaymentManager;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lmiui/net/PaymentManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 101
    new-instance v0, Lmiui/net/PaymentManager;

    invoke-direct {v0, p0}, Lmiui/net/PaymentManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private internalGetMiliBalance(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Lmiui/net/PaymentManager$PaymentManagerCallback;)Lmiui/net/PaymentManager$PaymentManagerFuture;
    .locals 7
    .parameter "activity"
    .parameter "account"
    .parameter "serviceId"
    .parameter "verify"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmiui/net/PaymentManager$PaymentManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Lmiui/net/PaymentManager$PaymentManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    .local p5, callback:Lmiui/net/PaymentManager$PaymentManagerCallback;,"Lmiui/net/PaymentManager$PaymentManagerCallback<Landroid/os/Bundle;>;"
    new-instance v0, Lmiui/net/PaymentManager$10;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lmiui/net/PaymentManager$10;-><init>(Lmiui/net/PaymentManager;Landroid/app/Activity;Lmiui/net/PaymentManager$PaymentManagerCallback;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/net/PaymentManager$10;->start()Lmiui/net/PaymentManager$PaymentManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method private internalGotoMiliCenter(Landroid/app/Activity;Landroid/accounts/Account;)V
    .locals 1
    .parameter "activity"
    .parameter "account"

    .prologue
    .line 378
    new-instance v0, Lmiui/net/PaymentManager$11;

    invoke-direct {v0, p0, p1, p2}, Lmiui/net/PaymentManager$11;-><init>(Lmiui/net/PaymentManager;Landroid/app/Activity;Landroid/accounts/Account;)V

    invoke-virtual {v0}, Lmiui/net/PaymentManager$11;->start()Lmiui/net/PaymentManager$PaymentManagerFuture;

    .line 385
    return-void
.end method

.method private internalGotoPayRecord(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "activity"
    .parameter "account"
    .parameter "serviceId"
    .parameter "verify"

    .prologue
    .line 400
    new-instance v0, Lmiui/net/PaymentManager$13;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmiui/net/PaymentManager$13;-><init>(Lmiui/net/PaymentManager;Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/net/PaymentManager$13;->start()Lmiui/net/PaymentManager$PaymentManagerFuture;

    .line 407
    return-void
.end method

.method private internalGotoRechargeRecord(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "activity"
    .parameter "account"
    .parameter "serviceId"
    .parameter "verify"

    .prologue
    .line 389
    new-instance v0, Lmiui/net/PaymentManager$12;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmiui/net/PaymentManager$12;-><init>(Lmiui/net/PaymentManager;Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/net/PaymentManager$12;->start()Lmiui/net/PaymentManager$PaymentManagerFuture;

    .line 396
    return-void
.end method

.method private internalPayForOrder(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Lmiui/net/PaymentManager$PaymentManagerCallback;)Lmiui/net/PaymentManager$PaymentManagerFuture;
    .locals 7
    .parameter "activity"
    .parameter "account"
    .parameter "order"
    .parameter "extra"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lmiui/net/PaymentManager$PaymentManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Lmiui/net/PaymentManager$PaymentManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    .local p5, callback:Lmiui/net/PaymentManager$PaymentManagerCallback;,"Lmiui/net/PaymentManager$PaymentManagerCallback<Landroid/os/Bundle;>;"
    new-instance v0, Lmiui/net/PaymentManager$8;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lmiui/net/PaymentManager$8;-><init>(Lmiui/net/PaymentManager;Landroid/app/Activity;Lmiui/net/PaymentManager$PaymentManagerCallback;Landroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/net/PaymentManager$8;->start()Lmiui/net/PaymentManager$PaymentManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method private internalRecharge(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Lmiui/net/PaymentManager$PaymentManagerFuture;
    .locals 6
    .parameter "activity"
    .parameter "account"
    .parameter "serviceId"
    .parameter "verify"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmiui/net/PaymentManager$PaymentManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    new-instance v0, Lmiui/net/PaymentManager$9;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmiui/net/PaymentManager$9;-><init>(Lmiui/net/PaymentManager;Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/net/PaymentManager$9;->start()Lmiui/net/PaymentManager$PaymentManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method private login(Landroid/app/Activity;Lmiui/net/PaymentManager$LoginCallback;)V
    .locals 9
    .parameter "activity"
    .parameter "callback"

    .prologue
    const/4 v3, 0x0

    .line 271
    iget-object v0, p0, Lmiui/net/PaymentManager;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.xiaomi"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v8

    .line 272
    .local v8, account:[Landroid/accounts/Account;
    array-length v0, v8

    if-nez v0, :cond_0

    .line 273
    new-instance v6, Lmiui/net/PaymentManager$7;

    invoke-direct {v6, p0, p2}, Lmiui/net/PaymentManager$7;-><init>(Lmiui/net/PaymentManager;Lmiui/net/PaymentManager$LoginCallback;)V

    .line 286
    .local v6, accountCallback:Lmiui/net/PaymentManager$AddAccountCallback;
    iget-object v0, p0, Lmiui/net/PaymentManager;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.xiaomi"

    const-string v2, "billcenter"

    move-object v4, v3

    move-object v5, p1

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 291
    .end local v6           #accountCallback:Lmiui/net/PaymentManager$AddAccountCallback;
    :goto_0
    return-void

    .line 289
    :cond_0
    const/4 v0, 0x0

    aget-object v0, v8, v0

    invoke-interface {p2, v0}, Lmiui/net/PaymentManager$LoginCallback;->onSuccess(Landroid/accounts/Account;)V

    goto :goto_0
.end method


# virtual methods
.method public getMiliBalance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/net/PaymentManager$PaymentListener;)V
    .locals 7
    .parameter "activity"
    .parameter "paymentId"
    .parameter "serviceId"
    .parameter "verify"
    .parameter "paymentListener"

    .prologue
    .line 176
    if-nez p1, :cond_0

    .line 177
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "serviceId cannot be empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "verify cannot be empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_2
    new-instance v0, Lmiui/net/PaymentManager$3;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p5

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lmiui/net/PaymentManager$3;-><init>(Lmiui/net/PaymentManager;Ljava/lang/String;Ljava/lang/String;Lmiui/net/PaymentManager$PaymentListener;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lmiui/net/PaymentManager;->login(Landroid/app/Activity;Lmiui/net/PaymentManager$LoginCallback;)V

    .line 198
    return-void
.end method

.method public gotoMiliCenter(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 206
    new-instance v0, Lmiui/net/PaymentManager$4;

    invoke-direct {v0, p0, p1}, Lmiui/net/PaymentManager$4;-><init>(Lmiui/net/PaymentManager;Landroid/app/Activity;)V

    invoke-direct {p0, p1, v0}, Lmiui/net/PaymentManager;->login(Landroid/app/Activity;Lmiui/net/PaymentManager$LoginCallback;)V

    .line 216
    return-void
.end method

.method public gotoPayRecord(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "serviceId"
    .parameter "verify"

    .prologue
    .line 249
    if-nez p1, :cond_0

    .line 250
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "serviceId cannot be empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "verify cannot be empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_2
    new-instance v0, Lmiui/net/PaymentManager$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lmiui/net/PaymentManager$6;-><init>(Lmiui/net/PaymentManager;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lmiui/net/PaymentManager;->login(Landroid/app/Activity;Lmiui/net/PaymentManager$LoginCallback;)V

    .line 268
    return-void
.end method

.method public gotoRechargeRecord(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "serviceId"
    .parameter "verify"

    .prologue
    .line 223
    if-nez p1, :cond_0

    .line 224
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "serviceId cannot be empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 230
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "verify cannot be empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_2
    new-instance v0, Lmiui/net/PaymentManager$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lmiui/net/PaymentManager$5;-><init>(Lmiui/net/PaymentManager;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lmiui/net/PaymentManager;->login(Landroid/app/Activity;Lmiui/net/PaymentManager$LoginCallback;)V

    .line 242
    return-void
.end method

.method public isMibiServiceDisabled()Z
    .locals 1

    .prologue
    .line 110
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    return v0
.end method

.method public payForOrder(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lmiui/net/PaymentManager$PaymentListener;)V
    .locals 7
    .parameter "activity"
    .parameter "paymentId"
    .parameter "order"
    .parameter "extra"
    .parameter "paymentListener"

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "order cannot be empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    new-instance v0, Lmiui/net/PaymentManager$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p5

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lmiui/net/PaymentManager$1;-><init>(Lmiui/net/PaymentManager;Ljava/lang/String;Lmiui/net/PaymentManager$PaymentListener;Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, p1, v0}, Lmiui/net/PaymentManager;->login(Landroid/app/Activity;Lmiui/net/PaymentManager$LoginCallback;)V

    .line 138
    return-void
.end method

.method public recharge(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "rechargeId"
    .parameter "serviceId"
    .parameter "verify"

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 148
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "serviceId cannot be empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "verify cannot be empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_2
    new-instance v0, Lmiui/net/PaymentManager$2;

    invoke-direct {v0, p0, p1, p3, p4}, Lmiui/net/PaymentManager$2;-><init>(Lmiui/net/PaymentManager;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lmiui/net/PaymentManager;->login(Landroid/app/Activity;Lmiui/net/PaymentManager$LoginCallback;)V

    .line 166
    return-void
.end method
