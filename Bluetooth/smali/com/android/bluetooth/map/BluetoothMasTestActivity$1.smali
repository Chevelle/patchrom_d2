.class Lcom/android/bluetooth/map/BluetoothMasTestActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothMasTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMasTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMasTestActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMasTestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity$1;->this$0:Lcom/android/bluetooth/map/BluetoothMasTestActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 103
    const-string v0, "com.android.bluetooth.map.userconfirmtimeout"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity$1;->this$0:Lcom/android/bluetooth/map/BluetoothMasTestActivity;

    #calls: Lcom/android/bluetooth/map/BluetoothMasTestActivity;->onTimeout()V
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->access$000(Lcom/android/bluetooth/map/BluetoothMasTestActivity;)V

    goto :goto_0
.end method
