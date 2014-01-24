.class public Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;
.super Landroid/os/Handler;
.source "MiuiUsimPhoneBookManager.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;,
        Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;,
        Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field static final EVENT_ANR_RECORD_LOAD_DONE:I = 0x4

.field static final EVENT_EMAIL_RECORD_LOAD_DONE:I = 0x5

.field static final EVENT_IAP_RECORD_LOAD_DONE:I = 0x6

.field static final EVENT_PBR_LOAD_DONE:I = 0x1

.field static final EVENT_RECORD_SIZE_READ_DONE:I = 0x2

.field static final EVENT_UPDATE_DONE:I = 0x7

.field static final EVENT_USIM_ADN_LOAD_DONE:I = 0x3

.field static final LOG_TAG:Ljava/lang/String; = "UsimPhoneBookManager"

.field static final MAX_ANR_DATA_LENGTH:I = 0xb

.field static final MAX_ANR_LENGTH:I = 0x14

.field static final USIM_EFAAS_TAG:I = 0xc7

.field static final USIM_EFADN_TAG:I = 0xc0

.field static final USIM_EFANR_TAG:I = 0xc4

.field static final USIM_EFCCP1_TAG:I = 0xcb

.field static final USIM_EFEMAIL_TAG:I = 0xca

.field static final USIM_EFEXT1_TAG:I = 0xc2

.field static final USIM_EFGRP_TAG:I = 0xc6

.field static final USIM_EFGSD_TAG:I = 0xc8

.field static final USIM_EFIAP_TAG:I = 0xc1

.field static final USIM_EFPBC_TAG:I = 0xc5

.field static final USIM_EFSNE_TAG:I = 0xc3

.field static final USIM_EFUID_TAG:I = 0xc9

.field static final USIM_TYPE1_TAG:I = 0xa8

.field static final USIM_TYPE2_CONDITIONAL_LENGTH:I = 0x2

.field static final USIM_TYPE2_TAG:I = 0xa9

.field static final USIM_TYPE3_TAG:I = 0xaa


# instance fields
.field mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

.field mFh:Lcom/android/internal/telephony/MiuiIccFileHandler;

