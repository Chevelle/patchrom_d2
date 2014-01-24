.class Lmiui/msim/telephony/SingleSimMiuiTelephonyManager;
.super Ljava/lang/Object;
.source "SingleSimMiuiTelephonyManager.java"

# interfaces
.implements Lmiui/msim/telephony/IMiuiTelephonyManager;


# static fields
.field private static final SIM_COUNT:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lmiui/msim/telephony/SingleSimMiuiTelephonyManager;->mContext:Landroid/content/Context;

    .line 28
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lmiui/msim/telephony/SingleSimMiuiTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 30
    return-void
.end method


# virtual methods
.method public addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJI)Landroid/net/Uri;
    .locals 1
    .parameter "resolver"
    .parameter "uri"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "deliveryReport"
    .parameter "threadId"
    .parameter "simId"

    .prologue
    .line 177
    invoke-static/range {p1 .. p10}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public blockingGetDeviceId(I)Ljava/lang/String;
    .locals 1
    .parameter "simIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .prologue
    .line 74
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 75
    :cond_0
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmiui/msim/telephony/SingleSimMiuiTelephonyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/telephony/ExtraTelephonyManager;->blockingGetDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public blockingGetSimId(I)Ljava/lang/String;
    .locals 1
    .parameter "simIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .prologue
    .line 83
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 84
    :cond_0
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmiui/msim/telephony/SingleSimMiuiTelephonyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/telephony/ExtraTelephonyManager;->blockingGetSimId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCallState(I)I
    .locals 1
    .parameter "simIndex"

    .prologue
    .line 133
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 134
    :cond_0
    const/4 v0, 0x0

    .line 136
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lmiui/msim/telephony/SingleSimMiuiTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    goto :goto_0
.end method

.method public getDataState(I)I
    .locals 1
    .parameter "simIndex"

    .prologue
    .line 125
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 126
    :cond_0
    const/4 v0, -0x1

    .line 128
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lmiui/msim/telephony/SingleSimMiuiTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    goto :goto_0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 1
    .parameter "simIndex"

    .prologue
    .line 57
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 58
    :cond_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmiui/msim/telephony/SingleSimMiuiTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 1
    .parameter "simIndex"

    .prologue
    .line 48
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 49
    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmiui/msim/telephony/SingleSimMiuiTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getScAddress(I)Ljava/lang/String;
    .locals 1
    .parameter "simIndex"

    .prologue
    .line 157
    const-string v0, ""

    return-object v0
.end method

.method public getSimCount()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public getSimDisplayName(I)Ljava/lang/String;
    .locals 1
    .parameter "simIndex"

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimIconRes(I)I
    .locals 1
    .parameter "simIndex"

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public getSimId(I)Ljava/lang/String;
    .locals 1
    .parameter "simIndex"

    .prologue
    .line 92
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 93
    :cond_0
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmiui/msim/telephony/SingleSimMiuiTelephonyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/telephony/ExtraTelephonyManager;->getSimId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimIndexByIntent(Landroid/content/Intent;)I
    .locals 1
    .parameter "intent"

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 1
    .parameter "simIndex"

    .prologue
    .line 39
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmiui/msim/telephony/SingleSimMiuiTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimState(I)I
    .locals 1
    .parameter "simIndex"

    .prologue
    const/4 v0, 0x1

    .line 65
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lmiui/msim/telephony/SingleSimMiuiTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    goto :goto_0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 1
    .parameter "simIndex"

    .prologue
    .line 167
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 168
    :cond_0
    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmiui/msim/telephony/SingleSimMiuiTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isNetworkRoaming(I)Z
    .locals 1
    .parameter "simIndex"

    .prologue
    .line 149
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 150
    :cond_0
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lmiui/msim/telephony/SingleSimMiuiTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    goto :goto_0
.end method

.method public isSimInserted(I)Z
    .locals 3
    .parameter "simIndex"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_2

    :cond_0
    move v0, v1

    .line 104
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0, p1}, Lmiui/msim/telephony/SingleSimMiuiTelephonyManager;->getSimId(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;II)V
    .locals 1
    .parameter "listener"
    .parameter "events"
    .parameter "simIndex"

    .prologue
    .line 141
    if-ltz p3, :cond_0

    const/4 v0, 0x1

    if-lt p3, v0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lmiui/msim/telephony/SingleSimMiuiTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method public setScAddress(Ljava/lang/String;I)Z
    .locals 1
    .parameter "scNumber"
    .parameter "simIndex"

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method
