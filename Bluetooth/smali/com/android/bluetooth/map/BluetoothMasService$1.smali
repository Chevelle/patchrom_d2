.class Lcom/android/bluetooth/map/BluetoothMasService$1;
.super Landroid/database/ContentObserver;
.source "BluetoothMasService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMasService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMasService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMasService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMasService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    #calls: Lcom/android/bluetooth/map/BluetoothMasService;->updateEmailAccount()V
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMasService;->access$000(Lcom/android/bluetooth/map/BluetoothMasService;)V

    .line 238
    return-void
.end method
