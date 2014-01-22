.class Lcom/android/bluetooth/hfp/HeadsetCallState;
.super Ljava/lang/Object;
.source "HeadsetPhoneState.java"


# instance fields
.field mCallState:I

.field mNumActive:I

.field mNumHeld:I

.field mNumber:Ljava/lang/String;

.field mType:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;I)V
    .locals 0
    .parameter "numActive"
    .parameter "numHeld"
    .parameter "callState"
    .parameter "number"
    .parameter "type"

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumActive:I

    .line 294
    iput p2, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumHeld:I

    .line 295
    iput p3, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mCallState:I

    .line 296
    iput-object p4, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumber:Ljava/lang/String;

    .line 297
    iput p5, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mType:I

    .line 298
    return-void
.end method
