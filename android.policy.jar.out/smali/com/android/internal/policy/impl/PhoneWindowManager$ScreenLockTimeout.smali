.class Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenLockTimeout"
.end annotation


# instance fields
.field options:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 4897
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4902
    monitor-enter p0

    .line 4904
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    if-eqz v0, :cond_0

    .line 4905
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;->options:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->doKeyguardTimeout(Landroid/os/Bundle;)V

    .line 4907
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 4908
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;->options:Landroid/os/Bundle;

    .line 4909
    monitor-exit p0

    .line 4910
    return-void

    .line 4909
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLockOptions(Landroid/os/Bundle;)V
    .locals 0
    .parameter "options"

    .prologue
    .line 4913
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;->options:Landroid/os/Bundle;

    .line 4914
    return-void
.end method
