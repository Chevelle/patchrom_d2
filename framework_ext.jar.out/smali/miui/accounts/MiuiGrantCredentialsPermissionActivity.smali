.class public Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;
.super Landroid/app/Activity;
.source "MiuiGrantCredentialsPermissionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationAdapter;,
        Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationItem;
    }
.end annotation


# static fields
.field public static final EXTRAS_ACCOUNT:Ljava/lang/String; = "account"

.field public static final EXTRAS_ACCOUNT_TYPE_LABEL:Ljava/lang/String; = "accountTypeLabel"

.field public static final EXTRAS_AUTH_TOKEN_LABEL:Ljava/lang/String; = "authTokenLabel"

.field public static final EXTRAS_AUTH_TOKEN_TYPE:Ljava/lang/String; = "authTokenType"

.field public static final EXTRAS_PACKAGES:Ljava/lang/String; = "application"

.field public static final EXTRAS_REQUESTING_UID:Ljava/lang/String; = "uid"

.field public static final EXTRAS_RESPONSE:Ljava/lang/String; = "response"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthTokenType:Ljava/lang/String;

.field private mResultBundle:Landroid/os/Bundle;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->mResultBundle:Landroid/os/Bundle;

    .line 34
    return-void
.end method

.method private getAccountIcon(Landroid/accounts/Account;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "account"

    .prologue
    .line 140
    const/4 v5, 0x0

    .line 141
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    .line 143
    .local v2, authenticatorTypes:[Landroid/accounts/AuthenticatorDescription;
    const/4 v4, 0x0

    .local v4, i:I
    array-length v0, v2

    .local v0, N:I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 144
    aget-object v3, v2, v4

    .line 145
    .local v3, desc:Landroid/accounts/AuthenticatorDescription;
    iget-object v6, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 147
    :try_start_0
    iget-object v6, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 148
    .local v1, authContext:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v3, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 149
    if-eqz v5, :cond_0

    .line 150
    invoke-static {v5}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 158
    .end local v1           #authContext:Landroid/content/Context;
    .end local v3           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_1
    return-object v5

    .line 143
    .restart local v3       #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 153
    :catch_0
    move-exception v6

    goto :goto_1

    .line 152
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method private getAccountLabel(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 7
    .parameter "account"

    .prologue
    .line 121
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    .line 123
    .local v1, authenticatorTypes:[Landroid/accounts/AuthenticatorDescription;
    const/4 v4, 0x0

    .local v4, i:I
    array-length v0, v1

    .local v0, N:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 124
    aget-object v2, v1, v4

    .line 125
    .local v2, desc:Landroid/accounts/AuthenticatorDescription;
    iget-object v5, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 127
    :try_start_0
    iget-object v5, v2, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    iget v6, v2, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 136
    .end local v2           #desc:Landroid/accounts/AuthenticatorDescription;
    :goto_1
    return-object v5

    .line 128
    .restart local v2       #desc:Landroid/accounts/AuthenticatorDescription;
    :catch_0
    move-exception v3

    .line 129
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    goto :goto_1

    .line 130
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 131
    .local v3, e:Landroid/content/res/Resources$NotFoundException;
    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    goto :goto_1

    .line 123
    .end local v3           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 136
    .end local v2           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_1
    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public finish()V
    .locals 4

    .prologue
    .line 188
    invoke-virtual {p0}, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 189
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "response"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountAuthenticatorResponse;

    .line 190
    .local v1, response:Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v1, :cond_0

    .line 192
    iget-object v2, p0, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->mResultBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 193
    iget-object v2, p0, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->mResultBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 198
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 199
    return-void

    .line 195
    :cond_1
    const/4 v2, 0x4

    const-string v3, "canceled"

    invoke-virtual {v1, v2, v3}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 176
    :goto_0
    invoke-virtual {p0}, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->finish()V

    .line 177
    return-void

    .line 164
    :pswitch_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    iget v4, p0, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->mUid:I

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/accounts/AccountManager;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    .line 165
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 166
    .local v0, result:Landroid/content/Intent;
    const-string v1, "retry"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->setResult(ILandroid/content/Intent;)V

    .line 168
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V

    goto :goto_0

    .line 172
    .end local v0           #result:Landroid/content/Intent;
    :pswitch_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    iget v4, p0, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->mUid:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/accounts/AccountManager;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    .line 173
    invoke-virtual {p0, v5}, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->setResult(I)V

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x60b0101
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 27
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v23, 0x6030079

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->setContentView(I)V

    .line 50
    invoke-virtual/range {p0 .. p0}, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x607008e

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 51
    .local v12, backgroundColor:I
    invoke-virtual/range {p0 .. p0}, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object v23

    new-instance v24, Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v0, v24

    invoke-direct {v0, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    .line 54
    .local v14, extras:Landroid/os/Bundle;
    if-nez v14, :cond_0

    .line 56
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->setResult(I)V

    .line 57
    invoke-virtual/range {p0 .. p0}, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->finish()V

    .line 118
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string v23, "account"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v23

    check-cast v23, Landroid/accounts/Account;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    .line 63
    const-string v23, "authTokenType"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    .line 64
    const-string v23, "uid"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->mUid:I

    .line 65
    invoke-virtual/range {p0 .. p0}, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 66
    .local v22, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->mUid:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v20

    .line 68
    .local v20, packages:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    if-nez v20, :cond_2

    .line 70
    :cond_1
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->setResult(I)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->finish()V

    goto :goto_0

    .line 77
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->getAccountLabel(Landroid/accounts/Account;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 85
    .local v7, accountTypeLabel:Ljava/lang/String;
    const v23, 0x60b0101

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v23, 0x60b0102

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v23, 0x60b0106

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 88
    .local v15, header:Landroid/widget/TextView;
    const/16 v23, 0x0

    const v24, 0x6020351

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 90
    const v23, 0x60b0100

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 91
    .local v8, accountView:Landroid/view/View;
    const v23, 0x60b0103

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 92
    .local v4, accountIcon:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->getAccountIcon(Landroid/accounts/Account;)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    const v23, 0x60b0104

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 94
    .local v5, accountLabelView:Landroid/widget/TextView;
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const v23, 0x60b0105

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 96
    .local v6, accountNameView:Landroid/widget/TextView;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    .local v19, packageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationItem;>;"
    move-object/from16 v11, v20

    .local v11, arr$:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v17, v0

    .local v17, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    aget-object v21, v11, v16

    .line 101
    .local v21, pkg:Ljava/lang/String;
    new-instance v10, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationItem;

    invoke-direct {v10}, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationItem;-><init>()V

    .line 103
    .local v10, applicationItem:Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationItem;
    const/16 v23, 0x0

    :try_start_1
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v10, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationItem;->mLabel:Ljava/lang/String;

    .line 104
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v10, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 105
    iget-object v0, v10, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationItem;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 106
    iget-object v0, v10, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationItem;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v10, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationItem;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    :cond_3
    :goto_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 78
    .end local v4           #accountIcon:Landroid/widget/ImageView;
    .end local v5           #accountLabelView:Landroid/widget/TextView;
    .end local v6           #accountNameView:Landroid/widget/TextView;
    .end local v7           #accountTypeLabel:Ljava/lang/String;
    .end local v8           #accountView:Landroid/view/View;
    .end local v10           #applicationItem:Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationItem;
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v15           #header:Landroid/widget/TextView;
    .end local v16           #i$:I
    .end local v17           #len$:I
    .end local v19           #packageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationItem;>;"
    .end local v21           #pkg:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 80
    .local v13, e:Ljava/lang/IllegalArgumentException;
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->setResult(I)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->finish()V

    goto/16 :goto_0

    .line 109
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    .restart local v4       #accountIcon:Landroid/widget/ImageView;
    .restart local v5       #accountLabelView:Landroid/widget/TextView;
    .restart local v6       #accountNameView:Landroid/widget/TextView;
    .restart local v7       #accountTypeLabel:Ljava/lang/String;
    .restart local v8       #accountView:Landroid/view/View;
    .restart local v10       #applicationItem:Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationItem;
    .restart local v11       #arr$:[Ljava/lang/String;
    .restart local v15       #header:Landroid/widget/TextView;
    .restart local v16       #i$:I
    .restart local v17       #len$:I
    .restart local v19       #packageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationItem;>;"
    .restart local v21       #pkg:Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 110
    .local v13, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, v21

    iput-object v0, v10, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationItem;->mLabel:Ljava/lang/String;

    goto :goto_2

    .line 115
    .end local v10           #applicationItem:Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationItem;
    .end local v13           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v21           #pkg:Ljava/lang/String;
    :cond_4
    const v23, 0x102000a

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ListView;

    .line 116
    .local v18, listView:Landroid/widget/ListView;
    new-instance v9, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationAdapter;

    const v23, 0x603007a

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v19

    invoke-direct {v9, v0, v1, v2}, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 117
    .local v9, adapter:Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationAdapter;
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0
.end method

.method public final setAccountAuthenticatorResult(Landroid/os/Bundle;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 180
    iput-object p1, p0, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;->mResultBundle:Landroid/os/Bundle;

    .line 181
    return-void
.end method
