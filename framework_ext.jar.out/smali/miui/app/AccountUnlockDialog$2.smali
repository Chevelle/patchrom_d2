.class Lmiui/app/AccountUnlockDialog$2;
.super Ljava/lang/Object;
.source "AccountUnlockDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 119
    iput-object p1, p0, Lmiui/app/AccountUnlockDialog$2;->this$0:Lmiui/app/AccountUnlockDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lmiui/app/AccountUnlockDialog$2;->this$0:Lmiui/app/AccountUnlockDialog;

    iget-object v0, p0, Lmiui/app/AccountUnlockDialog$2;->this$0:Lmiui/app/AccountUnlockDialog;

    #getter for: Lmiui/app/AccountUnlockDialog;->mAccounts:Ljava/util/ArrayList;
    invoke-static {v0}, Lmiui/app/AccountUnlockDialog;->access$000(Lmiui/app/AccountUnlockDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    #setter for: Lmiui/app/AccountUnlockDialog;->mCurAccount:Landroid/accounts/Account;
    invoke-static {v1, v0}, Lmiui/app/AccountUnlockDialog;->access$402(Lmiui/app/AccountUnlockDialog;Landroid/accounts/Account;)Landroid/accounts/Account;

    .line 124
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog$2;->this$0:Lmiui/app/AccountUnlockDialog;

    const/4 v1, 0x0

    #setter for: Lmiui/app/AccountUnlockDialog;->mCurAccount:Landroid/accounts/Account;
    invoke-static {v0, v1}, Lmiui/app/AccountUnlockDialog;->access$402(Lmiui/app/AccountUnlockDialog;Landroid/accounts/Account;)Landroid/accounts/Account;

    .line 128
    return-void
.end method
