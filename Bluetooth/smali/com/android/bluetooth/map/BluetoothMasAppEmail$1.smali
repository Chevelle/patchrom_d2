.class Lcom/android/bluetooth/map/BluetoothMasAppEmail$1;
.super Landroid/database/ContentObserver;
.source "BluetoothMasAppEmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMasAppEmail;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/bluetooth/map/BluetoothMns;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMasAppEmail;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMasAppEmail;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail$1;->this$0:Lcom/android/bluetooth/map/BluetoothMasAppEmail;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 97
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail$1;->this$0:Lcom/android/bluetooth/map/BluetoothMasAppEmail;

    iget v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mMasId:I

    invoke-static {v2}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getAccountId(I)J

    move-result-wide v0

    .line 98
    .local v0, id:J
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail$1;->this$0:Lcom/android/bluetooth/map/BluetoothMasAppEmail;

    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->hasEmailAccount(Landroid/content/Context;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail$1;->this$0:Lcom/android/bluetooth/map/BluetoothMasAppEmail;

    #calls: Lcom/android/bluetooth/map/BluetoothMasAppEmail;->disconnect()V
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->access$000(Lcom/android/bluetooth/map/BluetoothMasAppEmail;)V

    .line 103
    :cond_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 104
    return-void
.end method
