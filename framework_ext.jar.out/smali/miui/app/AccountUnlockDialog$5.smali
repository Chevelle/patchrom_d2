.class Lmiui/app/AccountUnlockDialog$5;
.super Ljava/lang/Object;
.source "AccountUnlockDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/AccountUnlockDialog;->postOnCheckPasswordResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/AccountUnlockDialog;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lmiui/app/AccountUnlockDialog;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lmiui/app/AccountUnlockDialog$5;->this$0:Lmiui/app/AccountUnlockDialog;

    iput-boolean p2, p0, Lmiui/app/AccountUnlockDialog$5;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 244
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog$5;->this$0:Lmiui/app/AccountUnlockDialog;

    #calls: Lmiui/app/AccountUnlockDialog;->getProgressDialog()Landroid/app/Dialog;
    invoke-static {v0}, Lmiui/app/AccountUnlockDialog;->access$700(Lmiui/app/AccountUnlockDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 245
    iget-boolean v0, p0, Lmiui/app/AccountUnlockDialog$5;->val$success:Z

    if-eqz v0, :cond_4

    .line 246
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog$5;->this$0:Lmiui/app/AccountUnlockDialog;

    #getter for: Lmiui/app/AccountUnlockDialog;->mDisableKey:Ljava/lang/String;
    invoke-static {v0}, Lmiui/app/AccountUnlockDialog;->access$800(Lmiui/app/AccountUnlockDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog$5;->this$0:Lmiui/app/AccountUnlockDialog;

    #getter for: Lmiui/app/AccountUnlockDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiui/app/AccountUnlockDialog;->access$200(Lmiui/app/AccountUnlockDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/AccountUnlockDialog$5;->this$0:Lmiui/app/AccountUnlockDialog;

    #getter for: Lmiui/app/AccountUnlockDialog;->mDisableKey:Ljava/lang/String;
    invoke-static {v1}, Lmiui/app/AccountUnlockDialog;->access$800(Lmiui/app/AccountUnlockDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 250
    :cond_0
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog$5;->this$0:Lmiui/app/AccountUnlockDialog;

    #getter for: Lmiui/app/AccountUnlockDialog;->mAlert:Landroid/app/AlertDialog;
    invoke-static {v0}, Lmiui/app/AccountUnlockDialog;->access$900(Lmiui/app/AccountUnlockDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 251
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog$5;->this$0:Lmiui/app/AccountUnlockDialog;

    #getter for: Lmiui/app/AccountUnlockDialog;->mUtils:Lmiui/security/MiuiLockPatternUtils;
    invoke-static {v0}, Lmiui/app/AccountUnlockDialog;->access$1000(Lmiui/app/AccountUnlockDialog;)Lmiui/security/MiuiLockPatternUtils;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog$5;->this$0:Lmiui/app/AccountUnlockDialog;

    #getter for: Lmiui/app/AccountUnlockDialog;->mUtils:Lmiui/security/MiuiLockPatternUtils;
    invoke-static {v0}, Lmiui/app/AccountUnlockDialog;->access$1000(Lmiui/app/AccountUnlockDialog;)Lmiui/security/MiuiLockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiui/security/MiuiLockPatternUtils;->saveMiuiLockPattern(Ljava/util/List;)V

    .line 253
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog$5;->this$0:Lmiui/app/AccountUnlockDialog;

    #getter for: Lmiui/app/AccountUnlockDialog;->mUtils:Lmiui/security/MiuiLockPatternUtils;
    invoke-static {v0}, Lmiui/app/AccountUnlockDialog;->access$1000(Lmiui/app/AccountUnlockDialog;)Lmiui/security/MiuiLockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/security/MiuiLockPatternUtils;->clearLockoutAttemptDeadline()V

    .line 255
    :cond_1
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog$5;->this$0:Lmiui/app/AccountUnlockDialog;

    #getter for: Lmiui/app/AccountUnlockDialog;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lmiui/app/AccountUnlockDialog;->access$1100(Lmiui/app/AccountUnlockDialog;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/app/AccountUnlockDialog$5;->this$0:Lmiui/app/AccountUnlockDialog;

    #getter for: Lmiui/app/AccountUnlockDialog;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lmiui/app/AccountUnlockDialog;->access$1100(Lmiui/app/AccountUnlockDialog;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 256
    :cond_2
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog$5;->this$0:Lmiui/app/AccountUnlockDialog;

    #getter for: Lmiui/app/AccountUnlockDialog;->mIntentOnSuccess:Landroid/content/Intent;
    invoke-static {v0}, Lmiui/app/AccountUnlockDialog;->access$1200(Lmiui/app/AccountUnlockDialog;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiui/app/AccountUnlockDialog$5;->this$0:Lmiui/app/AccountUnlockDialog;

    #getter for: Lmiui/app/AccountUnlockDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiui/app/AccountUnlockDialog;->access$200(Lmiui/app/AccountUnlockDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/AccountUnlockDialog$5;->this$0:Lmiui/app/AccountUnlockDialog;

    #getter for: Lmiui/app/AccountUnlockDialog;->mIntentOnSuccess:Landroid/content/Intent;
    invoke-static {v1}, Lmiui/app/AccountUnlockDialog;->access$1200(Lmiui/app/AccountUnlockDialog;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 263
    :cond_3
    :goto_0
    return-void

    .line 258
    :cond_4
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog$5;->this$0:Lmiui/app/AccountUnlockDialog;

    #getter for: Lmiui/app/AccountUnlockDialog;->mPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lmiui/app/AccountUnlockDialog;->access$1300(Lmiui/app/AccountUnlockDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog$5;->this$0:Lmiui/app/AccountUnlockDialog;

    #getter for: Lmiui/app/AccountUnlockDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiui/app/AccountUnlockDialog;->access$200(Lmiui/app/AccountUnlockDialog;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x60c018c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
