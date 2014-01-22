.class Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver$1$1;
.super Ljava/lang/Object;
.source "BluetoothMnsEmail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver$1;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver$1;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver$1$1;->this$2:Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver$1$1;->this$2:Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver$1;

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver$1;->this$1:Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->updateEmailBox()V

    .line 179
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver$1$1;->this$2:Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver$1;

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver$1;->this$1:Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->update(Z)V

    .line 180
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver$1$1;->this$2:Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver$1;

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver$1;->this$1:Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;

    #calls: Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->sendEvents()V
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->access$100(Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;)V

    .line 181
    return-void
.end method
