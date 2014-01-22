.class Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver$1;
.super Landroid/os/Handler;
.source "BluetoothMnsSmsMms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MmsSmsContentObserver.Hanlder"


# instance fields
.field final synthetic this$1:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver$1;->this$1:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 160
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MmsSmsContentObserver.Hanlder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mas Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver$1;->this$1:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;

    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->this$0:Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    iget v2, v2, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mMasId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 171
    :goto_0
    return-void

    .line 163
    :pswitch_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver$1$1;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver$1$1;-><init>(Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver$1;)V

    const-string v2, "MmsSms Content Observer Thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
