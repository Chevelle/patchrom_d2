.class Lcom/android/internal/policy/impl/GlobalActions$14;
.super Landroid/content/BroadcastReceiver;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0
    .parameter

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$14;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$14;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/GlobalActions;->mUiContext:Landroid/content/Context;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1802(Lcom/android/internal/policy/impl/GlobalActions;Landroid/content/Context;)Landroid/content/Context;

    .line 1148
    return-void
.end method
