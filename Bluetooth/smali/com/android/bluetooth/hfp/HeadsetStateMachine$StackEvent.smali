.class Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;
.super Ljava/lang/Object;
.source "HeadsetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StackEvent"
.end annotation


# instance fields
.field device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

.field type:I

.field valueInt:I

.field valueInt2:I

.field valueString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V
    .locals 2
    .parameter
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2040
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2034
    iput v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->type:I

    .line 2035
    iput v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    .line 2036
    iput v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt2:I

    .line 2037
    iput-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueString:Ljava/lang/String;

    .line 2038
    iput-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 2041
    iput p2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->type:I

    .line 2042
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2033
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    return-void
.end method
