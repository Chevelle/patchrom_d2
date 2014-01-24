.class public Lmiui/msim/telephony/SingleSimMiuiSimManager;
.super Ljava/lang/Object;
.source "SingleSimMiuiSimManager.java"

# interfaces
.implements Lmiui/msim/telephony/IMiuiSimManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lmiui/msim/telephony/SingleSimMiuiSimManager;->mContext:Landroid/content/Context;

    .line 12
    return-void
.end method


# virtual methods
.method public getInsertedSimCount()I
    .locals 2

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, result:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    const/4 v0, 0x1

    .line 25
    :cond_0
    return v0
.end method

.method public getInsertedSlotId()I
    .locals 2

    .prologue
    .line 30
    const/4 v0, -0x1

    .line 31
    .local v0, result:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 34
    :cond_0
    return v0
.end method

.method public getSimIdBySlotId(I)I
    .locals 1
    .parameter "slotId"

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public getSlotIdBySimId(I)I
    .locals 1
    .parameter "simId"

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public isMSim()Z
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public registerChangeListener(Lmiui/msim/telephony/IMiuiSimChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 49
    return-void
.end method

.method public unregisterChangeListener(Lmiui/msim/telephony/IMiuiSimChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 53
    return-void
.end method
