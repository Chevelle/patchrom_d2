.class public Lmiui/app/AccountUnlockDialog;
.super Ljava/lang/Object;
.source "AccountUnlockDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/AccountUnlockDialog$ViewHolder;
    }
.end annotation


# static fields
.field private static final INPUT_PASSWORD:Ljava/lang/String; = "input_password"


# instance fields
.field private mAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Landroid/app/Activity;

.field private mAlert:Landroid/app/AlertDialog;

.field private mCheckingDialog:Landroid/app/ProgressDialog;

.field private mContext:Landroid/content/Context;

.field private mCurAccount:Landroid/accounts/Account;

.field private mDisableKey:Ljava/lang/String;

.field private mIntentOnSuccess:Landroid/content/Intent;

.field private mLogin:Landroid/widget/Spinner;

.field private mOk:Landroid/widget/Button;

.field private mPassword:Landroid/widget/EditText;

.field private mUtils:Lmiui/security/MiuiLockPatternUtils;

.field private mXiaomiIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/String;Lmiui/security/MiuiLockPatternUtils;Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 4
    .parameter "context"
    .parameter "alert"
    .parameter "contentView"
    .parameter "title"
    .parameter "disableKey"
    .parameter "utils"
    .parameter "activity"
    .parameter "intent"
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/app/AccountUnlockDialog;->mAccounts:Ljava/util/ArrayList;

    .line 61
    iput-object p1, p0, Lmiui/app/AccountUnlockDialog;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lmiui/app/AccountUnlockDialog;->mAlert:Landroid/app/AlertDialog;

    .line 63
    iget-object v2, p0, Lmiui/app/AccountUnlockDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v2, p4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    iput-object p5, p0, Lmiui/app/AccountUnlockDialog;->mDisableKey:Ljava/lang/String;

    .line 65
    iput-object p6, p0, Lmiui/app/AccountUnlockDialog;->mUtils:Lmiui/security/MiuiLockPatternUtils;

    .line 66
    iput-object p7, p0, Lmiui/app/AccountUnlockDialog;->mActivity:Landroid/app/Activity;

    .line 67
    iput-object p8, p0, Lmiui/app/AccountUnlockDialog;->mIntentOnSuccess:Landroid/content/Intent;

    .line 70
    const v2, 0x60b0056

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lmiui/app/AccountUnlockDialog;->mLogin:Landroid/widget/Spinner;

    .line 71
    const v2, 0x60b0069

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lmiui/app/AccountUnlockDialog;->mPassword:Landroid/widget/EditText;

    .line 72
    if-eqz p9, :cond_0

    .line 73
    const-string v2, "input_password"

    invoke-virtual {p9, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, password:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    iget-object v2, p0, Lmiui/app/AccountUnlockDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .end local v1           #password:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lmiui/app/AccountUnlockDialog;->findAccounts()V

    .line 80
    new-instance v0, Lmiui/app/AccountUnlockDialog$1;

    invoke-direct {v0, p0}, Lmiui/app/AccountUnlockDialog$1;-><init>(Lmiui/app/AccountUnlockDialog;)V

    .line 117
    .local v0, ba:Landroid/widget/BaseAdapter;
    iget-object v2, p0, Lmiui/app/AccountUnlockDialog;->mLogin:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 119
    iget-object v2, p0, Lmiui/app/AccountUnlockDialog;->mLogin:Landroid/widget/Spinner;

    new-instance v3, Lmiui/app/AccountUnlockDialog$2;

    invoke-direct {v3, p0}, Lmiui/app/AccountUnlockDialog$2;-><init>(Lmiui/app/AccountUnlockDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 132
    const v2, 0x60b0061

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lmiui/app/AccountUnlockDialog;->mOk:Landroid/widget/Button;

    .line 133
    iget-object v2, p0, Lmiui/app/AccountUnlockDialog;->mOk:Landroid/widget/Button;

    new-instance v3, Lmiui/app/AccountUnlockDialog$3;

    invoke-direct {v3, p0}, Lmiui/app/AccountUnlockDialog$3;-><init>(Lmiui/app/AccountUnlockDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    return-void
.end method

.method static synthetic access$000(Lmiui/app/AccountUnlockDialog;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog;->mAccounts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lmiui/app/AccountUnlockDialog;)Lmiui/security/MiuiLockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog;->mUtils:Lmiui/security/MiuiLockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1100(Lmiui/app/AccountUnlockDialog;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1200(Lmiui/app/AccountUnlockDialog;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog;->mIntentOnSuccess:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1300(Lmiui/app/AccountUnlockDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/app/AccountUnlockDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/app/AccountUnlockDialog;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog;->mXiaomiIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$402(Lmiui/app/AccountUnlockDialog;Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lmiui/app/AccountUnlockDialog;->mCurAccount:Landroid/accounts/Account;

    return-object p1
.end method

.method static synthetic access$500(Lmiui/app/AccountUnlockDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lmiui/app/AccountUnlockDialog;->asyncCheckPassword()V

    return-void
.end method

.method static synthetic access$600(Lmiui/app/AccountUnlockDialog;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lmiui/app/AccountUnlockDialog;->postOnCheckPasswordResult(Z)V

    return-void
.end method

.method static synthetic access$700(Lmiui/app/AccountUnlockDialog;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lmiui/app/AccountUnlockDialog;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lmiui/app/AccountUnlockDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog;->mDisableKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lmiui/app/AccountUnlockDialog;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog;->mAlert:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private asyncCheckPassword()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 201
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 202
    .local v6, password:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog;->mContext:Landroid/content/Context;

    const v1, 0x60c0261

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 227
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog;->mCurAccount:Landroid/accounts/Account;

    if-nez v0, :cond_1

    .line 209
    invoke-direct {p0, v4}, Lmiui/app/AccountUnlockDialog;->postOnCheckPasswordResult(Z)V

    goto :goto_0

    .line 212
    :cond_1
    invoke-direct {p0}, Lmiui/app/AccountUnlockDialog;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 213
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 214
    .local v2, options:Landroid/os/Bundle;
    const-string v0, "password"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/AccountUnlockDialog;->mCurAccount:Landroid/accounts/Account;

    new-instance v4, Lmiui/app/AccountUnlockDialog$4;

    invoke-direct {v4, p0}, Lmiui/app/AccountUnlockDialog$4;-><init>(Lmiui/app/AccountUnlockDialog;)V

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Lmiui/security/MiuiLockPatternUtils;Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)Lmiui/app/AccountUnlockDialog;
    .locals 11
    .parameter "context"
    .parameter "title"
    .parameter "disableKey"
    .parameter "utils"
    .parameter "activity"
    .parameter "intent"
    .parameter "savedInstanceState"

    .prologue
    .line 143
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 144
    .local v10, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x603

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 145
    .local v3, view:Landroid/view/View;
    invoke-virtual {v10, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 147
    new-instance v0, Lmiui/app/AccountUnlockDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lmiui/app/AccountUnlockDialog;-><init>(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/String;Lmiui/security/MiuiLockPatternUtils;Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-object v0
.end method

.method private findAccounts()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 179
    iget-object v8, p0, Lmiui/app/AccountUnlockDialog;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v4

    .line 180
    .local v4, authens:[Landroid/accounts/AuthenticatorDescription;
    move-object v2, v4

    .local v2, arr$:[Landroid/accounts/AuthenticatorDescription;
    array-length v7, v2

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v5, v2, v6

    .line 182
    .local v5, desp:Landroid/accounts/AuthenticatorDescription;
    :try_start_0
    iget-object v8, p0, Lmiui/app/AccountUnlockDialog;->mContext:Landroid/content/Context;

    iget-object v9, v5, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 183
    .local v3, authContext:Landroid/content/Context;
    iget-object v8, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v9, "com.xiaomi"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 184
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, v5, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lmiui/app/AccountUnlockDialog;->mXiaomiIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v3           #authContext:Landroid/content/Context;
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 191
    .end local v5           #desp:Landroid/accounts/AuthenticatorDescription;
    :cond_1
    iget-object v8, p0, Lmiui/app/AccountUnlockDialog;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    const-string v9, "com.xiaomi"

    invoke-virtual {v8, v9}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 192
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v7, v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_2

    aget-object v0, v2, v6

    .line 193
    .local v0, a:Landroid/accounts/Account;
    iget-object v8, p0, Lmiui/app/AccountUnlockDialog;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 195
    .end local v0           #a:Landroid/accounts/Account;
    :cond_2
    iget-object v8, p0, Lmiui/app/AccountUnlockDialog;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 196
    iget-object v8, p0, Lmiui/app/AccountUnlockDialog;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/accounts/Account;

    iput-object v8, p0, Lmiui/app/AccountUnlockDialog;->mCurAccount:Landroid/accounts/Account;

    .line 198
    :cond_3
    return-void

    .line 187
    .end local v1           #accounts:[Landroid/accounts/Account;
    .local v2, arr$:[Landroid/accounts/AuthenticatorDescription;
    .restart local v5       #desp:Landroid/accounts/AuthenticatorDescription;
    :catch_0
    move-exception v8

    goto :goto_1

    .line 186
    :catch_1
    move-exception v8

    goto :goto_1
.end method

.method private getProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lmiui/app/AccountUnlockDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/app/AccountUnlockDialog;->mCheckingDialog:Landroid/app/ProgressDialog;

    .line 232
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog;->mCheckingDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lmiui/app/AccountUnlockDialog;->mContext:Landroid/content/Context;

    const v2, 0x60c001b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 235
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 237
    :cond_0
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog;->mCheckingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private postOnCheckPasswordResult(Z)V
    .locals 2
    .parameter "success"

    .prologue
    .line 242
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog;->mLogin:Landroid/widget/Spinner;

    new-instance v1, Lmiui/app/AccountUnlockDialog$5;

    invoke-direct {v1, p0, p1}, Lmiui/app/AccountUnlockDialog$5;-><init>(Lmiui/app/AccountUnlockDialog;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 265
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog;->mAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 160
    :cond_0
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 163
    :cond_1
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog;->mAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/AccountUnlockDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/app/AccountUnlockDialog;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 166
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 167
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lmiui/app/AccountUnlockDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 168
    const-string v1, "input_password"

    iget-object v2, p0, Lmiui/app/AccountUnlockDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_0
    return-object v0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog;->mAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 154
    :cond_0
    return-void
.end method
