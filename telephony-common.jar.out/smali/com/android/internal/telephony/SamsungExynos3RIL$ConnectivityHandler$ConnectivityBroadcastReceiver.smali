.class Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler$ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SamsungExynos3RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 977
    iput-object p1, p0, Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler$ConnectivityBroadcastReceiver;->this$1:Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;Lcom/android/internal/telephony/SamsungExynos3RIL$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 977
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler$ConnectivityBroadcastReceiver;-><init>(Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 981
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 982
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 983
    const-string v2, "RILJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceived() called with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :cond_0
    :goto_0
    return-void

    .line 986
    :cond_1
    const-string v2, "noConnectivity"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 989
    .local v1, noConnectivity:Z
    if-eqz v1, :cond_0

    .line 991
    const-string v2, "RILJ"

    const-string v3, "Mobile Dataconnection is now down setting preferred NetworkType"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iget-object v2, p0, Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler$ConnectivityBroadcastReceiver;->this$1:Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;

    #calls: Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;->stopListening()V
    invoke-static {v2}, Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;->access$100(Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;)V

    .line 993
    iget-object v2, p0, Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler$ConnectivityBroadcastReceiver;->this$1:Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;->this$0:Lcom/android/internal/telephony/SamsungExynos3RIL;

    iget-object v3, p0, Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler$ConnectivityBroadcastReceiver;->this$1:Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;

    #getter for: Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;->mDesiredNetworkType:I
    invoke-static {v3}, Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;->access$200(Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler$ConnectivityBroadcastReceiver;->this$1:Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/SamsungExynos3RIL;->sendPreferedNetworktype(ILandroid/os/Message;)V
    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/SamsungExynos3RIL;->access$300(Lcom/android/internal/telephony/SamsungExynos3RIL;ILandroid/os/Message;)V

    .line 994
    iget-object v2, p0, Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler$ConnectivityBroadcastReceiver;->this$1:Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;

    const/4 v3, -0x1

    #setter for: Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;->mDesiredNetworkType:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;->access$202(Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;I)I

    goto :goto_0
.end method
