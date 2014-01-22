.class public Lcom/android/internal/telephony/HTCCDMAQualcommRIL;
.super Lcom/android/internal/telephony/HTCQualcommRIL;
.source "HTCCDMAQualcommRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# instance fields
.field private homeOperator:Ljava/lang/String;

.field private isGSM:Z

.field private operator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/HTCQualcommRIL;-><init>(Landroid/content/Context;II)V

    .line 57
    const-string v0, "ro.cdma.home.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->homeOperator:Ljava/lang/String;

    .line 58
    const-string v0, "ro.cdma.home.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->operator:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->isGSM:Z

    .line 64
    return-void
.end method

.method private operatorCheck(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .parameter "p"

    .prologue
    const/4 v4, 0x2

    .line 576
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    .line 577
    .local v1, response:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 578
    aget-object v2, v1, v0

    if-eqz v2, :cond_3

    .line 579
    aget-object v2, v1, v0

    const-string v3, "       Empty"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, v1, v0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-ge v0, v4, :cond_1

    .line 580
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->operator:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 581
    :cond_1
    aget-object v2, v1, v0

    const-string v3, "31000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, v1, v0

    const-string v3, "11111"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, v1, v0

    const-string v3, "123456"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, v1, v0

    const-string v3, "31099"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, v1, v0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-lt v0, v4, :cond_3

    .line 582
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->homeOperator:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 577
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 585
    :cond_4
    return-object v1
.end method

.method private responseDataRegistrationState(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9
    .parameter "p"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v4, 0x1

    const v6, 0x7fffffff

    const/4 v5, 0x6

    .line 608
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v2, v3

    check-cast v2, [Ljava/lang/String;

    .line 609
    .local v2, response:[Ljava/lang/String;
    array-length v3, v2

    if-gt v3, v5, :cond_3

    .line 610
    const/16 v3, 0xb

    new-array v1, v3, [Ljava/lang/String;

    .line 612
    .local v1, newResponse:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 613
    aget-object v3, v2, v0

    aput-object v3, v1, v0

    .line 612
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 616
    :cond_0
    aget-object v3, v2, v4

    if-nez v3, :cond_1

    .line 617
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 621
    :goto_1
    aget-object v3, v2, v7

    if-nez v3, :cond_2

    .line 622
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    .line 627
    :goto_2
    const/4 v3, 0x7

    const/16 v4, 0x9

    const/16 v5, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    aput-object v6, v1, v4

    aput-object v6, v1, v3

    .line 630
    .end local v0           #i:I
    .end local v1           #newResponse:[Ljava/lang/String;
    :goto_3
    return-object v1

    .line 619
    .restart local v0       #i:I
    .restart local v1       #newResponse:[Ljava/lang/String;
    :cond_1
    aget-object v3, v2, v4

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    goto :goto_1

    .line 624
    :cond_2
    aget-object v3, v2, v7

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    goto :goto_2

    .line 630
    .end local v0           #i:I
    .end local v1           #newResponse:[Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoiceRegistrationState(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3
.end method

.method private responseVoiceRegistrationState(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .parameter "p"

    .prologue
    .line 591
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    .line 592
    .local v1, response:[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x6

    if-le v2, v3, :cond_1

    .line 593
    const/4 v0, 0x6

    .local v0, i:I
    :goto_0
    const/16 v2, 0x9

    if-gt v0, v2, :cond_2

    .line 594
    aget-object v2, v1, v0

    if-nez v2, :cond_0

    .line 595
    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 593
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 599
    .end local v0           #i:I
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseDataRegistrationState(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .line 602
    .end local v1           #response:[Ljava/lang/String;
    :cond_2
    return-object v1
.end method


# virtual methods
.method protected getDataCallState(Landroid/os/Parcel;I)Lcom/android/internal/telephony/DataCallState;
    .locals 7
    .parameter "p"
    .parameter "version"

    .prologue
    const v6, 0x1040087

    .line 635
    new-instance v1, Lcom/android/internal/telephony/DataCallState;

    invoke-direct {v1}, Lcom/android/internal/telephony/DataCallState;-><init>()V

    .line 637
    .local v1, dataCall:Lcom/android/internal/telephony/DataCallState;
    iput p2, v1, Lcom/android/internal/telephony/DataCallState;->version:I

    .line 638
    const/4 v4, 0x5

    if-ge p2, v4, :cond_4

    .line 639
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/DataCallState;->cid:I

    .line 640
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/DataCallState;->active:I

    .line 641
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/DataCallState;->type:Ljava/lang/String;

    .line 642
    const/4 v4, 0x4

    if-lt p2, v4, :cond_0

    const-string v4, "datacallapn"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 643
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 645
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, addresses:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 647
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    .line 650
    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    .line 678
    :cond_3
    :goto_0
    return-object v1

    .line 652
    .end local v0           #addresses:Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    .line 653
    const-string v4, "usehcradio"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 654
    const/4 v4, -0x1

    iput v4, v1, Lcom/android/internal/telephony/DataCallState;->suggestedRetryTime:I

    .line 657
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/DataCallState;->cid:I

    .line 658
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/DataCallState;->active:I

    .line 659
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/DataCallState;->type:Ljava/lang/String;

    .line 660
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    .line 661
    iget v4, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    sget-object v5, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnection$FailCause;->getErrorCode()I

    move-result v5

    if-ne v4, v5, :cond_5

    iget-object v4, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 663
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    .line 665
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 666
    .restart local v0       #addresses:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 667
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    .line 669
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 670
    .local v2, dnses:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 671
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    .line 673
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 674
    .local v3, gateways:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 675
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    goto :goto_0

    .line 656
    .end local v0           #addresses:Ljava/lang/String;
    .end local v2           #dnses:Ljava/lang/String;
    .end local v3           #gateways:Ljava/lang/String;
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/DataCallState;->suggestedRetryTime:I

    goto :goto_1
.end method

.method protected processSolicited(Landroid/os/Parcel;)V
    .locals 10
    .parameter "p"

    .prologue
    const/4 v9, 0x0

    .line 133
    iget-boolean v6, p0, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->isGSM:Z

    if-eqz v6, :cond_0

    .line 134
    invoke-super {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->processSolicited(Landroid/os/Parcel;)V

    .line 571
    :goto_0
    return-void

    .line 138
    :cond_0
    const/4 v1, 0x0

    .line 140
    .local v1, found:Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 141
    .local v4, serial:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 145
    .local v0, error:I
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 147
    .local v3, rr:Lcom/android/internal/telephony/RILRequest;
    if-nez v3, :cond_1

    .line 148
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected solicited response! sn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    :cond_1
    const/4 v2, 0x0

    .line 155
    .local v2, ret:Ljava/lang/Object;
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v6

    if-lez v6, :cond_4

    .line 158
    :cond_2
    :try_start_0
    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v6, :pswitch_data_0

    .line 505
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized solicited response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :catch_0
    move-exception v5

    .line 511
    .local v5, tr:Ljava/lang/Throwable;
    const-string v6, "RILJ"

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

    invoke-static {v8}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exception, possible invalid RIL response"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_3

    .line 516
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v9, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 517
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 519
    :cond_3
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_0

    .line 165
    .end local v5           #tr:Ljava/lang/Throwable;
    :pswitch_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 527
    .end local v2           #ret:Ljava/lang/Object;
    :cond_4
    :goto_1
    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v6, :pswitch_data_1

    .line 540
    :cond_5
    :goto_2
    :pswitch_1
    if-eqz v0, :cond_8

    .line 541
    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v6, :sswitch_data_0

    .line 557
    :cond_6
    :goto_3
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 558
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_0

    .line 168
    .restart local v2       #ret:Ljava/lang/Object;
    :pswitch_2
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 169
    goto :goto_1

    .line 171
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 172
    goto :goto_1

    .line 174
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 175
    goto :goto_1

    .line 177
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 178
    goto :goto_1

    .line 180
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 181
    goto :goto_1

    .line 183
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 184
    goto :goto_1

    .line 186
    :pswitch_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 187
    goto :goto_1

    .line 189
    :pswitch_9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 190
    goto :goto_1

    .line 192
    :pswitch_a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 193
    goto :goto_1

    .line 195
    :pswitch_b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 196
    goto :goto_1

    .line 198
    :pswitch_c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 199
    goto :goto_1

    .line 201
    :pswitch_d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 202
    goto :goto_1

    .line 204
    :pswitch_e
    iget-object v6, p0, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 205
    iget-object v6, p0, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v6, :cond_7

    .line 206
    const-string v6, "testing emergency call, notify ECM Registrants"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 207
    iget-object v6, p0, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v6}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 210
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 211
    goto :goto_1

    .line 214
    :pswitch_f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 215
    goto :goto_1

    .line 217
    :pswitch_10
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 218
    goto :goto_1

    .line 220
    :pswitch_11
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 221
    goto :goto_1

    .line 223
    :pswitch_12
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 224
    goto :goto_1

    .line 226
    :pswitch_13
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 227
    goto/16 :goto_1

    .line 231
    :pswitch_14
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoiceRegistrationState(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 232
    goto/16 :goto_1

    .line 234
    :pswitch_15
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseDataRegistrationState(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 235
    goto/16 :goto_1

    .line 243
    :pswitch_16
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->operatorCheck(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 244
    goto/16 :goto_1

    .line 247
    :pswitch_17
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 248
    goto/16 :goto_1

    .line 250
    :pswitch_18
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 251
    goto/16 :goto_1

    .line 253
    :pswitch_19
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 254
    goto/16 :goto_1

    .line 256
    :pswitch_1a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 257
    goto/16 :goto_1

    .line 259
    :pswitch_1b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 260
    goto/16 :goto_1

    .line 262
    :pswitch_1c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 263
    goto/16 :goto_1

    .line 265
    :pswitch_1d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 266
    goto/16 :goto_1

    .line 268
    :pswitch_1e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 269
    goto/16 :goto_1

    .line 271
    :pswitch_1f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 272
    goto/16 :goto_1

    .line 274
    :pswitch_20
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 275
    goto/16 :goto_1

    .line 277
    :pswitch_21
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 278
    goto/16 :goto_1

    .line 280
    :pswitch_22
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 281
    goto/16 :goto_1

    .line 283
    :pswitch_23
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 284
    goto/16 :goto_1

    .line 286
    :pswitch_24
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 287
    goto/16 :goto_1

    .line 289
    :pswitch_25
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 290
    goto/16 :goto_1

    .line 292
    :pswitch_26
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 293
    goto/16 :goto_1

    .line 295
    :pswitch_27
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 296
    goto/16 :goto_1

    .line 298
    :pswitch_28
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 299
    goto/16 :goto_1

    .line 301
    :pswitch_29
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 302
    goto/16 :goto_1

    .line 304
    :pswitch_2a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 305
    goto/16 :goto_1

    .line 307
    :pswitch_2b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 308
    goto/16 :goto_1

    .line 310
    :pswitch_2c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 311
    goto/16 :goto_1

    .line 313
    :pswitch_2d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 314
    goto/16 :goto_1

    .line 316
    :pswitch_2e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 317
    goto/16 :goto_1

    .line 319
    :pswitch_2f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 320
    goto/16 :goto_1

    .line 322
    :pswitch_30
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 323
    goto/16 :goto_1

    .line 325
    :pswitch_31
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 326
    goto/16 :goto_1

    .line 328
    :pswitch_32
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 329
    goto/16 :goto_1

    .line 331
    :pswitch_33
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 332
    goto/16 :goto_1

    .line 334
    :pswitch_34
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 335
    goto/16 :goto_1

    .line 337
    :pswitch_35
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 338
    goto/16 :goto_1

    .line 340
    :pswitch_36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 341
    goto/16 :goto_1

    .line 343
    :pswitch_37
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 344
    goto/16 :goto_1

    .line 346
    :pswitch_38
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 347
    goto/16 :goto_1

    .line 349
    :pswitch_39
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 350
    goto/16 :goto_1

    .line 352
    :pswitch_3a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 353
    goto/16 :goto_1

    .line 355
    :pswitch_3b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 356
    goto/16 :goto_1

    .line 358
    :pswitch_3c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 359
    goto/16 :goto_1

    .line 361
    :pswitch_3d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 362
    goto/16 :goto_1

    .line 364
    :pswitch_3e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 365
    goto/16 :goto_1

    .line 367
    :pswitch_3f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 368
    goto/16 :goto_1

    .line 370
    :pswitch_40
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 371
    goto/16 :goto_1

    .line 373
    :pswitch_41
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 374
    goto/16 :goto_1

    .line 376
    :pswitch_42
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 377
    goto/16 :goto_1

    .line 379
    :pswitch_43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 380
    goto/16 :goto_1

    .line 382
    :pswitch_44
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 383
    goto/16 :goto_1

    .line 385
    :pswitch_45
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 386
    goto/16 :goto_1

    .line 388
    :pswitch_46
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 389
    goto/16 :goto_1

    .line 391
    :pswitch_47
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 392
    goto/16 :goto_1

    .line 394
    :pswitch_48
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 395
    goto/16 :goto_1

    .line 397
    :pswitch_49
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 398
    goto/16 :goto_1

    .line 400
    :pswitch_4a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 401
    goto/16 :goto_1

    .line 403
    :pswitch_4b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 404
    goto/16 :goto_1

    .line 406
    :pswitch_4c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 407
    goto/16 :goto_1

    .line 409
    :pswitch_4d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 410
    goto/16 :goto_1

    .line 412
    :pswitch_4e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 413
    goto/16 :goto_1

    .line 415
    :pswitch_4f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 416
    goto/16 :goto_1

    .line 418
    :pswitch_50
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 419
    goto/16 :goto_1

    .line 421
    :pswitch_51
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 422
    goto/16 :goto_1

    .line 424
    :pswitch_52
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 425
    goto/16 :goto_1

    .line 427
    :pswitch_53
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 428
    goto/16 :goto_1

    .line 430
    :pswitch_54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 431
    goto/16 :goto_1

    .line 433
    :pswitch_55
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 434
    goto/16 :goto_1

    .line 436
    :pswitch_56
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 437
    goto/16 :goto_1

    .line 439
    :pswitch_57
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 440
    goto/16 :goto_1

    .line 442
    :pswitch_58
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 443
    goto/16 :goto_1

    .line 445
    :pswitch_59
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 446
    goto/16 :goto_1

    .line 448
    :pswitch_5a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 449
    goto/16 :goto_1

    .line 451
    :pswitch_5b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 452
    goto/16 :goto_1

    .line 454
    :pswitch_5c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 455
    goto/16 :goto_1

    .line 457
    :pswitch_5d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 458
    goto/16 :goto_1

    .line 460
    :pswitch_5e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 461
    goto/16 :goto_1

    .line 463
    :pswitch_5f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 464
    goto/16 :goto_1

    .line 466
    :pswitch_60
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 467
    goto/16 :goto_1

    .line 469
    :pswitch_61
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 470
    goto/16 :goto_1

    .line 472
    :pswitch_62
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 473
    goto/16 :goto_1

    .line 475
    :pswitch_63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 476
    goto/16 :goto_1

    .line 478
    :pswitch_64
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 479
    goto/16 :goto_1

    .line 481
    :pswitch_65
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 482
    goto/16 :goto_1

    .line 484
    :pswitch_66
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 485
    goto/16 :goto_1

    .line 487
    :pswitch_67
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 488
    goto/16 :goto_1

    .line 490
    :pswitch_68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 491
    goto/16 :goto_1

    .line 493
    :pswitch_69
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 494
    goto/16 :goto_1

    .line 496
    :pswitch_6a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 497
    goto/16 :goto_1

    .line 499
    :pswitch_6b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 500
    goto/16 :goto_1

    .line 502
    :pswitch_6c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 503
    goto/16 :goto_1

    .line 530
    .end local v2           #ret:Ljava/lang/Object;
    :pswitch_6d
    iget-object v6, p0, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v6, :cond_5

    .line 532
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ON enter sim puk fakeSimStatusChanged: reg count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7}, Landroid/os/RegistrantList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 535
    iget-object v6, p0, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_2

    .line 547
    :sswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v6, :cond_6

    .line 549
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ON some errors fakeSimStatusChanged: reg count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7}, Landroid/os/RegistrantList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 552
    iget-object v6, p0, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_3

    .line 562
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "< "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {p0, v7, v2}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 565
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_9

    .line 566
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v2, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 567
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 570
    :cond_9
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_0

    .line 158
    nop

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
    .end packed-switch

    .line 527
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_6d
        :pswitch_1
        :pswitch_6d
    .end packed-switch

    .line 541
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x2b -> :sswitch_0
    .end sparse-switch
.end method

.method protected responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .parameter "p"

    .prologue
    .line 76
    const-string v1, "forceCdmaLteNetworkType"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v0

    .line 78
    .local v0, forceCdmaLte:Z
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->isGSM:Z

    if-nez v1, :cond_0

    .line 79
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 82
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 16
    .parameter "p"

    .prologue
    .line 104
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v14

    const/16 v15, 0x38

    if-ge v14, v15, :cond_0

    .line 105
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    .line 107
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 108
    .local v1, gsmSignalStrength:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 109
    .local v2, gsmBitErrorRate:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 110
    .local v3, cdmaDbm:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 111
    .local v4, cdmaEcio:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 112
    .local v5, evdoDbm:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 113
    .local v6, evdoEcio:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 114
    .local v7, evdoSnr:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 115
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 116
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 117
    .local v8, lteSignalStrength:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 118
    .local v9, lteRsrp:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 119
    .local v10, lteRsrq:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 120
    .local v11, lteRssnr:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 121
    .local v12, lteCqi:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_1

    const/4 v13, 0x1

    .line 123
    .local v13, isGsm:Z
    :goto_1
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct/range {v0 .. v13}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIZ)V

    .line 127
    .local v0, signalStrength:Landroid/telephony/SignalStrength;
    goto :goto_0

    .line 121
    .end local v0           #signalStrength:Landroid/telephony/SignalStrength;
    .end local v13           #isGsm:Z
    :cond_1
    const/4 v13, 0x0

    goto :goto_1
.end method

.method public setPhoneType(I)V
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->setPhoneType(I)V

    .line 69
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/HTCCDMAQualcommRIL;->isGSM:Z

    .line 70
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
