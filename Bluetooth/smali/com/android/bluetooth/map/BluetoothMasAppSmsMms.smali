.class public Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;
.super Lcom/android/bluetooth/map/BluetoothMasAppIf;
.source "BluetoothMasAppSmsMms.java"


# static fields
.field private static final INTERESTED_MESSAGE_TYPE_CLAUSE:Ljava/lang/String; = "(m_type = 128 OR m_type = 132 OR m_type = 130)"

.field private static final MMS:Ljava/lang/String; = "MMS"

.field private static final SMS_CDMA:Ljava/lang/String; = "SMS_CDMA"

.field private static final SMS_GSM:Ljava/lang/String; = "SMS_GSM"


# instance fields
.field private final MMS_OFFSET_START:J

.field private final SMS_OFFSET_START:J

.field public final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/bluetooth/map/BluetoothMns;ILjava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "handler"
    .parameter "mnsClient"
    .parameter "masId"
    .parameter "remoteDeviceName"

    .prologue
    .line 97
    const/16 v3, 0xe

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/map/BluetoothMasAppIf;-><init>(Landroid/content/Context;Landroid/os/Handler;ILcom/android/bluetooth/map/BluetoothMns;ILjava/lang/String;)V

    .line 81
    const-string v0, "BluetoothMasAppSmsMms"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->TAG:Ljava/lang/String;

    .line 98
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->OFFSET_START:J

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->SMS_OFFSET_START:J

    .line 99
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->OFFSET_START:J

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->OFFSET_END:J

    iget-wide v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->OFFSET_START:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->MMS_OFFSET_START:J

    .line 102
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->cleanUp()V

    .line 104
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasAppSmsMms"

    const-string v1, "BluetoothMasAppSmsMms Constructor called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    return-void
.end method

