.class Lmiui/app/AccountUnlockDialog$1;
.super Landroid/widget/BaseAdapter;
.source "AccountUnlockDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/AccountUnlockDialog;-><init>(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/String;Lmiui/security/MiuiLockPatternUtils;Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/AccountUnlockDialog;


# direct methods
.method constructor <init>(Lmiui/app/AccountUnlockDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lmiui/app/AccountUnlockDialog$1;->this$0:Lmiui/app/AccountUnlockDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog$1;->this$0:Lmiui/app/AccountUnlockDialog;

    #getter for: Lmiui/app/AccountUnlockDialog;->mAccounts:Ljava/util/ArrayList;
    invoke-static {v0}, Lmiui/app/AccountUnlockDialog;->access$000(Lmiui/app/AccountUnlockDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 94
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 99
    const/4 v0, 0x0

    .line 101
    .local v0, holder:Lmiui/app/AccountUnlockDialog$ViewHolder;
    if-nez p2, :cond_0

    .line 102
    new-instance v0, Lmiui/app/AccountUnlockDialog$ViewHolder;

    .end local v0           #holder:Lmiui/app/AccountUnlockDialog$ViewHolder;
    iget-object v1, p0, Lmiui/app/AccountUnlockDialog$1;->this$0:Lmiui/app/AccountUnlockDialog;

    invoke-direct {v0, v1, v3}, Lmiui/app/AccountUnlockDialog$ViewHolder;-><init>(Lmiui/app/AccountUnlockDialog;Lmiui/app/AccountUnlockDialog$1;)V

    .line 103
    .restart local v0       #holder:Lmiui/app/AccountUnlockDialog$ViewHolder;
    iget-object v1, p0, Lmiui/app/AccountUnlockDialog$1;->this$0:Lmiui/app/AccountUnlockDialog;

    #getter for: Lmiui/app/AccountUnlockDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmiui/app/AccountUnlockDialog;->access$200(Lmiui/app/AccountUnlockDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x6030010

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 104
    const/high16 v1, 0x60b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lmiui/app/AccountUnlockDialog$ViewHolder;->mAccountIcon:Landroid/widget/ImageView;

    .line 105
    const v1, 0x60b0001

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lmiui/app/AccountUnlockDialog$ViewHolder;->mAccountId:Landroid/widget/TextView;

    .line 106
    iget-object v1, v0, Lmiui/app/AccountUnlockDialog$ViewHolder;->mAccountId:Landroid/widget/TextView;

    iget-object v2, p0, Lmiui/app/AccountUnlockDialog$1;->this$0:Lmiui/app/AccountUnlockDialog;

    #getter for: Lmiui/app/AccountUnlockDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lmiui/app/AccountUnlockDialog;->access$200(Lmiui/app/AccountUnlockDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x607002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 112
    :goto_0
    iget-object v1, v0, Lmiui/app/AccountUnlockDialog$ViewHolder;->mAccountIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lmiui/app/AccountUnlockDialog$1;->this$0:Lmiui/app/AccountUnlockDialog;

    #getter for: Lmiui/app/AccountUnlockDialog;->mXiaomiIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lmiui/app/AccountUnlockDialog;->access$300(Lmiui/app/AccountUnlockDialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v2, v0, Lmiui/app/AccountUnlockDialog$ViewHolder;->mAccountId:Landroid/widget/TextView;

    iget-object v1, p0, Lmiui/app/AccountUnlockDialog$1;->this$0:Lmiui/app/AccountUnlockDialog;

    #getter for: Lmiui/app/AccountUnlockDialog;->mAccounts:Ljava/util/ArrayList;
    invoke-static {v1}, Lmiui/app/AccountUnlockDialog;->access$000(Lmiui/app/AccountUnlockDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    return-object p2

    .line 109
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lmiui/app/AccountUnlockDialog$ViewHolder;
    check-cast v0, Lmiui/app/AccountUnlockDialog$ViewHolder;

    .restart local v0       #holder:Lmiui/app/AccountUnlockDialog$ViewHolder;
    goto :goto_0
.end method
