.class public Lcom/android/internal/telephony/SamsungQualcommRIL;
.super Lcom/android/internal/telephony/RIL;
.source "SamsungQualcommRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# static fields
.field static final RIL_REQUEST_DIAL_EMERGENCY:I = 0x2720

.field public static final SEND_SMS_TIMEOUT_IN_MS:J = 0x7530L


# instance fields
.field private dialCode:Z

.field private driverCall:Z

.field private driverCallU:Z

.field private googleEditionSS:Z

.field private isGSM:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mIsSendingSMS:Z

.field private mSMSLock:Ljava/lang/Object;

.field private oldRilState:Z

.field private samsungEmergency:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mSMSLock:Ljava/lang/Object;

    .line 65
    iput-boolean v1, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mIsSendingSMS:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->isGSM:Z

    .line 68
    const-string v0, "exynos4RadioState"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->oldRilState:Z

    .line 69
    const-string v0, "googleEditionSS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->googleEditionSS:Z

    .line 70
    const-string v0, "newDriverCall"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->driverCall:Z

    .line 71
    const-string v0, "newDriverCallU"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->driverCallU:Z

    .line 72
    const-string v0, "newDialCode"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->dialCode:Z

    .line 73
    const-string v0, "samsungEMSReq"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->samsungEmergency:Z

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mAudioManager:Landroid/media/AudioManager;

    .line 78
    const-string v0, "ro.ril.telephony.mqanelements"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mQANElements:I

    .line 79
    return-void
.end method

