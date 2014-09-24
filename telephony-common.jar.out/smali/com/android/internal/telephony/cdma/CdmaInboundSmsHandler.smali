.class public Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
.super Lcom/android/internal/telephony/InboundSmsHandler;
.source "CdmaInboundSmsHandler.java"


# instance fields
.field private final mCheckForDuplicatePortsInOmadmWapPush:Z

.field private mLastAcknowledgedSmsFingerprint:[B

.field private mLastDispatchedSmsFingerprint:[B

.field protected mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

.field private final mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V
    .locals 6
    .parameter "context"
    .parameter "storageMonitor"
    .parameter "phone"
    .parameter "smsDispatcher"

    .prologue
    const/4 v5, 0x0

    .line 62
    const-string v1, "CdmaInboundSmsHandler"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CellBroadcastHandler;)V

    .line 54
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCheckForDuplicatePortsInOmadmWapPush:Z

    .line 63
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .line 64
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->init(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    .line 65
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 66
    iget-object v0, p3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 67
    return-void
.end method

.method private static checkDuplicatePortOmadmWapPush([BI)Z
    .locals 6
    .parameter "origPdu"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 359
    add-int/lit8 p1, p1, 0x4

    .line 360
    array-length v5, p0

    sub-int/2addr v5, p1

    new-array v1, v5, [B

    .line 361
    .local v1, omaPdu:[B
    array-length v5, v1

    invoke-static {p0, p1, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 363
    new-instance v2, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 364
    .local v2, pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    const/4 v3, 0x2

    .line 367
    .local v3, wspIndex:I
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 379
    :cond_0
    :goto_0
    return v4

    .line 371
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int/2addr v3, v5

    .line 374
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 378
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, mimeType:Ljava/lang/String;
    const-string v4, "application/vnd.syncml.notification"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method private handleVoicemailTeleservice(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 3
    .parameter "sms"

    .prologue
    .line 270
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v0

    .line 271
    .local v0, voicemailCount:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Voicemail count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 274
    if-gez v0, :cond_1

    .line 275
    const/4 v0, -0x1

    .line 282
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageCount(I)V

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->storeVoiceMailCount()V

    .line 285
    return-void

    .line 276
    :cond_1
    const/16 v1, 0x63

    if-le v0, v1, :cond_0

    .line 279
    const/16 v0, 0x63

    goto :goto_0
.end method

.method private static isInEmergencyCallMode()Z
    .locals 3

    .prologue
    .line 103
    const-string v1, "ril.cdma.inecmmode"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, inEcm:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    .locals 1
    .parameter "context"
    .parameter "storageMonitor"
    .parameter "phone"
    .parameter "smsDispatcher"

    .prologue
    .line 92
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V

    .line 94
    .local v0, handler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->start()V

    .line 95
    return-object v0
.end method

.method private processCdmaWapPdu([BILjava/lang/String;J)I
    .locals 16
    .parameter "pdu"
    .parameter "referenceNumber"
    .parameter "address"
    .parameter "timestamp"

    .prologue
    .line 299
    const/4 v12, 0x0

    .line 301
    .local v12, index:I
    add-int/lit8 v13, v12, 0x1

    .end local v12           #index:I
    .local v13, index:I
    aget-byte v3, p1, v12

    and-int/lit16 v14, v3, 0xff

    .line 302
    .local v14, msgType:I
    if-eqz v14, :cond_0

    .line 303
    const-string v3, "Received a WAP SMS which is not WDP. Discard."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 304
    const/4 v3, 0x1

    move v12, v13

    .line 344
    .end local v13           #index:I
    .restart local v12       #index:I
    :goto_0
    return v3

    .line 306
    .end local v12           #index:I
    .restart local v13       #index:I
    :cond_0
    add-int/lit8 v12, v13, 0x1

    .end local v13           #index:I
    .restart local v12       #index:I
    aget-byte v3, p1, v13

    and-int/lit16 v10, v3, 0xff

    .line 307
    .local v10, totalSegments:I
    add-int/lit8 v13, v12, 0x1

    .end local v12           #index:I
    .restart local v13       #index:I
    aget-byte v3, p1, v12

    and-int/lit16 v9, v3, 0xff

    .line 309
    .local v9, segment:I
    if-lt v9, v10, :cond_1

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WDP bad segment #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expecting 0-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v10, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 311
    const/4 v3, 0x1

    move v12, v13

    .end local v13           #index:I
    .restart local v12       #index:I
    goto :goto_0

    .line 315
    .end local v12           #index:I
    .restart local v13       #index:I
    :cond_1
    const/4 v15, 0x0

    .line 316
    .local v15, sourcePort:I
    const/4 v5, 0x0

    .line 317
    .local v5, destinationPort:I
    if-nez v9, :cond_2

    .line 319
    add-int/lit8 v12, v13, 0x1

    .end local v13           #index:I
    .restart local v12       #index:I
    aget-byte v3, p1, v13

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v15, v3, 0x8

    .line 320
    add-int/lit8 v13, v12, 0x1

    .end local v12           #index:I
    .restart local v13       #index:I
    aget-byte v3, p1, v12

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v15, v3

    .line 321
    add-int/lit8 v12, v13, 0x1

    .end local v13           #index:I
    .restart local v12       #index:I
    aget-byte v3, p1, v13

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v5, v3, 0x8

    .line 322
    add-int/lit8 v13, v12, 0x1

    .end local v12           #index:I
    .restart local v13       #index:I
    aget-byte v3, p1, v12

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v5, v3

    .line 325
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCheckForDuplicatePortsInOmadmWapPush:Z

    if-eqz v3, :cond_2

    .line 326
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->checkDuplicatePortOmadmWapPush([BI)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 327
    add-int/lit8 v12, v13, 0x4

    .line 333
    .end local v13           #index:I
    .restart local v12       #index:I
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received WAP PDU. Type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", originator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", src-port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dst-port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", segment# = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 338
    move-object/from16 v0, p1

    array-length v3, v0

    sub-int/2addr v3, v12

    new-array v2, v3, [B

    .line 339
    .local v2, userData:[B
    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v4, v0

    sub-int/2addr v4, v12

    move-object/from16 v0, p1

    invoke-static {v0, v12, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    new-instance v1, Lcom/android/internal/telephony/InboundSmsTracker;

    const/4 v6, 0x1

    const/4 v11, 0x1

    move-wide/from16 v3, p4

    move-object/from16 v7, p3

    move/from16 v8, p2

    invoke-direct/range {v1 .. v11}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZLjava/lang/String;IIIZ)V

    .line 344
    .local v1, tracker:Lcom/android/internal/telephony/InboundSmsTracker;
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v3

    goto/16 :goto_0

    .end local v1           #tracker:Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v2           #userData:[B
    .end local v12           #index:I
    .restart local v13       #index:I
    :cond_2
    move v12, v13

    .end local v13           #index:I
    .restart local v12       #index:I
    goto :goto_1
.end method

.method private static resultToCause(I)I
    .locals 1
    .parameter "rc"

    .prologue
    .line 250
    packed-switch p0, :pswitch_data_0

    .line 261
    :pswitch_0
    const/16 v0, 0x60

    :goto_0
    return v0

    .line 254
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 256
    :pswitch_2
    const/16 v0, 0x23

    goto :goto_0

    .line 258
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 2
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 217
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->isInEmergencyCallMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->resultToCause(I)I

    move-result v0

    .line 222
    .local v0, causeCode:I
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V

    .line 224
    if-nez v0, :cond_1

    .line 225
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    .line 227
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    goto :goto_0
.end method

.method protected dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 10
    .parameter "smsb"

    .prologue
    const/4 v0, 0x1

    .line 123
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->isInEmergencyCallMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    const/4 v0, -0x1

    .line 206
    :cond_0
    :goto_0
    return v0

    :cond_1
    move-object v8, p1

    .line 127
    check-cast v8, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 128
    .local v8, sms:Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v1

    if-ne v0, v1, :cond_2

    move v7, v0

    .line 131
    .local v7, isBroadcastType:Z
    :goto_1
    if-eqz v7, :cond_4

    .line 132
    const-string v1, "Broadcast type message"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseBroadcastSms()Landroid/telephony/SmsCbMessage;

    move-result-object v6

    .line 134
    .local v6, cbMessage:Landroid/telephony/SmsCbMessage;
    if-eqz v6, :cond_3

    .line 135
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispatchSmsMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 128
    .end local v6           #cbMessage:Landroid/telephony/SmsCbMessage;
    .end local v7           #isBroadcastType:Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 137
    .restart local v6       #cbMessage:Landroid/telephony/SmsCbMessage;
    .restart local v7       #isBroadcastType:Z
    :cond_3
    const-string v1, "error trying to parse broadcast SMS"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    .end local v6           #cbMessage:Landroid/telephony/SmsCbMessage;
    :cond_4
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    .line 144
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    :cond_5
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 151
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v9

    .line 153
    .local v9, teleService:I
    sparse-switch v9, :sswitch_data_0

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported teleservice 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x4

    goto :goto_0

    .line 157
    :sswitch_0
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->handleVoicemailTeleservice(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    goto :goto_0

    .line 162
    :sswitch_1
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 163
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendStatusReportMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    goto :goto_0

    .line 169
    :sswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->dispatchSmsMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 185
    :cond_6
    :sswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-eq v1, v2, :cond_7

    .line 190
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 193
    :cond_7
    const/16 v1, 0x1004

    if-ne v1, v9, :cond_8

    .line 194
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v1

    iget v2, v8, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->processCdmaWapPdu([BILjava/lang/String;J)I

    move-result v0

    goto/16 :goto_0

    .line 196
    :cond_8
    const v1, 0xfdea

    if-ne v1, v9, :cond_9

    .line 199
    invoke-virtual {v8, v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->processCdmaCTWdpHeader(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v1

    iget v2, v8, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->processCdmaWapPdu([BILjava/lang/String;J)I

    move-result v0

    goto/16 :goto_0

    .line 206
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v0

    goto/16 :goto_0

    .line 153
    :sswitch_data_0
    .sparse-switch
        0x1002 -> :sswitch_1
        0x1003 -> :sswitch_0
        0x1004 -> :sswitch_3
        0x1005 -> :sswitch_1
        0x1006 -> :sswitch_2
        0xfdea -> :sswitch_3
        0x40000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected init(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .parameter "context"
    .parameter "phone"

    .prologue
    .line 70
    invoke-static {p1}, Lcom/android/internal/telephony/CellBroadcastHandler;->makeCellBroadcastHandler(Landroid/content/Context;)Lcom/android/internal/telephony/CellBroadcastHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    .line 71
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->makeScpHandler(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    .line 73
    return-void
.end method

.method protected is3gpp2()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method protected onQuitting()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewCdmaSms(Landroid/os/Handler;)V

    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispose()V

    .line 83
    const-string v0, "unregistered for 3GPP2 SMS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 84
    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->onQuitting()V

    .line 85
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 239
    invoke-super {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 242
    return-void
.end method