.field mIapFiles:[[[B

.field mIsPbrPresent:Z

.field mLock:Ljava/lang/Object;

.field mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

.field mPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MiuiAdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field mReadLock:Ljava/lang/Object;

.field mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field mRecordSize:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;",
            ">;"
        }
    .end annotation
.end field

.field mUpdateResult:Landroid/os/AsyncResult;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/AdnRecordCache;)V
    .locals 2
    .parameter "fh"
    .parameter "cache"

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mReadLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 85
    new-instance v0, Lcom/android/internal/telephony/MiuiIccFileHandler;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/MiuiIccFileHandler;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/MiuiIccFileHandler;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 87
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mIsPbrPresent:Z

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    .line 92
    return-void
.end method

.method private getRecordNumber(Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;I)I
    .locals 11
    .parameter "record"
    .parameter "recordCount"

    .prologue
    const/4 v10, 0x1

    .line 906
    const/4 v4, -0x1

    .line 907
    .local v4, recordNumber:I
    new-instance v6, Ljava/util/BitSet;

    add-int/lit8 v8, p2, 0x1

    invoke-direct {v6, v8}, Ljava/util/BitSet;-><init>(I)V

    .line 908
    .local v6, validIndex:Ljava/util/BitSet;
    add-int/lit8 v8, p2, 0x1

    invoke-virtual {v6, v10, v8}, Ljava/util/BitSet;->set(II)V

    .line 910
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    iget v9, p1, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;

    .line 911
    .local v3, r:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;
    iget v8, v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mEfTag:I

    iget v9, p1, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mEfTag:I

    if-ne v8, v9, :cond_0

    .line 912
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mIapFiles:[[[B

    iget v9, v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mPbrIndex:I

    aget-object v2, v8, v9

    .line 913
    .local v2, iaps:[[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v8, v2

    if-ge v0, v8, :cond_0

    .line 914
    aget-object v7, v2, v0

    .line 915
    .local v7, value:[B
    if-eqz v7, :cond_1

    .line 916
    iget v8, v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mType2Record:I

    aget-byte v5, v7, v8

    .line 917
    .local v5, tempIndex:I
    if-lez v5, :cond_1

    const/16 v8, 0xff

    if-ge v5, v8, :cond_1

    if-gt v5, p2, :cond_1

    .line 918
    invoke-virtual {v6, v5}, Ljava/util/BitSet;->clear(I)V

    .line 913
    .end local v5           #tempIndex:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 925
    .end local v0           #i:I
    .end local v2           #iaps:[[B
    .end local v3           #r:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;
    .end local v7           #value:[B
    :cond_2
    invoke-virtual {v6, v10}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    .line 926
    return v4
.end method


# virtual methods
.method buildAnrRecord(Ljava/lang/String;I)[B
    .locals 6
    .parameter "anr"
    .parameter "recordSize"

    .prologue
    .line 955
    new-array v1, p2, [B

    .line 956
    .local v1, data:[B
    const/4 v3, -0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 958
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->convertPreDial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 959
    .local v2, updatedAnr:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 971
    .end local v1           #data:[B
    :cond_0
    :goto_0
    return-object v1

    .line 962
    .restart local v1       #data:[B
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_2

    .line 963
    const/4 v1, 0x0

    goto :goto_0

    .line 966
    :cond_2
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 967
    .local v0, bcdNumber:[B
    if-eqz v0, :cond_0

    .line 968
    const/4 v3, 0x0

    const/4 v4, 0x2

    array-length v5, v0

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 969
    const/4 v3, 0x1

    array-length v4, v0

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    goto :goto_0
.end method

.method buildEmailRecord(Ljava/lang/String;II)[B
    .locals 11
    .parameter "str"
    .parameter "adnRecordNumber"
    .parameter "recordSize"

    .prologue
    const/16 v10, 0xc0

    const/4 v8, 0x0

    .line 930
    new-array v3, p3, [B

    .line 931
    .local v3, emailRecordData:[B
    const/4 v7, -0x1

    invoke-static {v3, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 933
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    const/16 v9, 0xca

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;

    iget v7, v7, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v9, 0xa9

    if-ne v7, v9, :cond_1

    const/4 v2, 0x1

    .line 934
    .local v2, emailInIap:Z
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 935
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v1

    .line 936
    .local v1, emailData:[B
    if-eqz v2, :cond_2

    array-length v7, v3

    add-int/lit8 v4, v7, -0x2

    .line 938
    .local v4, maxDataLength:I
    :goto_1
    array-length v7, v1

    if-le v7, v4, :cond_3

    .line 939
    const/4 v3, 0x0

    .line 951
    .end local v1           #emailData:[B
    .end local v3           #emailRecordData:[B
    .end local v4           #maxDataLength:I
    :cond_0
    :goto_2
    return-object v3

    .end local v2           #emailInIap:Z
    .restart local v3       #emailRecordData:[B
    :cond_1
    move v2, v8

    .line 933
    goto :goto_0

    .line 936
    .restart local v1       #emailData:[B
    .restart local v2       #emailInIap:Z
    :cond_2
    array-length v4, v3

    goto :goto_1

    .line 942
    .restart local v4       #maxDataLength:I
    :cond_3
    array-length v7, v1

    invoke-static {v1, v8, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 943
    if-eqz v2, :cond_0

    .line 944
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    iget v0, v7, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    .line 945
    .local v0, adnRecordCount:I
    add-int/lit8 v7, p2, -0x1

    div-int v5, v7, v0

    .line 946
    .local v5, pbrIndex:I
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;

    .line 947
    .local v6, record:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;
    add-int/lit8 v7, p3, -0x2

    iget-byte v8, v6, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mSfi:B

    aput-byte v8, v3, v7

    .line 948
    add-int/lit8 v7, p3, -0x1

    add-int/lit8 v8, p2, -0x1

    rem-int/2addr v8, v0

    add-int/lit8 v8, v8, 0x1

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    goto :goto_2
.end method

.method checkAnrCapacityFree(ILjava/lang/String;)Z
    .locals 8
    .parameter "adnRecordNumber"
    .parameter "anr"

    .prologue
    const/16 v7, 0xc4

    const/4 v4, 0x1

    .line 654
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 664
    :cond_0
    :goto_0
    return v4

    .line 658
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    iget v0, v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    .line 659
    .local v0, anrRecordCount:I
    add-int/lit8 v5, p1, -0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v6, 0xc0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    iget v3, v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    div-int v1, v5, v3

    .line 660
    .local v1, pbrIndex:I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;

    .line 661
    .local v2, record:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;
    iget v3, v2, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v5, 0xa9

    if-ne v3, v5, :cond_0

    .line 662
    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->getRecordNumber(Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;I)I

    move-result v3

    if-lez v3, :cond_2

    move v3, v4

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method checkAnrLength(Ljava/lang/String;)Z
    .locals 3
    .parameter "anr"

    .prologue
    .line 683
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->convertPreDial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, updatedAnr:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-gt v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method checkEmailCapacityFree(I[Ljava/lang/String;)Z
    .locals 8
    .parameter "adnRecordNumber"
    .parameter "emails"

    .prologue
    const/16 v7, 0xca

    const/4 v4, 0x1

    .line 640
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->hasEmail([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 650
    :cond_0
    :goto_0
    return v4

    .line 644
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    iget v0, v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    .line 645
    .local v0, emailRecordCount:I
    add-int/lit8 v5, p1, -0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v6, 0xc0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    iget v3, v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    div-int v1, v5, v3

    .line 646
    .local v1, pbrIndex:I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;

    .line 647
    .local v2, record:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;
    iget v3, v2, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v5, 0xa9

    if-ne v3, v5, :cond_0

    .line 648
    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->getRecordNumber(Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;I)I

    move-result v3

    if-lez v3, :cond_2

    move v3, v4

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method checkEmailLength([Ljava/lang/String;)Z
    .locals 8
    .parameter "emails"

    .prologue
    const/4 v7, -0x1

    const/16 v6, 0xca

    const/4 v4, 0x0

    .line 668
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    iget v1, v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordSize:I

    .line 669
    .local v1, emailRecordSize:I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    iget v3, v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    if-eq v3, v7, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;

    iget v3, v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v5, 0xa9

    if-ne v3, v5, :cond_0

    add-int/lit8 v2, v1, -0x2

    .line 673
    .local v2, maxDataLength:I
    :goto_0
    if-eqz p1, :cond_1

    aget-object v3, p1, v4

    if-eqz v3, :cond_1

    .line 674
    aget-object v3, p1, v4

    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 675
    .local v0, emailData:[B
    if-eq v2, v7, :cond_1

    array-length v3, v0

    if-le v3, v2, :cond_1

    move v3, v4

    .line 679
    .end local v0           #emailData:[B
    :goto_1
    return v3

    .end local v2           #maxDataLength:I
    :cond_0
    move v2, v1

    .line 669
    goto :goto_0

    .line 679
    .restart local v2       #maxDataLength:I
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method createPbrFile(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez p1, :cond_0

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mIsPbrPresent:Z

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;-><init>(Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    goto :goto_0
.end method

.method public getAdnRecordsIfLoaded()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MiuiAdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 253
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 279
    :goto_0
    return-void

    .line 255
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->readPbrFileDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 258
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->readRecordSizeDone(ILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 261
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->readAdnFileDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 264
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->readAnrRecordDone(IILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 267
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->readEmailRecordDone(IILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 270
    :pswitch_5
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->readIapRecordDone(IILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 273
    :pswitch_6
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 274
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mUpdateResult:Landroid/os/AsyncResult;

    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 276
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method hasEmail([Ljava/lang/String;)Z
    .locals 2
    .parameter "emails"

    .prologue
    const/4 v0, 0x0

    .line 636
    if-eqz p1, :cond_0

    aget-object v1, p1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public loadEfFilesFromUsim()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MiuiAdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 108
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v3

    .line 152
    :goto_0
    return-object v2

    .line 112
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mIsPbrPresent:Z

    if-nez v2, :cond_1

    .line 113
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 116
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->readPbrFileAndWait()V

    .line 120
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_3

    .line 121
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 124
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/16 v4, 0xc0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 125
    const/16 v4, 0xc0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/16 v5, 0xc0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->readRecordSizeAndWait(II)Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    .line 127
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/16 v4, 0xca

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 128
    const/16 v4, 0xca

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/16 v5, 0xca

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->readRecordSizeAndWait(II)Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    .line 130
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/16 v4, 0xc1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 131
    const/16 v4, 0xc1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/16 v5, 0xc1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->readRecordSizeAndWait(II)Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    .line 133
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/16 v4, 0xc4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 134
    const/16 v4, 0xc4

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/16 v5, 0xc4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->readRecordSizeAndWait(II)Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    .line 137
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 139
    .local v1, numRecs:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_8

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    :cond_8
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 144
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v3

    goto/16 :goto_0

    .line 147
    :cond_9
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_a

    .line 148
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->readAnrFileAndWait(I)V

    .line 149
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->readEmailFileAndWait(I)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 151
    :cond_a
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method readAdnFileAndWait(I)V
    .locals 6
    .parameter "pbrIndex"

    .prologue
    const/16 v5, 0xc2

    const/16 v4, 0xc0

    .line 337
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 338
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 340
    :cond_0
    const-string v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readAdnFileAndWait: no ADN/EXT1 tag in PBR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/internal/telephony/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 347
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method readAdnFileDone(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 354
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 356
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 357
    .local v0, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/MiuiAdnRecord;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 361
    .end local v0           #records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/MiuiAdnRecord;>;"
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 363
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    return-void

    .line 359
    :cond_0
    const-string v1, "UsimPhoneBookManager"

    const-string v2, "readRecordSize failed"

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 363
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method readAnrFileAndWait(I)V
    .locals 5
    .parameter "pbrIndex"

    .prologue
    const/16 v4, 0xc4

    .line 367
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 368
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 369
    :cond_0
    const-string v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readAnrFileAndWait: no ANR tag in PBR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_1
    :goto_0
    return-void

    .line 373
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;

    .line 374
    .local v1, record:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;
    iget v2, v1, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v3, 0xa9

    if-ne v2, v3, :cond_3

    .line 375
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->readType2Ef(Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;)V

    goto :goto_0

    .line 376
    :cond_3
    iget v2, v1, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v3, 0xa8

    if-ne v2, v3, :cond_1

    .line 377
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->readType1Ef(Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;)V

    goto :goto_0
.end method

.method readAnrRecordDone(IILandroid/os/AsyncResult;)V
    .locals 3
    .parameter "pbrIndex"
    .parameter "adnIndex"
    .parameter "ar"

    .prologue
    .line 382
    iget-object v0, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 383
    iget-object v0, p3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->setPhoneAdnRecordAnr(II[B)V

    .line 388
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 390
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 393
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    return-void

    .line 385
    :cond_1
    const-string v0, "UsimPhoneBookManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readAnrRecord failed for pbrIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", adnIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 393
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method readEmailFileAndWait(I)V
    .locals 5
    .parameter "pbrIndex"

    .prologue
    const/16 v4, 0xca

    .line 621
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 622
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 623
    :cond_0
    const-string v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readEmailFileAndWait: no EMAIL tag in PBR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_1
    :goto_0
    return-void

    .line 627
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;

    .line 628
    .local v1, record:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;
    iget v2, v1, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v3, 0xa9

    if-ne v2, v3, :cond_3

    .line 629
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->readType2Ef(Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;)V

    goto :goto_0

    .line 630
    :cond_3
    iget v2, v1, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v3, 0xa8

    if-ne v2, v3, :cond_1

    .line 631
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->readType1Ef(Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;)V

    goto :goto_0
.end method

.method readEmailRecordDone(IILandroid/os/AsyncResult;)V
    .locals 3
    .parameter "pbrIndex"
    .parameter "adnIndex"
    .parameter "ar"

    .prologue
    .line 397
    iget-object v0, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 398
    iget-object v0, p3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->setPhoneAdnRecordEmail(II[B)V

    .line 403
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 405
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 408
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    return-void

    .line 400
    :cond_1
    const-string v0, "UsimPhoneBookManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readAnrRecord failed for pbrIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", adnIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 408
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method readIapFileAndWait(I)V
    .locals 19
    .parameter "pbrIndex"

    .prologue
    .line 561
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mIapFiles:[[[B

    if-nez v15, :cond_0

    .line 562
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v15, v15, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v15

    new-array v15, v15, [[[B

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mIapFiles:[[[B

    .line 565
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mIapFiles:[[[B

    aget-object v15, v15, p1

    if-eqz v15, :cond_2

    .line 603
    :cond_1
    :goto_0
    return-void

    .line 569
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v16, 0xc0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    iget v5, v15, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    .line 571
    .local v5, adnRecordCount:I
    new-array v9, v5, [[B

    .line 572
    .local v9, iapList:[[B
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v16, 0xc1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    iget v10, v15, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordSize:I

    .line 573
    .local v10, iapRecordSize:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v5, :cond_3

    .line 574
    new-array v14, v10, [B

    .line 575
    .local v14, value:[B
    const/4 v15, -0x1

    invoke-static {v14, v15}, Ljava/util/Arrays;->fill([BB)V

    .line 576
    aput-object v14, v9, v8

    .line 573
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 578
    .end local v14           #value:[B
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mIapFiles:[[[B

    aput-object v9, v15, p1

    .line 580
    mul-int v12, p1, v5

    .line 581
    .local v12, offset:I
    add-int v11, v12, v5

    .line 582
    .local v11, max:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v15, v11, :cond_4

    .line 583
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 586
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v15, v15, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    const/16 v16, 0xc1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 587
    .local v7, efid:I
    move v4, v12

    .local v4, adnIndex:I
    :goto_2
    if-ge v4, v11, :cond_6

    .line 588
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/MiuiAdnRecord;

    .line 589
    .local v13, rec:Lcom/android/internal/telephony/MiuiAdnRecord;
    invoke-virtual {v13}, Lcom/android/internal/telephony/MiuiAdnRecord;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_5

    .line 590
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 591
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/MiuiIccFileHandler;

    add-int/lit8 v16, v4, 0x1

    sub-int v16, v16, v12

    const/16 v17, 0x6

    sub-int v18, v4, v12

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p1

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v7, v10, v0, v1}, Lcom/android/internal/telephony/MiuiIccFileHandler;->loadEFLinearFixed(IIILandroid/os/Message;)V

    .line 587
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 596
    .end local v13           #rec:Lcom/android/internal/telephony/MiuiAdnRecord;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v15

    if-eqz v15, :cond_1

    .line 598
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 599
    :catch_0
    move-exception v6

    .line 600
    .local v6, e:Ljava/lang/InterruptedException;
    const-string v15, "UsimPhoneBookManager"

    const-string v16, "Interrupted Exception in readIapFileAndWait"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method readIapRecordDone(IILandroid/os/AsyncResult;)V
    .locals 3
    .parameter "pbrIndex"
    .parameter "iapIndex"
    .parameter "ar"

    .prologue
    .line 606
    iget-object v0, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mIapFiles:[[[B

    aget-object v1, v0, p1

    iget-object v0, p3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    aput-object v0, v1, p2

    .line 612
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 613
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 614
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 617
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    return-void

    .line 609
    :cond_1
    const-string v0, "UsimPhoneBookManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readIapRecordDone failed for pbrIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iapIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 617
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method readPbrFileAndWait()V
    .locals 4

    .prologue
    .line 282
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/MiuiIccFileHandler;

    const/16 v2, 0x4f30

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/MiuiIccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 284
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "UsimPhoneBookManager"

    const-string v2, "Interrupted Exception in readPbrFileAndWait"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method readPbrFileDone(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 291
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 293
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 294
    .local v0, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    .line 298
    .end local v0           #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 300
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    return-void

    .line 296
    :cond_0
    const-string v1, "UsimPhoneBookManager"

    const-string v2, "readPbrFile failed"

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method readRecordSizeAndWait(II)Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;
    .locals 4
    .parameter "type"
    .parameter "fileId"

    .prologue
    .line 313
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/MiuiIccFileHandler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/android/internal/telephony/MiuiIccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 315
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    return-object v1

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "UsimPhoneBookManager"

    const-string v2, "Interrupted Exception in readRecordSizeAndWait"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method readRecordSizeDone(ILandroid/os/AsyncResult;)V
    .locals 4
    .parameter "fileId"
    .parameter "ar"

    .prologue
    .line 323
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 324
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 325
    .local v0, recordSize:[I
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 326
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;-><init>(Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;[I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .end local v0           #recordSize:[I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 333
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    return-void

    .line 329
    :cond_1
    const-string v1, "UsimPhoneBookManager"

    const-string v2, "readRecordSize failed"

    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 333
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method readType1Ef(Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;)V
    .locals 13
    .parameter "record"

    .prologue
    .line 442
    iget v9, p1, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v10, 0xa8

    if-eq v9, v10, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v10, 0xc0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    iget v1, v9, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    .line 447
    .local v1, adnRecordCount:I
    iget v9, p1, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mPbrIndex:I

    mul-int v4, v9, v1

    .line 448
    .local v4, offset:I
    add-int v3, v4, v1

    .line 449
    .local v3, max:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v9, v3, :cond_2

    .line 450
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 455
    :cond_2
    iget v9, p1, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    sparse-switch v9, :sswitch_data_0

    .line 465
    const-string v9, "UsimPhoneBookManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "readType1Ef: unsupported tag "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 457
    :sswitch_0
    const/4 v8, 0x4

    .line 458
    .local v8, what:I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 469
    .local v5, readingNum:Ljava/util/concurrent/atomic/AtomicInteger;
    :goto_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    iget v10, p1, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    iget v7, v9, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordSize:I

    .line 470
    .local v7, recordSize:I
    move v0, v4

    .local v0, adnIndex:I
    :goto_2
    if-ge v0, v3, :cond_4

    .line 471
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/MiuiAdnRecord;

    .line 472
    .local v6, rec:Lcom/android/internal/telephony/MiuiAdnRecord;
    invoke-virtual {v6}, Lcom/android/internal/telephony/MiuiAdnRecord;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 473
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 474
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/MiuiIccFileHandler;

    iget v10, p1, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mEfTag:I

    add-int/lit8 v11, v0, 0x1

    sub-int/2addr v11, v4

    iget v12, p1, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mPbrIndex:I

    invoke-virtual {p0, v8, v12, v0}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v9, v10, v7, v11, v12}, Lcom/android/internal/telephony/MiuiIccFileHandler;->loadEFLinearFixed(IIILandroid/os/Message;)V

    .line 470
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 461
    .end local v0           #adnIndex:I
    .end local v5           #readingNum:Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v6           #rec:Lcom/android/internal/telephony/MiuiAdnRecord;
    .end local v7           #recordSize:I
    .end local v8           #what:I
    :sswitch_1
    const/4 v8, 0x5

    .line 462
    .restart local v8       #what:I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 463
    .restart local v5       #readingNum:Ljava/util/concurrent/atomic/AtomicInteger;
    goto :goto_1

    .line 479
    .restart local v0       #adnIndex:I
    .restart local v7       #recordSize:I
    :cond_4
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    if-eqz v9, :cond_0

    .line 481
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 482
    :catch_0
    move-exception v2

    .line 483
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v9, "UsimPhoneBookManager"

    const-string v10, "Interrupted Exception in readType1Ef"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 455
    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_0
        0xca -> :sswitch_1
    .end sparse-switch
.end method

.method readType2Ef(Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;)V
    .locals 18
    .parameter "record"

    .prologue
    .line 489
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v16, 0xa9

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v15, v15, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mPbrIndex:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 494
    .local v5, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v5, :cond_0

    const/16 v15, 0xc1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v5, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 498
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mPbrIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->readIapFileAndWait(I)V

    .line 499
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mIapFiles:[[[B

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mIapFiles:[[[B

    array-length v15, v15

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mPbrIndex:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mIapFiles:[[[B

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mPbrIndex:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    if-nez v15, :cond_3

    .line 501
    :cond_2
    const-string v15, "UsimPhoneBookManager"

    const-string v16, "readType2Ef: IAP file is empty"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 507
    :cond_3
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    sparse-switch v15, :sswitch_data_0

    .line 517
    const-string v15, "UsimPhoneBookManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "readType2EF: no implementation for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 509
    :sswitch_0
    const/4 v14, 0x4

    .line 510
    .local v14, what:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 521
    .local v10, readingNum:Ljava/util/concurrent/atomic/AtomicInteger;
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mIapFiles:[[[B

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mPbrIndex:I

    move/from16 v16, v0

    aget-object v7, v15, v16

    .line 522
    .local v7, iaps:[[B
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v16, 0xc0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    iget v3, v15, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    .line 523
    .local v3, adnRecordCount:I
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mPbrIndex:I

    mul-int v9, v15, v3

    .line 524
    .local v9, offset:I
    add-int v8, v9, v3

    .line 525
    .local v8, max:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v15, v8, :cond_4

    .line 526
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 529
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    iget v13, v15, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordSize:I

    .line 530
    .local v13, recordSize:I
    move v2, v9

    .local v2, adnIndex:I
    :goto_2
    if-ge v2, v8, :cond_8

    .line 531
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/MiuiAdnRecord;

    .line 532
    .local v11, rec:Lcom/android/internal/telephony/MiuiAdnRecord;
    invoke-virtual {v11}, Lcom/android/internal/telephony/MiuiAdnRecord;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_5

    .line 533
    sub-int v15, v2, v9

    aget-object v6, v7, v15

    .line 534
    .local v6, iap:[B
    if-nez v6, :cond_6

    .line 535
    const-string v15, "UsimPhoneBookManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "readType2Ef: No IAP for ADN "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    add-int/lit8 v17, v2, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    .end local v6           #iap:[B
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 513
    .end local v2           #adnIndex:I
    .end local v3           #adnRecordCount:I
    .end local v7           #iaps:[[B
    .end local v8           #max:I
    .end local v9           #offset:I
    .end local v10           #readingNum:Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v11           #rec:Lcom/android/internal/telephony/MiuiAdnRecord;
    .end local v13           #recordSize:I
    .end local v14           #what:I
    :sswitch_1
    const/4 v14, 0x5

    .line 514
    .restart local v14       #what:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 515
    .restart local v10       #readingNum:Ljava/util/concurrent/atomic/AtomicInteger;
    goto/16 :goto_1

    .line 539
    .restart local v2       #adnIndex:I
    .restart local v3       #adnRecordCount:I
    .restart local v6       #iap:[B
    .restart local v7       #iaps:[[B
    .restart local v8       #max:I
    .restart local v9       #offset:I
    .restart local v11       #rec:Lcom/android/internal/telephony/MiuiAdnRecord;
    .restart local v13       #recordSize:I
    :cond_6
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mType2Record:I

    aget-byte v12, v6, v15

    .line 540
    .local v12, recordNumber:I
    const/16 v15, 0xff

    if-ne v12, v15, :cond_7

    .line 541
    const-string v15, "UsimPhoneBookManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "readType2Ef: NO IAP index for ADN "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    add-int/lit8 v17, v2, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 545
    :cond_7
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 546
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/MiuiIccFileHandler;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mPbrIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v13, v12, v1}, Lcom/android/internal/telephony/MiuiIccFileHandler;->loadEFLinearFixed(IIILandroid/os/Message;)V

    goto :goto_3

    .line 551
    .end local v6           #iap:[B
    .end local v11           #rec:Lcom/android/internal/telephony/MiuiAdnRecord;
    .end local v12           #recordNumber:I
    :cond_8
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v15

    if-eqz v15, :cond_0

    .line 553
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 554
    :catch_0
    move-exception v4

    .line 555
    .local v4, e:Ljava/lang/InterruptedException;
    const-string v15, "UsimPhoneBookManager"

    const-string v16, "Interrupted Exception in readType2Ef"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 507
    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_0
        0xca -> :sswitch_1
    .end sparse-switch
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 95
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 97
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    .line 98
    check-cast v0, [[[B

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mIapFiles:[[[B

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 100
    return-void
.end method

.method setPhoneAdnRecordAnr(II[B)V
    .locals 3
    .parameter "pbrIndex"
    .parameter "adnIndex"
    .parameter "anrData"

    .prologue
    .line 412
    if-nez p3, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    const/4 v2, 0x1

    aget-byte v1, p3, v2

    .line 417
    .local v1, length:I
    if-lez v1, :cond_0

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 418
    const/4 v2, 0x2

    invoke-static {p3, v2, v1}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, anr:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 420
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/MiuiAdnRecord;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/MiuiAdnRecord;->setAnr(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setPhoneAdnRecordEmail(II[B)V
    .locals 5
    .parameter "pbrIndex"
    .parameter "andIndex"
    .parameter "emailData"

    .prologue
    const/4 v4, 0x0

    .line 426
    if-nez p3, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    array-length v1, p3

    .line 431
    .local v1, length:I
    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 432
    add-int/lit8 v1, v1, -0x2

    .line 435
    :cond_2
    invoke-static {p3, v4, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, email:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 437
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/MiuiAdnRecord;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/MiuiAdnRecord;->setEmails([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(ILcom/android/internal/telephony/MiuiAdnRecord;)I
    .locals 3
    .parameter "recordNumber"
    .parameter "adn"

    .prologue
    .line 156
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 157
    :try_start_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->checkEmailCapacityFree(I[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    const/16 v0, -0x3f3

    monitor-exit v2

    .line 183
    :goto_0
    return v0

    .line 161
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->checkEmailLength([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    const/16 v0, -0x3f4

    monitor-exit v2

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 165
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/MiuiAdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->checkAnrCapacityFree(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 166
    const/16 v0, -0x3f0

    monitor-exit v2

    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/MiuiAdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->checkAnrLength(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 170
    const/16 v0, -0x3f1

    monitor-exit v2

    goto :goto_0

    .line 173
    :cond_3
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->updateAdnAndWait(Lcom/android/internal/telephony/MiuiAdnRecord;I)I

    move-result v0

    .line 174
    .local v0, result:I
    if-eqz v0, :cond_4

    .line 175
    monitor-exit v2

    goto :goto_0

    .line 178
    :cond_4
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->updateAnrAndWait(Lcom/android/internal/telephony/MiuiAdnRecord;I)I

    move-result v0

    .line 179
    if-eqz v0, :cond_5

    .line 180
    monitor-exit v2

    goto :goto_0

    .line 183
    :cond_5
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->updateEmailAndWait(Lcom/android/internal/telephony/MiuiAdnRecord;I)I

    move-result v0

    .end local v0           #result:I
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public update(Lcom/android/internal/telephony/MiuiAdnRecord;ILcom/android/internal/telephony/MiuiAdnRecord;)I
    .locals 18
    .parameter "oldAdn"
    .parameter "oldRecordNumber"
    .parameter "newAdn"

    .prologue
    .line 188
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 189
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v14, 0xc0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    iget v3, v12, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    .line 190
    .local v3, adnCount:I
    add-int/lit8 v12, p2, -0x1

    div-int v6, v12, v3

    .line 192
    .local v6, pbrIndex:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    new-array v10, v12, [I

    .line 193
    .local v10, validPbr:[I
    const/4 v12, 0x0

    invoke-static {v10, v12}, Ljava/util/Arrays;->fill([II)V

    .line 194
    array-length v11, v10

    .line 196
    .local v11, validPbrCount:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    const/16 v14, 0xca

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;

    .line 197
    .local v7, record:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->hasEmail([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->hasEmail([Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    iget v12, v7, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v14, 0xa9

    if-ne v12, v14, :cond_1

    .line 198
    const/4 v4, 0x0

    .local v4, i:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v9

    .local v9, s:I
    :goto_0
    if-ge v4, v9, :cond_1

    .line 199
    mul-int v12, v4, v3

    add-int/lit8 v12, v12, 0x1

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->checkEmailCapacityFree(I[Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 200
    const/16 v12, -0x3f3

    aput v12, v10, v4

    .line 201
    add-int/lit8 v11, v11, -0x1

    .line 198
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 206
    .end local v4           #i:I
    .end local v9           #s:I
    :cond_1
    if-nez v11, :cond_2

    .line 207
    aget v12, v10, v6

    monitor-exit v13

    .line 247
    :goto_1
    return v12

    .line 210
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    const/16 v14, 0xc4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #record:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;
    check-cast v7, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;

    .line 211
    .restart local v7       #record:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/MiuiAdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/MiuiAdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget v12, v7, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v14, 0xa9

    if-ne v12, v14, :cond_4

    .line 212
    const/4 v4, 0x0

    .restart local v4       #i:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v9

    .restart local v9       #s:I
    :goto_2
    if-ge v4, v9, :cond_4

    .line 213
    mul-int v12, v4, v3

    add-int/lit8 v12, v12, 0x1

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/MiuiAdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->checkAnrCapacityFree(ILjava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 214
    const/16 v12, -0x3f0

    aput v12, v10, v4

    .line 215
    add-int/lit8 v11, v11, -0x1

    .line 212
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 220
    .end local v4           #i:I
    .end local v9           #s:I
    :cond_4
    if-nez v11, :cond_5

    .line 221
    aget v12, v10, v6

    monitor-exit v13

    goto :goto_1

    .line 248
    .end local v3           #adnCount:I
    .end local v6           #pbrIndex:I
    .end local v7           #record:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;
    .end local v10           #validPbr:[I
    .end local v11           #validPbrCount:I
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 224
    .restart local v3       #adnCount:I
    .restart local v6       #pbrIndex:I
    .restart local v7       #record:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;
    .restart local v10       #validPbr:[I
    .restart local v11       #validPbrCount:I
    :cond_5
    :try_start_1
    aget v12, v10, v6

    if-nez v12, :cond_6

    .line 225
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->update(ILcom/android/internal/telephony/MiuiAdnRecord;)I

    move-result v12

    monitor-exit v13

    goto :goto_1

    .line 228
    :cond_6
    const/4 v8, -0x1

    .line 229
    .local v8, recordNumber:I
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_3
    array-length v12, v10

    if-ge v4, v12, :cond_9

    .line 230
    aget v12, v10, v4

    if-nez v12, :cond_7

    .line 231
    mul-int v5, v3, v4

    .local v5, j:I
    add-int v9, v5, v3

    .restart local v9       #s:I
    :goto_4
    if-ge v5, v9, :cond_7

    .line 232
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/MiuiAdnRecord;

    invoke-virtual {v12}, Lcom/android/internal/telephony/MiuiAdnRecord;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 233
    add-int/lit8 v8, v5, 0x1

    .line 229
    .end local v5           #j:I
    .end local v9           #s:I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 231
    .restart local v5       #j:I
    .restart local v9       #s:I
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 240
    .end local v5           #j:I
    .end local v9           #s:I
    :cond_9
    if-gez v8, :cond_a

    .line 241
    aget v12, v10, v6

    monitor-exit v13

    goto/16 :goto_1

    .line 244
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/MiuiAdnRecord;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_b

    .line 245
    new-instance v12, Lcom/android/internal/telephony/MiuiAdnRecord;

    const-string v14, ""

    const-string v15, ""

    const/16 v16, 0x0

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v14, v15, v0, v1}, Lcom/android/internal/telephony/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->update(ILcom/android/internal/telephony/MiuiAdnRecord;)I

    .line 247
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->update(ILcom/android/internal/telephony/MiuiAdnRecord;)I

    move-result v12

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method updateAdnAndWait(Lcom/android/internal/telephony/MiuiAdnRecord;I)I
    .locals 12
    .parameter "adn"
    .parameter "adnRecordNumber"

    .prologue
    const/16 v4, 0xc2

    const/16 v3, 0xc0

    .line 975
    add-int/lit8 v1, p2, -0x1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    iget v0, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    div-int v11, v1, v0

    .line 976
    .local v11, pbrIndex:I
    add-int/lit8 v1, p2, -0x1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    iget v0, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    rem-int v7, v1, v0

    .line 978
    .local v7, adnIndex:I
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 979
    .local v9, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v9, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 981
    :cond_0
    const/16 v0, -0x3f6

    .line 997
    :goto_0
    return v0

    .line 984
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/MiuiAdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/MiuiIccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/MiuiAdnRecordLoader;-><init>(Lcom/android/internal/telephony/MiuiIccFileHandler;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v4, v7, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MiuiAdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 987
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mUpdateResult:Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 993
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/MiuiAdnRecord;

    .line 994
    .local v10, oldAdn:Lcom/android/internal/telephony/MiuiAdnRecord;
    invoke-virtual {p1}, Lcom/android/internal/telephony/MiuiAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/MiuiAdnRecord;->setAlphaTag(Ljava/lang/String;)V

    .line 995
    invoke-virtual {p1}, Lcom/android/internal/telephony/MiuiAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/MiuiAdnRecord;->setNumber(Ljava/lang/String;)V

    .line 997
    .end local v10           #oldAdn:Lcom/android/internal/telephony/MiuiAdnRecord;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mUpdateResult:Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/android/internal/telephony/MiuiIccProviderException;->getErrorCauseFromException(Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0

    .line 988
    :catch_0
    move-exception v8

    .line 989
    .local v8, e:Ljava/lang/InterruptedException;
    const-string v0, "UsimPhoneBookManager"

    const-string v1, "Interrupted Exception in updateAdnAndWait"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method updateAnrAndWait(Lcom/android/internal/telephony/MiuiAdnRecord;I)I
    .locals 7
    .parameter "adn"
    .parameter "adnRecordNumber"

    .prologue
    const/16 v6, 0xc4

    .line 707
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v5, 0xc0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    iget v0, v4, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    .line 708
    .local v0, adnRecordCount:I
    add-int/lit8 v4, p2, -0x1

    div-int v2, v4, v0

    .line 710
    .local v2, pbrIndex:I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 711
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 712
    :cond_0
    const/16 v4, -0x3f6

    .line 722
    :goto_0
    return v4

    .line 715
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;

    .line 717
    .local v3, record:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;
    iget v4, v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v5, 0xa9

    if-ne v4, v5, :cond_2

    .line 718
    invoke-virtual {p1}, Lcom/android/internal/telephony/MiuiAdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p2, v3}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->updateType2Ef(Ljava/lang/String;ILcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;)I

    move-result v4

    goto :goto_0

    .line 719
    :cond_2
    iget v4, v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_3

    .line 720
    invoke-virtual {p1}, Lcom/android/internal/telephony/MiuiAdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p2, v3}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->updateType1Ef(Ljava/lang/String;ILcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;)I

    move-result v4

    goto :goto_0

    .line 722
    :cond_3
    const/16 v4, -0x3e9

    goto :goto_0
.end method

.method updateEmailAndWait(Lcom/android/internal/telephony/MiuiAdnRecord;I)I
    .locals 9
    .parameter "adn"
    .parameter "adnRecordNumber"

    .prologue
    const/4 v5, 0x0

    const/16 v8, 0xca

    const/4 v7, 0x0

    .line 688
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v6, 0xc0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    iget v0, v4, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    .line 689
    .local v0, adnRecordCount:I
    add-int/lit8 v4, p2, -0x1

    div-int v2, v4, v0

    .line 691
    .local v2, pbrIndex:I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 692
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 693
    :cond_0
    const/16 v4, -0x3f6

    .line 703
    :goto_0
    return v4

    .line 696
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;

    .line 698
    .local v3, record:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;
    iget v4, v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v6, 0xa9

    if-ne v4, v6, :cond_3

    .line 699
    invoke-virtual {p1}, Lcom/android/internal/telephony/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v4, v5

    :goto_1
    invoke-virtual {p0, v4, p2, v3}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->updateType2Ef(Ljava/lang/String;ILcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;)I

    move-result v4

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v7

    goto :goto_1

    .line 700
    :cond_3
    iget v4, v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v6, 0xa8

    if-ne v4, v6, :cond_5

    .line 701
    invoke-virtual {p1}, Lcom/android/internal/telephony/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_2
    invoke-virtual {p0, v5, p2, v3}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->updateType1Ef(Ljava/lang/String;ILcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;)I

    move-result v4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v7

    goto :goto_2

    .line 703
    :cond_5
    const/16 v4, -0x3e9

    goto :goto_0
.end method

.method updateType1Ef(Ljava/lang/String;ILcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;)I
    .locals 12
    .parameter "data"
    .parameter "adnRecordNumber"
    .parameter "record"

    .prologue
    const/4 v4, 0x0

    const/16 v11, 0xca

    const/16 v10, 0xc4

    const/4 v5, -0x1

    const/16 v0, -0x3f6

    .line 726
    iget v1, p3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v2, 0xa8

    if-eq v1, v2, :cond_0

    .line 791
    :goto_0
    return v0

    .line 730
    :cond_0
    iget v1, p3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 738
    :sswitch_0
    const/4 v3, 0x0

    .line 739
    .local v3, recordData:[B
    iget v0, p3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    sparse-switch v0, :sswitch_data_1

    .line 764
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v1, 0xc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    iget v7, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    .line 765
    .local v7, adnRecordCount:I
    add-int/lit8 v0, p2, -0x1

    rem-int v6, v0, v7

    .line 766
    .local v6, adnIndex:I
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/MiuiIccFileHandler;

    iget v1, p3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mEfTag:I

    add-int/lit8 v2, v6, 0x1

    const/4 v5, 0x7

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/MiuiIccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 768
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mUpdateResult:Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 773
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/MiuiAdnRecord;

    .line 774
    .local v9, oldAdn:Lcom/android/internal/telephony/MiuiAdnRecord;
    iget v0, p3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    sparse-switch v0, :sswitch_data_2

    .line 791
    .end local v9           #oldAdn:Lcom/android/internal/telephony/MiuiAdnRecord;
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mUpdateResult:Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/android/internal/telephony/MiuiIccProviderException;->getErrorCauseFromException(Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0

    .line 741
    .end local v6           #adnIndex:I
    .end local v7           #adnRecordCount:I
    :sswitch_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 742
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    iget v0, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordSize:I

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->buildAnrRecord(Ljava/lang/String;I)[B

    move-result-object v3

    .line 743
    if-nez v3, :cond_1

    .line 744
    const/16 v0, -0x3f1

    goto :goto_0

    .line 747
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    iget v0, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordSize:I

    new-array v3, v0, [B

    .line 748
    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_1

    .line 752
    :sswitch_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 753
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    iget v0, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordSize:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->buildEmailRecord(Ljava/lang/String;II)[B

    move-result-object v3

    .line 754
    if-nez v3, :cond_1

    .line 755
    const/16 v0, -0x3f4

    goto/16 :goto_0

    .line 758
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    iget v0, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordSize:I

    new-array v3, v0, [B

    .line 759
    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([BB)V

    goto/16 :goto_1

    .line 769
    .restart local v6       #adnIndex:I
    .restart local v7       #adnRecordCount:I
    :catch_0
    move-exception v8

    .line 770
    .local v8, e:Ljava/lang/InterruptedException;
    const-string v0, "UsimPhoneBookManager"

    const-string v1, "Interrupted Exception in updateType1Ef"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 776
    .end local v8           #e:Ljava/lang/InterruptedException;
    .restart local v9       #oldAdn:Lcom/android/internal/telephony/MiuiAdnRecord;
    :sswitch_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 777
    const-string v0, ""

    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/MiuiAdnRecord;->setAnr(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 779
    :cond_5
    invoke-virtual {v9, p1}, Lcom/android/internal/telephony/MiuiAdnRecord;->setAnr(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 783
    :sswitch_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 784
    invoke-virtual {v9, v4}, Lcom/android/internal/telephony/MiuiAdnRecord;->setEmails([Ljava/lang/String;)V

    goto/16 :goto_3

    .line 786
    :cond_6
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/MiuiAdnRecord;->setEmails([Ljava/lang/String;)V

    goto/16 :goto_3

    .line 730
    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_0
        0xca -> :sswitch_0
    .end sparse-switch

    .line 739
    :sswitch_data_1
    .sparse-switch
        0xc4 -> :sswitch_1
        0xca -> :sswitch_2
    .end sparse-switch

    .line 774
    :sswitch_data_2
    .sparse-switch
        0xc4 -> :sswitch_3
        0xca -> :sswitch_4
    .end sparse-switch
.end method

.method updateType2Ef(Ljava/lang/String;ILcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;)I
    .locals 23
    .parameter "data"
    .parameter "adnRecordNumber"
    .parameter "record"

    .prologue
    .line 795
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    const/16 v4, 0xa9

    if-eq v3, v4, :cond_0

    .line 796
    const/16 v3, -0x3f6

    .line 902
    :goto_0
    return v3

    .line 798
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mPbrIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map;

    .line 799
    .local v18, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v18, :cond_1

    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 800
    :cond_1
    const/16 v3, -0x3f6

    goto :goto_0

    .line 803
    :cond_2
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    sparse-switch v3, :sswitch_data_0

    .line 808
    const/16 v3, -0x3f6

    goto :goto_0

    .line 811
    :sswitch_0
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mPbrIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->readIapFileAndWait(I)V

    .line 813
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v4, 0xc0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    iget v0, v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    move/from16 v16, v0

    .line 814
    .local v16, adnRecordCount:I
    add-int/lit8 v3, p2, -0x1

    rem-int v19, v3, v16

    .line 815
    .local v19, iapIndex:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mIapFiles:[[[B

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mPbrIndex:I

    aget-object v20, v3, v4

    .line 816
    .local v20, iaps:[[B
    aget-object v13, v20, v19

    .line 818
    .local v13, iap:[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    iget v0, v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    move/from16 v22, v0

    .line 819
    .local v22, recordCount:I
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mType2Record:I

    aget-byte v9, v13, v3

    .line 820
    .local v9, dataIndex:I
    const/16 v5, 0xff

    .line 821
    .local v5, recordNumber:I
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 822
    if-lez v9, :cond_7

    move/from16 v0, v22

    if-gt v9, v0, :cond_7

    .line 823
    move v5, v9

    .line 831
    :cond_3
    const/4 v6, 0x0

    .line 832
    .local v6, recordData:[B
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    sparse-switch v3, :sswitch_data_1

    .line 846
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/MiuiIccFileHandler;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/MiuiIccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 848
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mUpdateResult:Landroid/os/AsyncResult;

    iget-object v3, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_6

    .line 873
    if-eq v5, v9, :cond_5

    .line 874
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mType2Record:I

    int-to-byte v4, v5

    aput-byte v4, v13, v3

    .line 875
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/MiuiIccFileHandler;

    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/lit8 v12, v19, 0x1

    const/4 v14, 0x0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    invoke-virtual/range {v10 .. v15}, Lcom/android/internal/telephony/MiuiIccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 877
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 882
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mUpdateResult:Landroid/os/AsyncResult;

    iget-object v3, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_6

    .line 883
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/MiuiAdnRecord;

    .line 884
    .local v21, oldAdn:Lcom/android/internal/telephony/MiuiAdnRecord;
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    sparse-switch v3, :sswitch_data_2

    .line 902
    .end local v21           #oldAdn:Lcom/android/internal/telephony/MiuiAdnRecord;
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mUpdateResult:Landroid/os/AsyncResult;

    iget-object v3, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3}, Lcom/android/internal/telephony/MiuiIccProviderException;->getErrorCauseFromException(Ljava/lang/Throwable;)I

    move-result v3

    goto/16 :goto_0

    .line 825
    .end local v6           #recordData:[B
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->getRecordNumber(Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;I)I

    move-result v5

    .line 826
    if-gez v5, :cond_3

    .line 827
    const/16 v3, -0x3ed

    goto/16 :goto_0

    .line 834
    .restart local v6       #recordData:[B
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v4, 0xc4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    iget v3, v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordSize:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->buildAnrRecord(Ljava/lang/String;I)[B

    move-result-object v6

    .line 835
    if-nez v6, :cond_4

    .line 836
    const/16 v3, -0x3f1

    goto/16 :goto_0

    .line 840
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v4, 0xca

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    iget v3, v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordSize:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->buildEmailRecord(Ljava/lang/String;II)[B

    move-result-object v6

    .line 841
    if-nez v6, :cond_4

    .line 842
    const/16 v3, -0x3f4

    goto/16 :goto_0

    .line 849
    :catch_0
    move-exception v17

    .line 850
    .local v17, e:Ljava/lang/InterruptedException;
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "Interrupted Exception in updateType2Anr"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 852
    .end local v6           #recordData:[B
    .end local v17           #e:Ljava/lang/InterruptedException;
    :cond_8
    if-lez v9, :cond_9

    move/from16 v0, v22

    if-gt v9, v0, :cond_9

    .line 853
    const/4 v6, 0x0

    .line 854
    .restart local v6       #recordData:[B
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    sparse-switch v3, :sswitch_data_3

    .line 862
    :goto_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/MiuiIccFileHandler;

    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v11, 0x0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    move-object v10, v6

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/telephony/MiuiIccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 864
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 865
    :catch_1
    move-exception v17

    .line 866
    .restart local v17       #e:Ljava/lang/InterruptedException;
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "Interrupted Exception in updateType2Anr"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 856
    .end local v17           #e:Ljava/lang/InterruptedException;
    :sswitch_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v7, 0xc4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    iget v3, v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordSize:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->buildAnrRecord(Ljava/lang/String;I)[B

    move-result-object v6

    .line 857
    goto :goto_4

    .line 859
    :sswitch_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    const/16 v7, 0xca

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;

    iget v3, v3, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordSize:I

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v4, v1, v3}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->buildEmailRecord(Ljava/lang/String;II)[B

    move-result-object v6

    goto :goto_4

    .line 869
    .end local v6           #recordData:[B
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 878
    .restart local v6       #recordData:[B
    :catch_2
    move-exception v17

    .line 879
    .restart local v17       #e:Ljava/lang/InterruptedException;
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "Interrupted Exception in updateType2Anr"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 886
    .end local v17           #e:Ljava/lang/InterruptedException;
    .restart local v21       #oldAdn:Lcom/android/internal/telephony/MiuiAdnRecord;
    :sswitch_5
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 887
    const-string v3, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/MiuiAdnRecord;->setAnr(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 889
    :cond_a
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MiuiAdnRecord;->setAnr(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 893
    :sswitch_6
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 894
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/MiuiAdnRecord;->setEmails([Ljava/lang/String;)V

    goto/16 :goto_3

    .line 896
    :cond_b
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/MiuiAdnRecord;->setEmails([Ljava/lang/String;)V

    goto/16 :goto_3

    .line 803
    nop

    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_0
        0xca -> :sswitch_0
    .end sparse-switch

    .line 832
    :sswitch_data_1
    .sparse-switch
        0xc4 -> :sswitch_1
        0xca -> :sswitch_2
    .end sparse-switch

    .line 884
    :sswitch_data_2
    .sparse-switch
        0xc4 -> :sswitch_5
        0xca -> :sswitch_6
    .end sparse-switch

    .line 854
    :sswitch_data_3
    .sparse-switch
        0xc4 -> :sswitch_3
        0xca -> :sswitch_4
    .end sparse-switch
.end method
