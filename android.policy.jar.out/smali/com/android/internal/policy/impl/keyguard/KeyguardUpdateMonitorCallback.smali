.class Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorCallback.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onBootCompleted()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method onDevicePolicyManagerStateChanged()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method onKeyguardVisibilityChanged(Z)V
    .locals 0
    .parameter "showing"

    .prologue
    .line 68
    return-void
.end method

.method onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 62
    return-void
.end method

.method onRefreshBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 33
    return-void
.end method

.method onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 47
    return-void
.end method

.method onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 54
    return-void
.end method

.method onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0
    .parameter "simState"

    .prologue
    .line 96
    return-void
.end method

.method onTimeChanged()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method onUserRemoved(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 101
    return-void
.end method

.method onUserSwitched(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 90
    return-void
.end method
