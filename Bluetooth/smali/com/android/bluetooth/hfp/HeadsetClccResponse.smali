.class Lcom/android/bluetooth/hfp/HeadsetClccResponse;
.super Ljava/lang/Object;
.source "HeadsetPhoneState.java"


# instance fields
.field mDirection:I

.field mIndex:I

.field mMode:I

.field mMpty:Z

.field mNumber:Ljava/lang/String;

.field mStatus:I

.field mType:I


# direct methods
.method public constructor <init>(IIIIZLjava/lang/String;I)V
    .locals 0
    .parameter "index"
    .parameter "direction"
    .parameter "status"
    .parameter "mode"
    .parameter "mpty"
    .parameter "number"
    .parameter "type"

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mIndex:I

    .line 313
    iput p2, p0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mDirection:I

    .line 314
    iput p3, p0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mStatus:I

    .line 315
    iput p4, p0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mMode:I

    .line 316
    iput-boolean p5, p0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mMpty:Z

    .line 317
    iput-object p6, p0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mNumber:Ljava/lang/String;

    .line 318
    iput p7, p0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mType:I

    .line 319
    return-void
.end method
