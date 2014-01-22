.class public Lcom/android/bluetooth/map/MapUtils/MapUtils;
.super Ljava/lang/Object;
.source "MapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;,
        Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
    }
.end annotation


# static fields
.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field public static final TAG:Ljava/lang/String; = "MapUtils"

.field public static final V:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1737
    return-void
.end method

.method private static fetchBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "bmsg"

    .prologue
    .line 1325
    const-string v3, "BEGIN:BBODY"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1326
    .local v2, pos:I
    if-lez v2, :cond_0

    .line 1327
    const-string v3, "BEGIN:BBODY"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1328
    .local v0, beginVersionPos:I
    const-string v3, "END:BBODY"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1330
    .local v1, endVersionPos:I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1333
    .end local v0           #beginVersionPos:I
    .end local v1           #endVersionPos:I
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static fetchBodyEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
        }
    .end annotation

    .prologue
    .line 1516
    sget-boolean v18, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v18, :cond_0

    const-string v18, "MapUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "inside fetch body Email :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    :cond_0
    const/4 v4, -0x1

    .line 1519
    .local v4, beginVersionPos:I
    const/16 v17, 0x0

    .line 1520
    .local v17, rfc822Flag:I
    const/4 v12, 0x0

    .line 1521
    .local v12, mimeFlag:I
    const/4 v5, -0x1

    .line 1523
    .local v5, beginVersionPos1:I
    const/4 v15, 0x0

    .line 1524
    .local v15, pos1:I
    invoke-static/range {p0 .. p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchBoundary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1525
    .local v6, boundary:Ljava/lang/String;
    if-eqz v6, :cond_3

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 1526
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "--"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 1527
    const/4 v12, 0x1

    .line 1533
    :goto_0
    const-string v18, "Content-Type"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 1534
    .local v7, contentIndex:I
    if-lez v7, :cond_1

    .line 1535
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchContentType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1536
    .local v8, contentType:Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    const-string v19, "message/rfc822"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1537
    const/16 v17, 0x1

    .line 1540
    .end local v8           #contentType:Ljava/lang/String;
    :cond_1
    const-string v18, "\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v18

    const-string v19, "\r\n"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v14, v18, v19

    .line 1541
    .local v14, pos:I
    :goto_1
    if-lez v14, :cond_2

    .line 1542
    const-string v18, "\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1543
    const-string v18, "\r\n"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v4, v14, v18

    .line 1564
    :cond_2
    if-lez v4, :cond_e

    .line 1566
    if-nez v17, :cond_a

    .line 1567
    if-nez v12, :cond_9

    .line 1568
    const-string v18, "END:MSG"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    .line 1569
    .local v11, endVersionPos:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v11, v0, :cond_8

    .line 1570
    const-string v18, "\r\n"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    sub-int v18, v11, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 1610
    .end local v11           #endVersionPos:I
    :goto_2
    return-object v18

    .line 1530
    .end local v7           #contentIndex:I
    .end local v14           #pos:I
    :cond_3
    const-string v18, "Date:"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 1531
    const/4 v12, 0x0

    goto :goto_0

    .line 1546
    .restart local v7       #contentIndex:I
    .restart local v14       #pos:I
    :cond_4
    const-string v18, "\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    .line 1547
    .local v13, next:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_7

    .line 1550
    const-string v18, "BEGIN:MSG"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1551
    .local v3, beginMsg:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_5

    .line 1552
    new-instance v18, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v19, "Ill-formatted bMessage, no BEGIN:MSG"

    invoke-direct/range {v18 .. v19}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1554
    :cond_5
    const-string v18, "END:MSG"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    .line 1555
    .local v10, endMsg:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v10, v0, :cond_6

    .line 1556
    new-instance v18, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v19, "Ill-formatted bMessage, no END:MSG"

    invoke-direct/range {v18 .. v19}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1558
    :cond_6
    const-string v18, "BEGIN:MSG"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v18, v18, v3

    const-string v19, "\r\n"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    sub-int v19, v10, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    goto :goto_2

    .line 1560
    .end local v3           #beginMsg:I
    .end local v10           #endMsg:I
    :cond_7
    const-string v18, "\r\n"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v14, v13, v18

    .line 1562
    goto/16 :goto_1

    .line 1573
    .end local v13           #next:I
    .restart local v11       #endVersionPos:I
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    goto :goto_2

    .line 1576
    .end local v11           #endVersionPos:I
    :cond_9
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "--"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "--"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v18

    const-string v19, "\r\n"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    sub-int v11, v18, v19

    .line 1579
    .restart local v11       #endVersionPos:I
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    goto/16 :goto_2

    .line 1580
    :catch_0
    move-exception v9

    .line 1581
    .local v9, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v18, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v19, "Ill-formatted bMessage, no end boundary"

    invoke-direct/range {v18 .. v19}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1584
    .end local v9           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v11           #endVersionPos:I
    :cond_a
    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 1585
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "--"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "--"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    .line 1587
    .restart local v11       #endVersionPos:I
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p0

    .line 1591
    const-string v18, "\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const-string v19, "\r\n"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v16, v18, v19

    .line 1592
    .local v16, pos2:I
    :goto_3
    if-lez v16, :cond_b

    .line 1593
    const-string v18, "\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 1594
    const-string v18, "\r\n"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v5, v16, v18

    .line 1605
    :cond_b
    if-lez v5, :cond_e

    .line 1606
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    .line 1588
    .end local v16           #pos2:I
    :catch_1
    move-exception v9

    .line 1589
    .restart local v9       #e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v18, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v19, "Ill-formatted bMessage, no end boundary"

    invoke-direct/range {v18 .. v19}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1597
    .end local v9           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v16       #pos2:I
    :cond_c
    const-string v18, "\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    .line 1598
    .restart local v13       #next:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_d

    .line 1599
    new-instance v18, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v19, "Ill-formatted bMessage, no empty line"

    invoke-direct/range {v18 .. v19}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1601
    :cond_d
    const-string v18, "\r\n"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v16, v13, v18

    .line 1603
    goto :goto_3

    .line 1610
    .end local v11           #endVersionPos:I
    .end local v13           #next:I
    .end local v16           #pos2:I
    :cond_e
    const/16 v18, 0x0

    goto/16 :goto_2
.end method

.method private static fetchBodyEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "body"

    .prologue
    .line 1398
    const-string v3, "ENCODING:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1399
    .local v2, pos:I
    if-lez v2, :cond_0

    .line 1400
    const-string v3, "ENCODING:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1401
    .local v0, beginVersionPos:I
    const-string v3, "\r\n"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1402
    .local v1, endVersionPos:I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1406
    .end local v0           #beginVersionPos:I
    .end local v1           #endVersionPos:I
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static fetchBodyLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "body"

    .prologue
    .line 1422
    const-string v3, "LANGUAGE:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1423
    .local v2, pos:I
    if-lez v2, :cond_0

    .line 1424
    const-string v3, "LANGUAGE:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1425
    .local v0, beginVersionPos:I
    const-string v3, "\r\n"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1426
    .local v1, endVersionPos:I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1430
    .end local v0           #beginVersionPos:I
    .end local v1           #endVersionPos:I
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static fetchBodyLength(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6
    .parameter "body"

    .prologue
    .line 1445
    const-string v5, "LENGTH:"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1446
    .local v4, pos:I
    if-lez v4, :cond_0

    .line 1447
    const-string v5, "LENGTH:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v1, v4, v5

    .line 1448
    .local v1, beginVersionPos:I
    const-string v5, "\r\n"

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 1449
    .local v3, endVersionPos:I
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1451
    .local v0, bd:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 1456
    .end local v0           #bd:Ljava/lang/String;
    .end local v1           #beginVersionPos:I
    .end local v3           #endVersionPos:I
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static fetchBodyMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "body"

    .prologue
    .line 1471
    const-string v3, "BEGIN:MSG"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1472
    .local v2, pos:I
    if-lez v2, :cond_0

    .line 1473
    const-string v3, "BEGIN:MSG"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int v0, v2, v3

    .line 1475
    .local v0, beginVersionPos:I
    const-string v3, "END:MSG"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v1, v3, v4

    .line 1477
    .local v1, endVersionPos:I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1479
    .end local v0           #beginVersionPos:I
    .end local v1           #endVersionPos:I
    :goto_0
    return-object v3

    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method private static fetchBodyMsgEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "body"

    .prologue
    .line 1484
    sget-boolean v3, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v3, :cond_0

    .line 1485
    const-string v3, "MapUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bMessageEmail inside fetch body ::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    :cond_0
    const-string v3, "Content-Disposition:inline"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1488
    .local v2, pos:I
    if-lez v2, :cond_1

    .line 1489
    const-string v3, "Content-Disposition:inline"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int v0, v2, v3

    .line 1491
    .local v0, beginVersionPos:I
    const-string v3, "--RPI-Messaging"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v1, v3, v4

    .line 1494
    .local v1, endVersionPos:I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1498
    .end local v0           #beginVersionPos:I
    .end local v1           #endVersionPos:I
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static fetchBodyPartID(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "body"

    .prologue
    .line 1350
    const-string v3, "PARTID:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1351
    .local v2, pos:I
    if-lez v2, :cond_0

    .line 1352
    const-string v3, "PARTID:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1353
    .local v0, beginVersionPos:I
    const-string v3, "\r\n"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1354
    .local v1, endVersionPos:I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1357
    .end local v0           #beginVersionPos:I
    .end local v1           #endVersionPos:I
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static fetchBoundary(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "body"

    .prologue
    .line 1503
    const-string v3, "boundary=\""

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1504
    .local v2, pos:I
    if-lez v2, :cond_0

    .line 1505
    const-string v3, "boundary=\""

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1506
    .local v0, beginVersionPos:I
    const-string v3, "\""

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1507
    .local v1, endVersionPos:I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1511
    .end local v0           #beginVersionPos:I
    .end local v1           #endVersionPos:I
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static fetchCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "body"

    .prologue
    .line 1373
    const-string v3, "CHARSET:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1374
    .local v2, pos:I
    if-lez v2, :cond_0

    .line 1376
    const-string v3, "CHARSET:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1377
    .local v0, beginVersionPos:I
    const-string v3, "\r\n"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1379
    .local v1, endVersionPos:I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1383
    .end local v0           #beginVersionPos:I
    .end local v1           #endVersionPos:I
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static fetchContentType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "bmsg"
    .parameter "boundary"

    .prologue
    .line 1614
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1615
    .local v3, pos1:I
    const-string v4, "Content-Type:"

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1616
    .local v2, pos:I
    if-lez v2, :cond_0

    .line 1618
    const-string v4, "Content-Type:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v0, v2, v4

    .line 1619
    .local v0, beginVersionPos:I
    const-string v4, "\r\n"

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1620
    .local v1, endVersionPos:I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1624
    .end local v0           #beginVersionPos:I
    .end local v1           #endVersionPos:I
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static fetchFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "bmsg"

    .prologue
    .line 1302
    const-string v3, "FOLDER:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1303
    .local v2, pos:I
    if-lez v2, :cond_0

    .line 1304
    const-string v3, "FOLDER:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1305
    .local v0, beginVersionPos:I
    const-string v3, "\r\n"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1307
    .local v1, endVersionPos:I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1310
    .end local v0           #beginVersionPos:I
    .end local v1           #endVersionPos:I
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static fetchNumEnv(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .parameter "bmsg"

    .prologue
    .line 1642
    const/4 v0, 0x0

    .line 1643
    .local v0, envCnt:I
    const/4 v2, 0x0

    .line 1644
    .local v2, pos:I
    const/4 v1, 0x0

    .line 1645
    .local v1, loopCnt:I
    const-string v3, "\r\nBEGIN:BENV"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1646
    if-gez v2, :cond_0

    .line 1647
    const/4 v1, 0x4

    .line 1651
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_2

    .line 1652
    const-string v3, "\r\nBEGIN:BENV"

    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1653
    if-gez v2, :cond_1

    .line 1654
    const/4 v1, 0x4

    goto :goto_0

    .line 1649
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1656
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1660
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3
.end method

.method private static fetchOriginatorEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "vCard"

    .prologue
    .line 1098
    const-string v3, "From:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1099
    .local v2, pos:I
    const-string v3, "From:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1100
    .local v0, beginVersionPos:I
    const-string v3, "\r\n"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1101
    .local v1, endVersionPos:I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static fetchOriginatorVcard(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "bmsg"

    .prologue
    .line 1199
    const-string v3, "\r\nBEGIN:VCARD"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1200
    .local v2, pos:I
    if-lez v2, :cond_0

    .line 1201
    const-string v3, "\r\n"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1202
    .local v0, beginVcardPos:I
    const-string v3, "END:VCARD"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1204
    .local v1, endVcardPos:I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1208
    .end local v0           #beginVcardPos:I
    .end local v1           #endVcardPos:I
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static fetchOriginatorVcardEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "bmsg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 1133
    const-string v3, "BEGIN:VCARD"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1134
    .local v1, vCardBeginPos:I
    if-ne v1, v6, :cond_0

    .line 1136
    new-instance v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v4, "No Vcard"

    invoke-direct {v3, v4}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1138
    :cond_0
    sget-boolean v3, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v3, :cond_1

    const-string v3, "MapUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vCard start position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_1
    const-string v3, "BEGIN:BENV"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1140
    .local v0, bEnvPos:I
    if-le v1, v0, :cond_2

    .line 1142
    const-string v3, ""

    .line 1151
    :goto_0
    return-object v3

    .line 1144
    :cond_2
    const-string v3, "END:VCARD"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1145
    .local v2, vCardEndPos:I
    if-ne v2, v6, :cond_3

    .line 1147
    new-instance v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v4, "No END:VCARD"

    invoke-direct {v3, v4}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1149
    :cond_3
    const-string v3, "END:VCARD"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    .line 1151
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static fetchReadStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "bmsg"

    .prologue
    .line 1258
    const-string v3, "STATUS:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1259
    .local v2, pos:I
    if-lez v2, :cond_0

    .line 1261
    const-string v3, "STATUS:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1262
    .local v0, beginStatusPos:I
    const-string v3, "\r\n"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1263
    .local v1, endStatusPos:I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1266
    .end local v0           #beginStatusPos:I
    .end local v1           #endStatusPos:I
    :goto_0
    return-object v3

    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method private static fetchRecepientVcardEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "bmsg"

    .prologue
    .line 1113
    const-string v3, "BEGIN:BENV"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1114
    .local v2, pos:I
    sget-boolean v3, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v3, :cond_0

    .line 1115
    const-string v3, "MapUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vCard start position:: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :cond_0
    if-lez v2, :cond_2

    .line 1118
    sget-boolean v3, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v3, :cond_1

    .line 1119
    const-string v3, "MapUtils"

    const-string v4, "vCard start position greater than 0::"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :cond_1
    const-string v3, "\r\n"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1122
    .local v0, beginVcardPos:I
    const-string v3, "END:BENV"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1124
    .local v1, endVcardPos:I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1127
    .end local v0           #beginVcardPos:I
    .end local v1           #endVcardPos:I
    :goto_0
    return-object v3

    :cond_2
    const-string v3, ""

    goto :goto_0
.end method

.method private static fetchRecipientEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "vCard"

    .prologue
    .line 1105
    const-string v3, "To:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1106
    .local v2, pos:I
    const-string v3, "To:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1107
    .local v0, beginVersionPos:I
    const-string v3, "\r\n"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1108
    .local v1, endVersionPos:I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static fetchRecipientVcard(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "bmsg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
        }
    .end annotation

    .prologue
    .line 1225
    const/4 v2, 0x0

    .line 1226
    .local v2, locBENV:I
    const/4 v3, 0x0

    .line 1227
    .local v3, pos:I
    const-string v4, "\r\nBEGIN:BENV"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1228
    const-string v4, "\r\nBEGIN:VCARD"

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 1229
    if-gez v3, :cond_0

    .line 1231
    new-instance v4, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v5, "No vCard in BENV"

    invoke-direct {v4, v5}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1233
    :cond_0
    if-lez v3, :cond_2

    .line 1234
    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v0, v3, v4

    .line 1235
    .local v0, beginVcardPos:I
    const-string v4, "END:VCARD"

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1236
    .local v1, endVcardPos:I
    if-gez v1, :cond_1

    .line 1238
    new-instance v4, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v5, "No END:VCARD in BENV"

    invoke-direct {v4, v5}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1240
    :cond_1
    const-string v4, "END:VCARD"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    .line 1241
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1244
    .end local v0           #beginVcardPos:I
    .end local v1           #endVcardPos:I
    :goto_0
    return-object v4

    :cond_2
    const-string v4, ""

    goto :goto_0
.end method

.method private static fetchSubjectEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "body"

    .prologue
    .line 1155
    const-string v3, "Subject:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1157
    .local v2, pos:I
    if-lez v2, :cond_0

    .line 1158
    const-string v3, "Subject:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1159
    .local v0, beginVersionPos:I
    const-string v3, "\n"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1160
    .local v1, endVersionPos:I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1162
    .end local v0           #beginVersionPos:I
    .end local v1           #endVersionPos:I
    :goto_0
    return-object v3

    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method public static fetchType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "bmsg"

    .prologue
    .line 1280
    const-string v3, "TYPE:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1281
    .local v2, pos:I
    if-lez v2, :cond_0

    .line 1282
    const-string v3, "TYPE:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1283
    .local v0, beginTypePos:I
    const-string v3, "\r\n"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1285
    .local v1, endTypePos:I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1288
    .end local v0           #beginTypePos:I
    .end local v1           #endTypePos:I
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static fetchVcardEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "vCard"

    .prologue
    .line 1085
    const-string v3, "EMAIL:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1086
    .local v2, pos:I
    const-string v3, "EMAIL:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1087
    .local v0, beginVersionPos:I
    sget-boolean v3, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v3, :cond_0

    .line 1088
    const-string v3, "MapUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Begin Version Position Email:: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :cond_0
    const-string v3, "\n"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1091
    .local v1, endVersionPos:I
    sget-boolean v3, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v3, :cond_1

    .line 1092
    const-string v3, "MapUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "End version Pos Email:: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static fetchVcardEmailforMms(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "vCard"

    .prologue
    .line 1725
    const-string v3, "\r\nEMAIL:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1726
    .local v2, pos:I
    const-string v3, "EMAIL:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int v0, v2, v3

    .line 1727
    .local v0, beginVersionPos:I
    const-string v3, "\r\n"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1728
    .local v1, endVersionPos:I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static fetchVcardName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "vCard"

    .prologue
    .line 1692
    const-string v3, "\r\nN:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1693
    .local v2, pos:I
    const-string v3, "N:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v0, v3, v4

    .line 1694
    .local v0, beginNPos:I
    const-string v3, "\r\n"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1695
    .local v1, endNPos:I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static fetchVcardTel(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "vCard"

    .prologue
    .line 1709
    const-string v3, "\r\nTEL:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1710
    .local v2, pos:I
    const-string v3, "TEL:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int v0, v2, v3

    .line 1711
    .local v0, beginVersionPos:I
    const-string v3, "\r\n"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1712
    .local v1, endVersionPos:I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static fetchVcardVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "vCard"

    .prologue
    .line 1673
    const-string v3, "\r\nVERSION:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1674
    .local v2, pos:I
    const-string v3, "VERSION:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int v0, v2, v3

    .line 1675
    .local v0, beginVersionPos:I
    const-string v3, "\r\n"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1677
    .local v1, endVersionPos:I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static fetchVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "bmsg"

    .prologue
    .line 1176
    const-string v3, "VERSION:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1177
    .local v2, pos:I
    if-lez v2, :cond_0

    .line 1179
    const-string v3, "VERSION:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1180
    .local v0, beginVersionPos:I
    const-string v3, "\r\n"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1181
    .local v1, endVersionPos:I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1184
    .end local v0           #beginVersionPos:I
    .end local v1           #endVersionPos:I
    :goto_0
    return-object v3

    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method public static folderListingXML(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "<?xml version=\"1.0\"?><!DOCTYPE folder-listing SYSTEM \"obex-folder-listing.dtd\"><folder-listing version=\"1.0\">"

    .line 95
    .local v2, str:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 96
    .local v1, s:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<folder name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 101
    .end local v1           #s:Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</folder-listing>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    return-object v2
.end method

.method public static fromBmessageEmail(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
    .locals 10
    .parameter "context"
    .parameter "bmsg"
    .parameter "mMasId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
        }
    .end annotation

    .prologue
    .line 993
    new-instance v2, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;

    invoke-direct {v2}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;-><init>()V

    .line 994
    .local v2, bMsgObj:Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchRecipientVcard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 995
    .local v5, vCard:Ljava/lang/String;
    sget-boolean v7, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v7, :cond_0

    const-string v7, "MapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "vCard Info: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_0
    invoke-static {v5}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->parseVCard(Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;

    move-result-object v4

    .line 998
    .local v4, recipient:Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;
    iget-object v7, v4, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 999
    new-instance v7, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v8, "No Email in recipient vCard"

    invoke-direct {v7, v8}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1001
    :cond_1
    iget-object v7, v4, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setRecipientVcard_email(Ljava/lang/String;)V

    .line 1002
    sget-boolean v7, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v7, :cond_2

    const-string v7, "MapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Email: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_2
    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchOriginatorVcardEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1005
    .local v6, vcardOrig:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->parseVCard(Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;

    move-result-object v3

    .line 1006
    .local v3, originator:Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;
    iget-object v7, v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    .line 1007
    const-wide/16 v0, -0x1

    .line 1008
    .local v0, accountId:J
    invoke-static {p2}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getAccountId(I)J

    move-result-wide v0

    .line 1009
    const-wide/16 v7, -0x1

    cmp-long v7, v0, v7

    if-eqz v7, :cond_3

    if-eqz p0, :cond_3

    .line 1010
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getEmailAccountIdEmail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    .line 1012
    const-string v7, "MapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Orig Email inserted by MSE as: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getEmailAccountDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mFormattedName:Ljava/lang/String;

    .line 1015
    const-string v7, "MapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Orig F-Name inserted by MSE as: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mFormattedName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_3
    iget-object v7, v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    .line 1018
    new-instance v7, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v8, "No Email in originator vCard"

    invoke-direct {v7, v8}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1021
    .end local v0           #accountId:J
    :cond_4
    iget-object v7, v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setOriginatorVcard_email(Ljava/lang/String;)V

    .line 1022
    sget-boolean v7, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v7, :cond_5

    const-string v7, "MapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Orig Email: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :cond_5
    iget-object v7, v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mFormattedName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_d

    .line 1024
    sget-boolean v7, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v7, :cond_6

    const-string v7, "MapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Orig Formatted Name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mFormattedName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :cond_6
    iget-object v7, v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mFormattedName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setOriginatorVcard_name(Ljava/lang/String;)V

    .line 1031
    :goto_0
    sget-boolean v7, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v7, :cond_7

    .line 1032
    const-string v7, "MapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bmsg version:: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_7
    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBmsg_version(Ljava/lang/String;)V

    .line 1037
    sget-boolean v7, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v7, :cond_8

    .line 1038
    const-string v7, "MapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Read status:: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchReadStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_8
    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchReadStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setStatus(Ljava/lang/String;)V

    .line 1043
    sget-boolean v7, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v7, :cond_9

    .line 1044
    const-string v7, "MapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Message Type:: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :cond_9
    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setType(Ljava/lang/String;)V

    .line 1049
    sget-boolean v7, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v7, :cond_a

    .line 1050
    const-string v7, "MapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Folder:: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :cond_a
    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setFolder(Ljava/lang/String;)V

    .line 1055
    sget-boolean v7, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v7, :cond_b

    .line 1056
    const-string v7, "MapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "body length:: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchBodyLength(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :cond_b
    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchBodyLength(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_length(I)V

    .line 1061
    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchBodyEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_msg(Ljava/lang/String;)V

    .line 1063
    sget-boolean v7, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v7, :cond_c

    .line 1064
    const-string v7, "MapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Message encoding:: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchBodyEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :cond_c
    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchBodyEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_encoding(Ljava/lang/String;)V

    .line 1070
    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchSubjectEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setSubject(Ljava/lang/String;)V

    .line 1072
    return-object v2

    .line 1027
    :cond_d
    sget-boolean v7, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v7, :cond_e

    const-string v7, "MapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Orig Name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_e
    iget-object v7, v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setOriginatorVcard_name(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static fromBmessageMMS(Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
    .locals 7
    .parameter "bmsg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
        }
    .end annotation

    .prologue
    .line 933
    new-instance v0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;

    invoke-direct {v0}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;-><init>()V

    .line 935
    .local v0, bMsgObj:Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
    const/4 v1, 0x0

    .line 936
    .local v1, phoneNumber:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchRecipientVcard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 937
    .local v3, vCard:Ljava/lang/String;
    sget-boolean v4, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v4, :cond_0

    const-string v4, "MapUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vCard Info: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_0
    invoke-static {v3}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->parseVCard(Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;

    move-result-object v2

    .line 940
    .local v2, recipient:Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;
    iget-object v4, v2, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 941
    iget-object v1, v2, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    .line 948
    :goto_0
    sget-boolean v4, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v4, :cond_1

    const-string v4, "MapUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Email: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :cond_1
    sget-boolean v4, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v4, :cond_2

    const-string v4, "MapUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mTel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_2
    sget-boolean v4, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v4, :cond_3

    const-string v4, "MapUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Recipeint address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_3
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setRecipientVcard_phone_number(Ljava/lang/String;)V

    .line 954
    iget-object v4, v2, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setVcard_version(Ljava/lang/String;)V

    .line 957
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBmsg_version(Ljava/lang/String;)V

    .line 960
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchReadStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setStatus(Ljava/lang/String;)V

    .line 963
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setType(Ljava/lang/String;)V

    .line 966
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setFolder(Ljava/lang/String;)V

    .line 969
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchBodyLength(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_length(I)V

    .line 972
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchBodyMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_msg(Ljava/lang/String;)V

    .line 975
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchBodyEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_encoding(Ljava/lang/String;)V

    .line 977
    return-object v0

    .line 942
    :cond_4
    iget-object v4, v2, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mTel:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 943
    iget-object v1, v2, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mTel:Ljava/lang/String;

    goto/16 :goto_0

    .line 945
    :cond_5
    new-instance v4, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v5, "No Email/Tel in vCard"

    invoke-direct {v4, v5}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static fromBmessageSMS(Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
    .locals 6
    .parameter "bmsg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
        }
    .end annotation

    .prologue
    .line 884
    new-instance v0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;

    invoke-direct {v0}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;-><init>()V

    .line 885
    .local v0, bMsgObj:Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchRecipientVcard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 887
    .local v2, vCard:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->parseVCard(Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;

    move-result-object v1

    .line 888
    .local v1, recipient:Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;
    iget-object v3, v1, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mTel:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 889
    new-instance v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v4, "No TEL in vCard"

    invoke-direct {v3, v4}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 891
    :cond_0
    iget-object v3, v1, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mTel:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setRecipientVcard_phone_number(Ljava/lang/String;)V

    .line 892
    sget-boolean v3, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v3, :cond_1

    const-string v3, "MapUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mTel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_1
    iget-object v3, v1, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setVcard_version(Ljava/lang/String;)V

    .line 898
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBmsg_version(Ljava/lang/String;)V

    .line 901
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchReadStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setStatus(Ljava/lang/String;)V

    .line 904
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setType(Ljava/lang/String;)V

    .line 907
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setFolder(Ljava/lang/String;)V

    .line 910
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchBodyLength(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_length(I)V

    .line 913
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchBodyMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_msg(Ljava/lang/String;)V

    .line 916
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchBodyEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_encoding(Ljava/lang/String;)V

    .line 918
    return-object v0
.end method

.method public static mapEventReportXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "type"
    .parameter "handle"
    .parameter "folder"
    .parameter "oldFolder"
    .parameter "msgType"

    .prologue
    .line 417
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 418
    .local v3, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 422
    .local v6, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 423
    const-string v7, ""

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 424
    const-string v7, "\n"

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 425
    const-string v7, ""

    const-string v8, "MAP-event-report"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 426
    const-string v7, ""

    const-string v8, "version"

    const-string v9, "1.0"

    invoke-interface {v3, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 427
    const-string v7, "\n"

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 429
    const-string v7, ""

    const-string v8, "event"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 430
    if-eqz p0, :cond_0

    .line 431
    const-string v7, ""

    const-string v8, "type"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 435
    :cond_0
    if-eqz p1, :cond_1

    .line 436
    const-string v7, ""

    const-string v8, "handle"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 440
    :cond_1
    if-eqz p2, :cond_2

    .line 441
    const-string v7, ""

    const-string v8, "folder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 445
    :cond_2
    if-eqz p3, :cond_3

    .line 446
    const-string v7, ""

    const-string v8, "old_folder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 451
    :cond_3
    if-eqz p4, :cond_4

    .line 452
    const-string v7, ""

    const-string v8, "msg_type"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 456
    :cond_4
    const-string v7, ""

    const-string v8, "event"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 457
    const-string v7, "\n"

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 458
    const-string v7, ""

    const-string v8, "MAP-event-report"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 459
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 460
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 461
    .local v4, str1:Ljava/lang/String;
    const/4 v2, 0x0

    .line 462
    .local v2, line1:I
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 463
    if-lez v2, :cond_5

    .line 464
    const-string v7, "event type"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 465
    .local v1, index:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 466
    .local v5, str2:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<MAP-event-report version=\"1.0\">\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 480
    .end local v1           #index:I
    .end local v2           #line1:I
    .end local v4           #str1:Ljava/lang/String;
    .end local v5           #str2:Ljava/lang/String;
    :cond_5
    :goto_0
    return-object v4

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 480
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 474
    :catch_1
    move-exception v0

    .line 475
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 476
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 477
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static messageListingXML(Ljava/util/List;)Ljava/lang/String;
    .locals 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;>;"
    new-instance v8, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v8}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 119
    .local v8, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 120
    .local v7, outputStream:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 122
    .local v5, myOutputStreamWriter:Ljava/io/OutputStreamWriter;
    :try_start_0
    new-instance v6, Ljava/io/OutputStreamWriter;

    const-string v12, "UTF-8"

    invoke-direct {v6, v7, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    .end local v5           #myOutputStreamWriter:Ljava/io/OutputStreamWriter;
    .local v6, myOutputStreamWriter:Ljava/io/OutputStreamWriter;
    :try_start_1
    const-string v10, "<?xml version=\"1.0\"?>"

    .line 130
    .local v10, str2:Ljava/lang/String;
    invoke-interface {v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 131
    const-string v12, "UTF-8"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 132
    const-string v12, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v13, 0x1

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 133
    const-string v12, "\n"

    invoke-interface {v8, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 134
    const/4 v12, 0x0

    const-string v13, "MAP-msg-listing"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    const/4 v12, 0x0

    const-string v13, "version"

    const-string v14, "1.0"

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;

    .line 137
    .local v4, msg:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    const/4 v12, 0x0

    const-string v13, "msg"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 139
    const/4 v12, 0x0

    const-string v13, "handle"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v15, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->msg_handle:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 140
    iget-boolean v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sendSubject:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 141
    iget-object v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->subject:Ljava/lang/String;

    if-nez v12, :cond_10

    .line 142
    const/4 v12, 0x0

    const-string v13, "subject"

    const-string v14, ""

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 148
    :cond_0
    :goto_1
    iget-object v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->datetime:Ljava/lang/String;

    if-eqz v12, :cond_1

    .line 149
    const/4 v12, 0x0

    const-string v13, "datetime"

    iget-object v14, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->datetime:Ljava/lang/String;

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 151
    :cond_1
    iget-object v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sender_name:Ljava/lang/String;

    if-eqz v12, :cond_2

    .line 152
    const/4 v12, 0x0

    const-string v13, "sender_name"

    iget-object v14, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sender_name:Ljava/lang/String;

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 155
    :cond_2
    iget-object v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sender_addressing:Ljava/lang/String;

    if-eqz v12, :cond_3

    .line 156
    const/4 v12, 0x0

    const-string v13, "sender_addressing"

    iget-object v14, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sender_addressing:Ljava/lang/String;

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 160
    :cond_3
    iget-object v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->replyto_addressing:Ljava/lang/String;

    if-eqz v12, :cond_4

    .line 161
    const/4 v12, 0x0

    const-string v13, "replyto_addressing"

    iget-object v14, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->replyto_addressing:Ljava/lang/String;

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 165
    :cond_4
    iget-object v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->recepient_name:Ljava/lang/String;

    if-eqz v12, :cond_5

    .line 166
    const/4 v12, 0x0

    const-string v13, "recipient_name"

    iget-object v14, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->recepient_name:Ljava/lang/String;

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 169
    :cond_5
    iget-boolean v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sendRecipient_addressing:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    .line 170
    iget-object v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->recepient_addressing:Ljava/lang/String;

    if-eqz v12, :cond_11

    .line 171
    const/4 v12, 0x0

    const-string v13, "recipient_addressing"

    iget-object v14, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->recepient_addressing:Ljava/lang/String;

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 177
    :cond_6
    :goto_2
    iget-object v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->type:Ljava/lang/String;

    if-eqz v12, :cond_7

    .line 178
    const/4 v12, 0x0

    const-string v13, "type"

    iget-object v14, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->type:Ljava/lang/String;

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 180
    :cond_7
    iget v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->size:I

    if-eqz v12, :cond_8

    .line 181
    const/4 v12, 0x0

    const-string v13, "size"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->size:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 184
    :cond_8
    iget-object v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->contains_text:Ljava/lang/String;

    if-eqz v12, :cond_9

    .line 185
    const/4 v12, 0x0

    const-string v13, "text"

    iget-object v14, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->contains_text:Ljava/lang/String;

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    :cond_9
    iget-object v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->reception_status:Ljava/lang/String;

    if-eqz v12, :cond_a

    .line 189
    const/4 v12, 0x0

    const-string v13, "reception_status"

    iget-object v14, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->reception_status:Ljava/lang/String;

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 193
    :cond_a
    iget v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->attachment_size:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_b

    .line 194
    const/4 v12, 0x0

    const-string v13, "attachment_size"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->attachment_size:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 198
    :cond_b
    iget-object v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->priority:Ljava/lang/String;

    if-eqz v12, :cond_c

    .line 199
    const/4 v12, 0x0

    const-string v13, "priority"

    iget-object v14, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->priority:Ljava/lang/String;

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 202
    :cond_c
    iget-object v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->read:Ljava/lang/String;

    if-eqz v12, :cond_d

    .line 203
    const/4 v12, 0x0

    const-string v13, "read"

    iget-object v14, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->read:Ljava/lang/String;

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 206
    :cond_d
    iget-object v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sent:Ljava/lang/String;

    if-eqz v12, :cond_e

    .line 207
    const/4 v12, 0x0

    const-string v13, "sent"

    iget-object v14, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sent:Ljava/lang/String;

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    :cond_e
    iget-object v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->msg_protected:Ljava/lang/String;

    if-eqz v12, :cond_f

    .line 211
    const/4 v12, 0x0

    const-string v13, "protected"

    iget-object v14, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->msg_protected:Ljava/lang/String;

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 214
    :cond_f
    const/4 v12, 0x0

    const-string v13, "msg"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 235
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #msg:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    .end local v10           #str2:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 237
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 245
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :goto_3
    const/4 v10, 0x0

    move-object v5, v6

    .end local v6           #myOutputStreamWriter:Ljava/io/OutputStreamWriter;
    .restart local v5       #myOutputStreamWriter:Ljava/io/OutputStreamWriter;
    :goto_4
    return-object v10

    .line 123
    :catch_1
    move-exception v0

    .line 124
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v12, "MapUtils"

    const-string v13, "Failed to encode: charset=UTF-8"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v10, 0x0

    goto :goto_4

    .line 144
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .end local v5           #myOutputStreamWriter:Ljava/io/OutputStreamWriter;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #msg:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    .restart local v6       #myOutputStreamWriter:Ljava/io/OutputStreamWriter;
    .restart local v10       #str2:Ljava/lang/String;
    :cond_10
    const/4 v12, 0x0

    :try_start_2
    const-string v13, "subject"

    iget-object v14, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->subject:Ljava/lang/String;

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    .line 238
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #msg:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    .end local v10           #str2:Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 240
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_3

    .line 174
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #msg:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    .restart local v10       #str2:Ljava/lang/String;
    :cond_11
    const/4 v12, 0x0

    :try_start_3
    const-string v13, "recipient_addressing"

    const-string v14, ""

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    .line 241
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #msg:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    .end local v10           #str2:Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 243
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 217
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v10       #str2:Ljava/lang/String;
    :cond_12
    const/4 v12, 0x0

    :try_start_4
    const-string v13, "MAP-msg-listing"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 220
    :try_start_5
    const-string v12, "UTF-8"

    invoke-virtual {v7, v12}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 221
    .local v9, str1:Ljava/lang/String;
    sget-boolean v12, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v12, :cond_13

    const-string v12, "MapUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Printing XML-Converted String: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_13
    const/4 v3, 0x0

    .line 223
    .local v3, line1:I
    const-string v12, "\n"

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 224
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 225
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_14

    .line 226
    const-string v12, "msg handle"

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 227
    .local v2, indxHandle:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 228
    .local v11, str3:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    add-int/lit8 v14, v2, -0x1

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v10

    .end local v2           #indxHandle:I
    .end local v11           #str3:Ljava/lang/String;
    :cond_14
    move-object v5, v6

    .line 230
    .end local v6           #myOutputStreamWriter:Ljava/io/OutputStreamWriter;
    .restart local v5       #myOutputStreamWriter:Ljava/io/OutputStreamWriter;
    goto/16 :goto_4

    .line 231
    .end local v3           #line1:I
    .end local v5           #myOutputStreamWriter:Ljava/io/OutputStreamWriter;
    .end local v9           #str1:Ljava/lang/String;
    .restart local v6       #myOutputStreamWriter:Ljava/io/OutputStreamWriter;
    :catch_4
    move-exception v0

    .line 232
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :try_start_6
    const-string v12, "MapUtils"

    const-string v13, "Failed to encode: charset=UTF-8"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 233
    const/4 v10, 0x0

    .end local v10           #str2:Ljava/lang/String;
    move-object v5, v6

    .end local v6           #myOutputStreamWriter:Ljava/io/OutputStreamWriter;
    .restart local v5       #myOutputStreamWriter:Ljava/io/OutputStreamWriter;
    goto/16 :goto_4
.end method

.method public static msgListingGetFooterXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    const-string v0, "</MAP-msg-listing>\n"

    .line 269
    .local v0, str1:Ljava/lang/String;
    return-object v0
.end method

.method public static msgListingGetHdrXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    const-string v0, "<MAP-msg-listing version = \"1.0\">\n"

    .line 257
    .local v0, str1:Ljava/lang/String;
    return-object v0
.end method

.method public static msgListingGetMsgsXML(Ljava/util/List;)Ljava/lang/String;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;>;"
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 285
    .local v4, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 288
    .local v6, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 289
    const-string v7, ""

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 290
    const-string v7, "\n"

    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 291
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;

    .line 292
    .local v3, msg:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    const-string v7, ""

    const-string v8, "msg"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 293
    const-string v7, ""

    const-string v8, "handle"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v3, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->msg_handle:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 294
    iget-object v7, v3, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->subject:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 295
    const-string v7, ""

    const-string v8, "subject"

    iget-object v9, v3, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->subject:Ljava/lang/String;

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 299
    :cond_0
    iget-object v7, v3, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->datetime:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 300
    const-string v7, ""

    const-string v8, "datetime"

    iget-object v9, v3, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->datetime:Ljava/lang/String;

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 304
    :cond_1
    iget-object v7, v3, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sender_name:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 305
    const-string v7, ""

    const-string v8, "sender_name"

    iget-object v9, v3, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sender_name:Ljava/lang/String;

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 310
    :cond_2
    iget-object v7, v3, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sender_addressing:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 311
    const-string v7, ""

    const-string v8, "sender_addressing"

    iget-object v9, v3, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sender_addressing:Ljava/lang/String;

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 316
    :cond_3
    iget-object v7, v3, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->recepient_name:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 317
    const-string v7, ""

    const-string v8, "recipient_name"

    iget-object v9, v3, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->recepient_name:Ljava/lang/String;

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 322
    :cond_4
    iget-object v7, v3, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->recepient_addressing:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 323
    const-string v7, ""

    const-string v8, "recipient_addressing"

    iget-object v9, v3, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->recepient_addressing:Ljava/lang/String;

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 328
    :cond_5
    iget-object v7, v3, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->type:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 329
    const-string v7, ""

    const-string v8, "type"

    iget-object v9, v3, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->type:Ljava/lang/String;

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 333
    :cond_6
    iget v7, v3, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->size:I

    if-eqz v7, :cond_7

    .line 334
    const-string v7, ""

    const-string v8, "size"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->size:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 338
    :cond_7
    iget v7, v3, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->attachment_size:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    .line 339
    const-string v7, ""

    const-string v8, "attachment_size"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->attachment_size:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 344
    :cond_8
    iget-object v7, v3, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->contains_text:Ljava/lang/String;

    if-eqz v7, :cond_9

    .line 345
    const-string v7, ""

    const-string v8, "text"

    iget-object v9, v3, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->contains_text:Ljava/lang/String;

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 349
    :cond_9
    iget-object v7, v3, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->priority:Ljava/lang/String;

    if-eqz v7, :cond_a

    .line 350
    const-string v7, ""

    const-string v8, "priority"

    iget-object v9, v3, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->priority:Ljava/lang/String;

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 354
    :cond_a
    iget-object v7, v3, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->read:Ljava/lang/String;

    if-eqz v7, :cond_b

    .line 355
    const-string v7, ""

    const-string v8, "read"

    iget-object v9, v3, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->read:Ljava/lang/String;

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 359
    :cond_b
    iget-object v7, v3, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sent:Ljava/lang/String;

    if-eqz v7, :cond_c

    .line 360
    const-string v7, ""

    const-string v8, "sent"

    iget-object v9, v3, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sent:Ljava/lang/String;

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 365
    :cond_c
    iget-object v7, v3, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->replyto_addressing:Ljava/lang/String;

    if-eqz v7, :cond_d

    .line 366
    const-string v7, ""

    const-string v8, "replyto_addressing"

    iget-object v9, v3, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->replyto_addressing:Ljava/lang/String;

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 372
    :cond_d
    const-string v7, ""

    const-string v8, "msg"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 386
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #msg:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    :catch_0
    move-exception v0

    .line 387
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 393
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :goto_1
    const/4 v5, 0x0

    :cond_e
    :goto_2
    return-object v5

    .line 375
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_f
    :try_start_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 376
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    .line 378
    .local v5, str1:Ljava/lang/String;
    const/4 v2, 0x0

    .line 379
    .local v2, line1:I
    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 380
    if-lez v2, :cond_e

    .line 381
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    goto :goto_2

    .line 388
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #line1:I
    .end local v5           #str1:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 389
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 390
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 391
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method static parseVCard(Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;
    .locals 12
    .parameter "vCard"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
        }
    .end annotation

    .prologue
    .line 1875
    sget-boolean v9, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v9, :cond_0

    const-string v9, "MapUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseVCard("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    :cond_0
    new-instance v7, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;

    invoke-direct {v7}, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;-><init>()V

    .line 1878
    .local v7, recipient:Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 1916
    :goto_0
    return-object v7

    .line 1883
    :cond_1
    const/4 v3, 0x0

    .line 1885
    .local v3, is:Ljava/io/ByteArrayInputStream;
    :try_start_0
    const-string v9, "UTF-8"

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 1886
    .local v8, vCardBytes:[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1891
    .end local v3           #is:Ljava/io/ByteArrayInputStream;
    .local v4, is:Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v5, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v5}, Lcom/android/vcard/VCardParser_V21;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_1 .. :try_end_1} :catch_5

    .line 1893
    .local v5, parser:Lcom/android/vcard/VCardParser;
    :try_start_2
    sget-boolean v9, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v9, :cond_2

    const-string v9, "MapUtils"

    const-string v10, "try 2.1"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    :cond_2
    const-string v9, "2.1"

    iput-object v9, v7, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mVersion:Ljava/lang/String;

    .line 1895
    invoke-virtual {v5, v4, v7}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V
    :try_end_2
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_2 .. :try_end_2} :catch_5

    move-object v3, v4

    .line 1907
    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    .restart local v3       #is:Ljava/io/ByteArrayInputStream;
    goto :goto_0

    .line 1887
    .end local v5           #parser:Lcom/android/vcard/VCardParser;
    .end local v8           #vCardBytes:[B
    :catch_0
    move-exception v2

    .line 1888
    .local v2, ex:Ljava/io/UnsupportedEncodingException;
    :try_start_3
    const-string v9, "MapUtils"

    const-string v10, "Unable to parse vCard"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1889
    new-instance v9, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v10, "Unable to parse vCard"

    invoke-direct {v9, v10}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1908
    .end local v2           #ex:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 1909
    .local v0, e:Ljava/io/IOException;
    :goto_1
    const-string v9, "MapUtils"

    const-string v10, "Unable to parse vCard"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1910
    new-instance v9, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v10, "Unable to parse vCard"

    invoke-direct {v9, v10}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1896
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #is:Ljava/io/ByteArrayInputStream;
    .restart local v4       #is:Ljava/io/ByteArrayInputStream;
    .restart local v5       #parser:Lcom/android/vcard/VCardParser;
    .restart local v8       #vCardBytes:[B
    :catch_2
    move-exception v0

    .line 1897
    .local v0, e:Lcom/android/vcard/exception/VCardVersionException;
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V

    .line 1898
    new-instance v3, Ljava/io/ByteArrayInputStream;

    const-string v9, "UTF-8"

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_4 .. :try_end_4} :catch_5

    .line 1900
    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    .restart local v3       #is:Ljava/io/ByteArrayInputStream;
    :try_start_5
    sget-boolean v9, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v9, :cond_3

    const-string v9, "MapUtils"

    const-string v10, "try 3.0"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    :cond_3
    const-string v9, "3.0"

    iput-object v9, v7, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mVersion:Ljava/lang/String;

    .line 1902
    new-instance v6, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v6}, Lcom/android/vcard/VCardParser_V30;-><init>()V
    :try_end_5
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1903
    .end local v5           #parser:Lcom/android/vcard/VCardParser;
    .local v6, parser:Lcom/android/vcard/VCardParser;
    :try_start_6
    invoke-virtual {v6, v3, v7}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V
    :try_end_6
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_6 .. :try_end_6} :catch_4

    move-object v5, v6

    .line 1906
    .end local v6           #parser:Lcom/android/vcard/VCardParser;
    .restart local v5       #parser:Lcom/android/vcard/VCardParser;
    goto :goto_0

    .line 1904
    :catch_3
    move-exception v1

    .line 1905
    .local v1, e1:Lcom/android/vcard/exception/VCardVersionException;
    :goto_2
    :try_start_7
    new-instance v9, Lcom/android/vcard/exception/VCardException;

    const-string v10, "vCard with unsupported version."

    invoke-direct {v9, v10}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1911
    .end local v0           #e:Lcom/android/vcard/exception/VCardVersionException;
    .end local v1           #e1:Lcom/android/vcard/exception/VCardVersionException;
    .end local v5           #parser:Lcom/android/vcard/VCardParser;
    .end local v8           #vCardBytes:[B
    :catch_4
    move-exception v0

    .line 1912
    .local v0, e:Lcom/android/vcard/exception/VCardException;
    :goto_3
    const-string v9, "MapUtils"

    const-string v10, "Unable to parse vCard"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1913
    new-instance v9, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v10, "Unable to parse vCard"

    invoke-direct {v9, v10}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1911
    .end local v0           #e:Lcom/android/vcard/exception/VCardException;
    .end local v3           #is:Ljava/io/ByteArrayInputStream;
    .restart local v4       #is:Ljava/io/ByteArrayInputStream;
    .restart local v8       #vCardBytes:[B
    :catch_5
    move-exception v0

    move-object v3, v4

    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    .restart local v3       #is:Ljava/io/ByteArrayInputStream;
    goto :goto_3

    .line 1908
    .end local v3           #is:Ljava/io/ByteArrayInputStream;
    .restart local v4       #is:Ljava/io/ByteArrayInputStream;
    :catch_6
    move-exception v0

    move-object v3, v4

    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    .restart local v3       #is:Ljava/io/ByteArrayInputStream;
    goto :goto_1

    .line 1904
    .local v0, e:Lcom/android/vcard/exception/VCardVersionException;
    .restart local v6       #parser:Lcom/android/vcard/VCardParser;
    :catch_7
    move-exception v1

    move-object v5, v6

    .end local v6           #parser:Lcom/android/vcard/VCardParser;
    .restart local v5       #parser:Lcom/android/vcard/VCardParser;
    goto :goto_2
.end method

.method public static toBmessageEmail(Lcom/android/bluetooth/map/MapUtils/BmessageConsts;)Ljava/lang/String;
    .locals 4
    .parameter "bmsg"

    .prologue
    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 753
    .local v1, sb:Ljava/lang/StringBuilder;
    :try_start_0
    const-string v2, "BEGIN:BMSG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->bmsg_version:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 756
    const-string v2, "VERSION:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->bmsg_version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->status:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 761
    const-string v2, "STATUS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->status:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->type:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 766
    const-string v2, "TYPE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->folder:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 771
    const-string v2, "FOLDER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->folder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    :cond_3
    const-string v2, "BEGIN:VCARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->vcard_version:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 780
    const-string v2, "VERSION:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->vcard_version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_name:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 785
    const-string v2, "N:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    :cond_5
    const-string v2, "TEL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_email:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 792
    const-string v2, "EMAIL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_email:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    :cond_6
    const-string v2, "END:VCARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    const-string v2, "BEGIN:BENV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    const-string v2, "BEGIN:VCARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->vcard_version:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 807
    const-string v2, "VERSION:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->vcard_version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    :cond_7
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_name:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 812
    const-string v2, "N:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    :cond_8
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_name:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 818
    const-string v2, "FN:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    :cond_9
    const-string v2, "TEL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_email:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 825
    const-string v2, "EMAIL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_email:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    :cond_a
    const-string v2, "END:VCARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    const-string v2, "BEGIN:BBODY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_encoding:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 836
    const-string v2, "ENCODING:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_encoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    :goto_0
    const-string v2, "CHARSET:UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    iget v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_length:I

    if-eqz v2, :cond_b

    .line 845
    const-string v2, "LENGTH:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    :cond_b
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_msg:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 850
    const-string v2, "BEGIN:MSG\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    const-string v2, "END:MSG\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    :cond_c
    const-string v2, "END:BBODY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    const-string v2, "END:BENV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    const-string v2, "END:BMSG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 839
    :cond_d
    :try_start_1
    const-string v2, "ENCODING:8BIT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 863
    :catch_0
    move-exception v0

    .line 864
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static toBmessageMMS(Lcom/android/bluetooth/map/MapUtils/BmessageConsts;)Ljava/lang/String;
    .locals 4
    .parameter "bmsg"

    .prologue
    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 627
    .local v1, sb:Ljava/lang/StringBuilder;
    :try_start_0
    const-string v2, "BEGIN:BMSG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->bmsg_version:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 630
    const-string v2, "VERSION:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->bmsg_version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->status:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 635
    const-string v2, "STATUS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->status:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->type:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 640
    const-string v2, "TYPE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->folder:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 645
    const-string v2, "FOLDER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->folder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    :cond_3
    const-string v2, "BEGIN:VCARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->vcard_version:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 654
    const-string v2, "VERSION:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->vcard_version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_name:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 659
    const-string v2, "N:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    :cond_5
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_phone_number:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 665
    const-string v2, "TEL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_phone_number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    :cond_6
    const-string v2, "END:VCARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    const-string v2, "BEGIN:BENV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    const-string v2, "BEGIN:VCARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->vcard_version:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 680
    const-string v2, "VERSION:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->vcard_version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    :cond_7
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_name:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 685
    const-string v2, "N:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    :cond_8
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_phone_number:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 691
    const-string v2, "TEL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_phone_number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    :cond_9
    const-string v2, "END:VCARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    const-string v2, "BEGIN:BBODY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    const-string v2, "PARTID:26988"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_encoding:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 704
    const-string v2, "ENCODING:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_encoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    :cond_a
    const-string v2, "CHARSET:UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    const-string v2, "LANGUAGE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    iget v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_length:I

    if-eqz v2, :cond_b

    .line 713
    const-string v2, "LENGTH:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    :cond_b
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_msg:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 718
    const-string v2, "BEGIN:MSG\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    const-string v2, "END:MSG\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    :cond_c
    const-string v2, "END:BBODY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    const-string v2, "END:BENV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    const-string v2, "END:BMSG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 731
    :catch_0
    move-exception v0

    .line 732
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static toBmessageSMS(Lcom/android/bluetooth/map/MapUtils/BmessageConsts;)Ljava/lang/String;
    .locals 4
    .parameter "bmsg"

    .prologue
    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    .local v1, sb:Ljava/lang/StringBuilder;
    :try_start_0
    const-string v2, "BEGIN:BMSG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->bmsg_version:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 501
    const-string v2, "VERSION:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->bmsg_version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->status:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 506
    const-string v2, "STATUS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->status:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->type:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 511
    const-string v2, "TYPE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->folder:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 516
    const-string v2, "FOLDER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->folder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :cond_3
    const-string v2, "BEGIN:VCARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->vcard_version:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 525
    const-string v2, "VERSION:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->vcard_version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_name:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 530
    const-string v2, "N:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    :cond_5
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_phone_number:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 536
    const-string v2, "TEL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_phone_number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    :cond_6
    const-string v2, "END:VCARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    const-string v2, "BEGIN:BENV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    const-string v2, "BEGIN:VCARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->vcard_version:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 551
    const-string v2, "VERSION:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->vcard_version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    :cond_7
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_name:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 556
    const-string v2, "N:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    :cond_8
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_phone_number:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 562
    const-string v2, "TEL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_phone_number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    :cond_9
    const-string v2, "END:VCARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    const-string v2, "BEGIN:BBODY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_charset:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 573
    const-string v2, "CHARSET:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_charset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    :cond_a
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_encoding:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 580
    const-string v2, "ENCODING:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_encoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    :cond_b
    iget v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_length:I

    if-eqz v2, :cond_c

    .line 586
    const-string v2, "LENGTH:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    :cond_c
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_msg:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 591
    const-string v2, "BEGIN:MSG\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    const-string v2, "END:MSG\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    :cond_d
    const-string v2, "END:BBODY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    const-string v2, "END:BENV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    const-string v2, "END:BMSG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