.method private addToMmsFolder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .parameter "folderName"
    .parameter "mmsMsg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
        }
    .end annotation

    .prologue
    .line 1505
    if-nez p1, :cond_1

    .line 1506
    const/16 v16, 0x0

    .line 1634
    :cond_0
    :goto_0
    return-object v16

    .line 1508
    :cond_1
    const-string v18, "draft"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1509
    const-string p1, "drafts"

    .line 1511
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils;->getFolderTypeMms(Ljava/lang/String;)I

    move-result v7

    .line 1512
    .local v7, folderType:I
    invoke-static/range {p2 .. p2}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fromBmessageMMS(Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/BmessageConsts;

    move-result-object v5

    .line 1513
    .local v5, bMsg:Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
    invoke-virtual {v5}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->getRecipientVcard_phone_number()Ljava/lang/String;

    move-result-object v4

    .line 1514
    .local v4, address:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->getBody_msg()Ljava/lang/String;

    move-result-object v8

    .line 1521
    .local v8, mmsText:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchBodyEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1522
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1523
    .local v13, values:Landroid/content/ContentValues;
    const-string v18, "msg_box"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1525
    const-string v18, "deleted"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1526
    const-string v18, "thread_id"

    const/16 v19, -0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1532
    :goto_1
    const-string v18, "read"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1533
    const-string v18, "seen"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1534
    const-string v18, "sub_cs"

    const/16 v19, 0x6a

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1535
    const-string v18, "ct_t"

    const-string v19, "application/vnd.wap.multipart.related"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    const-string v18, "exp"

    const v19, 0x93a80

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1537
    const-string v18, "m_cls"

    const-string v19, "personal"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    const-string v18, "m_type"

    const/16 v19, 0x80

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1539
    const-string v18, "v"

    const/16 v19, 0x12

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1540
    const-string v18, "pri"

    const/16 v19, 0x81

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1541
    const-string v18, "rr"

    const/16 v19, 0x81

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1542
    const-string v18, "tr_id"

    const-string v19, "T12dc2e87182"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    const-string v18, "d_rpt"

    const/16 v19, 0x81

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1544
    const-string v18, "locked"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1547
    const-string v18, "deleted"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1548
    const-string v18, "content://mms/inbox"

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 1552
    .local v12, uri:Landroid/net/Uri;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1553
    .local v6, cr:Landroid/content/ContentResolver;
    invoke-virtual {v6, v12, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .line 1555
    if-nez v12, :cond_5

    .line 1557
    const-string v18, "BluetoothMasAppSmsMms"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unabled to insert MMS "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    const-string v16, "ERROR"

    goto/16 :goto_0

    .line 1528
    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v12           #uri:Landroid/net/Uri;
    :cond_3
    const-string v18, "thread_id"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->createMMSThread(Ljava/lang/String;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 1550
    :cond_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "content://mms/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .restart local v12       #uri:Landroid/net/Uri;
    goto :goto_2

    .line 1560
    .restart local v6       #cr:Landroid/content/ContentResolver;
    :cond_5
    invoke-virtual {v12}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    .line 1561
    .local v11, msgNum:Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 1562
    .local v9, msgID:J
    sget-boolean v18, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v18, :cond_6

    .line 1563
    const-string v18, "BluetoothMasAppSmsMms"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " NEW URI "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->MMS_OFFSET_START:J

    move-wide/from16 v18, v0

    add-long v14, v9, v18

    .line 1568
    .local v14, virtualMsgId:J
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 1570
    const-string v18, "seq"

    const/16 v19, -0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1571
    const-string v18, "ct"

    const-string v19, "application/smil"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    const-string v18, "cid"

    const-string v19, "<smil>"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    const-string v18, "cl"

    const-string v19, "smil.xml"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    const-string v18, "text"

    const-string v19, "<smil><head><layout><root-layout width=\"320px\" height=\"480px\"/><region id=\"Text\" left=\"0\" top=\"320\" width=\"320px\" height=\"160px\" fit=\"meet\"/></layout></head><body><par dur=\"5000ms\"><text src=\"text_0.txt\" region=\"Text\"/></par></body></smil>"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "content://mms/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/part"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 1580
    invoke-virtual {v6, v12, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .line 1581
    if-eqz v12, :cond_7

    sget-boolean v18, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v18, :cond_7

    .line 1582
    const-string v18, "BluetoothMasAppSmsMms"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " NEW URI "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    :cond_7
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 1586
    const-string v18, "seq"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1587
    const-string v18, "ct"

    const-string v19, "text/plain"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    const-string v18, "name"

    const-string v19, "null"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    const-string v18, "chset"

    const/16 v19, 0x6a

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1590
    const-string v18, "cd"

    const-string v19, "null"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    const-string v18, "fn"

    const-string v19, "null"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    const-string v18, "cid"

    const-string v19, "<smil>"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    const-string v18, "cl"

    const-string v19, "text_0.txt"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    const-string v18, "ctt_s"

    const-string v19, "null"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    const-string v18, "ctt_t"

    const-string v19, "null"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    const-string v18, "_data"

    const-string v19, "null"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    const-string v18, "text"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "content://mms/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/part"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 1600
    invoke-virtual {v6, v12, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .line 1601
    if-eqz v12, :cond_8

    sget-boolean v18, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v18, :cond_8

    .line 1602
    const-string v18, "BluetoothMasAppSmsMms"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " NEW URI "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :cond_8
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 1606
    const-string v18, "contact_id"

    const-string v19, "null"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    const-string v18, "address"

    const-string v19, "insert-address-token"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    const-string v18, "type"

    const/16 v19, 0x89

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1609
    const-string v18, "charset"

    const/16 v19, 0x6a

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1611
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "content://mms/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/addr"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 1612
    invoke-virtual {v6, v12, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .line 1613
    if-eqz v12, :cond_9

    sget-boolean v18, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v18, :cond_9

    .line 1614
    const-string v18, "BluetoothMasAppSmsMms"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " NEW URI "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    :cond_9
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 1618
    const-string v18, "contact_id"

    const-string v19, "null"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    const-string v18, "address"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    const-string v18, "type"

    const/16 v19, 0x97

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1621
    const-string v18, "charset"

    const/16 v19, 0x6a

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1623
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "content://mms/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/addr"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 1624
    invoke-virtual {v6, v12, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .line 1625
    if-eqz v12, :cond_a

    sget-boolean v18, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v18, :cond_a

    .line 1626
    const-string v18, "BluetoothMasAppSmsMms"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " NEW URI "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    :cond_a
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    .line 1630
    .local v16, virtualMsgIdStr:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "address LIKE \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\' AND type = 125"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1631
    .local v17, whereClause:Ljava/lang/String;
    const-string v18, "deleted"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 1632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "content://sms/"

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private addToSmsFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "folder"
    .parameter "address"
    .parameter "text"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 590
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 592
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "body"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v4, "address"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v4, "read"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 595
    const-string v4, "seen"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 599
    const-string v4, "status"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 603
    const-string v4, "locked"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 604
    const-string v4, "error_code"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 605
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://sms/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 607
    .local v2, uri:Landroid/net/Uri;
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v4, :cond_0

    .line 608
    const-string v5, "BluetoothMasAppSmsMms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " NEW URI "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v2, :cond_1

    const-string v4, "null"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_0
    if-nez v2, :cond_2

    .line 612
    const-string v4, "ERROR"

    .line 622
    :goto_1
    return-object v4

    .line 608
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 614
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 615
    .local v1, str:Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, splitStr:[Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x4

    if-ge v4, v5, :cond_3

    .line 617
    const-string v4, "ERROR"

    goto :goto_1

    .line 619
    :cond_3
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v4, :cond_4

    .line 620
    const-string v4, "BluetoothMasAppSmsMms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " NEW HANDLE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_4
    aget-object v4, v0, v7

    goto :goto_1
.end method

.method private bldMMSBody(Lcom/android/bluetooth/map/MapUtils/BmessageConsts;ZJ)Ljava/lang/String;
    .locals 9
    .parameter "bMsg"
    .parameter "msgType"
    .parameter "msgID"

    .prologue
    const/16 v8, 0x3e8

    .line 1642
    const/4 v0, 0x1

    .line 1643
    .local v0, MIME:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1645
    .local v5, sb:Ljava/lang/StringBuilder;
    if-ne p2, v0, :cond_1

    .line 1646
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 1647
    .local v3, randomGenerator:Ljava/util/Random;
    invoke-virtual {v3, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 1648
    .local v4, randomInt:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MessageBoundary."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1649
    .local v1, boundary:Ljava/lang/String;
    invoke-direct {p0, p3, p4}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgTxt(J)Ljava/lang/String;

    move-result-object v2

    .line 1650
    .local v2, mmsMsgTxt:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1651
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1652
    invoke-virtual {v3, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 1653
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MessageBoundary."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1656
    :cond_0
    const-string v6, "To:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_phone_number:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1658
    const-string v6, "Mime-Version: 1.0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1659
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Content-Type: multipart/mixed; boundary=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1662
    const-string v6, "Content-Transfer-Encoding: 7bit"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1664
    const-string v6, "MIME Message"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1665
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1666
    const-string v6, "Content-Type: text/plain"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1667
    const-string v6, "Content-Transfer-Encoding: 8bit"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    const-string v6, "Content-Disposition:inline"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1670
    invoke-direct {p0, p3, p4}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgTxt(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1671
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1679
    .end local v1           #boundary:Ljava/lang/String;
    .end local v2           #mmsMsgTxt:Ljava/lang/String;
    .end local v3           #randomGenerator:Ljava/util/Random;
    .end local v4           #randomInt:I
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1674
    :cond_1
    const-string v6, "Subject:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Not Implemented"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1675
    const-string v6, "From:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_phone_number:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1677
    invoke-direct {p0, p3, p4}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgTxt(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private bldMmsBmsg(JLcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;
    .locals 25
    .parameter "msgID"
    .parameter "rsp"

    .prologue
    .line 1242
    const/4 v15, 0x0

    .line 1243
    .local v15, cr:Landroid/database/Cursor;
    const-string v4, "content://mms/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1244
    .local v5, uri:Landroid/net/Uri;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " _id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1245
    .local v7, whereClause:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1247
    if-nez v15, :cond_0

    .line 1248
    const/16 v4, 0xc6

    move-object/from16 v0, p3

    iput v4, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->rsp:I

    .line 1323
    :goto_0
    return-object p3

    .line 1251
    :cond_0
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 1252
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1253
    invoke-direct/range {p0 .. p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsContainingFolder(J)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMapVirtualFolderName(I)Ljava/lang/String;

    move-result-object v14

    .line 1254
    .local v14, containingFolder:Ljava/lang/String;
    new-instance v12, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;

    invoke-direct {v12}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;-><init>()V

    .line 1257
    .local v12, bmsg:Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
    const-string v4, "MMS"

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setType(Ljava/lang/String;)V

    .line 1259
    const-string v4, "1.0"

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBmsg_version(Ljava/lang/String;)V

    .line 1260
    const-string v4, "read"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1261
    const-string v4, "READ"

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setStatus(Ljava/lang/String;)V

    .line 1266
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "telecom/msg/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setFolder(Ljava/lang/String;)V

    .line 1268
    const-string v4, "2.1"

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setVcard_version(Ljava/lang/String;)V

    .line 1269
    invoke-direct/range {p0 .. p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgAddress(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getVcardContent(Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;

    move-result-object v24

    .line 1270
    .local v24, vcard:Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;
    const-string v4, "msg_box"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1272
    .local v23, type:Ljava/lang/String;
    const-string v4, "1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1273
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->name:Ljava/lang/String;

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setOriginatorVcard_name(Ljava/lang/String;)V

    .line 1274
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->tel:Ljava/lang/String;

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setOriginatorVcard_phone_number(Ljava/lang/String;)V

    .line 1275
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setRecipientVcard_name(Ljava/lang/String;)V

    .line 1276
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setRecipientVcard_phone_number(Ljava/lang/String;)V

    .line 1285
    :goto_2
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 1286
    .local v21, sb:Ljava/lang/StringBuilder;
    new-instance v16, Ljava/util/Date;

    invoke-direct/range {p0 .. p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgDate(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v8, v4

    move-object/from16 v0, v16

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 1287
    .local v16, date:Ljava/util/Date;
    const-string v4, "Date: "

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    const/4 v11, 0x1

    .line 1290
    .local v11, MIME:Z
    move/from16 v20, v11

    .line 1291
    .local v20, msgFormat:I
    move-object/from16 v0, p0

    move/from16 v1, v20

    move-wide/from16 v2, p1

    invoke-direct {v0, v12, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->bldMMSBody(Lcom/android/bluetooth/map/MapUtils/BmessageConsts;ZJ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_msg(Ljava/lang/String;)V

    .line 1293
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x16

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_length(I)V

    .line 1294
    const-string v4, "8BIT"

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_encoding(Ljava/lang/String;)V

    .line 1296
    invoke-static {v12}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->toBmessageMMS(Lcom/android/bluetooth/map/MapUtils/BmessageConsts;)Ljava/lang/String;

    move-result-object v22

    .line 1297
    .local v22, str:Ljava/lang/String;
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v4, :cond_1

    const-string v4, "BluetoothMasAppSmsMms"

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    :cond_1
    if-eqz v22, :cond_2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1299
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "message"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMasId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1300
    .local v10, FILENAME:Ljava/lang/String;
    const/4 v13, 0x0

    .line 1301
    .local v13, bos:Ljava/io/FileOutputStream;
    new-instance v18, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1302
    .local v18, file:Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 1305
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v4, v10, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v13

    .line 1306
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 1307
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V

    .line 1308
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1315
    :goto_3
    new-instance v19, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1316
    .local v19, fileR:Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    .line 1317
    move-object/from16 v0, v19

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->file:Ljava/io/File;

    .line 1318
    const/4 v4, 0x1

    move-object/from16 v0, p3

    iput-byte v4, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->fractionDeliver:B

    .line 1322
    .end local v10           #FILENAME:Ljava/lang/String;
    .end local v11           #MIME:Z
    .end local v12           #bmsg:Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
    .end local v13           #bos:Ljava/io/FileOutputStream;
    .end local v14           #containingFolder:Ljava/lang/String;
    .end local v16           #date:Ljava/util/Date;
    .end local v18           #file:Ljava/io/File;
    .end local v19           #fileR:Ljava/io/File;
    .end local v20           #msgFormat:I
    .end local v21           #sb:Ljava/lang/StringBuilder;
    .end local v22           #str:Ljava/lang/String;
    .end local v23           #type:Ljava/lang/String;
    .end local v24           #vcard:Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;
    :cond_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1263
    .restart local v12       #bmsg:Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
    .restart local v14       #containingFolder:Ljava/lang/String;
    :cond_3
    const-string v4, "UNREAD"

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setStatus(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1278
    .restart local v23       #type:Ljava/lang/String;
    .restart local v24       #vcard:Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;
    :cond_4
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->name:Ljava/lang/String;

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setRecipientVcard_name(Ljava/lang/String;)V

    .line 1279
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->tel:Ljava/lang/String;

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setRecipientVcard_phone_number(Ljava/lang/String;)V

    .line 1280
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setOriginatorVcard_name(Ljava/lang/String;)V

    .line 1281
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setOriginatorVcard_phone_number(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1309
    .restart local v10       #FILENAME:Ljava/lang/String;
    .restart local v11       #MIME:Z
    .restart local v13       #bos:Ljava/io/FileOutputStream;
    .restart local v16       #date:Ljava/util/Date;
    .restart local v18       #file:Ljava/io/File;
    .restart local v20       #msgFormat:I
    .restart local v21       #sb:Ljava/lang/StringBuilder;
    .restart local v22       #str:Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 1310
    .local v17, e:Ljava/io/FileNotFoundException;
    const-string v4, "BluetoothMasAppSmsMms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to write "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1311
    .end local v17           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v17

    .line 1312
    .local v17, e:Ljava/io/IOException;
    const-string v4, "BluetoothMasAppSmsMms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to write "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3
.end method

.method private bldMmsMsgLstItem(JLcom/android/bluetooth/map/BluetoothMasAppParams;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    .locals 12
    .parameter "mmsMsgID"
    .parameter "appParams"
    .parameter "folderName"
    .parameter "datetimeStr"

    .prologue
    .line 1340
    new-instance v1, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;

    invoke-direct {v1}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;-><init>()V

    .line 1343
    .local v1, ml:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    iget-wide v8, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->MMS_OFFSET_START:J

    add-long/2addr v8, p1

    invoke-virtual {v1, v8, v9}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setMsg_handle(J)V

    .line 1346
    iget-wide v8, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v10, 0x1

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 1347
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgSubject(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSubject(Ljava/lang/String;)V

    .line 1348
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sendSubject:Z

    .line 1352
    :cond_0
    iget-wide v8, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v10, 0x2

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 1353
    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setDatetime(Ljava/lang/String;)V

    .line 1357
    :cond_1
    iget-wide v8, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v10, 0x200

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 1358
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgTxt(J)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 1359
    const-string v8, "yes"

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setContains_text(Ljava/lang/String;)V

    .line 1367
    :cond_2
    :goto_0
    iget-wide v8, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v10, 0x80

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    .line 1368
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgTxt(J)Ljava/lang/String;

    move-result-object v3

    .line 1369
    .local v3, mmsMsgTxt:Ljava/lang/String;
    if-nez v3, :cond_10

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v1, v8}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSize(I)V

    .line 1373
    .end local v3           #mmsMsgTxt:Ljava/lang/String;
    :cond_3
    iget-wide v8, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v10, 0x40

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4

    .line 1374
    const-string v8, "MMS"

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setType(Ljava/lang/String;)V

    .line 1377
    :cond_4
    iget-wide v8, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v10, 0x10

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    .line 1381
    const/4 v5, 0x0

    .line 1382
    .local v5, recipientName:Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->isOutgoingMMSMessage(J)Z

    move-result v8

    if-nez v8, :cond_11

    .line 1383
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerName()Ljava/lang/String;

    move-result-object v5

    .line 1387
    :goto_2
    invoke-virtual {v1, v5}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setRecepient_name(Ljava/lang/String;)V

    .line 1390
    .end local v5           #recipientName:Ljava/lang/String;
    :cond_5
    iget-wide v8, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v10, 0x20

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_6

    .line 1393
    const/4 v4, 0x0

    .line 1394
    .local v4, recipientAddressing:Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->isOutgoingMMSMessage(J)Z

    move-result v8

    if-nez v8, :cond_12

    .line 1395
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerNumber()Ljava/lang/String;

    move-result-object v4

    .line 1399
    :goto_3
    invoke-virtual {v1, v4}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setRecepient_addressing(Ljava/lang/String;)V

    .line 1400
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSendRecipient_addressing(Z)V

    .line 1403
    .end local v4           #recipientAddressing:Ljava/lang/String;
    :cond_6
    iget-wide v8, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v10, 0x4

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_7

    .line 1404
    const/4 v7, 0x0

    .line 1405
    .local v7, senderName:Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->isOutgoingMMSMessage(J)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_13

    .line 1406
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerName()Ljava/lang/String;

    move-result-object v7

    .line 1410
    :goto_4
    invoke-virtual {v1, v7}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSender_name(Ljava/lang/String;)V

    .line 1413
    .end local v7           #senderName:Ljava/lang/String;
    :cond_7
    iget-wide v8, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v10, 0x8

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_8

    .line 1414
    const/4 v6, 0x0

    .line 1415
    .local v6, senderAddressing:Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->isOutgoingMMSMessage(J)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_14

    .line 1416
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerNumber()Ljava/lang/String;

    move-result-object v6

    .line 1420
    :goto_5
    invoke-virtual {v1, v6}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSender_addressing(Ljava/lang/String;)V

    .line 1424
    .end local v6           #senderAddressing:Ljava/lang/String;
    :cond_8
    iget-wide v8, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v10, 0x1000

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_9

    .line 1425
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgReadStatus(J)Ljava/lang/String;

    move-result-object v2

    .line 1426
    .local v2, mmsMsgStatus:Ljava/lang/String;
    if-eqz v2, :cond_15

    const-string v8, "yes"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 1427
    const-string v8, "yes"

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setRead(Ljava/lang/String;)V

    .line 1434
    .end local v2           #mmsMsgStatus:Ljava/lang/String;
    :cond_9
    :goto_6
    iget-wide v8, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v10, 0x800

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_a

    .line 1435
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgPriority(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setPriority(Ljava/lang/String;)V

    .line 1439
    :cond_a
    iget-wide v8, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v10, 0x4000

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_b

    .line 1440
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgProtected(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setMsg_protected(Ljava/lang/String;)V

    .line 1444
    :cond_b
    iget-wide v8, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v10, 0x2000

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_c

    .line 1445
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgReadSent(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSent(Ljava/lang/String;)V

    .line 1449
    :cond_c
    iget-wide v8, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v10, 0x100

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_d

    .line 1450
    const-string v8, "complete"

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setReception_status(Ljava/lang/String;)V

    .line 1454
    :cond_d
    iget-wide v8, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v10, 0x400

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_e

    .line 1455
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgAttachSize(J)I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setAttachment_size(I)V

    .line 1458
    :cond_e
    return-object v1

    .line 1361
    :cond_f
    const-string v8, "no"

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setContains_text(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1369
    .restart local v3       #mmsMsgTxt:Ljava/lang/String;
    :cond_10
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    goto/16 :goto_1

    .line 1385
    .end local v3           #mmsMsgTxt:Ljava/lang/String;
    .restart local v5       #recipientName:Ljava/lang/String;
    :cond_11
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgAddress(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 1397
    .end local v5           #recipientName:Ljava/lang/String;
    .restart local v4       #recipientAddressing:Ljava/lang/String;
    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgAddress(J)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 1408
    .end local v4           #recipientAddressing:Ljava/lang/String;
    .restart local v7       #senderName:Ljava/lang/String;
    :cond_13
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgAddress(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 1418
    .end local v7           #senderName:Ljava/lang/String;
    .restart local v6       #senderAddressing:Ljava/lang/String;
    :cond_14
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgAddress(J)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_5

    .line 1429
    .end local v6           #senderAddressing:Ljava/lang/String;
    .restart local v2       #mmsMsgStatus:Ljava/lang/String;
    :cond_15
    const-string v8, "no"

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setRead(Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method private bldMmsWhereClause(Lcom/android/bluetooth/map/BluetoothMasAppParams;I)Ljava/lang/String;
    .locals 8
    .parameter "appParams"
    .parameter "foldertype"

    .prologue
    const/4 v5, -0x1

    .line 889
    const-string v2, ""

    .line 890
    .local v2, whereClause:Ljava/lang/String;
    if-eq p2, v5, :cond_9

    .line 892
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg_box="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND thread_id <> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(m_type = 128 OR m_type = 132 OR m_type = 130)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 901
    :goto_0
    iget-byte v3, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterReadStatus:B

    if-eqz v3, :cond_3

    .line 902
    iget-byte v3, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterReadStatus:B

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 903
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 904
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 906
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " read=0 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 908
    :cond_1
    iget-byte v3, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterReadStatus:B

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 909
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 910
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 912
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " read=1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 917
    :cond_3
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 919
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 921
    .local v1, time:Landroid/text/format/Time;
    :try_start_0
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 922
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    .line 923
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 925
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "date >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 933
    .end local v1           #time:Landroid/text/format/Time;
    :cond_5
    :goto_1
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 935
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 937
    .restart local v1       #time:Landroid/text/format/Time;
    :try_start_1
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 938
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    .line 939
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 941
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "date < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/util/TimeFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 948
    .end local v1           #time:Landroid/text/format/Time;
    :cond_7
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_8

    .line 949
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 951
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "d_rpt > 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 953
    return-object v2

    .line 896
    :cond_9
    const-string v2, "thread_id = -1 AND (m_type = 128 OR m_type = 132 OR m_type = 130)"

    goto/16 :goto_0

    .line 926
    .restart local v1       #time:Landroid/text/format/Time;
    :catch_0
    move-exception v0

    .line 927
    .local v0, e:Landroid/util/TimeFormatException;
    const-string v3, "BluetoothMasAppSmsMms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad formatted FilterPeriodBegin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 942
    .end local v0           #e:Landroid/util/TimeFormatException;
    :catch_1
    move-exception v0

    .line 943
    .restart local v0       #e:Landroid/util/TimeFormatException;
    const-string v3, "BluetoothMasAppSmsMms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad formatted FilterPeriodEnd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private bldSmsBmsg(JLandroid/content/Context;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Ljava/lang/String;
    .locals 9
    .parameter "msgHandle"
    .parameter "context"
    .parameter "cr"
    .parameter "bluetoothMasAppParams"

    .prologue
    .line 1719
    const/4 v4, 0x0

    .line 1720
    .local v4, str:Ljava/lang/String;
    invoke-interface {p4}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 1721
    invoke-interface {p4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1722
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getContainingFolder(J)Ljava/lang/String;

    move-result-object v1

    .line 1723
    .local v1, containingFolder:Ljava/lang/String;
    new-instance v0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;

    invoke-direct {v0}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;-><init>()V

    .line 1727
    .local v0, bmsg:Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 1728
    const-string v7, "SMS_CDMA"

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setType(Ljava/lang/String;)V

    .line 1733
    :goto_0
    const-string v7, "1.0"

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBmsg_version(Ljava/lang/String;)V

    .line 1734
    const-string v7, "read"

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1735
    const-string v7, "READ"

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setStatus(Ljava/lang/String;)V

    .line 1740
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "telecom/msg/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setFolder(Ljava/lang/String;)V

    .line 1742
    const-string v7, "2.1"

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setVcard_version(Ljava/lang/String;)V

    .line 1743
    const-string v7, "address"

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getVcardContent(Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;

    move-result-object v6

    .line 1746
    .local v6, vcard:Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;
    const-string v7, "type"

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1747
    .local v5, type:Ljava/lang/String;
    const-string v7, "1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1749
    iget-object v7, v6, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->name:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setOriginatorVcard_name(Ljava/lang/String;)V

    .line 1750
    iget-object v7, v6, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->tel:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setOriginatorVcard_phone_number(Ljava/lang/String;)V

    .line 1751
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setRecipientVcard_name(Ljava/lang/String;)V

    .line 1752
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setRecipientVcard_phone_number(Ljava/lang/String;)V

    .line 1760
    :goto_2
    const-string v2, " "

    .line 1762
    .local v2, smsBody:Ljava/lang/String;
    iget-byte v7, p5, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Charset:B

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 1763
    const-string v7, "UTF-8"

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_charset(Ljava/lang/String;)V

    .line 1764
    const-string v7, "body"

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1767
    :cond_0
    iget-byte v7, p5, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Charset:B

    if-nez v7, :cond_1

    .line 1768
    const-string v7, "G-7BIT"

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_encoding(Ljava/lang/String;)V

    .line 1769
    const-string v7, "body"

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1770
    .local v3, smsBodyUnicode:Ljava/lang/String;
    const-string v7, "date"

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->tel:Ljava/lang/String;

    invoke-direct {p0, v3, v7, v8}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getSMSDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1774
    .end local v3           #smsBodyUnicode:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x16

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_length(I)V

    .line 1776
    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_msg(Ljava/lang/String;)V

    .line 1777
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    .line 1780
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v7, :cond_2

    .line 1781
    const-string v7, "BluetoothMasAppSmsMms"

    const-string v8, "bMessageSMS test\n"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    const-string v7, "BluetoothMasAppSmsMms"

    const-string v8, "=======================\n\n"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    :cond_2
    invoke-static {v0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->toBmessageSMS(Lcom/android/bluetooth/map/MapUtils/BmessageConsts;)Ljava/lang/String;

    move-result-object v4

    .line 1786
    .end local v0           #bmsg:Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
    .end local v1           #containingFolder:Ljava/lang/String;
    .end local v2           #smsBody:Ljava/lang/String;
    .end local v5           #type:Ljava/lang/String;
    .end local v6           #vcard:Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;
    :cond_3
    return-object v4

    .line 1730
    .restart local v0       #bmsg:Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
    .restart local v1       #containingFolder:Ljava/lang/String;
    :cond_4
    const-string v7, "SMS_GSM"

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1737
    :cond_5
    const-string v7, "UNREAD"

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setStatus(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1754
    .restart local v5       #type:Ljava/lang/String;
    .restart local v6       #vcard:Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;
    :cond_6
    iget-object v7, v6, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->name:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setRecipientVcard_name(Ljava/lang/String;)V

    .line 1755
    iget-object v7, v6, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->tel:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setRecipientVcard_phone_number(Ljava/lang/String;)V

    .line 1756
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setOriginatorVcard_name(Ljava/lang/String;)V

    .line 1757
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setOriginatorVcard_phone_number(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private bldSmsMsgLstItem(Lcom/android/bluetooth/map/BluetoothMasAppParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    .locals 13
    .parameter "appParams"
    .parameter "subject"
    .parameter "timestamp"
    .parameter "address"
    .parameter "msgId"
    .parameter "readStatus"
    .parameter "msgType"

    .prologue
    .line 1792
    new-instance v2, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;

    invoke-direct {v2}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;-><init>()V

    .line 1793
    .local v2, ml:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v2, v9, v10}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setMsg_handle(J)V

    .line 1795
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 1796
    .local v8, time:Landroid/text/format/Time;
    invoke-static/range {p3 .. p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 1798
    invoke-virtual {v8}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/16 v11, 0xf

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1800
    .local v1, datetimeStr:Ljava/lang/String;
    iget-object v9, v2, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->msgInfo:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts$MsgInfo;

    invoke-virtual {v9, v1}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts$MsgInfo;->setDateTime(Ljava/lang/String;)V

    .line 1802
    iget-wide v9, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v11, 0x1

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_1

    .line 1807
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSendSubject(Z)V

    .line 1808
    if-nez p2, :cond_10

    .line 1809
    const-string p2, ""

    .line 1814
    :cond_0
    :goto_0
    invoke-virtual {v2, p2}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSubject(Ljava/lang/String;)V

    .line 1817
    :cond_1
    iget-wide v9, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v11, 0x2

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 1818
    invoke-virtual {v2, v1}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setDatetime(Ljava/lang/String;)V

    .line 1821
    :cond_2
    iget-wide v9, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v11, 0x4

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_3

    .line 1823
    const/4 v7, 0x0

    .line 1824
    .local v7, senderName:Ljava/lang/String;
    move/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->isOutgoingSMSMessage(I)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_11

    .line 1825
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerName()Ljava/lang/String;

    move-result-object v7

    .line 1829
    :goto_1
    invoke-virtual {v2, v7}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSender_name(Ljava/lang/String;)V

    .line 1832
    .end local v7           #senderName:Ljava/lang/String;
    :cond_3
    iget-wide v9, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v11, 0x8

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_4

    .line 1835
    const/4 v6, 0x0

    .line 1836
    .local v6, senderAddressing:Ljava/lang/String;
    move/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->isOutgoingSMSMessage(I)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_12

    .line 1837
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerNumber()Ljava/lang/String;

    move-result-object v6

    .line 1841
    :goto_2
    invoke-virtual {v2, v6}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSender_addressing(Ljava/lang/String;)V

    .line 1844
    .end local v6           #senderAddressing:Ljava/lang/String;
    :cond_4
    iget-wide v9, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v11, 0x10

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5

    .line 1847
    const/4 v5, 0x0

    .line 1848
    .local v5, recipientName:Ljava/lang/String;
    move/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->isOutgoingSMSMessage(I)Z

    move-result v9

    if-nez v9, :cond_13

    .line 1849
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerName()Ljava/lang/String;

    move-result-object v5

    .line 1853
    :goto_3
    invoke-virtual {v2, v5}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setRecepient_name(Ljava/lang/String;)V

    .line 1856
    .end local v5           #recipientName:Ljava/lang/String;
    :cond_5
    iget-wide v9, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v11, 0x20

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_6

    .line 1859
    const/4 v4, 0x0

    .line 1860
    .local v4, recipientAddressing:Ljava/lang/String;
    move/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->isOutgoingSMSMessage(I)Z

    move-result v9

    if-nez v9, :cond_14

    .line 1861
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerNumber()Ljava/lang/String;

    move-result-object v4

    .line 1865
    :goto_4
    invoke-virtual {v2, v4}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setRecepient_addressing(Ljava/lang/String;)V

    .line 1866
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSendRecipient_addressing(Z)V

    .line 1869
    .end local v4           #recipientAddressing:Ljava/lang/String;
    :cond_6
    iget-wide v9, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v11, 0x40

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    .line 1870
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    .line 1871
    .local v3, phoneType:I
    const/4 v9, 0x2

    if-ne v3, v9, :cond_15

    .line 1872
    const-string v9, "SMS_CDMA"

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setType(Ljava/lang/String;)V

    .line 1878
    .end local v3           #phoneType:I
    :cond_7
    :goto_5
    iget-wide v9, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v11, 0x80

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_8

    .line 1879
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSize(I)V

    .line 1882
    :cond_8
    iget-wide v9, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v11, 0x100

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_9

    .line 1883
    const-string v9, "complete"

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setReception_status(Ljava/lang/String;)V

    .line 1886
    :cond_9
    iget-wide v9, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v11, 0x200

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    .line 1888
    const-string v9, "yes"

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setContains_text(Ljava/lang/String;)V

    .line 1891
    :cond_a
    iget-wide v9, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v11, 0x400

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_b

    .line 1892
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setAttachment_size(I)V

    .line 1895
    :cond_b
    iget-wide v9, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v11, 0x800

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_c

    .line 1897
    const-string v9, "no"

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setPriority(Ljava/lang/String;)V

    .line 1900
    :cond_c
    iget-wide v9, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v11, 0x1000

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    .line 1901
    const-string v9, "1"

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 1902
    const-string v9, "yes"

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setRead(Ljava/lang/String;)V

    .line 1908
    :cond_d
    :goto_6
    iget-wide v9, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v11, 0x2000

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_e

    .line 1910
    const/4 v9, 0x2

    move/from16 v0, p7

    if-ne v0, v9, :cond_17

    .line 1911
    const-string v9, "yes"

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSent(Ljava/lang/String;)V

    .line 1917
    :cond_e
    :goto_7
    iget-wide v9, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v11, 0x4000

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_f

    .line 1918
    const-string v9, "no"

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setMsg_protected(Ljava/lang/String;)V

    .line 1921
    :cond_f
    return-object v2

    .line 1810
    :cond_10
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    iget-short v10, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->SubjectLength:S

    if-le v9, v10, :cond_0

    .line 1811
    const/4 v9, 0x0

    iget-short v10, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->SubjectLength:S

    invoke-virtual {p2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    .line 1827
    .restart local v7       #senderName:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 1839
    .end local v7           #senderName:Ljava/lang/String;
    .restart local v6       #senderAddressing:Ljava/lang/String;
    :cond_12
    move-object/from16 v6, p4

    goto/16 :goto_2

    .line 1851
    .end local v6           #senderAddressing:Ljava/lang/String;
    .restart local v5       #recipientName:Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 1863
    .end local v5           #recipientName:Ljava/lang/String;
    .restart local v4       #recipientAddressing:Ljava/lang/String;
    :cond_14
    move-object/from16 v4, p4

    goto/16 :goto_4

    .line 1874
    .end local v4           #recipientAddressing:Ljava/lang/String;
    .restart local v3       #phoneType:I
    :cond_15
    const-string v9, "SMS_GSM"

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setType(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1904
    .end local v3           #phoneType:I
    :cond_16
    const-string v9, "no"

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setRead(Ljava/lang/String;)V

    goto :goto_6

    .line 1913
    :cond_17
    const-string v9, "no"

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSent(Ljava/lang/String;)V

    goto :goto_7
.end method

.method private cleanUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 134
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "thread_id = -1"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "thread_id = -1"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method private createMMSThread(Ljava/lang/String;)I
    .locals 10
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 1687
    const/4 v7, 0x0

    .line 1688
    .local v7, returnValue:I
    if-eqz p1, :cond_2

    .line 1689
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v0, :cond_0

    .line 1690
    const-string v0, "BluetoothMasAppSmsMms"

    const-string v3, "Inside adress not null"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    :cond_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1693
    .local v9, tempValue:Landroid/content/ContentValues;
    const-string v0, "address"

    invoke-virtual {v9, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    const-string v0, "type"

    const/16 v3, 0x7d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1695
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "content://sms/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1698
    .local v1, tempUri:Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 1699
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1701
    .local v8, tempCr:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1702
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1703
    const-string v0, "thread_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1705
    .local v6, newThreadIdStr:Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1706
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1708
    .end local v6           #newThreadIdStr:Ljava/lang/String;
    :cond_1
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v0, :cond_2

    .line 1709
    const-string v0, "BluetoothMasAppSmsMms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread ID::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    .end local v1           #tempUri:Landroid/net/Uri;
    .end local v8           #tempCr:Landroid/database/Cursor;
    .end local v9           #tempValue:Landroid/content/ContentValues;
    :cond_2
    return v7
.end method

.method private deleteMMS(J)V
    .locals 11
    .parameter "handle"

    .prologue
    const/4 v10, -0x1

    const/4 v2, 0x0

    .line 633
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 635
    .local v6, cr:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    const-string v0, "thread_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 637
    .local v9, threadId:I
    if-eq v9, v10, :cond_2

    .line 639
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->updateMMSThreadId(JI)V

    .line 648
    .end local v9           #threadId:I
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 649
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 651
    :cond_1
    return-void

    .line 642
    .restart local v9       #threadId:I
    :cond_2
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->MMS_OFFSET_START:J

    add-long v7, p1, v0

    .line 643
    .local v7, msgId:J
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMns;->addMceInitiatedOperation(Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteSMS(J)V
    .locals 11
    .parameter "handle"

    .prologue
    const/4 v10, -0x1

    const/4 v2, 0x0

    .line 730
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://sms/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 732
    .local v6, cr:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    const-string v0, "thread_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 734
    .local v9, threadId:I
    if-eq v9, v10, :cond_2

    .line 736
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->updateSMSThreadId(JI)V

    .line 745
    .end local v9           #threadId:I
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 746
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 748
    :cond_1
    return-void

    .line 739
    .restart local v9       #threadId:I
    :cond_2
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->SMS_OFFSET_START:J

    add-long v7, p1, v0

    .line 740
    .local v7, msgHandle:J
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMns;->addMceInitiatedOperation(Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://sms/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getContainingFolder(J)Ljava/lang/String;
    .locals 8
    .parameter "msgHandle"

    .prologue
    const/4 v3, 0x0

    .line 441
    const/4 v7, 0x0

    .line 442
    .local v7, folder:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://sms/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "type"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "thread_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 445
    .local v6, cr:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 446
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 447
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 448
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "thread_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMAPFolder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 451
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 453
    :cond_1
    return-object v7
.end method

.method private getMAPFolder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "type"
    .parameter "threadId"

    .prologue
    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, folder:Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 408
    :cond_0
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v1, :cond_1

    const-string v1, "BluetoothMasAppSmsMms"

    const-string v2, "getMapFolder cannot parse folder type"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_1
    const/4 v1, 0x0

    .line 434
    :goto_0
    return-object v1

    .line 412
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 413
    const-string v0, "deleted"

    :goto_1
    move-object v1, v0

    .line 434
    goto :goto_0

    .line 415
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 417
    :pswitch_0
    const-string v0, "inbox"

    .line 418
    goto :goto_1

    .line 420
    :pswitch_1
    const-string v0, "sent"

    .line 421
    goto :goto_1

    .line 423
    :pswitch_2
    const-string v0, "draft"

    .line 424
    goto :goto_1

    .line 428
    :pswitch_3
    const-string v0, "outbox"

    .line 429
    goto :goto_1

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private getMessageMms(JLcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;
    .locals 6
    .parameter "msgHandle"
    .parameter "rsp"

    .prologue
    .line 2250
    const-wide/16 v1, 0x0

    .line 2252
    .local v1, mmsMsgID:J
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgHndToID(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 2257
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_0

    .line 2258
    invoke-direct {p0, v1, v2, p3}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->bldMmsBmsg(JLcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;

    move-result-object p3

    :cond_0
    move-object v3, p3

    .line 2260
    .end local p3
    .local v3, rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;
    :goto_0
    return-object v3

    .line 2253
    .end local v3           #rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;
    .restart local p3
    :catch_0
    move-exception v0

    .line 2254
    .local v0, e:Ljava/lang/Exception;
    const/16 v4, 0xc0

    iput v4, p3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->rsp:I

    move-object v3, p3

    .line 2255
    .end local p3
    .restart local v3       #rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;
    goto :goto_0
.end method

.method private getMessageSms(JLandroid/content/Context;Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;
    .locals 20
    .parameter "msgHandle"
    .parameter "context"
    .parameter "rsp"
    .parameter "bluetoothMasAppParams"

    .prologue
    .line 2204
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->SMS_OFFSET_START:J

    sub-long v17, p1, v6

    .line 2205
    .local v17, smsHandle:J
    const/4 v10, 0x0

    .line 2206
    .local v10, cr:Landroid/database/Cursor;
    const-string v2, "content://sms/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2207
    .local v3, uri:Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " _id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2209
    .local v5, whereClause:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 2215
    if-nez v10, :cond_1

    .line 2216
    const/16 v2, 0xc0

    move-object/from16 v0, p4

    iput v2, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->rsp:I

    .line 2246
    :cond_0
    :goto_0
    return-object p4

    .line 2211
    :catch_0
    move-exception v14

    .line 2212
    .local v14, e:Ljava/lang/Exception;
    const/16 v2, 0xc0

    move-object/from16 v0, p4

    iput v2, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->rsp:I

    goto :goto_0

    .end local v14           #e:Ljava/lang/Exception;
    :cond_1
    move-object/from16 v6, p0

    move-wide/from16 v7, v17

    move-object/from16 v9, p3

    move-object/from16 v11, p5

    .line 2219
    invoke-direct/range {v6 .. v11}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->bldSmsBmsg(JLandroid/content/Context;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Ljava/lang/String;

    move-result-object v19

    .line 2220
    .local v19, strSms:Ljava/lang/String;
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2221
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v2, :cond_2

    const-string v2, "BluetoothMasAppSmsMms"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    :cond_2
    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 2224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMasId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2225
    .local v12, FILENAME:Ljava/lang/String;
    const/4 v13, 0x0

    .line 2226
    .local v13, bos:Ljava/io/FileOutputStream;
    new-instance v15, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2227
    .local v15, file:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 2230
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v13

    .line 2231
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 2232
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V

    .line 2233
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2240
    :goto_1
    new-instance v16, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2241
    .local v16, fileR:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 2242
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->file:Ljava/io/File;

    .line 2243
    const/4 v2, 0x1

    move-object/from16 v0, p4

    iput-byte v2, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->fractionDeliver:B

    goto/16 :goto_0

    .line 2234
    .end local v16           #fileR:Ljava/io/File;
    :catch_1
    move-exception v14

    .line 2235
    .local v14, e:Ljava/io/FileNotFoundException;
    const-string v2, "BluetoothMasAppSmsMms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to write "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2236
    .end local v14           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v14

    .line 2237
    .local v14, e:Ljava/io/IOException;
    const-string v2, "BluetoothMasAppSmsMms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to write "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getMmsContainingFolder(J)I
    .locals 10
    .parameter "msgID"

    .prologue
    const/4 v2, 0x0

    .line 1183
    const/4 v7, 0x0

    .line 1184
    .local v7, folderNum:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " _id= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1185
    .local v3, whereClause:Ljava/lang/String;
    const-string v4, "content://mms/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1186
    .local v1, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v4, v2

    move-object v5, v2

    .line 1187
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1188
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1189
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1190
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1191
    const-string v2, "msg_box"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1192
    .local v8, msgboxInd:I
    const-string v2, "thread_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1193
    .local v9, thread_id:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 1195
    const/4 v7, 0x0

    .line 1200
    .end local v8           #msgboxInd:I
    .end local v9           #thread_id:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1202
    :cond_1
    return v7

    .line 1197
    .restart local v8       #msgboxInd:I
    .restart local v9       #thread_id:Ljava/lang/String;
    :cond_2
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    goto :goto_0
.end method

.method private getMmsMapVirtualFolderName(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 1211
    const/4 v0, 0x0

    .line 1213
    .local v0, folderName:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1235
    :goto_0
    return-object v0

    .line 1215
    :pswitch_0
    const-string v0, "deleted"

    .line 1216
    goto :goto_0

    .line 1218
    :pswitch_1
    const-string v0, "inbox"

    .line 1219
    goto :goto_0

    .line 1221
    :pswitch_2
    const-string v0, "sent"

    .line 1222
    goto :goto_0

    .line 1224
    :pswitch_3
    const-string v0, "draft"

    .line 1225
    goto :goto_0

    .line 1229
    :pswitch_4
    const-string v0, "outbox"

    .line 1230
    goto :goto_0

    .line 1213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private getMmsMsgAddress(J)Ljava/lang/String;
    .locals 9
    .parameter "msgID"

    .prologue
    const/4 v2, 0x0

    .line 1163
    const/4 v8, 0x0

    .line 1164
    .local v8, text:Ljava/lang/String;
    const-string v3, " address != \"insert-address-token\""

    .line 1165
    .local v3, whereClause:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/addr"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1166
    .local v1, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v4, v2

    move-object v5, v2

    .line 1167
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1168
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 1169
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1170
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1171
    const-string v2, "address"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1172
    .local v6, addressInd:I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1174
    .end local v6           #addressInd:I
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1176
    :cond_1
    return-object v8
.end method

.method private getMmsMsgAttachSize(J)I
    .locals 9
    .parameter "msgID"

    .prologue
    const/4 v2, 0x0

    .line 1040
    const/4 v6, 0x0

    .line 1041
    .local v6, attachSize:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " _id= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1042
    .local v3, whereClause:Ljava/lang/String;
    const-string v4, "content://mms/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1043
    .local v1, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v4, v2

    move-object v5, v2

    .line 1044
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1045
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 1046
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1047
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1048
    const-string v2, "m_size"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1049
    .local v8, sizeInd:I
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1051
    .end local v8           #sizeInd:I
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1053
    :cond_1
    return v6
.end method

.method private getMmsMsgBox(J)I
    .locals 9
    .parameter "msgID"

    .prologue
    const/4 v2, 0x0

    .line 960
    const/4 v8, -0x1

    .line 961
    .local v8, val:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " _id= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 962
    .local v3, whereClause:Ljava/lang/String;
    const-string v4, "content://mms/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 963
    .local v1, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v4, v2

    move-object v5, v2

    .line 964
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 965
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 966
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 967
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 968
    const-string v2, "msg_box"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 969
    .local v7, msgBoxInd:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 971
    .end local v7           #msgBoxInd:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 973
    :cond_1
    return v8
.end method

.method private getMmsMsgDate(J)Ljava/lang/String;
    .locals 9
    .parameter "msgID"

    .prologue
    const/4 v2, 0x0

    .line 1020
    const-string v8, "0"

    .line 1021
    .local v8, text:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " _id= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1022
    .local v3, whereClause:Ljava/lang/String;
    const-string v4, "content://mms/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1023
    .local v1, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v4, v2

    move-object v5, v2

    .line 1024
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1025
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1026
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1027
    const-string v2, "date"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1028
    .local v7, dateInd:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1030
    .end local v7           #dateInd:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1032
    :cond_1
    return-object v8
.end method

.method private getMmsMsgHndToID(J)Ljava/lang/Long;
    .locals 12
    .parameter "msgHandle"

    .prologue
    const/4 v2, 0x0

    .line 848
    const-wide/16 v8, -0x1

    .line 849
    .local v8, msgID:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mid= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v10, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->MMS_OFFSET_START:J

    sub-long v10, p1, v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 850
    .local v3, whereClause:Ljava/lang/String;
    const-string v4, "content://mms/part"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 851
    .local v1, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v4, v2

    move-object v5, v2

    .line 852
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 853
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 854
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 855
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 856
    const-string v2, "mid"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 857
    .local v7, handleInd:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 859
    .end local v7           #handleInd:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 861
    :cond_1
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method private getMmsMsgMIDs(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "whereClause"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 868
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 869
    .local v8, idList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v3, "content://mms"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 870
    .local v1, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v3, p1

    move-object v4, v2

    move-object v5, v2

    .line 871
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 872
    .local v6, crID:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 873
    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 874
    .local v7, idInd:I
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_1

    .line 875
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 877
    :cond_0
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 880
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 882
    .end local v7           #idInd:I
    :cond_2
    return-object v8
.end method

.method private getMmsMsgPriority(J)Ljava/lang/String;
    .locals 12
    .parameter "msgID"

    .prologue
    const/4 v2, 0x0

    .line 1099
    const/16 v7, 0x80

    .line 1100
    .local v7, PRIORITY_LOW:I
    const/16 v8, 0x81

    .line 1101
    .local v8, PRIORITY_NORMAL:I
    const/16 v6, 0x82

    .line 1103
    .local v6, PRIORITY_HIGH:I
    const/4 v11, 0x0

    .line 1104
    .local v11, text:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " _id= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1105
    .local v3, whereClause:Ljava/lang/String;
    const-string v4, "content://mms/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1106
    .local v1, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v4, v2

    move-object v5, v2

    .line 1107
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1108
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1109
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1110
    const-string v2, "pri"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1112
    .local v10, priInd:I
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1124
    const-string v11, "no"

    .line 1128
    .end local v10           #priInd:I
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    .line 1129
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1131
    :cond_1
    return-object v11

    .line 1114
    .restart local v10       #priInd:I
    :pswitch_0
    const-string v11, "no"

    .line 1115
    goto :goto_0

    .line 1117
    :pswitch_1
    const-string v11, "no"

    .line 1118
    goto :goto_0

    .line 1120
    :pswitch_2
    const-string v11, "yes"

    .line 1121
    goto :goto_0

    .line 1112
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getMmsMsgProtected(J)Ljava/lang/String;
    .locals 9
    .parameter "msgID"

    .prologue
    const/4 v2, 0x0

    .line 1138
    const/4 v8, 0x0

    .line 1139
    .local v8, text:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " _id= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1140
    .local v3, whereClause:Ljava/lang/String;
    const-string v4, "content://mms/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1141
    .local v1, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v4, v2

    move-object v5, v2

    .line 1142
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1143
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1144
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1145
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1146
    const-string v2, "locked"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1147
    .local v7, readInd:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_2

    .line 1148
    const-string v8, "no"

    .line 1153
    .end local v7           #readInd:I
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1155
    :cond_1
    return-object v8

    .line 1150
    .restart local v7       #readInd:I
    :cond_2
    const-string v8, "yes"

    goto :goto_0
.end method

.method private getMmsMsgReadSent(J)Ljava/lang/String;
    .locals 3
    .parameter "msgID"

    .prologue
    .line 1085
    const/4 v0, 0x0

    .line 1086
    .local v0, text:Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgBox(J)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1088
    const-string v0, "yes"

    .line 1092
    :goto_0
    return-object v0

    .line 1090
    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method private getMmsMsgReadStatus(J)Ljava/lang/String;
    .locals 9
    .parameter "msgID"

    .prologue
    const/4 v2, 0x0

    .line 1061
    const/4 v8, 0x0

    .line 1062
    .local v8, text:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " _id= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1063
    .local v3, whereClause:Ljava/lang/String;
    const-string v4, "content://mms/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1064
    .local v1, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v4, v2

    move-object v5, v2

    .line 1065
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1066
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1067
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1068
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1069
    const-string v2, "read"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1070
    .local v7, readInd:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_2

    .line 1071
    const-string v8, "no"

    .line 1076
    .end local v7           #readInd:I
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1078
    :cond_1
    return-object v8

    .line 1073
    .restart local v7       #readInd:I
    :cond_2
    const-string v8, "yes"

    goto :goto_0
.end method

.method private getMmsMsgSubject(J)Ljava/lang/String;
    .locals 9
    .parameter "msgID"

    .prologue
    const/4 v2, 0x0

    .line 1000
    const/4 v8, 0x0

    .line 1001
    .local v8, text:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " _id= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1002
    .local v3, whereClause:Ljava/lang/String;
    const-string v4, "content://mms/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1003
    .local v1, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v4, v2

    move-object v5, v2

    .line 1004
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1005
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1006
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1007
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1008
    const-string v2, "sub"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1009
    .local v7, subjectInd:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1011
    .end local v7           #subjectInd:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1013
    :cond_1
    return-object v8
.end method

.method private getMmsMsgTxt(J)Ljava/lang/String;
    .locals 9
    .parameter "msgID"

    .prologue
    const/4 v2, 0x0

    .line 980
    const/4 v7, 0x0

    .line 981
    .local v7, text:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mid= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND ct=\"text/plain\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 982
    .local v3, whereClause:Ljava/lang/String;
    const-string v4, "content://mms/part"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 983
    .local v1, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v4, v2

    move-object v5, v2

    .line 984
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 985
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 986
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 987
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 988
    const-string v2, "text"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 989
    .local v8, textInd:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 991
    .end local v8           #textInd:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 993
    :cond_1
    return-object v7
.end method

.method private getNumMmsMsgs(Ljava/lang/String;)I
    .locals 8
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 820
    const/4 v7, 0x0

    .line 822
    .local v7, msgCount:I
    const-string v3, "deleted"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 823
    const-string v3, "content://mms/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 824
    .local v1, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 825
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "thread_id = -1 AND (m_type = 128 OR m_type = 132 OR m_type = 130)"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 827
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 828
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 829
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 841
    :cond_0
    :goto_0
    return v7

    .line 832
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mms/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 833
    .restart local v1       #uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 834
    .restart local v0       #cr:Landroid/content/ContentResolver;
    const-string v3, "thread_id <> -1 AND (m_type = 128 OR m_type = 132 OR m_type = 130)"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 836
    .restart local v6       #cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 837
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 838
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getSMSDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 31
    .parameter "smsBody"
    .parameter "dateTime"
    .parameter "address"

    .prologue
    .line 460
    new-instance v26, Landroid/text/format/Time;

    invoke-direct/range {v26 .. v26}, Landroid/text/format/Time;-><init>()V

    .line 461
    .local v26, time:Landroid/text/format/Time;
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 463
    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v27

    .line 466
    .local v27, timeStr:Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v29, 0x2

    const/16 v30, 0x4

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x5

    const/16 v30, 0x7

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x8

    const/16 v30, 0xa

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0xb

    const/16 v30, 0xd

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0xe

    const/16 v30, 0x10

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x11

    const/16 v30, 0x13

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 474
    .local v25, tempTimeStr:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x6

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    .line 475
    .local v23, tZoneStr:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x2

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 476
    .local v24, tempInt:I
    div-int/lit8 v22, v24, 0xf

    .line 478
    .local v22, tZone15offset:I
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x5

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v29

    add-int/lit8 v29, v29, -0x3

    move-object/from16 v0, v23

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    mul-int/lit8 v28, v28, 0x4

    add-int v22, v22, v28

    .line 480
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x6

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->charAt(I)C

    move-result v28

    const/16 v29, 0x2d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 481
    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    .line 484
    :cond_0
    const-string v21, ""

    .line 487
    .local v21, tZone15OffsetHexStr:Ljava/lang/String;
    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    const/16 v29, 0x10

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_1

    .line 488
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "0"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 490
    :cond_1
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 492
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 495
    const-string v9, ""

    .line 496
    .local v9, encodedTimeStr:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v28

    if-ge v10, v0, :cond_2

    .line 497
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    add-int/lit8 v29, v10, 0x1

    add-int/lit8 v30, v10, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 498
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    add-int/lit8 v29, v10, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 496
    add-int/lit8 v10, v10, 0x2

    goto :goto_0

    .line 501
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 504
    .local v7, byteAddress:[B
    const-string v16, "0681000000000004"

    .line 507
    .local v16, smsPdu:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 508
    .local v18, strbufAddress:Ljava/lang/StringBuffer;
    const/4 v10, 0x0

    :goto_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v28

    if-ge v10, v0, :cond_5

    .line 509
    sget-boolean v28, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v28, :cond_3

    .line 510
    const-string v28, "BluetoothMasAppSmsMms"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " VAL "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    add-int/lit8 v30, v10, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_3
    aget-byte v28, v7, v10

    const/16 v29, 0x30

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_4

    aget-byte v28, v7, v10

    const/16 v29, 0x39

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_4

    .line 513
    add-int/lit8 v28, v10, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 508
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 517
    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    .line 519
    .local v5, addressLength:I
    const-string v6, ""

    .line 521
    .local v6, addressLengthStr:Ljava/lang/String;
    and-int/lit16 v0, v5, 0xff

    move/from16 v28, v0

    const/16 v29, 0x10

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_6

    .line 522
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "0"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 523
    :cond_6
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 525
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 526
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "81"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 528
    new-instance v17, Ljava/lang/String;

    invoke-direct/range {v17 .. v18}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    .line 531
    .local v17, strAddress:Ljava/lang/String;
    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v11, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 533
    .local v11, msg:[B
    const/16 v28, 0x2

    aget-byte v28, v11, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 534
    .local v4, addLength:I
    rem-int/lit8 v28, v4, 0x2

    if-eqz v28, :cond_7

    .line 535
    add-int/lit8 v4, v4, 0x1

    .line 537
    :cond_7
    div-int/lit8 v4, v4, 0x2

    .line 540
    add-int/lit8 v13, v4, 0x7

    .line 541
    .local v13, msgOffset:I
    array-length v0, v11

    move/from16 v28, v0

    sub-int v12, v28, v13

    .line 543
    .local v12, msgLength:I
    new-instance v20, Ljava/lang/StringBuffer;

    mul-int/lit8 v28, v12, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 546
    .local v20, strbufMessage:Ljava/lang/StringBuffer;
    move v10, v13

    :goto_2
    add-int v28, v12, v13

    move/from16 v0, v28

    if-ge v10, v0, :cond_9

    .line 547
    aget-byte v28, v11, v10

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    const/16 v29, 0x10

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_8

    .line 548
    const-string v28, "0"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 550
    :cond_8
    aget-byte v28, v11, v10

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const/16 v30, 0x10

    invoke-static/range {v28 .. v30}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 546
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 553
    :cond_9
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v28

    div-int/lit8 v8, v28, 0x2

    .line 554
    .local v8, encodedAddressLength:I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v28

    rem-int/lit8 v28, v28, 0x2

    if-eqz v28, :cond_a

    .line 555
    add-int/lit8 v8, v8, 0x1

    .line 558
    :cond_a
    new-instance v19, Ljava/lang/StringBuffer;

    mul-int/lit8 v28, v12, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 561
    .local v19, strbufAddress1:Ljava/lang/StringBuffer;
    const/4 v10, 0x4

    :goto_3
    add-int/lit8 v28, v8, 0x4

    move/from16 v0, v28

    if-ge v10, v0, :cond_c

    .line 563
    aget-byte v28, v11, v10

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    const/16 v29, 0x10

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_b

    .line 564
    const-string v28, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 565
    :cond_b
    aget-byte v28, v11, v10

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const/16 v30, 0x10

    invoke-static/range {v28 .. v30}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 561
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 568
    :cond_c
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 569
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "0000"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 570
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 572
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    .line 573
    .local v14, smsBodyLength:I
    const-string v15, ""

    .line 575
    .local v15, smsMessageTextLengthStr:Ljava/lang/String;
    and-int/lit16 v0, v14, 0xff

    move/from16 v28, v0

    const/16 v29, 0x10

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_d

    .line 576
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "0"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 578
    :cond_d
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 580
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 581
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 582
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    .line 583
    return-object v16
.end method

.method private isOutgoingMMSMessage(J)Z
    .locals 2
    .parameter "mmsMsgID"

    .prologue
    const/4 v0, 0x1

    .line 1327
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgBox(J)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1328
    const/4 v0, 0x0

    .line 1330
    :cond_0
    return v0
.end method

.method private isOutgoingSMSMessage(I)Z
    .locals 1
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 395
    if-ne p1, v0, :cond_0

    .line 396
    const/4 v0, 0x0

    .line 398
    :cond_0
    return v0
.end method

.method private moveMMSfromDraftstoOutbox()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 1468
    const/4 v7, 0x0

    .line 1472
    .local v7, handle:Ljava/lang/String;
    const-string v4, "content://mms/drafts"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1473
    .local v1, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 1474
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1475
    .local v6, crID:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1476
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 1477
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1478
    const-string v4, "_id"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1479
    .local v8, msgIDInd:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1481
    .end local v8           #msgIDInd:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1484
    :cond_1
    if-eqz v7, :cond_3

    .line 1485
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " _id= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1486
    .local v3, whereClause:Ljava/lang/String;
    const-string v4, "content://mms"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v2

    move-object v5, v2

    .line 1487
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1488
    if-eqz v6, :cond_3

    .line 1489
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 1490
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1491
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1492
    .local v9, values:Landroid/content/ContentValues;
    const-string v4, "msg_box"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1493
    invoke-virtual {v0, v1, v9, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1495
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1498
    .end local v3           #whereClause:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private msgListMms(Ljava/util/List;Ljava/lang/String;Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;
    .locals 23
    .parameter
    .parameter "name"
    .parameter "rsp"
    .parameter "appParams"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;",
            "Lcom/android/bluetooth/map/BluetoothMasAppParams;",
            ")",
            "Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;"
        }
    .end annotation

    .prologue
    .line 2077
    .local p1, msgList:Ljava/util/List;,"Ljava/util/List<Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;>;"
    new-instance v10, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;

    invoke-direct {v10}, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;-><init>()V

    .line 2078
    .local v10, bmlr:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;
    const/4 v13, 0x0

    .line 2080
    .local v13, filterString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerName()Ljava/lang/String;

    move-result-object v18

    .line 2081
    .local v18, oname:Ljava/lang/String;
    if-nez v18, :cond_0

    .line 2082
    const-string v18, ""

    .line 2085
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerNumber()Ljava/lang/String;

    move-result-object v19

    .line 2086
    .local v19, onumber:Ljava/lang/String;
    if-nez v19, :cond_1

    .line 2087
    const-string v19, ""

    .line 2090
    :cond_1
    const-string v2, "BluetoothMasAppSmsMms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oname = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "onumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    const/16 v20, 0x0

    .line 2093
    .local v20, regExpOrig:Ljava/lang/String;
    const/16 v21, 0x0

    .line 2095
    .local v21, regExpRecipient:Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2096
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    const-string v3, "*"

    const-string v4, ".*[0-9A-Za-z].*"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    .line 2099
    :cond_2
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 2100
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    const-string v3, "*"

    const-string v4, ".*[0-9A-Za-z].*"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    .line 2103
    :cond_3
    const-string v2, "BluetoothMasAppSmsMms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " regExpOrig = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " regExpRecipient = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getNumMmsMsgs(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_10

    .line 2106
    invoke-static/range {p2 .. p2}, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils;->getFolderTypeMms(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->bldMmsWhereClause(Lcom/android/bluetooth/map/BluetoothMasAppParams;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgMIDs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 2108
    .local v15, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 2109
    .local v17, msgId:I
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v2, :cond_5

    .line 2110
    const-string v2, "BluetoothMasAppSmsMms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n MMS Text message ==> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    int-to-long v4, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgTxt(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    :cond_5
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v2, :cond_6

    .line 2114
    const-string v2, "BluetoothMasAppSmsMms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n MMS message subject ==> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    int-to-long v4, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgSubject(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    :cond_6
    move/from16 v0, v17

    int-to-long v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->isOutgoingMMSMessage(J)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2118
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    if-eqz v2, :cond_7

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2124
    :cond_7
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    .line 2126
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 2127
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v2, :cond_8

    .line 2128
    const-string v2, "BluetoothMasAppSmsMms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " appParams.FilterOriginator"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    :cond_8
    move/from16 v0, v17

    int-to-long v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->isOutgoingMMSMessage(J)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 2135
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    if-eqz v2, :cond_9

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2142
    :cond_9
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    if-eqz v2, :cond_a

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_a

    .line 2144
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 2145
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v2, :cond_a

    .line 2146
    const-string v2, "BluetoothMasAppSmsMms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " appParams.FilterRecipient"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    :cond_a
    if-eqz v13, :cond_d

    .line 2153
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v2, :cond_b

    .line 2154
    const-string v2, "BluetoothMasAppSmsMms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " filterString = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    :cond_b
    const/4 v8, 0x0

    .line 2157
    .local v8, ContactName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 2159
    .local v9, ContactNum:Ljava/lang/String;
    move/from16 v0, v17

    int-to-long v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgAddress(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2160
    move/from16 v0, v17

    int-to-long v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgAddress(J)Ljava/lang/String;

    move-result-object v9

    .line 2162
    invoke-virtual {v8, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v9, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2163
    :cond_c
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v2, :cond_d

    .line 2164
    const-string v2, "BluetoothMasAppSmsMms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ALLOWED : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    .end local v8           #ContactName:Ljava/lang/String;
    .end local v9           #ContactNum:Ljava/lang/String;
    :cond_d
    move/from16 v0, v17

    int-to-long v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgDate(J)Ljava/lang/String;

    move-result-object v11

    .line 2177
    .local v11, datetime:Ljava/lang/String;
    new-instance v22, Landroid/text/format/Time;

    invoke-direct/range {v22 .. v22}, Landroid/text/format/Time;-><init>()V

    .line 2178
    .local v22, time:Landroid/text/format/Time;
    new-instance v12, Ljava/util/Date;

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v12, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 2179
    .local v12, dt:Ljava/util/Date;
    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 2181
    invoke-virtual/range {v22 .. v22}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xf

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2183
    .local v7, datetimeStr:Ljava/lang/String;
    move/from16 v0, v17

    int-to-long v3, v0

    move-object/from16 v2, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->bldMmsMsgLstItem(JLcom/android/bluetooth/map/BluetoothMasAppParams;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;

    move-result-object v16

    .line 2184
    .local v16, mmsl:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->msgInfo:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts$MsgInfo;

    invoke-virtual {v2, v7}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts$MsgInfo;->setDateTime(Ljava/lang/String;)V

    .line 2186
    move-object/from16 v0, p3

    iget-byte v2, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->newMessage:B

    if-nez v2, :cond_e

    const-string v2, "no"

    move/from16 v0, v17

    int-to-long v3, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgReadStatus(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2188
    const/4 v2, 0x1

    move-object/from16 v0, p3

    iput-byte v2, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->newMessage:B

    .line 2191
    :cond_e
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2192
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->msgListingSize:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p3

    iput v2, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->msgListingSize:I

    goto/16 :goto_0

    .line 2168
    .end local v7           #datetimeStr:Ljava/lang/String;
    .end local v11           #datetime:Ljava/lang/String;
    .end local v12           #dt:Ljava/util/Date;
    .end local v16           #mmsl:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    .end local v22           #time:Landroid/text/format/Time;
    .restart local v8       #ContactName:Ljava/lang/String;
    .restart local v9       #ContactNum:Ljava/lang/String;
    :cond_f
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v2, :cond_4

    .line 2169
    const-string v2, "BluetoothMasAppSmsMms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " DENIED : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2195
    .end local v8           #ContactName:Ljava/lang/String;
    .end local v9           #ContactNum:Ljava/lang/String;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17           #msgId:I
    :cond_10
    const/16 v2, 0xa0

    move-object/from16 v0, p3

    iput v2, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    .line 2196
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->msgListingSize:I

    iput v2, v10, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->messageListingSize:I

    .line 2197
    move-object/from16 v0, p3

    iput-object v0, v10, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    .line 2198
    move-object/from16 v0, p1

    iput-object v0, v10, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->msgList:Ljava/util/List;

    .line 2199
    return-object v10
.end method

.method private msgListSms(Ljava/util/List;Ljava/lang/String;Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;
    .locals 32
    .parameter
    .parameter "folder"
    .parameter "rsp"
    .parameter "appParams"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;",
            "Lcom/android/bluetooth/map/BluetoothMasAppParams;",
            ")",
            "Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;"
        }
    .end annotation

    .prologue
    .line 1925
    .local p1, msgList:Ljava/util/List;,"Ljava/util/List<Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;>;"
    new-instance v15, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;

    invoke-direct {v15}, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;-><init>()V

    .line 1926
    .local v15, bmlr:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;
    const-string v31, "content://sms/"

    .line 1927
    .local v31, url:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1928
    .local v3, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1929
    .local v2, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils;->getConditionStringSms(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Ljava/lang/String;

    move-result-object v5

    .line 1931
    .local v5, whereClause:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "date desc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1934
    .local v17, cursor:Landroid/database/Cursor;
    if-eqz v17, :cond_0

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v4, :cond_0

    .line 1935
    const-string v4, "BluetoothMasAppSmsMms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "move to First"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    :cond_0
    if-eqz v17, :cond_1

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v4, :cond_1

    .line 1938
    const-string v4, "BluetoothMasAppSmsMms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "move to Liststartoffset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget v7, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ListStartOffset:I

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    :cond_1
    if-eqz v17, :cond_8

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1942
    const-string v4, "_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 1943
    .local v20, idInd:I
    const-string v4, "address"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1944
    .local v14, addressInd:I
    const-string v4, "person"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 1945
    .local v24, personInd:I
    const-string v4, "date"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 1946
    .local v18, dateInd:I
    const-string v4, "read"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 1947
    .local v25, readInd:I
    const-string v4, "status"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 1948
    .local v28, statusInd:I
    const-string v4, "subject"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 1949
    .local v29, subjectInd:I
    const-string v4, "type"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 1950
    .local v30, typeInd:I
    const-string v4, "body"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 1962
    .local v16, bodyInd:I
    :cond_2
    const/16 v19, 0x0

    .line 1963
    .local v19, filterString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerName()Ljava/lang/String;

    move-result-object v22

    .line 1964
    .local v22, oname:Ljava/lang/String;
    if-nez v22, :cond_3

    .line 1965
    const-string v22, ""

    .line 1967
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerNumber()Ljava/lang/String;

    move-result-object v23

    .line 1968
    .local v23, onumber:Ljava/lang/String;
    if-nez v23, :cond_4

    .line 1969
    const-string v23, ""

    .line 1972
    :cond_4
    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1973
    .local v13, msgType:I
    const/16 v26, 0x0

    .line 1974
    .local v26, regExpOrig:Ljava/lang/String;
    const/16 v27, 0x0

    .line 1975
    .local v27, regExpRecipient:Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 1976
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    const-string v6, "*"

    const-string v7, ".*[0-9A-Za-z].*"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    .line 1978
    :cond_5
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 1979
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    const-string v6, "*"

    const-string v7, ".*[0-9A-Za-z].*"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    .line 1981
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->isOutgoingSMSMessage(I)Z

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_b

    .line 1982
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    if-eqz v4, :cond_a

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ".*"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".*"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ".*"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".*"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 2063
    :cond_7
    :goto_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2065
    .end local v13           #msgType:I
    .end local v14           #addressInd:I
    .end local v16           #bodyInd:I
    .end local v18           #dateInd:I
    .end local v19           #filterString:Ljava/lang/String;
    .end local v20           #idInd:I
    .end local v22           #oname:Ljava/lang/String;
    .end local v23           #onumber:Ljava/lang/String;
    .end local v24           #personInd:I
    .end local v25           #readInd:I
    .end local v26           #regExpOrig:Ljava/lang/String;
    .end local v27           #regExpRecipient:Ljava/lang/String;
    .end local v28           #statusInd:I
    .end local v29           #subjectInd:I
    .end local v30           #typeInd:I
    :cond_8
    if-eqz v17, :cond_9

    .line 2066
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2068
    :cond_9
    const/16 v4, 0xa0

    move-object/from16 v0, p3

    iput v4, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    .line 2069
    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->msgListingSize:I

    iput v4, v15, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->messageListingSize:I

    .line 2070
    move-object/from16 v0, p3

    iput-object v0, v15, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    .line 2071
    move-object/from16 v0, p1

    iput-object v0, v15, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->msgList:Ljava/util/List;

    .line 2072
    return-object v15

    .line 1988
    .restart local v13       #msgType:I
    .restart local v14       #addressInd:I
    .restart local v16       #bodyInd:I
    .restart local v18       #dateInd:I
    .restart local v19       #filterString:Ljava/lang/String;
    .restart local v20       #idInd:I
    .restart local v22       #oname:Ljava/lang/String;
    .restart local v23       #onumber:Ljava/lang/String;
    .restart local v24       #personInd:I
    .restart local v25       #readInd:I
    .restart local v26       #regExpOrig:Ljava/lang/String;
    .restart local v27       #regExpRecipient:Ljava/lang/String;
    .restart local v28       #statusInd:I
    .restart local v29       #subjectInd:I
    .restart local v30       #typeInd:I
    :cond_a
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    if-eqz v4, :cond_b

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_b

    .line 1990
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 1991
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v4, :cond_b

    .line 1992
    const-string v4, "BluetoothMasAppSmsMms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appParams.FilterRecipient"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->isOutgoingSMSMessage(I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1998
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    if-eqz v4, :cond_c

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ".*"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".*"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ".*"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".*"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2004
    :cond_c
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    if-eqz v4, :cond_d

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_d

    .line 2006
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 2007
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v4, :cond_d

    .line 2008
    const-string v4, "BluetoothMasAppSmsMms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appParams.FilterOriginator"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    :cond_d
    if-eqz v19, :cond_f

    .line 2015
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v4, :cond_e

    .line 2016
    const-string v4, "BluetoothMasAppSmsMms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "filterString = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    :cond_e
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->allowEntry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_12

    .line 2020
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v4, :cond_f

    .line 2021
    const-string v4, "BluetoothMasAppSmsMms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ALLOWED : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    :cond_f
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v4, :cond_10

    const-string v4, "BluetoothMasAppSmsMms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " msgListSize "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    iget v7, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->msgListingSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    :cond_10
    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->msgListingSize:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p3

    iput v4, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->msgListingSize:I

    .line 2043
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->MaxListCount:I

    if-eqz v4, :cond_7

    .line 2046
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2047
    .local v11, msgIdSms:Ljava/lang/String;
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2048
    .local v8, subjectSms:Ljava/lang/String;
    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2049
    .local v9, timestampSms:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2050
    .local v10, addressSms:Ljava/lang/String;
    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .local v12, readStatusSms:Ljava/lang/String;
    move-object/from16 v6, p0

    move-object/from16 v7, p4

    .line 2052
    invoke-direct/range {v6 .. v13}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->bldSmsMsgLstItem(Lcom/android/bluetooth/map/BluetoothMasAppParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;

    move-result-object v21

    .line 2057
    .local v21, ml:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    move-object/from16 v0, p3

    iget-byte v4, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->newMessage:B

    if-nez v4, :cond_11

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_11

    .line 2059
    const/4 v4, 0x1

    move-object/from16 v0, p3

    iput-byte v4, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->newMessage:B

    .line 2062
    :cond_11
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2027
    .end local v8           #subjectSms:Ljava/lang/String;
    .end local v9           #timestampSms:Ljava/lang/String;
    .end local v10           #addressSms:Ljava/lang/String;
    .end local v11           #msgIdSms:Ljava/lang/String;
    .end local v12           #readStatusSms:Ljava/lang/String;
    .end local v21           #ml:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    :cond_12
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v4, :cond_7

    .line 2028
    const-string v4, "BluetoothMasAppSmsMms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " DENIED : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private pushMessageMms(Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;
    .locals 11
    .parameter "rsp"
    .parameter "readStr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0xc4

    const/16 v8, 0xa0

    .line 2265
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mCurrentPath:Ljava/lang/String;

    .line 2266
    .local v1, fullPath:Ljava/lang/String;
    :goto_0
    const-string v6, "telecom/msg/outbox"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2267
    const-string v6, "drafts"

    invoke-direct {p0, v6, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->addToMmsFolder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2268
    .local v2, handle:Ljava/lang/String;
    const-string v6, "ERROR"

    if-ne v6, v2, :cond_2

    .line 2269
    iput v9, p1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    .line 2306
    .end local v2           #handle:Ljava/lang/String;
    :goto_1
    return-object p1

    .line 2265
    .end local v1           #fullPath:Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2272
    .restart local v1       #fullPath:Ljava/lang/String;
    .restart local v2       #handle:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->moveMMSfromDraftstoOutbox()V

    .line 2273
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v6, :cond_3

    const-string v6, "BluetoothMasAppSmsMms"

    const-string v7, "\nBroadcasting Intent to MmsSystemEventReceiver\n "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MMS_PUSH"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2275
    .local v3, sendIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2276
    iput-object v2, p1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 2277
    iput v8, p1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    goto :goto_1

    .line 2280
    .end local v2           #handle:Ljava/lang/String;
    .end local v3           #sendIntent:Landroid/content/Intent;
    :cond_4
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mCurrentPath:Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2281
    .local v4, splitStrings:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    const-string v7, "+"

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/map/BluetoothMns;->addMceInitiatedOperation(Ljava/lang/String;)V

    .line 2282
    array-length v5, v4

    .line 2284
    .local v5, tmp:I
    if-eqz p3, :cond_6

    .line 2285
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    .line 2286
    add-int/lit8 v6, v5, -0x1

    aget-object v0, v4, v6

    .line 2293
    .local v0, folderName:Ljava/lang/String;
    :goto_2
    if-eqz v0, :cond_8

    const-string v6, "draft"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2294
    invoke-direct {p0, v0, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->addToMmsFolder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2295
    .restart local v2       #handle:Ljava/lang/String;
    const-string v6, "ERROR"

    if-ne v6, v2, :cond_7

    .line 2296
    iput-object v10, p1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 2297
    iput v9, p1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    goto :goto_1

    .line 2288
    .end local v0           #folderName:Ljava/lang/String;
    .end local v2           #handle:Ljava/lang/String;
    :cond_5
    move-object v0, p3

    .restart local v0       #folderName:Ljava/lang/String;
    goto :goto_2

    .line 2291
    .end local v0           #folderName:Ljava/lang/String;
    :cond_6
    add-int/lit8 v6, v5, -0x1

    aget-object v0, v4, v6

    .restart local v0       #folderName:Ljava/lang/String;
    goto :goto_2

    .line 2300
    .restart local v2       #handle:Ljava/lang/String;
    :cond_7
    iput-object v2, p1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 2301
    iput v8, p1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    goto :goto_1

    .line 2304
    .end local v2           #handle:Ljava/lang/String;
    :cond_8
    iput-object v10, p1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 2305
    const/16 v6, 0xc3

    iput v6, p1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    goto :goto_1
.end method

.method private pushMessageSms(Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;
    .locals 16
    .parameter "rsp"
    .parameter "readStr"
    .parameter "name"
    .parameter "bluetoothMasAppParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
        }
    .end annotation

    .prologue
    .line 2313
    invoke-static/range {p2 .. p2}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fromBmessageSMS(Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/BmessageConsts;

    move-result-object v7

    .line 2314
    .local v7, bMsg:Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
    invoke-virtual {v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->getRecipientVcard_phone_number()Ljava/lang/String;

    move-result-object v2

    .line 2315
    .local v2, address:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->getBody_msg()Ljava/lang/String;

    move-result-object v13

    .line 2316
    .local v13, smsText:Ljava/lang/String;
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mCurrentPath:Ljava/lang/String;

    .line 2317
    .local v10, fullPath:Ljava/lang/String;
    :goto_0
    const-string v3, "telecom/msg/outbox"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 2319
    .local v14, splitStrings:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    const-string v5, "+"

    invoke-virtual {v3, v5}, Lcom/android/bluetooth/map/BluetoothMns;->addMceInitiatedOperation(Ljava/lang/String;)V

    .line 2320
    array-length v15, v14

    .line 2322
    .local v15, tmp:I
    if-eqz p3, :cond_3

    .line 2323
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 2324
    add-int/lit8 v3, v15, -0x1

    aget-object v9, v14, v3

    .line 2331
    .local v9, folderName:Ljava/lang/String;
    :goto_1
    if-eqz v9, :cond_5

    const-string v3, "draft"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2332
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2, v13}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->addToSmsFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2333
    .local v11, handle:Ljava/lang/String;
    const-string v3, "ERROR"

    if-ne v3, v11, :cond_4

    .line 2334
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 2335
    const/16 v3, 0xc4

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    .line 2383
    .end local v9           #folderName:Ljava/lang/String;
    .end local v11           #handle:Ljava/lang/String;
    .end local v14           #splitStrings:[Ljava/lang/String;
    .end local v15           #tmp:I
    :goto_2
    return-object p1

    .line 2316
    .end local v10           #fullPath:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 2326
    .restart local v10       #fullPath:Ljava/lang/String;
    .restart local v14       #splitStrings:[Ljava/lang/String;
    .restart local v15       #tmp:I
    :cond_2
    move-object/from16 v9, p3

    .restart local v9       #folderName:Ljava/lang/String;
    goto :goto_1

    .line 2329
    .end local v9           #folderName:Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v15, -0x1

    aget-object v9, v14, v3

    .restart local v9       #folderName:Ljava/lang/String;
    goto :goto_1

    .line 2338
    .restart local v11       #handle:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 2339
    const/16 v3, 0xa0

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    goto :goto_2

    .line 2342
    .end local v11           #handle:Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 2343
    const/16 v3, 0xc3

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    goto :goto_2

    .line 2347
    .end local v9           #folderName:Ljava/lang/String;
    .end local v14           #splitStrings:[Ljava/lang/String;
    .end local v15           #tmp:I
    :cond_6
    const-string v3, ""

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 2348
    move-object/from16 v0, p4

    iget-byte v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Transparent:B

    if-nez v3, :cond_a

    .line 2349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    const-string v5, "+"

    invoke-virtual {v3, v5}, Lcom/android/bluetooth/map/BluetoothMns;->addMceInitiatedOperation(Ljava/lang/String;)V

    .line 2350
    const-string v3, "queued"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v13}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->addToSmsFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2351
    .restart local v11       #handle:Ljava/lang/String;
    const-string v3, "ERROR"

    if-ne v3, v11, :cond_7

    .line 2352
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 2353
    const/16 v3, 0xc4

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    goto :goto_2

    .line 2356
    :cond_7
    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 2357
    const/16 v3, 0xa0

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    .line 2370
    .end local v11           #handle:Ljava/lang/String;
    :cond_8
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v3, :cond_9

    .line 2371
    const-string v3, "BluetoothMasAppSmsMms"

    const-string v5, " Trying to send SMS "

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    const-string v3, "BluetoothMasAppSmsMms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Text "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " address "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    :cond_9
    :try_start_0
    new-instance v12, Landroid/content/Intent;

    const-string v3, "com.android.mms.transaction.SEND_MESSAGE"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2377
    .local v12, sendIntentSms:Landroid/content/Intent;
    const-string v3, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v12, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2378
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v12, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2379
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 2380
    .end local v12           #sendIntentSms:Landroid/content/Intent;
    :catch_0
    move-exception v8

    .line 2381
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 2358
    .end local v8           #e:Ljava/lang/Exception;
    :cond_a
    move-object/from16 v0, p4

    iget-byte v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Transparent:B

    const/4 v5, 0x1

    if-ne v3, v5, :cond_8

    .line 2359
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2360
    .local v4, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .line 2361
    .local v1, sms:Landroid/telephony/SmsManager;
    invoke-virtual {v1, v13}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 2363
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    const-string v5, "+"

    invoke-virtual {v3, v5}, Lcom/android/bluetooth/map/BluetoothMns;->addMceInitiatedOperation(Ljava/lang/String;)V

    .line 2364
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2365
    const-string v3, "-1"

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 2366
    const/16 v3, 0xa0

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    goto/16 :goto_2
.end method

.method private setMsgStatusMms(JLcom/android/bluetooth/map/BluetoothMasAppParams;)I
    .locals 12
    .parameter "msgHandle"
    .parameter "bluetoothMasAppParams"

    .prologue
    .line 2412
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgHndToID(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 2413
    .local v7, handle:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " _id= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2414
    .local v11, whereClause:Ljava/lang/String;
    const-string v0, "content://mms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2415
    .local v1, uri:Landroid/net/Uri;
    const-wide/16 v2, 0x0

    cmp-long v0, v7, v2

    if-lez v0, :cond_5

    .line 2416
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2417
    .local v6, cr:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 2418
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 2419
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2420
    iget-byte v0, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusIndicator:B

    if-nez v0, :cond_1

    .line 2422
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2423
    .local v10, values:Landroid/content/ContentValues;
    const-string v0, "read"

    iget-byte v2, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusValue:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 2424
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 2426
    .local v9, rowUpdate:I
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v0, :cond_0

    .line 2427
    const-string v0, "BluetoothMasAppSmsMms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nRows updated => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    :cond_0
    const/16 v0, 0xa0

    .line 2442
    .end local v6           #cr:Landroid/database/Cursor;
    .end local v9           #rowUpdate:I
    .end local v10           #values:Landroid/content/ContentValues;
    :goto_0
    return v0

    .line 2431
    .restart local v6       #cr:Landroid/database/Cursor;
    :cond_1
    iget-byte v0, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusValue:B

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 2432
    invoke-direct {p0, v7, v8}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->deleteMMS(J)V

    .line 2436
    :cond_2
    :goto_1
    const/16 v0, 0xa0

    goto :goto_0

    .line 2433
    :cond_3
    iget-byte v0, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusValue:B

    if-nez v0, :cond_2

    .line 2434
    invoke-direct {p0, v7, v8}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->unDeleteMMS(J)V

    goto :goto_1

    .line 2439
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2442
    .end local v6           #cr:Landroid/database/Cursor;
    :cond_5
    const/16 v0, 0xa0

    goto :goto_0
.end method

.method private setMsgStatusSms(JLcom/android/bluetooth/map/BluetoothMasAppParams;)I
    .locals 10
    .parameter "msgHandle"
    .parameter "bluetoothMasAppParams"

    .prologue
    const/4 v2, 0x0

    .line 2387
    iget-wide v3, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->SMS_OFFSET_START:J

    sub-long v7, p1, v3

    .line 2388
    .local v7, handle:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://sms/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2389
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2390
    .local v6, cr:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2391
    iget-byte v0, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusIndicator:B

    if-nez v0, :cond_2

    .line 2393
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 2394
    .local v9, values:Landroid/content/ContentValues;
    const-string v0, "read"

    iget-byte v3, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusValue:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 2395
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v9, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2404
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 2405
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2408
    :cond_1
    const/16 v0, 0xa0

    return v0

    .line 2397
    :cond_2
    iget-byte v0, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusValue:B

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 2398
    invoke-direct {p0, v7, v8}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->deleteSMS(J)V

    goto :goto_0

    .line 2399
    :cond_3
    iget-byte v0, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusValue:B

    if-nez v0, :cond_0

    .line 2400
    invoke-direct {p0, v7, v8}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->unDeleteSMS(J)V

    goto :goto_0
.end method

.method private unDeleteMMS(J)V
    .locals 17
    .parameter "msgHandle"

    .prologue
    .line 654
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mms/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 656
    .local v10, cr:Landroid/database/Cursor;
    if-nez v10, :cond_1

    .line 657
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v3, :cond_0

    .line 658
    const-string v3, "BluetoothMasAppSmsMms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to query content://mms/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 664
    const-string v3, "thread_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 665
    .local v12, currentThreadId:Ljava/lang/String;
    if-eqz v12, :cond_2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 666
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v3, :cond_0

    .line 667
    const-string v3, "BluetoothMasAppSmsMms"

    const-string v5, " Not in delete folder"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 673
    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgAddress(J)Ljava/lang/String;

    move-result-object v9

    .line 676
    .local v9, address:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "content://mms/"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND thread_id != -1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 678
    .local v11, crThreadId:Landroid/database/Cursor;
    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 680
    const-string v3, "thread_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 681
    .local v16, threadIdStr:Ljava/lang/String;
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v3, :cond_3

    .line 682
    const-string v3, "BluetoothMasAppSmsMms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " THREAD ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_3
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->updateMMSThreadId(JI)V

    .line 711
    .end local v16           #threadIdStr:Ljava/lang/String;
    :goto_1
    if-eqz v11, :cond_4

    .line 712
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 719
    .end local v9           #address:Ljava/lang/String;
    .end local v11           #crThreadId:Landroid/database/Cursor;
    .end local v12           #currentThreadId:Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 690
    .restart local v9       #address:Ljava/lang/String;
    .restart local v11       #crThreadId:Landroid/database/Cursor;
    .restart local v12       #currentThreadId:Ljava/lang/String;
    :cond_5
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 691
    .local v15, tempValue:Landroid/content/ContentValues;
    const-string v3, "address"

    invoke-virtual {v15, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v3, "type"

    const-string v5, "20"

    invoke-virtual {v15, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "content://sms/"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 696
    .local v4, tempUri:Landroid/net/Uri;
    if-eqz v4, :cond_7

    .line 697
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 699
    .local v14, tempCr:Landroid/database/Cursor;
    if-eqz v14, :cond_6

    .line 700
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 701
    const-string v3, "thread_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 703
    .local v13, newThreadIdStr:Ljava/lang/String;
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 704
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->updateMMSThreadId(JI)V

    .line 706
    .end local v13           #newThreadIdStr:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 708
    .end local v14           #tempCr:Landroid/database/Cursor;
    :cond_7
    const-string v3, "BluetoothMasAppSmsMms"

    const-string v5, "Error in undelete"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 715
    .end local v4           #tempUri:Landroid/net/Uri;
    .end local v9           #address:Ljava/lang/String;
    .end local v11           #crThreadId:Landroid/database/Cursor;
    .end local v12           #currentThreadId:Ljava/lang/String;
    .end local v15           #tempValue:Landroid/content/ContentValues;
    :cond_8
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v3, :cond_4

    .line 716
    const-string v3, "BluetoothMasAppSmsMms"

    const-string v5, "msgHandle not found"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private unDeleteSMS(J)V
    .locals 17
    .parameter "msgHandle"

    .prologue
    .line 751
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://sms/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 753
    .local v10, cr:Landroid/database/Cursor;
    if-nez v10, :cond_1

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 759
    const-string v3, "thread_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 760
    .local v12, currentThreadId:Ljava/lang/String;
    if-eqz v12, :cond_2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 761
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v3, :cond_0

    .line 762
    const-string v3, "BluetoothMasAppSmsMms"

    const-string v5, " Not in delete folder"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 768
    :cond_2
    const-string v3, "address"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 771
    .local v9, address:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "content://sms/"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "address = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND thread_id != -1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 773
    .local v11, crThreadId:Landroid/database/Cursor;
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 775
    const-string v3, "thread_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 776
    .local v16, threadIdStr:Ljava/lang/String;
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v3, :cond_3

    .line 777
    const-string v3, "BluetoothMasAppSmsMms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " THREAD ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_3
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->updateSMSThreadId(JI)V

    .line 805
    .end local v16           #threadIdStr:Ljava/lang/String;
    :cond_4
    :goto_1
    if-eqz v11, :cond_5

    .line 806
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 813
    .end local v9           #address:Ljava/lang/String;
    .end local v11           #crThreadId:Landroid/database/Cursor;
    .end local v12           #currentThreadId:Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 785
    .restart local v9       #address:Ljava/lang/String;
    .restart local v11       #crThreadId:Landroid/database/Cursor;
    .restart local v12       #currentThreadId:Ljava/lang/String;
    :cond_6
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 786
    .local v15, tempValue:Landroid/content/ContentValues;
    const-string v3, "address"

    invoke-virtual {v15, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const-string v3, "type"

    const-string v5, "20"

    invoke-virtual {v15, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "content://sms/"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 791
    .local v4, tempUri:Landroid/net/Uri;
    if-eqz v4, :cond_4

    .line 792
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 794
    .local v14, tempCr:Landroid/database/Cursor;
    if-eqz v14, :cond_7

    .line 795
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 796
    const-string v3, "thread_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 798
    .local v13, newThreadIdStr:Ljava/lang/String;
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 799
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->updateSMSThreadId(JI)V

    .line 802
    .end local v13           #newThreadIdStr:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 809
    .end local v4           #tempUri:Landroid/net/Uri;
    .end local v9           #address:Ljava/lang/String;
    .end local v11           #crThreadId:Landroid/database/Cursor;
    .end local v12           #currentThreadId:Ljava/lang/String;
    .end local v14           #tempCr:Landroid/database/Cursor;
    .end local v15           #tempValue:Landroid/content/ContentValues;
    :cond_8
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v3, :cond_5

    .line 810
    const-string v3, "BluetoothMasAppSmsMms"

    const-string v5, "msgHandle not found"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateMMSThreadId(JI)V
    .locals 5
    .parameter "handle"
    .parameter "threadId"

    .prologue
    const/4 v4, 0x0

    .line 626
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 627
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "thread_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 628
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 630
    return-void
.end method

.method private updateSMSThreadId(JI)V
    .locals 5
    .parameter "msgHandle"
    .parameter "threadId"

    .prologue
    const/4 v4, 0x0

    .line 723
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 724
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "thread_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 725
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://sms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 727
    return-void
.end method


# virtual methods
.method public checkPrecondition()Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method protected getCompleteFolderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    sget-object v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils;->FORLDER_LIST_SMS_MMS:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getMessageSpecific(JLcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;
    .locals 8
    .parameter "msgHandle"
    .parameter "rsp"
    .parameter "bluetoothMasAppParams"

    .prologue
    .line 249
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 251
    .local v6, handle:J
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->MMS_OFFSET_START:J

    cmp-long v0, v6, v0

    if-ltz v0, :cond_1

    .line 256
    iget-byte v0, p4, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Charset:B

    if-nez v0, :cond_0

    .line 257
    const/16 v0, 0xc0

    iput v0, p3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->rsp:I

    .line 262
    .end local p3
    :goto_0
    return-object p3

    .line 260
    .restart local p3
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMessageMms(JLcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;

    move-result-object p3

    goto :goto_0

    .line 262
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMessageSms(JLandroid/content/Context;Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;

    move-result-object p3

    goto :goto_0
.end method

.method protected msgListingSpecific(Ljava/util/List;Ljava/lang/String;Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;
    .locals 11
    .parameter
    .parameter "name"
    .parameter "rsp"
    .parameter "appParams"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;",
            "Lcom/android/bluetooth/map/BluetoothMasAppParams;",
            ")",
            "Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, msgList:Ljava/util/List;,"Ljava/util/List<Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;>;"
    new-instance v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;

    invoke-direct {v0}, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;-><init>()V

    .line 157
    .local v0, bmlr:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;
    const/4 v7, 0x0

    .line 158
    .local v7, validFilter:Z
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mCurrentPath:Ljava/lang/String;

    .line 160
    .local v4, fullPath:Ljava/lang/String;
    :goto_0
    if-nez v4, :cond_2

    .line 162
    const/16 v8, 0xc0

    iput v8, p3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    .line 163
    iput-object p3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    .line 243
    :goto_1
    return-object v0

    .line 158
    .end local v4           #fullPath:Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getCompleteFolderList()Ljava/util/List;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mCurrentPath:Ljava/lang/String;

    invoke-static {p2, v8, v9, v10}, Lcom/android/bluetooth/map/MapUtils/CommonUtils;->getFullPath(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 167
    .restart local v4       #fullPath:Ljava/lang/String;
    :cond_2
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v8, :cond_3

    .line 168
    const-string v8, "BluetoothMasAppSmsMms"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "appParams.FilterMessageType ::"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-byte v10, p4, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterMessageType:B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v8, "BluetoothMasAppSmsMms"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Condition result::"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-byte v10, p4, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterMessageType:B

    and-int/lit8 v10, v10, 0xb

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_3
    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, splitStrings:[Ljava/lang/String;
    array-length v8, v6

    const/4 v9, 0x3

    if-ne v8, v9, :cond_f

    .line 173
    const/4 v8, 0x2

    aget-object v3, v6, v8

    .line 174
    .local v3, folderName:Ljava/lang/String;
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v8, :cond_4

    const-string v8, "BluetoothMasAppSmsMms"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "folderName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_4
    invoke-static {p4}, Lcom/android/bluetooth/map/MapUtils/CommonUtils;->validateFilterPeriods(Lcom/android/bluetooth/map/BluetoothMasAppParams;)I

    move-result v8

    if-nez v8, :cond_5

    .line 176
    const/16 v8, 0xc0

    iput v8, p3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    .line 177
    iput-object p3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    goto :goto_1

    .line 180
    :cond_5
    iget-byte v8, p4, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterReadStatus:B

    const/4 v9, 0x2

    if-le v8, v9, :cond_6

    .line 181
    const/16 v8, 0xc0

    iput v8, p3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    .line 182
    iput-object p3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    goto/16 :goto_1

    .line 196
    :cond_6
    iget-byte v8, p4, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPriority:B

    if-eqz v8, :cond_7

    iget-byte v8, p4, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPriority:B

    const/4 v9, 0x2

    if-ne v8, v9, :cond_e

    .line 197
    :cond_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    .line 198
    .local v5, phoneType:I
    iget-byte v8, p4, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterMessageType:B

    and-int/lit8 v8, v8, 0x3

    if-eqz v8, :cond_9

    iget-byte v8, p4, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterMessageType:B

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_8

    const/4 v8, 0x1

    if-eq v5, v8, :cond_9

    :cond_8
    iget-byte v8, p4, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterMessageType:B

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_a

    const/4 v8, 0x2

    if-ne v5, v8, :cond_a

    .line 203
    :cond_9
    const/4 v7, 0x1

    .line 204
    invoke-direct {p0, p1, v3, p3, p4}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->msgListSms(Ljava/util/List;Ljava/lang/String;Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;

    move-result-object v2

    .line 206
    .local v2, bmlrSms:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;
    iget-object v8, v2, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->msgList:Ljava/util/List;

    iput-object v8, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->msgList:Ljava/util/List;

    .line 207
    iget-object v8, v2, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    iput-object v8, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    .line 212
    .end local v2           #bmlrSms:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;
    :cond_a
    iget-byte v8, p4, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterMessageType:B

    and-int/lit8 v8, v8, 0x8

    if-nez v8, :cond_c

    .line 213
    const-string v8, "BluetoothMasAppSmsMms"

    const-string v9, "About to retrieve msgListMms "

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v7, 0x1

    .line 217
    const-string v8, "draft"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 218
    const-string v3, "drafts"

    .line 220
    :cond_b
    invoke-direct {p0, p1, v3, p3, p4}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->msgListMms(Ljava/util/List;Ljava/lang/String;Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;

    move-result-object v1

    .line 221
    .local v1, bmlrMms:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;
    iget-object v8, v1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->msgList:Ljava/util/List;

    iput-object v8, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->msgList:Ljava/util/List;

    .line 222
    iget-object v8, v1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    iput-object v8, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    .line 224
    .end local v1           #bmlrMms:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;
    :cond_c
    const/4 v8, 0x1

    if-eq v7, v8, :cond_f

    .line 225
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v8, :cond_d

    const-string v8, "BluetoothMasAppSmsMms"

    const-string v9, "Invalid message filter, returning empty-list"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_d
    const/16 v8, 0xa0

    iput v8, p3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    .line 227
    iput-object p3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    goto/16 :goto_1

    .line 231
    .end local v5           #phoneType:I
    :cond_e
    iget-byte v8, p4, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPriority:B

    const/4 v9, 0x2

    if-le v8, v9, :cond_f

    .line 232
    const/16 v8, 0xc0

    iput v8, p3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    .line 233
    iput-object p3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    goto/16 :goto_1

    .line 240
    .end local v3           #folderName:Ljava/lang/String;
    :cond_f
    iget-object v8, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->msgList:Ljava/util/List;

    new-instance v9, Lcom/android/bluetooth/map/MapUtils/SortMsgListByDate;

    invoke-direct {v9}, Lcom/android/bluetooth/map/MapUtils/SortMsgListByDate;-><init>()V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 241
    const/16 v8, 0xa0

    iput v8, p3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    .line 242
    iput-object p3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    goto/16 :goto_1
.end method

.method public msgStatus(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMasAppParams;)I
    .locals 5
    .parameter "msgHandle"
    .parameter "bluetoothMasAppParams"

    .prologue
    const/16 v2, 0xcc

    const/4 v4, 0x1

    .line 364
    iget-byte v3, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusIndicator:B

    if-eqz v3, :cond_1

    iget-byte v3, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusIndicator:B

    if-eq v3, v4, :cond_1

    .line 379
    :cond_0
    :goto_0
    return v2

    .line 368
    :cond_1
    iget-byte v3, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusValue:B

    if-eqz v3, :cond_2

    iget-byte v3, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusValue:B

    if-ne v3, v4, :cond_0

    .line 372
    :cond_2
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 373
    .local v0, handle:J
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->OFFSET_START:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->OFFSET_END:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 374
    const/16 v2, 0xc4

    goto :goto_0

    .line 376
    :cond_3
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->MMS_OFFSET_START:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_4

    .line 377
    invoke-direct {p0, v0, v1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->setMsgStatusMms(JLcom/android/bluetooth/map/BluetoothMasAppParams;)I

    move-result v2

    goto :goto_0

    .line 379
    :cond_4
    invoke-direct {p0, v0, v1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->setMsgStatusSms(JLcom/android/bluetooth/map/BluetoothMasAppParams;)I

    move-result v2

    goto :goto_0
.end method

.method public msgUpdate()I
    .locals 2

    .prologue
    .line 389
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasAppSmsMms"

    const-string v1, "Message Update"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    const/16 v0, 0xd1

    return v0
.end method

.method public onConnect()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public onDisconnect()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->cleanUp()V

    .line 151
    return-void
.end method

.method public pushMsg(Ljava/lang/String;Ljava/io/File;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;
    .locals 19
    .parameter "name"
    .parameter "file"
    .parameter "bluetoothMasAppParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
        }
    .end annotation

    .prologue
    .line 273
    new-instance v13, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;

    invoke-direct {v13}, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;-><init>()V

    .line 274
    .local v13, rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;
    const/16 v15, 0xd3

    iput v15, v13, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    .line 275
    const/4 v15, 0x0

    iput-object v15, v13, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 277
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->checkPath(ZLjava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mCurrentPath:Ljava/lang/String;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mCurrentPath:Ljava/lang/String;

    const-string v16, "telecom"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mCurrentPath:Ljava/lang/String;

    const-string v16, "telecom/msg"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_1

    .line 281
    :cond_0
    const/16 v15, 0xc0

    iput v15, v13, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    move-object v15, v13

    .line 355
    :goto_0
    return-object v15

    .line 285
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    const-string v16, "activity"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 286
    .local v5, am:Landroid/app/ActivityManager;
    new-instance v9, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v9}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 287
    .local v9, outInfo:Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v5, v9}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 288
    iget-wide v15, v9, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iget-wide v0, v9, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    move-wide/from16 v17, v0

    sub-long v3, v15, v17

    .line 290
    .local v3, allowedMem:J
    const/4 v10, 0x0

    .line 291
    .local v10, readBytes:[B
    const/4 v7, 0x0

    .line 293
    .local v7, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 294
    .end local v7           #fis:Ljava/io/FileInputStream;
    .local v8, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v15

    cmp-long v15, v15, v3

    if-lez v15, :cond_3

    .line 295
    const/16 v15, 0xcd

    iput v15, v13, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    .line 296
    const/4 v15, 0x0

    iput-object v15, v13, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 297
    const-string v15, "BluetoothMasAppSmsMms"

    const-string v16, "Message body is larger than the max length allowed"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_b

    .line 313
    if-eqz v8, :cond_2

    .line 315
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    :cond_2
    :goto_1
    move-object v15, v13

    .line 298
    goto :goto_0

    .line 300
    :cond_3
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v15

    long-to-int v15, v15

    new-array v10, v15, [B

    .line 301
    invoke-virtual {v8, v10}, Ljava/io/FileInputStream;->read([B)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_b

    .line 313
    if-eqz v8, :cond_4

    .line 315
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    .line 322
    :cond_4
    :goto_2
    const-string v11, ""

    .line 323
    .local v11, readStr:Ljava/lang/String;
    const-string v14, ""

    .line 325
    .local v14, type:Ljava/lang/String;
    :try_start_5
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v10}, Ljava/lang/String;-><init>([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 326
    .end local v11           #readStr:Ljava/lang/String;
    .local v12, readStr:Ljava/lang/String;
    :try_start_6
    invoke-static {v12}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a

    move-result-object v14

    .line 330
    if-nez v14, :cond_9

    .line 331
    const/16 v15, 0xc0

    iput v15, v13, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    move-object v15, v13

    .line 332
    goto :goto_0

    .line 303
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v12           #readStr:Ljava/lang/String;
    .end local v14           #type:Ljava/lang/String;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v6

    .line 304
    .local v6, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_7
    const-string v15, "BluetoothMasAppSmsMms"

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 313
    if-eqz v7, :cond_5

    .line 315
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .end local v6           #e:Ljava/io/FileNotFoundException;
    :cond_5
    :goto_4
    move-object v15, v13

    .line 305
    goto :goto_0

    .line 306
    :catch_1
    move-exception v6

    .line 307
    .local v6, e:Ljava/io/IOException;
    :goto_5
    :try_start_9
    const-string v15, "BluetoothMasAppSmsMms"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 313
    if-eqz v7, :cond_6

    .line 315
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :cond_6
    :goto_6
    move-object v15, v13

    .line 308
    goto/16 :goto_0

    .line 309
    .end local v6           #e:Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 310
    .local v6, e:Ljava/lang/SecurityException;
    :goto_7
    :try_start_b
    const-string v15, "BluetoothMasAppSmsMms"

    invoke-virtual {v6}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 313
    if-eqz v7, :cond_7

    .line 315
    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .end local v6           #e:Ljava/lang/SecurityException;
    :cond_7
    :goto_8
    move-object v15, v13

    .line 311
    goto/16 :goto_0

    .line 313
    :catchall_0
    move-exception v15

    :goto_9
    if-eqz v7, :cond_8

    .line 315
    :try_start_d
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    .line 313
    :cond_8
    :goto_a
    throw v15

    .line 327
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v11       #readStr:Ljava/lang/String;
    .restart local v14       #type:Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 328
    .local v6, e:Ljava/lang/Exception;
    :goto_b
    new-instance v15, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 334
    .end local v6           #e:Ljava/lang/Exception;
    .end local v11           #readStr:Ljava/lang/String;
    .restart local v12       #readStr:Ljava/lang/String;
    :cond_9
    const-string v15, "SMS_GSM"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_a

    const-string v15, "SMS_CDMA"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 335
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v13, v12, v1, v2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->pushMessageSms(Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;

    move-result-object v15

    goto/16 :goto_0

    .line 336
    :cond_b
    const-string v15, "MMS"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 340
    const-string v15, "MMS"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 350
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v13, v12, v1}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->pushMessageMms(Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;

    move-result-object v13

    move-object v15, v13

    .line 351
    goto/16 :goto_0

    .line 354
    :cond_c
    const/16 v15, 0xc0

    iput v15, v13, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    move-object v15, v13

    .line 355
    goto/16 :goto_0

    .line 316
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v12           #readStr:Ljava/lang/String;
    .end local v14           #type:Ljava/lang/String;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v6

    .line 317
    .local v6, e:Ljava/io/IOException;
    const-string v16, "BluetoothMasAppSmsMms"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error while closing stream"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 316
    .local v6, e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v6

    .line 317
    .local v6, e:Ljava/io/IOException;
    const-string v15, "BluetoothMasAppSmsMms"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error while closing stream"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 316
    :catch_6
    move-exception v6

    .line 317
    const-string v15, "BluetoothMasAppSmsMms"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error while closing stream"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 316
    .local v6, e:Ljava/lang/SecurityException;
    :catch_7
    move-exception v6

    .line 317
    .local v6, e:Ljava/io/IOException;
    const-string v15, "BluetoothMasAppSmsMms"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error while closing stream"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 316
    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :catch_8
    move-exception v6

    .line 317
    .restart local v6       #e:Ljava/io/IOException;
    const-string v15, "BluetoothMasAppSmsMms"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error while closing stream"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 316
    .end local v6           #e:Ljava/io/IOException;
    :catch_9
    move-exception v6

    .line 317
    .restart local v6       #e:Ljava/io/IOException;
    const-string v15, "BluetoothMasAppSmsMms"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error while closing stream"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 327
    .end local v6           #e:Ljava/io/IOException;
    .restart local v12       #readStr:Ljava/lang/String;
    .restart local v14       #type:Ljava/lang/String;
    :catch_a
    move-exception v6

    move-object v11, v12

    .end local v12           #readStr:Ljava/lang/String;
    .restart local v11       #readStr:Ljava/lang/String;
    goto/16 :goto_b

    .line 313
    .end local v11           #readStr:Ljava/lang/String;
    .end local v14           #type:Ljava/lang/String;
    :catchall_1
    move-exception v15

    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_9

    .line 309
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :catch_b
    move-exception v6

    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_7

    .line 306
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :catch_c
    move-exception v6

    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_5

    .line 303
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :catch_d
    move-exception v6

    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method public startMnsSession(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "remoteDevice"

    .prologue
    .line 111
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasAppSmsMms"

    const-string v1, "Start MNS Client"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMns;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 115
    return-void
.end method

.method public stopMnsSession(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "remoteDevice"

    .prologue
    .line 121
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasAppSmsMms"

    const-string v1, "Stop MNS Client"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMns;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 125
    return-void
.end method
