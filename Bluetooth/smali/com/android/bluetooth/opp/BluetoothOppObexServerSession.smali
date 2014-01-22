.class public Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;
.super Ljavax/obex/ServerRequestHandler;
.source "BluetoothOppObexServerSession.java"

# interfaces
.implements Lcom/android/bluetooth/opp/BluetoothOppObexSession;


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BtOppObexServer"

.field private static final V:Z


# instance fields
.field private mAccepted:I

.field private mCallback:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

.field private mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

.field private mInterrupted:Z

.field private mLocalShareInfoId:I

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mServerBlocking:Z

.field private mSession:Ljavax/obex/ServerSession;

.field mTimeoutMsgSent:Z

.field private mTimestamp:J

.field private mTransport:Ljavax/obex/ObexTransport;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljavax/obex/ObexTransport;)V
    .locals 4
    .parameter "context"
    .parameter "transport"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Ljavax/obex/ServerRequestHandler;-><init>()V

    .line 73
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    .line 76
    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z

    .line 84
    iput v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    .line 86
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInterrupted:Z

    .line 98
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimeoutMsgSent:Z

    .line 101
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    .line 103
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 104
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "BtOppObexServer"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 106
    const-string v1, "BtOppObexServer"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 107
    return-void
.end method

.method private processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;
    .locals 4

    .prologue
    .line 525
    const-string v1, "BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processShareInfo() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->generateFileInfo(Landroid/content/Context;I)Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-result-object v0

    .line 534
    .local v0, fileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;
    return-object v0
.end method

