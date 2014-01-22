.class Lcom/android/bluetooth/hfp/HeadsetDeviceState;
.super Ljava/lang/Object;
.source "HeadsetPhoneState.java"


# instance fields
.field mBatteryCharge:I

.field mRoam:I

.field mService:I

.field mSignal:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0
    .parameter "service"
    .parameter "roam"
    .parameter "signal"
    .parameter "batteryCharge"

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetDeviceState;->mService:I

    .line 279
    iput p2, p0, Lcom/android/bluetooth/hfp/HeadsetDeviceState;->mRoam:I

    .line 280
    iput p3, p0, Lcom/android/bluetooth/hfp/HeadsetDeviceState;->mSignal:I

    .line 281
    iput p4, p0, Lcom/android/bluetooth/hfp/HeadsetDeviceState;->mBatteryCharge:I

    .line 282
    return-void
.end method
