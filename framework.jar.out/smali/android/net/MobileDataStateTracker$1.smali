.class Landroid/net/MobileDataStateTracker$1;
.super Landroid/telephony/PhoneStateListener;
.source "MobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MobileDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/MobileDataStateTracker;


# direct methods
.method constructor <init>(Landroid/net/MobileDataStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Landroid/net/MobileDataStateTracker$1;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "signalStrength"

    .prologue
    .line 137
    iget-object v0, p0, Landroid/net/MobileDataStateTracker$1;->this$0:Landroid/net/MobileDataStateTracker;

    #setter for: Landroid/net/MobileDataStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;
    invoke-static {v0, p1}, Landroid/net/MobileDataStateTracker;->access$102(Landroid/net/MobileDataStateTracker;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 138
    return-void
.end method
