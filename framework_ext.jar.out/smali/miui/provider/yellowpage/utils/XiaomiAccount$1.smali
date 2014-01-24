.class final Lmiui/provider/yellowpage/utils/XiaomiAccount$1;
.super Landroid/content/BroadcastReceiver;
.source "XiaomiAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/provider/yellowpage/utils/XiaomiAccount;->registerLoginCallBackListener(Landroid/content/Context;Lmiui/provider/yellowpage/utils/XiaomiAccount$LoginCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, action:Ljava/lang/String;
    const-string v5, "android.accounts.LOGIN_ACCOUNTS_PRE_CHANGED"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    const-string v5, "extra_update_type"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 69
    .local v4, type:I
    const-string v5, "extra_account"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 71
    .local v0, account:Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v6, "com.xiaomi"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 89
    .end local v0           #account:Landroid/accounts/Account;
    .end local v4           #type:I
    :cond_0
    return-void

    .line 75
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v4       #type:I
    :cond_1
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 76
    invoke-static {}, Lmiui/provider/yellowpage/utils/XiaomiAccount;->access$000()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lmiui/provider/yellowpage/utils/XiaomiAccount;->access$000()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 77
    invoke-static {}, Lmiui/provider/yellowpage/utils/XiaomiAccount;->access$000()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/provider/yellowpage/utils/XiaomiAccount$LoginCallBack;

    .line 78
    .local v2, callBack:Lmiui/provider/yellowpage/utils/XiaomiAccount$LoginCallBack;
    invoke-interface {v2}, Lmiui/provider/yellowpage/utils/XiaomiAccount$LoginCallBack;->onLogout()V

    goto :goto_0

    .line 81
    .end local v2           #callBack:Lmiui/provider/yellowpage/utils/XiaomiAccount$LoginCallBack;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 82
    invoke-static {}, Lmiui/provider/yellowpage/utils/XiaomiAccount;->access$000()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lmiui/provider/yellowpage/utils/XiaomiAccount;->access$000()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 83
    invoke-static {}, Lmiui/provider/yellowpage/utils/XiaomiAccount;->access$000()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/provider/yellowpage/utils/XiaomiAccount$LoginCallBack;

    .line 84
    .restart local v2       #callBack:Lmiui/provider/yellowpage/utils/XiaomiAccount$LoginCallBack;
    invoke-interface {v2}, Lmiui/provider/yellowpage/utils/XiaomiAccount$LoginCallBack;->onLoginSuccess()V

    goto :goto_1
.end method
