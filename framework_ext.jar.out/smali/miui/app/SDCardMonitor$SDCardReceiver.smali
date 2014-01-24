.class Lmiui/app/SDCardMonitor$SDCardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SDCardMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/SDCardMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SDCardReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/SDCardMonitor;


# direct methods
.method private constructor <init>(Lmiui/app/SDCardMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lmiui/app/SDCardMonitor$SDCardReceiver;->this$0:Lmiui/app/SDCardMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/app/SDCardMonitor;Lmiui/app/SDCardMonitor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lmiui/app/SDCardMonitor$SDCardReceiver;-><init>(Lmiui/app/SDCardMonitor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 56
    invoke-static {p2}, Lmiui/os/Environment;->isExternalStorageStateChanged(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 64
    :cond_0
    return-void

    .line 57
    :cond_1
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v1

    .line 58
    .local v1, isMount:Z
    iget-object v3, p0, Lmiui/app/SDCardMonitor$SDCardReceiver;->this$0:Lmiui/app/SDCardMonitor;

    #getter for: Lmiui/app/SDCardMonitor;->mIsMount:Ljava/lang/Boolean;
    invoke-static {v3}, Lmiui/app/SDCardMonitor;->access$100(Lmiui/app/SDCardMonitor;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmiui/app/SDCardMonitor$SDCardReceiver;->this$0:Lmiui/app/SDCardMonitor;

    #getter for: Lmiui/app/SDCardMonitor;->mIsMount:Ljava/lang/Boolean;
    invoke-static {v3}, Lmiui/app/SDCardMonitor;->access$100(Lmiui/app/SDCardMonitor;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v3, v1, :cond_0

    .line 59
    :cond_2
    iget-object v3, p0, Lmiui/app/SDCardMonitor$SDCardReceiver;->this$0:Lmiui/app/SDCardMonitor;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    #setter for: Lmiui/app/SDCardMonitor;->mIsMount:Ljava/lang/Boolean;
    invoke-static {v3, v4}, Lmiui/app/SDCardMonitor;->access$102(Lmiui/app/SDCardMonitor;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 60
    iget-object v3, p0, Lmiui/app/SDCardMonitor$SDCardReceiver;->this$0:Lmiui/app/SDCardMonitor;

    #getter for: Lmiui/app/SDCardMonitor;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lmiui/app/SDCardMonitor;->access$200(Lmiui/app/SDCardMonitor;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/SDCardMonitor$SDCardStatusListener;

    .line 61
    .local v2, listener:Lmiui/app/SDCardMonitor$SDCardStatusListener;
    iget-object v3, p0, Lmiui/app/SDCardMonitor$SDCardReceiver;->this$0:Lmiui/app/SDCardMonitor;

    #getter for: Lmiui/app/SDCardMonitor;->mIsMount:Ljava/lang/Boolean;
    invoke-static {v3}, Lmiui/app/SDCardMonitor;->access$100(Lmiui/app/SDCardMonitor;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v3}, Lmiui/app/SDCardMonitor$SDCardStatusListener;->onStatusChanged(Z)V

    goto :goto_0
.end method