.method private handleNitzTimeReceived(Landroid/os/Parcel;)V
    .locals 13
    .parameter "p"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 682
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 687
    .local v2, nitz:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 689
    .local v4, nitzReceiveTime:J
    new-array v6, v11, [Ljava/lang/Object;

    .line 691
    .local v6, result:[Ljava/lang/Object;
    move-object v0, v2

    .line 692
    .local v0, fixedNitz:Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 693
    .local v3, nitzParts:[Ljava/lang/String;
    array-length v7, v3

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 695
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v3, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 698
    :cond_0
    aput-object v0, v6, v9

    .line 699
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    .line 701
    const-string v7, "telephony.test.ignore.nitz"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 704
    .local v1, ignoreNitz:Z
    if-eqz v1, :cond_1

    .line 705
    const-string v7, "ignoring UNSOL_NITZ_TIME_RECEIVED"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SamsungQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 715
    :goto_0
    return-void

    .line 707
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    if-eqz v7, :cond_2

    .line 708
    iget-object v7, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    new-instance v8, Landroid/os/AsyncResult;

    invoke-direct {v8, v12, v6, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 712
    :cond_2
    iput-object v6, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    goto :goto_0
.end method

.method private operatorCheck(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .parameter "p"

    .prologue
    .line 561
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    .line 562
    .local v1, response:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 563
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 564
    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/android/internal/telephony/Operators;->operatorReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 562
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 567
    :cond_1
    return-object v1
.end method

.method private responseVoiceDataRegistrationState(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .parameter "p"

    .prologue
    .line 572
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v2, v3

    check-cast v2, [Ljava/lang/String;

    .line 573
    .local v2, response:[Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->isGSM:Z

    if-eqz v3, :cond_1

    .line 590
    :cond_0
    return-object v2

    .line 576
    :cond_1
    array-length v3, v2

    const/16 v4, 0xa

    if-lt v3, v4, :cond_0

    .line 577
    const/4 v1, 0x6

    .local v1, i:I
    :goto_0
    const/16 v3, 0x9

    if-gt v1, v3, :cond_0

    .line 578
    aget-object v3, v2, v1

    if-nez v3, :cond_2

    .line 579
    const v3, 0x7fffffff

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 577
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 582
    :cond_2
    :try_start_0
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, e:Ljava/lang/NumberFormatException;
    aget-object v3, v2, v1

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    goto :goto_1
.end method

.method public static s([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "a"

    .prologue
    .line 595
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 597
    .local v1, result:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 598
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 599
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 597
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 601
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private setWbAmr(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 614
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 615
    const-string v0, "RILJ"

    const-string v1, "setWbAmr(): setting audio parameter - wb_amr=on"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "wide_voice_enable=true"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    if-nez p1, :cond_0

    .line 618
    const-string v0, "RILJ"

    const-string v1, "setWbAmr(): setting audio parameter - wb_amr=off"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "wide_voice_enable=false"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private smsLock()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 169
    iget-object v5, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mSMSLock:Ljava/lang/Object;

    monitor-enter v5

    .line 170
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x7530

    add-long v0, v6, v8

    .line 171
    .local v0, timeoutTime:J
    const-wide/16 v2, 0x7530

    .line 172
    .local v2, waitTimeLeft:J
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mIsSendingSMS:Z

    if-eqz v4, :cond_0

    cmp-long v4, v2, v10

    if-lez v4, :cond_0

    .line 173
    const-string v4, "RILJ"

    const-string v6, "sendSMS() waiting for response of previous SEND_SMS"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mSMSLock:Ljava/lang/Object;

    invoke-virtual {v4, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 179
    :goto_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v0, v6

    goto :goto_0

    .line 181
    :cond_0
    cmp-long v4, v2, v10

    if-gtz v4, :cond_1

    .line 182
    const-string v4, "RILJ"

    const-string v6, "sendSms() timed out waiting for response of previous CDMA_SEND_SMS"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mIsSendingSMS:Z

    .line 185
    monitor-exit v5

    .line 187
    return-void

    .line 185
    .end local v0           #timeoutTime:J
    .end local v2           #waitTimeLeft:J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 176
    .restart local v0       #timeoutTime:J
    .restart local v2       #waitTimeLeft:J
    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 5
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 732
    iget-boolean v1, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->samsungEmergency:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/internal/telephony/SamsungQualcommRIL;->dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V

    .line 760
    :goto_0
    return-void

    .line 736
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->dialCode:Z

    if-nez v1, :cond_1

    .line 737
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_0

    .line 740
    :cond_1
    const/16 v1, 0xa

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 742
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 743
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 744
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 745
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 748
    if-nez p3, :cond_2

    .line 749
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 757
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SamsungQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungQualcommRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto :goto_0

    .line 751
    :cond_2
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 752
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 753
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 754
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1
.end method

.method public dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 4
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 812
    const-string v1, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emergency dial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const/16 v1, 0x2720

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 815
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 816
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 817
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 819
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SamsungQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 821
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungQualcommRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 822
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 796
    iget v1, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mRilVersion:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 797
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->getImsRegistrationState(Landroid/os/Message;)V

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    if-eqz p1, :cond_0

    .line 800
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 802
    .local v0, ex:Lcom/android/internal/telephony/CommandException;
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 803
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method protected getRadioStateFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 4
    .parameter "stateInt"

    .prologue
    .line 233
    iget-boolean v1, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->oldRilState:Z

    if-nez v1, :cond_0

    .line 234
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioStateFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    .line 238
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 259
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_RadioState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .local v0, state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 241
    .end local v0           #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0       #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 245
    .end local v0           #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_3
    const-string v1, "RILJ"

    const-string v2, "SIM is PIN-unlocked now"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v1, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 256
    :cond_1
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0       #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V
    .locals 6
    .parameter "infoRec"

    .prologue
    const/16 v5, 0x403

    .line 660
    const/16 v0, 0x403

    .line 662
    .local v0, response:I
    iget-object v2, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    if-eqz v2, :cond_0

    .line 663
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    .line 664
    .local v1, sir:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->isPresent:Z

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signalType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->alertPitch:I

    if-nez v2, :cond_0

    iget v2, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signal:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 670
    const-string v2, "RILJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dropping \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v5, v1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" to prevent \"ring of death\" bug."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    .end local v1           #sir:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;
    :goto_0
    return-void

    .line 677
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V

    goto :goto_0
.end method

.method protected processSolicited(Landroid/os/Parcel;)Lcom/android/internal/telephony/RILRequest;
    .locals 10
    .parameter "p"

    .prologue
    const/4 v6, 0x0

    .line 337
    const/4 v1, 0x0

    .line 339
    .local v1, found:Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 340
    .local v4, serial:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 344
    .local v0, error:I
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SamsungQualcommRIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 346
    .local v3, rr:Lcom/android/internal/telephony/RILRequest;
    if-nez v3, :cond_1

    .line 347
    const-string v7, "RILJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected solicited response! sn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 555
    .end local v3           #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_0
    :goto_0
    return-object v3

    .line 352
    .restart local v3       #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_1
    const/4 v2, 0x0

    .line 354
    .local v2, ret:Ljava/lang/Object;
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v7

    if-lez v7, :cond_3

    .line 356
    :cond_2
    :try_start_0
    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v7, :pswitch_data_0

    .line 494
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized solicited response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :catch_0
    move-exception v5

    .line 499
    .local v5, tr:Ljava/lang/Throwable;
    const-string v7, "RILJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "< "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v9}, Lcom/android/internal/telephony/SamsungQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " exception, possible invalid RIL response"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_0

    .line 504
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v6, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 505
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 362
    .end local v5           #tr:Ljava/lang/Throwable;
    :pswitch_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 514
    .end local v2           #ret:Ljava/lang/Object;
    :cond_3
    :goto_1
    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v7, :pswitch_data_1

    .line 527
    :cond_4
    :goto_2
    :pswitch_1
    if-eqz v0, :cond_7

    .line 528
    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v6, :sswitch_data_0

    .line 544
    :cond_5
    :goto_3
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    goto :goto_0

    .line 363
    .restart local v2       #ret:Ljava/lang/Object;
    :pswitch_2
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 364
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 365
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 366
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 367
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 368
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 369
    :pswitch_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 370
    :pswitch_9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 371
    :pswitch_a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 372
    :pswitch_b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 373
    :pswitch_c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 374
    :pswitch_d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 376
    :pswitch_e
    iget-object v7, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 377
    iget-object v7, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v7, :cond_6

    .line 378
    const-string v7, "testing emergency call, notify ECM Registrants"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SamsungQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 379
    iget-object v7, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v7}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 382
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 383
    goto :goto_1

    .line 385
    :pswitch_f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 386
    :pswitch_10
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 387
    :pswitch_11
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 388
    :pswitch_12
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 389
    :pswitch_13
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 392
    :pswitch_14
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoiceDataRegistrationState(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 393
    :pswitch_15
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoiceDataRegistrationState(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 400
    :pswitch_16
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->operatorCheck(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 402
    :pswitch_17
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 403
    :pswitch_18
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 404
    :pswitch_19
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 405
    :pswitch_1a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 406
    :pswitch_1b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 407
    :pswitch_1c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 408
    :pswitch_1d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 409
    :pswitch_1e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 410
    :pswitch_1f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 411
    :pswitch_20
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 412
    :pswitch_21
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 413
    :pswitch_22
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 414
    :pswitch_23
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 415
    :pswitch_24
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 416
    :pswitch_25
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 417
    :pswitch_26
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 418
    :pswitch_27
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 419
    :pswitch_28
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 420
    :pswitch_29
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 421
    :pswitch_2a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 422
    :pswitch_2b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 423
    :pswitch_2c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 424
    :pswitch_2d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 425
    :pswitch_2e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 426
    :pswitch_2f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 427
    :pswitch_30
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 428
    :pswitch_31
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 429
    :pswitch_32
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 430
    :pswitch_33
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 431
    :pswitch_34
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 432
    :pswitch_35
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 433
    :pswitch_36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 434
    :pswitch_37
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 435
    :pswitch_38
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 436
    :pswitch_39
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 437
    :pswitch_3a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 438
    :pswitch_3b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 439
    :pswitch_3c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 440
    :pswitch_3d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 441
    :pswitch_3e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 442
    :pswitch_3f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 443
    :pswitch_40
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 444
    :pswitch_41
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 445
    :pswitch_42
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 446
    :pswitch_43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 447
    :pswitch_44
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 448
    :pswitch_45
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 449
    :pswitch_46
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 450
    :pswitch_47
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 451
    :pswitch_48
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 452
    :pswitch_49
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 453
    :pswitch_4a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 454
    :pswitch_4b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 455
    :pswitch_4c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 456
    :pswitch_4d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 457
    :pswitch_4e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 458
    :pswitch_4f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 459
    :pswitch_50
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 460
    :pswitch_51
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 461
    :pswitch_52
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 462
    :pswitch_53
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 463
    :pswitch_54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 464
    :pswitch_55
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 465
    :pswitch_56
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 466
    :pswitch_57
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 467
    :pswitch_58
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 468
    :pswitch_59
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 469
    :pswitch_5a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 470
    :pswitch_5b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 471
    :pswitch_5c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 472
    :pswitch_5d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 473
    :pswitch_5e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 474
    :pswitch_5f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 475
    :pswitch_60
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 476
    :pswitch_61
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 477
    :pswitch_62
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 478
    :pswitch_63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 479
    :pswitch_64
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 480
    :pswitch_65
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 481
    :pswitch_66
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 482
    :pswitch_67
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 483
    :pswitch_68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 484
    :pswitch_69
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 485
    :pswitch_6a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 486
    :pswitch_6b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 487
    :pswitch_6c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 488
    :pswitch_6d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseCellInfoList(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v2

    .local v2, ret:Ljava/util/ArrayList;
    goto/16 :goto_1

    .line 489
    .local v2, ret:Ljava/lang/Object;
    :pswitch_6e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 490
    :pswitch_6f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 491
    :pswitch_70
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 492
    :pswitch_71
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto/16 :goto_1

    .line 517
    .end local v2           #ret:Ljava/lang/Object;
    :pswitch_72
    iget-object v7, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v7, :cond_4

    .line 519
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ON enter sim puk fakeSimStatusChanged: reg count="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SamsungQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 522
    iget-object v7, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_2

    .line 534
    :sswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v6, :cond_5

    .line 536
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ON some errors fakeSimStatusChanged: reg count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7}, Landroid/os/RegistrantList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SamsungQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 539
    iget-object v6, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_3

    .line 547
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v8}, Lcom/android/internal/telephony/SamsungQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {p0, v8, v2}, Lcom/android/internal/telephony/SamsungQualcommRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SamsungQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 550
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_0

    .line 551
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v2, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 552
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_5e
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_65
        :pswitch_63
        :pswitch_64
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
    .end packed-switch

    .line 514
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_72
        :pswitch_1
        :pswitch_72
    .end packed-switch

    .line 528
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x2b -> :sswitch_0
    .end sparse-switch
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 9
    .parameter "p"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 283
    .local v1, dataPosition:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 285
    .local v3, response:I
    sparse-switch v3, :sswitch_data_0

    .line 324
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 327
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 331
    :goto_0
    return-void

    .line 288
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    .line 289
    .local v4, ret:Ljava/lang/Object;
    invoke-virtual {p0, v8, v7}, Lcom/android/internal/telephony/SamsungQualcommRIL;->setRadioPower(ZLandroid/os/Message;)V

    .line 290
    iget v5, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mPreferredNetworkType:I

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/SamsungQualcommRIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 291
    iget v5, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mCdmaSubscription:I

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/SamsungQualcommRIL;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    .line 292
    iget v5, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mRilVersion:I

    const/16 v6, 0x8

    if-lt v5, v6, :cond_0

    .line 293
    const v5, 0x7fffffff

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/SamsungQualcommRIL;->setCellInfoListRate(ILandroid/os/Message;)V

    .line 294
    :cond_0
    check-cast v4, [I

    .end local v4           #ret:Ljava/lang/Object;
    check-cast v4, [I

    aget v5, v4, v8

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SamsungQualcommRIL;->notifyRegistrantsRilConnectionChanged(I)V

    goto :goto_0

    .line 297
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->handleNitzTimeReceived(Landroid/os/Parcel;)V

    goto :goto_0

    .line 301
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4       #ret:Ljava/lang/Object;
    move-object v0, v4

    .line 302
    check-cast v0, Ljava/lang/String;

    .line 303
    .local v0, amString:Ljava/lang/String;
    const-string v5, "RILJ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Executing AM: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "am "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    :catch_0
    move-exception v2

    .line 308
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 309
    const-string v5, "RILJ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "am "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " could not be executed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 313
    .end local v0           #amString:Ljava/lang/String;
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #ret:Ljava/lang/Object;
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    .line 314
    .restart local v4       #ret:Ljava/lang/Object;
    goto/16 :goto_0

    .line 316
    .end local v4           #ret:Ljava/lang/Object;
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    .line 317
    .restart local v4       #ret:Ljava/lang/Object;
    goto/16 :goto_0

    .line 319
    .end local v4           #ret:Ljava/lang/Object;
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    .line 320
    .restart local v4       #ret:Ljava/lang/Object;
    check-cast v4, [I

    .end local v4           #ret:Ljava/lang/Object;
    check-cast v4, [I

    aget v5, v4, v8

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SamsungQualcommRIL;->setWbAmr(I)V

    goto/16 :goto_0

    .line 285
    :sswitch_data_0
    .sparse-switch
        0x3f0 -> :sswitch_1
        0x40a -> :sswitch_0
        0x40c -> :sswitch_4
        0x2b02 -> :sswitch_2
        0x2b09 -> :sswitch_5
        0x2b0d -> :sswitch_3
    .end sparse-switch
.end method

.method protected responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .parameter "p"

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->driverCallU:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->driverCall:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->isGSM:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mRilVersion:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->samsungDriverCall:Z

    .line 275
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 274
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 10
    .parameter "p"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 86
    new-instance v3, Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    .line 87
    .local v3, cardStatus:Lcom/android/internal/telephony/uicc/IccCardStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 96
    .local v5, numApplications:I
    const/16 v6, 0x8

    if-le v5, v6, :cond_0

    .line 97
    const/16 v5, 0x8

    .line 99
    :cond_0
    new-array v6, v5, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    .line 101
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 102
    .local v0, appStatus:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 103
    if-eqz v4, :cond_1

    .line 104
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    .end local v0           #appStatus:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 106
    .restart local v0       #appStatus:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 119
    iget-object v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v0, v6, v4

    .line 102
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 121
    :cond_2
    if-ne v5, v8, :cond_3

    iget-boolean v6, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->isGSM:Z

    if-nez v6, :cond_3

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v7

    if-ne v6, v7, :cond_3

    .line 122
    add-int/lit8 v6, v5, 0x2

    new-array v6, v6, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    .line 123
    const/4 v6, 0x0

    iput v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 124
    iget-object v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iget v7, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    aput-object v0, v6, v7

    .line 125
    iput v8, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 126
    iput v9, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 127
    new-instance v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 128
    .local v1, appStatus2:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 129
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    iput-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 130
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    iput-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 131
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 132
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    iput-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 133
    iget v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    iput v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    .line 134
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 135
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 136
    iget-object v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iget v7, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    aput-object v1, v6, v7

    .line 137
    new-instance v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 138
    .local v2, appStatus3:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 139
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 140
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 141
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 142
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 143
    iget v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    iput v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    .line 144
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 145
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 146
    iget-object v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iget v7, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    aput-object v2, v6, v7

    .line 148
    .end local v1           #appStatus2:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    .end local v2           #appStatus3:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    :cond_3
    return-object v3
.end method

.method protected responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 8
    .parameter "p"

    .prologue
    .line 767
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object v3, v5

    check-cast v3, [Ljava/lang/String;

    .line 770
    .local v3, strings:[Ljava/lang/String;
    array-length v5, v3

    iget v6, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mQANElements:I

    rem-int/2addr v5, v6

    if-eqz v5, :cond_0

    .line 771
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RIL_REQUEST_QUERY_AVAILABLE_NETWORKS: invalid response. Got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " strings, expected multiple of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mQANElements:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 776
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    array-length v5, v3

    iget v6, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mQANElements:I

    div-int/2addr v5, v6

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 777
    .local v2, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v1, 0x0

    .line 778
    .local v1, init:Lcom/android/internal/telephony/Operators;
    array-length v5, v3

    if-eqz v5, :cond_1

    .line 779
    new-instance v1, Lcom/android/internal/telephony/Operators;

    .end local v1           #init:Lcom/android/internal/telephony/Operators;
    invoke-direct {v1}, Lcom/android/internal/telephony/Operators;-><init>()V

    .line 781
    .restart local v1       #init:Lcom/android/internal/telephony/Operators;
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_2

    .line 782
    add-int/lit8 v5, v0, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/Operators;->unOptimizedOperatorReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 783
    .local v4, temp:Ljava/lang/String;
    new-instance v5, Lcom/android/internal/telephony/OperatorInfo;

    add-int/lit8 v6, v0, 0x2

    aget-object v6, v3, v6

    add-int/lit8 v7, v0, 0x3

    aget-object v7, v3, v7

    invoke-direct {v5, v4, v4, v6, v7}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    iget v5, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mQANElements:I

    add-int/2addr v0, v5

    goto :goto_0

    .line 791
    .end local v4           #temp:Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method protected responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .parameter "p"

    .prologue
    .line 721
    iget-object v1, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mSMSLock:Ljava/lang/Object;

    monitor-enter v1

    .line 722
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mIsSendingSMS:Z

    .line 723
    iget-object v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mSMSLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 724
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 724
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 18
    .parameter "p"

    .prologue
    .line 191
    const/16 v16, 0xc

    .line 198
    .local v16, numInts:I
    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 199
    .local v17, response:[I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 200
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aput v1, v17, v15

    .line 199
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 203
    :cond_0
    const/4 v1, 0x0

    aget v2, v17, v1

    and-int/lit16 v2, v2, 0xff

    aput v2, v17, v1

    .line 207
    const/4 v1, 0x2

    aget v2, v17, v1

    rem-int/lit16 v2, v2, 0x100

    aput v2, v17, v1

    .line 208
    const/4 v1, 0x4

    aget v2, v17, v1

    rem-int/lit16 v2, v2, 0x100

    aput v2, v17, v1

    .line 211
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/SamsungQualcommRIL;->googleEditionSS:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/SamsungQualcommRIL;->isGSM:Z

    if-nez v1, :cond_1

    .line 212
    const/16 v1, 0x8

    const/4 v2, 0x2

    aget v2, v17, v2

    aput v2, v17, v1

    .line 227
    :goto_1
    new-instance v1, Landroid/telephony/SignalStrength;

    const/4 v2, 0x0

    aget v2, v17, v2

    const/4 v3, 0x1

    aget v3, v17, v3

    const/4 v4, 0x2

    aget v4, v17, v4

    const/4 v5, 0x3

    aget v5, v17, v5

    const/4 v6, 0x4

    aget v6, v17, v6

    const/4 v7, 0x5

    aget v7, v17, v7

    const/4 v8, 0x6

    aget v8, v17, v8

    const/4 v9, 0x7

    aget v9, v17, v9

    const/16 v10, 0x8

    aget v10, v17, v10

    const/16 v11, 0x9

    aget v11, v17, v11

    const/16 v12, 0xa

    aget v12, v17, v12

    const/16 v13, 0xb

    aget v13, v17, v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    :goto_2
    invoke-direct/range {v1 .. v14}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIZ)V

    return-object v1

    .line 213
    :cond_1
    const/4 v1, 0x7

    aget v1, v17, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xff

    if-eq v1, v2, :cond_2

    const/4 v1, 0x7

    aget v1, v17, v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_3

    .line 218
    :cond_2
    const/4 v1, 0x7

    const/16 v2, 0x63

    aput v2, v17, v1

    .line 219
    const/16 v1, 0x8

    const v2, 0x7fffffff

    aput v2, v17, v1

    .line 220
    const/16 v1, 0x9

    const v2, 0x7fffffff

    aput v2, v17, v1

    .line 221
    const/16 v1, 0xa

    const v2, 0x7fffffff

    aput v2, v17, v1

    .line 222
    const/16 v1, 0xb

    const v2, 0x7fffffff

    aput v2, v17, v1

    goto :goto_1

    .line 224
    :cond_3
    const/4 v1, 0x7

    aget v2, v17, v1

    and-int/lit16 v2, v2, 0xff

    aput v2, v17, v1

    goto :goto_1

    .line 227
    :cond_4
    const/4 v14, 0x0

    goto :goto_2
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 0
    .parameter "pdu"
    .parameter "result"

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/internal/telephony/SamsungQualcommRIL;->smsLock()V

    .line 155
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->sendCdmaSms([BLandroid/os/Message;)V

    .line 156
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "result"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/android/internal/telephony/SamsungQualcommRIL;->smsLock()V

    .line 162
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 163
    return-void
.end method

.method public setPhoneType(I)V
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 267
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->setPhoneType(I)V

    .line 268
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->isGSM:Z

    .line 269
    return-void

    .line 268
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
