.class Landroid/bluetooth/BluetoothDun$2;
.super Ljava/lang/Object;
.source "BluetoothDun.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothDun;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDun;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Landroid/bluetooth/BluetoothDun$2;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 262
    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$2;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothDun$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothDun;

    move-result-object v1

    #setter for: Landroid/bluetooth/BluetoothDun;->mDunService:Landroid/bluetooth/IBluetoothDun;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothDun;->access$002(Landroid/bluetooth/BluetoothDun;Landroid/bluetooth/IBluetoothDun;)Landroid/bluetooth/IBluetoothDun;

    .line 264
    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$2;->this$0:Landroid/bluetooth/BluetoothDun;

    #getter for: Landroid/bluetooth/BluetoothDun;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDun;->access$300(Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$2;->this$0:Landroid/bluetooth/BluetoothDun;

    #getter for: Landroid/bluetooth/BluetoothDun;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDun;->access$300(Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0x15

    iget-object v2, p0, Landroid/bluetooth/BluetoothDun$2;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 268
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 271
    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$2;->this$0:Landroid/bluetooth/BluetoothDun;

    const/4 v1, 0x0

    #setter for: Landroid/bluetooth/BluetoothDun;->mDunService:Landroid/bluetooth/IBluetoothDun;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothDun;->access$002(Landroid/bluetooth/BluetoothDun;Landroid/bluetooth/IBluetoothDun;)Landroid/bluetooth/IBluetoothDun;

    .line 272
    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$2;->this$0:Landroid/bluetooth/BluetoothDun;

    #getter for: Landroid/bluetooth/BluetoothDun;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDun;->access$300(Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$2;->this$0:Landroid/bluetooth/BluetoothDun;

    #getter for: Landroid/bluetooth/BluetoothDun;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDun;->access$300(Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0x15

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 275
    :cond_0
    return-void
.end method