.method private receiveFile(Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;Ljavax/obex/Operation;)I
    .locals 22
    .parameter "fileInfo"
    .parameter "op"

    .prologue
    .line 431
    const/4 v14, -0x1

    .line 432
    .local v14, status:I
    const/4 v5, 0x0

    .line 434
    .local v5, bos:Ljava/io/BufferedOutputStream;
    const/4 v10, 0x0

    .line 435
    .local v10, is:Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 437
    .local v9, error:Z
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljavax/obex/Operation;->openInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 444
    :goto_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 446
    .local v6, contentUri:Landroid/net/Uri;
    if-nez v9, :cond_0

    .line 447
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 448
    .local v17, updateValues:Landroid/content/ContentValues;
    const-string v18, "_data"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 452
    .end local v17           #updateValues:Landroid/content/ContentValues;
    :cond_0
    const/4 v12, 0x0

    .line 453
    .local v12, position:I
    if-nez v9, :cond_1

    .line 454
    new-instance v5, Ljava/io/BufferedOutputStream;

    .end local v5           #bos:Ljava/io/BufferedOutputStream;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mOutputStream:Ljava/io/FileOutputStream;

    move-object/from16 v18, v0

    const/high16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v5, v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 457
    .restart local v5       #bos:Ljava/io/BufferedOutputStream;
    :cond_1
    if-nez v9, :cond_2

    .line 458
    invoke-interface/range {p2 .. p2}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result v11

    .line 459
    .local v11, outputBufferSize:I
    new-array v4, v11, [B

    .line 460
    .local v4, b:[B
    const/4 v13, 0x0

    .line 461
    .local v13, readLength:I
    const-wide/16 v15, 0x0

    .line 463
    .local v15, timestamp:J
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInterrupted:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    int-to-long v0, v12

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_2

    .line 467
    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I

    move-result v13

    .line 469
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_5

    .line 470
    const-string v18, "BtOppObexServer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Receive file reached stream end at position"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 499
    .end local v4           #b:[B
    .end local v11           #outputBufferSize:I
    .end local v13           #readLength:I
    .end local v15           #timestamp:J
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInterrupted:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 500
    const-string v18, "BtOppObexServer"

    const-string v19, "receiving file interrupted by user."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/16 v14, 0x1ea

    .line 514
    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    .line 516
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 521
    :cond_4
    :goto_4
    return v14

    .line 438
    .end local v6           #contentUri:Landroid/net/Uri;
    .end local v12           #position:I
    :catch_0
    move-exception v8

    .line 439
    .local v8, e1:Ljava/io/IOException;
    const-string v18, "BtOppObexServer"

    const-string v19, "Error when openInputStream"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/16 v14, 0x1f0

    .line 441
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 474
    .end local v8           #e1:Ljava/io/IOException;
    .restart local v4       #b:[B
    .restart local v6       #contentUri:Landroid/net/Uri;
    .restart local v11       #outputBufferSize:I
    .restart local v12       #position:I
    .restart local v13       #readLength:I
    .restart local v15       #timestamp:J
    :cond_5
    const/16 v18, 0x0

    :try_start_3
    move/from16 v0, v18

    invoke-virtual {v5, v4, v0, v13}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 475
    add-int/2addr v12, v13

    .line 483
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 484
    .restart local v17       #updateValues:Landroid/content/ContentValues;
    const-string v18, "current_bytes"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 487
    .end local v17           #updateValues:Landroid/content/ContentValues;
    :catch_1
    move-exception v8

    .line 488
    .restart local v8       #e1:Ljava/io/IOException;
    const-string v18, "BtOppObexServer"

    const-string v19, "Error when receiving file"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const-string v18, "Abort Received"

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 491
    const/16 v14, 0x1ea

    .line 495
    :goto_5
    const/4 v9, 0x1

    goto :goto_2

    .line 493
    :cond_6
    const/16 v14, 0x1f0

    goto :goto_5

    .line 503
    .end local v4           #b:[B
    .end local v8           #e1:Ljava/io/IOException;
    .end local v11           #outputBufferSize:I
    .end local v13           #readLength:I
    .end local v15           #timestamp:J
    :cond_7
    int-to-long v0, v12

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-nez v18, :cond_8

    .line 504
    const-string v18, "BtOppObexServer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Receiving file completed for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/16 v14, 0xc8

    goto/16 :goto_3

    .line 507
    :cond_8
    const-string v18, "BtOppObexServer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Reading file failed at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " of "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_3

    .line 509
    const/16 v14, 0x1eb

    goto/16 :goto_3

    .line 517
    :catch_2
    move-exception v7

    .line 518
    .local v7, e:Ljava/io/IOException;
    const-string v18, "BtOppObexServer"

    const-string v19, "Error when closing stream after send"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method private declared-synchronized releaseWakeLocks()V
    .locals 1

    .prologue
    .line 563
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    :cond_1
    monitor-exit p0

    return-void

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 161
    const-string v0, "BtOppObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addShare for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 163
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    .line 164
    return-void
.end method

.method public onClose()V
    .locals 2

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->releaseWakeLocks()V

    .line 577
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 578
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 579
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 580
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 581
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 583
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 5
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 540
    const-string v3, "BtOppObexServer"

    const-string v4, "onConnect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/16 v3, 0x46

    :try_start_0
    invoke-virtual {p1, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v2, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    .local v2, uuid:[B
    if-eqz v2, :cond_0

    .line 546
    const/16 v3, 0xc6

    .line 553
    .end local v2           #uuid:[B
    :goto_0
    return v3

    .line 548
    :catch_0
    move-exception v1

    .line 549
    .local v1, e:Ljava/io/IOException;
    const-string v3, "BtOppObexServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/16 v3, 0xd0

    goto :goto_0

    .line 552
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #uuid:[B
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimestamp:J

    .line 553
    const/16 v3, 0xa0

    goto :goto_0
.end method

.method public onDisconnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    .locals 2
    .parameter "req"
    .parameter "resp"

    .prologue
    .line 558
    const-string v0, "BtOppObexServer"

    const-string v1, "onDisconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/16 v0, 0xa0

    iput v0, p2, Ljavax/obex/HeaderSet;->responseCode:I

    .line 560
    return-void
.end method

.method public onPut(Ljavax/obex/Operation;)I
    .locals 28
    .parameter "op"

    .prologue
    .line 168
    const-string v24, "BtOppObexServer"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "onPut "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/16 v17, 0xa0

    .line 179
    .local v17, obexResponse:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 180
    const/16 v24, 0xc3

    .line 424
    :goto_0
    return v24

    .line 184
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;

    move/from16 v24, v0

    if-eqz v24, :cond_8

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;

    invoke-virtual/range {v24 .. v24}, Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;->getRemoteAddress()Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, destination:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/opp/BluetoothOppManager;->isWhitelisted(Ljava/lang/String;)Z

    move-result v10

    .line 193
    .local v10, isWhitelisted:Z
    const/16 v18, 0x0

    .line 195
    .local v18, pre_reject:Z
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v19

    .line 197
    .local v19, request:Ljavax/obex/HeaderSet;
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 198
    .local v15, name:Ljava/lang/String;
    const/16 v24, 0xc3

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 199
    .local v11, length:Ljava/lang/Long;
    const/16 v24, 0x42

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 201
    .local v13, mimeType:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-nez v24, :cond_1

    .line 202
    const-string v24, "BtOppObexServer"

    const-string v25, "length is 0, reject the transfer"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/16 v18, 0x1

    .line 204
    const/16 v17, 0xcb

    .line 207
    :cond_1
    if-eqz v15, :cond_2

    const-string v24, ""

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 208
    :cond_2
    const-string v24, "BtOppObexServer"

    const-string v25, "name is null or empty, reject the transfer"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/16 v18, 0x1

    .line 210
    const/16 v17, 0xc0

    .line 213
    :cond_3
    if-nez v18, :cond_4

    .line 216
    const-string v24, "."

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 217
    .local v6, dotIndex:I
    if-gez v6, :cond_9

    if-nez v13, :cond_9

    .line 218
    const-string v24, "BtOppObexServer"

    const-string v25, "There is no file extension or mime type,reject the transfer"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/16 v18, 0x1

    .line 221
    const/16 v17, 0xc0

    .line 245
    .end local v6           #dotIndex:I
    :cond_4
    :goto_2
    if-nez v18, :cond_7

    if-eqz v13, :cond_6

    if-nez v10, :cond_5

    sget-object v24, Lcom/android/bluetooth/opp/Constants;->ACCEPTABLE_SHARE_INBOUND_TYPES:[Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-static {v13, v0}, Lcom/android/bluetooth/opp/Constants;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_6

    :cond_5
    sget-object v24, Lcom/android/bluetooth/opp/Constants;->UNACCEPTABLE_SHARE_INBOUND_TYPES:[Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-static {v13, v0}, Lcom/android/bluetooth/opp/Constants;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 251
    :cond_6
    const-string v24, "BtOppObexServer"

    const-string v25, "mimeType is null or in unacceptable list, reject the transfer"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    const/16 v18, 0x1

    .line 253
    const/16 v17, 0xcf

    .line 256
    :cond_7
    if-eqz v18, :cond_c

    const/16 v24, 0xa0

    move/from16 v0, v17

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    move/from16 v24, v17

    .line 258
    goto/16 :goto_0

    .line 187
    .end local v5           #destination:Ljava/lang/String;
    .end local v10           #isWhitelisted:Z
    .end local v11           #length:Ljava/lang/Long;
    .end local v13           #mimeType:Ljava/lang/String;
    .end local v15           #name:Ljava/lang/String;
    .end local v18           #pre_reject:Z
    .end local v19           #request:Ljavax/obex/HeaderSet;
    :cond_8
    const-string v5, "FF:FF:FF:00:00:00"

    .restart local v5       #destination:Ljava/lang/String;
    goto/16 :goto_1

    .line 223
    .restart local v6       #dotIndex:I
    .restart local v10       #isWhitelisted:Z
    .restart local v11       #length:Ljava/lang/Long;
    .restart local v13       #mimeType:Ljava/lang/String;
    .restart local v15       #name:Ljava/lang/String;
    .restart local v18       #pre_reject:Z
    .restart local v19       #request:Ljavax/obex/HeaderSet;
    :cond_9
    add-int/lit8 v24, v6, 0x1

    :try_start_1
    move/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 224
    .local v8, extension:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v12

    .line 225
    .local v12, map:Landroid/webkit/MimeTypeMap;
    invoke-virtual {v12, v8}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 227
    .local v21, type:Ljava/lang/String;
    if-eqz v21, :cond_b

    .line 228
    move-object/from16 v13, v21

    .line 237
    :cond_a
    :goto_3
    if-eqz v13, :cond_4

    .line 238
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 231
    :cond_b
    if-nez v13, :cond_a

    .line 232
    const-string v24, "BtOppObexServer"

    const-string v25, "Can\'t get mimetype, reject the transfer"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 233
    const/16 v18, 0x1

    .line 234
    const/16 v17, 0xcf

    goto :goto_3

    .line 261
    .end local v6           #dotIndex:I
    .end local v8           #extension:Ljava/lang/String;
    .end local v11           #length:Ljava/lang/Long;
    .end local v12           #map:Landroid/webkit/MimeTypeMap;
    .end local v13           #mimeType:Ljava/lang/String;
    .end local v15           #name:Ljava/lang/String;
    .end local v19           #request:Ljavax/obex/HeaderSet;
    .end local v21           #type:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 262
    .local v7, e:Ljava/io/IOException;
    const-string v24, "BtOppObexServer"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "get getReceivedHeaders error "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/16 v24, 0xc0

    goto/16 :goto_0

    .line 266
    .end local v7           #e:Ljava/io/IOException;
    .restart local v11       #length:Ljava/lang/Long;
    .restart local v13       #mimeType:Ljava/lang/String;
    .restart local v15       #name:Ljava/lang/String;
    .restart local v19       #request:Ljavax/obex/HeaderSet;
    :cond_c
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 268
    .local v23, values:Landroid/content/ContentValues;
    const-string v24, "hint"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v24, "total_bytes"

    invoke-virtual {v11}, Ljava/lang/Long;->intValue()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 270
    const-string v24, "mimetype"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v24, "destination"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v24, "direction"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    const-string v24, "timestamp"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimestamp:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 277
    const/16 v16, 0x1

    .line 279
    .local v16, needConfirm:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z

    move/from16 v24, v0

    if-nez v24, :cond_d

    .line 280
    const-string v24, "confirm"

    const/16 v25, 0x2

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 282
    const/16 v16, 0x0

    .line 285
    :cond_d
    if-eqz v10, :cond_e

    .line 286
    const-string v24, "confirm"

    const/16 v25, 0x5

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 288
    const/16 v16, 0x0

    .line 291
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    sget-object v25, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 292
    .local v4, contentUri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v24

    const/16 v25, 0x1

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mLocalShareInfoId:I

    .line 294
    if-eqz v16, :cond_f

    .line 295
    new-instance v9, Landroid/content/Intent;

    const-string v24, "android.btopp.intent.action.INCOMING_FILE_NOTIFICATION"

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .local v9, in:Landroid/content/Intent;
    const-string v24, "com.android.bluetooth"

    const-class v25, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 306
    .end local v9           #in:Landroid/content/Intent;
    :cond_f
    monitor-enter p0

    .line 307
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v24

    if-eqz v24, :cond_10

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 311
    :cond_10
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    :cond_11
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z

    move/from16 v24, v0

    if-eqz v24, :cond_12

    .line 315
    const-wide/16 v24, 0x3e8

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v24, v0

    if-eqz v24, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimeoutMsgSent:Z

    move/from16 v24, v0

    if-nez v24, :cond_11

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    const-wide/32 v26, 0xc350

    invoke-virtual/range {v24 .. v27}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 320
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimeoutMsgSent:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 324
    :catch_1
    move-exception v24

    .line 327
    :cond_12
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 328
    const-string v24, "BtOppObexServer"

    const-string v25, "Server unblocked "

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    monitor-enter p0

    .line 330
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v24, v0

    if-eqz v24, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimeoutMsgSent:Z

    move/from16 v24, v0

    if-eqz v24, :cond_13

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeMessages(I)V

    .line 333
    :cond_13
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mLocalShareInfoId:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_14

    .line 342
    const-string v24, "BtOppObexServer"

    const-string v25, "Unexpected error!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    .line 347
    const/16 v20, 0xc8

    .line 349
    .local v20, status:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v24, v0

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1b

    .line 354
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v24, v0

    if-nez v24, :cond_16

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    move/from16 v20, v0

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 359
    const/16 v17, 0xd0

    .line 363
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_18

    .line 365
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 366
    .local v22, updateValues:Landroid/content/ContentValues;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v25, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 367
    const-string v24, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v24, "status"

    const/16 v25, 0xc0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->receiveFile(Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;Ljavax/obex/Operation;)I

    move-result v20

    .line 375
    const/16 v24, 0xc8

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_17

    .line 376
    const/16 v17, 0xd0

    .line 378
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 381
    .end local v22           #updateValues:Landroid/content/ContentValues;
    :cond_18
    const/16 v24, 0xc8

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_1a

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v14

    .line 383
    .local v14, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 384
    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    .end local v14           #msg:Landroid/os/Message;
    :cond_19
    :goto_5
    move/from16 v24, v17

    .line 424
    goto/16 :goto_0

    .line 327
    .end local v20           #status:I
    :catchall_0
    move-exception v24

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v24

    .line 333
    :catchall_1
    move-exception v24

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v24

    .line 386
    .restart local v20       #status:I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v24, v0

    if-eqz v24, :cond_19

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v14

    .line 389
    .restart local v14       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v24, v0

    move/from16 v0, v20

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 391
    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5

    .line 394
    .end local v14           #msg:Landroid/os/Message;
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_19

    .line 404
    :cond_1c
    const-string v24, "BtOppObexServer"

    const-string v25, "Rejected incoming request"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1d

    .line 407
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mOutputStream:Ljava/io/FileOutputStream;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 411
    :goto_6
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    .line 414
    :cond_1d
    const/16 v20, 0x1ea

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 416
    const/16 v17, 0xc3

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v14

    .line 419
    .restart local v14       #msg:Landroid/os/Message;
    const/16 v24, 0x3

    move/from16 v0, v24

    iput v0, v14, Landroid/os/Message;->what:I

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v24, v0

    move/from16 v0, v20

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 422
    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_5

    .line 408
    .end local v14           #msg:Landroid/os/Message;
    :catch_2
    move-exception v7

    .line 409
    .restart local v7       #e:Ljava/io/IOException;
    const-string v24, "BtOppObexServer"

    const-string v25, "error close file stream"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public preStart()V
    .locals 4

    .prologue
    .line 118
    const-string v1, "BtOppObexServer"

    const-string v2, "acquire full WakeLock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 121
    :try_start_0
    const-string v1, "BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create ServerSession with transport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v1, Ljavax/obex/ServerSession;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Ljavax/obex/ServerSession;-><init>(Ljavax/obex/ObexTransport;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)V

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/obex/ServerSession;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create server session error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public start(Landroid/os/Handler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 132
    const-string v0, "BtOppObexServer"

    const-string v1, "Start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    .line 135
    return-void
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 146
    const-string v1, "BtOppObexServer"

    const-string v2, "Stop!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInterrupted:Z

    .line 148
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/obex/ServerSession;

    if-eqz v1, :cond_0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/obex/ServerSession;

    invoke-virtual {v1}, Ljavax/obex/ServerSession;->close()V

    .line 151
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    invoke-interface {v1}, Ljavax/obex/ObexTransport;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    :goto_0
    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    .line 157
    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/obex/ServerSession;

    .line 158
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close mTransport error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unblock()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z

    .line 111
    return-void
.end method
