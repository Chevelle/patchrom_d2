.class Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$2;
.super Ljava/lang/Object;
.source "KeyguardAbsKeyInputView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mQuickUnlock:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, entry:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    .line 135
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 138
    .end local v0           #entry:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 124
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 121
    return-void
.end method
