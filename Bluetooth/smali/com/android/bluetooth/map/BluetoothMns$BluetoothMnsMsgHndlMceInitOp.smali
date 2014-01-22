.class public Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;
.super Ljava/lang/Object;
.source "BluetoothMns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BluetoothMnsMsgHndlMceInitOp"
.end annotation


# instance fields
.field public msgHandle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMns;

.field time:Landroid/text/format/Time;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMns;)V
    .locals 0
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMns$BluetoothMnsMsgHndlMceInitOp;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
