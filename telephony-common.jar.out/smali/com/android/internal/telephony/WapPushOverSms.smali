.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 62
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/telephony/IWapPushManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 64
    .local v0, comp:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 65
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    :cond_0
    const-string v2, "WAP PUSH"

    const-string v3, "bindService() for wappush manager failed"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_1
    const-string v2, "WAP PUSH"

    const-string v3, "bindService() for wappush manager succeeded"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I
    .locals 31
    .parameter "pdu"
    .parameter "receiver"
    .parameter "handler"

    .prologue
    .line 92
    const-string v28, "WAP PUSH"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Rx: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v15, 0x0

    .line 96
    .local v15, index:I
    add-int/lit8 v16, v15, 0x1

    .end local v15           #index:I
    .local v16, index:I
    :try_start_0
    aget-byte v28, p1, v15
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    .line 97
    .local v25, transactionId:I
    add-int/lit8 v15, v16, 0x1

    .end local v16           #index:I
    .restart local v15       #index:I
    :try_start_1
    aget-byte v28, p1, v16

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    .line 99
    .local v21, pduType:I
    const/16 v28, 0x6

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    const/16 v28, 0x7

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x10e0049

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v15

    .line 103
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v15, v0, :cond_0

    .line 104
    add-int/lit8 v16, v15, 0x1

    .end local v15           #index:I
    .restart local v16       #index:I
    :try_start_2
    aget-byte v28, p1, v15
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    .line 105
    add-int/lit8 v15, v16, 0x1

    .end local v16           #index:I
    .restart local v15       #index:I
    :try_start_3
    aget-byte v28, p1, v16

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    .line 107
    const-string v28, "WAP PUSH"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "index = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " PDU Type = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " transactionID = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/16 v28, 0x6

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    const/16 v28, 0x7

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 113
    const-string v28, "WAP PUSH"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/16 v28, 0x1

    .line 265
    .end local v21           #pduType:I
    .end local v25           #transactionId:I
    :goto_0
    return v28

    .line 117
    .restart local v21       #pduType:I
    .restart local v25       #transactionId:I
    :cond_0
    const-string v28, "WAP PUSH"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/16 v28, 0x1

    goto :goto_0

    .line 122
    :cond_1
    new-instance v20, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 130
    .local v20, pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v28

    if-nez v28, :cond_2

    .line 131
    const-string v28, "WAP PUSH"

    const-string v29, "Received PDU. Header Length error."

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/16 v28, 0x2

    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-int v13, v0

    .line 135
    .local v13, headerLength:I
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v28

    add-int v15, v15, v28

    .line 137
    move v14, v15

    .line 151
    .local v14, headerStartIndex:I
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v28

    if-nez v28, :cond_3

    .line 152
    const-string v28, "WAP PUSH"

    const-string v29, "Received PDU. Header Content-Type error."

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/16 v28, 0x2

    goto :goto_0

    .line 156
    :cond_3
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v19

    .line 157
    .local v19, mimeType:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v6

    .line 158
    .local v6, binaryContentType:J
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v28

    add-int v15, v15, v28

    .line 160
    new-array v12, v13, [B

    .line 161
    .local v12, header:[B
    const/16 v28, 0x0

    array-length v0, v12

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v14, v12, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    if-eqz v19, :cond_6

    const-string v28, "application/vnd.wap.coc"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 166
    move-object/from16 v18, p1

    .line 179
    .local v18, intentData:[B
    :goto_1
    add-int v28, v15, v13

    add-int/lit8 v28, v28, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 180
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-int v15, v0

    .line 181
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 182
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v26

    .line 183
    .local v26, wapAppId:Ljava/lang/String;
    if-nez v26, :cond_4

    .line 184
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    .line 187
    :cond_4
    if-nez v19, :cond_7

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    .line 189
    .local v9, contentType:Ljava/lang/String;
    :goto_2
    const-string v28, "WAP PUSH"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "appid found: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ":"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    .line 192
    const/16 v24, 0x1

    .line 193
    .local v24, processFurther:Z
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    move-object/from16 v27, v0

    .line 195
    .local v27, wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    if-nez v27, :cond_8

    .line 196
    const-string v28, "WAP PUSH"

    const-string v29, "wap push manager not found!"

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 215
    :cond_5
    :goto_3
    if-nez v24, :cond_9

    .line 216
    const/16 v28, 0x1

    goto/16 :goto_0

    .line 168
    .end local v9           #contentType:Ljava/lang/String;
    .end local v18           #intentData:[B
    .end local v24           #processFurther:Z
    .end local v26           #wapAppId:Ljava/lang/String;
    .end local v27           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_6
    add-int v10, v14, v13

    .line 169
    .local v10, dataIndex:I
    :try_start_5
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v28, v0

    sub-int v28, v28, v10

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 170
    .restart local v18       #intentData:[B
    const/16 v28, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-static {v0, v10, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 261
    .end local v6           #binaryContentType:J
    .end local v10           #dataIndex:I
    .end local v12           #header:[B
    .end local v13           #headerLength:I
    .end local v14           #headerStartIndex:I
    .end local v18           #intentData:[B
    .end local v19           #mimeType:Ljava/lang/String;
    .end local v20           #pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v21           #pduType:I
    :catch_0
    move-exception v4

    .line 264
    .end local v25           #transactionId:I
    .local v4, aie:Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_4
    const-string v28, "WAP PUSH"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "ignoring dispatchWapPdu() array index exception: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/16 v28, 0x2

    goto/16 :goto_0

    .end local v4           #aie:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v6       #binaryContentType:J
    .restart local v12       #header:[B
    .restart local v13       #headerLength:I
    .restart local v14       #headerStartIndex:I
    .restart local v18       #intentData:[B
    .restart local v19       #mimeType:Ljava/lang/String;
    .restart local v20       #pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    .restart local v21       #pduType:I
    .restart local v25       #transactionId:I
    .restart local v26       #wapAppId:Ljava/lang/String;
    :cond_7
    move-object/from16 v9, v19

    .line 187
    goto/16 :goto_2

    .line 198
    .restart local v9       #contentType:Ljava/lang/String;
    .restart local v24       #processFurther:Z
    .restart local v27       #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_8
    :try_start_6
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 199
    .local v17, intent:Landroid/content/Intent;
    const-string v28, "transactionId"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    const-string v28, "pduType"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    const-string v28, "header"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 202
    const-string v28, "data"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 203
    const-string v28, "contentTypeParameters"

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v29

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 205
    const-string v28, "subscription"

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v29

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v9, v2}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v23

    .line 209
    .local v23, procRet:I
    const-string v28, "WAP PUSH"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "procRet:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    .line 210
    and-int/lit8 v28, v23, 0x1

    if-lez v28, :cond_5

    const v28, 0x8000

    and-int v28, v28, v23

    if-nez v28, :cond_5

    .line 212
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 218
    .end local v17           #intent:Landroid/content/Intent;
    .end local v23           #procRet:I
    .end local v27           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :catch_1
    move-exception v11

    .line 219
    .local v11, e:Landroid/os/RemoteException;
    :try_start_7
    const-string v28, "WAP PUSH"

    const-string v29, "remote func failed..."

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .end local v9           #contentType:Ljava/lang/String;
    .end local v11           #e:Landroid/os/RemoteException;
    .end local v24           #processFurther:Z
    .end local v26           #wapAppId:Ljava/lang/String;
    :cond_9
    const-string v28, "WAP PUSH"

    const-string v29, "fall back to existing handler"

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    if-nez v19, :cond_a

    .line 225
    const-string v28, "WAP PUSH"

    const-string v29, "Header Content-Type error."

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/16 v28, 0x2

    goto/16 :goto_0

    .line 232
    :cond_a
    const-string v28, "application/vnd.wap.mms-message"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_c

    .line 233
    const-string v22, "android.permission.RECEIVE_MMS"

    .line 234
    .local v22, permission:Ljava/lang/String;
    const/16 v5, 0x12

    .line 240
    .local v5, appOp:I
    :goto_5
    new-instance v17, Landroid/content/Intent;

    const-string v28, "android.provider.Telephony.WAP_PUSH_DELIVER"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    .restart local v17       #intent:Landroid/content/Intent;
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v28, "transactionId"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    const-string v28, "pduType"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    const-string v28, "header"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 245
    const-string v28, "data"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 246
    const-string v28, "contentTypeParameters"

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v29

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 247
    const-string v28, "subscription"

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v29

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v8

    .line 252
    .local v8, componentName:Landroid/content/ComponentName;
    if-eqz v8, :cond_b

    .line 254
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 255
    const-string v28, "WAP PUSH"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Delivering MMS to: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_b
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 260
    const/16 v28, -0x1

    goto/16 :goto_0

    .line 236
    .end local v5           #appOp:I
    .end local v8           #componentName:Landroid/content/ComponentName;
    .end local v17           #intent:Landroid/content/Intent;
    .end local v22           #permission:Ljava/lang/String;
    :cond_c
    const-string v22, "android.permission.RECEIVE_WAP_PUSH"
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0

    .line 237
    .restart local v22       #permission:Ljava/lang/String;
    const/16 v5, 0x13

    .restart local v5       #appOp:I
    goto/16 :goto_5

    .line 261
    .end local v5           #appOp:I
    .end local v6           #binaryContentType:J
    .end local v12           #header:[B
    .end local v13           #headerLength:I
    .end local v14           #headerStartIndex:I
    .end local v15           #index:I
    .end local v18           #intentData:[B
    .end local v19           #mimeType:Ljava/lang/String;
    .end local v20           #pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v21           #pduType:I
    .end local v22           #permission:Ljava/lang/String;
    .end local v25           #transactionId:I
    .restart local v16       #index:I
    :catch_2
    move-exception v4

    move/from16 v15, v16

    .end local v16           #index:I
    .restart local v15       #index:I
    goto/16 :goto_4
.end method

.method dispose()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "WAP PUSH"

    const-string v1, "dispose: unbind wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    const-string v0, "WAP PUSH"

    const-string v1, "dispose: not bound to a wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 50
    invoke-static {p2}, Lcom/android/internal/telephony/IWapPushManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 51
    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wappush manager connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 57
    const-string v0, "WAP PUSH"

    const-string v1, "wappush manager disconnected."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method
