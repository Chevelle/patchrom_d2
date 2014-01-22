.class public Lcom/android/bluetooth/map/BluetoothMasAppEmail;
.super Lcom/android/bluetooth/map/BluetoothMasAppIf;
.source "BluetoothMasAppEmail.java"


# static fields
.field private static final SPECIAL_MAILBOX_MAP_NAME:[Ljava/lang/String;

.field private static final SPECIAL_MAILBOX_TYPES:[I


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final V:Z

.field private mObserver:Landroid/database/ContentObserver;

.field private mSpecialMailboxName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x5

    .line 84
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->SPECIAL_MAILBOX_TYPES:[I

    .line 86
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "draft"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "inbox"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "outbox"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->SPECIAL_MAILBOX_MAP_NAME:[Ljava/lang/String;

    return-void

    .line 84
    :array_0
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/bluetooth/map/BluetoothMns;ILjava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "handler"
    .parameter "mnsClient"
    .parameter "masId"
    .parameter "remoteDeviceName"

    .prologue
    .line 92
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/map/BluetoothMasAppIf;-><init>(Landroid/content/Context;Landroid/os/Handler;ILcom/android/bluetooth/map/BluetoothMns;ILjava/lang/String;)V

    .line 80
    const-string v0, "BluetoothMasAppEmail"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->TAG:Ljava/lang/String;

    .line 81
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mSpecialMailboxName:Ljava/util/HashMap;

    .line 94
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/map/BluetoothMasAppEmail$1;-><init>(Lcom/android/bluetooth/map/BluetoothMasAppEmail;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mObserver:Landroid/database/ContentObserver;

    .line 107
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->loadSpecialMailboxName()V

    .line 108
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasAppEmail"

    const-string v1, "BluetoothMasAppEmail Constructor called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/map/BluetoothMasAppEmail;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->disconnect()V

    return-void
.end method

.method private addToEmailFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 26
    .parameter "folder"
    .parameter "address"
    .parameter "text"
    .parameter "subject"
    .parameter "OrigEmail"
    .parameter "OrigName"

    .prologue
    .line 454
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v2, :cond_0

    .line 455
    const-string v2, "BluetoothMasAppEmail"

    const-string v3, "-------------"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const-string v2, "BluetoothMasAppEmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "address "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const-string v2, "BluetoothMasAppEmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TEXT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_0
    const/16 v16, -0x1

    .line 463
    .local v16, folderId:I
    const-wide/16 v12, -0x1

    .line 464
    .local v12, accountId:J
    new-instance v20, Landroid/text/format/Time;

    invoke-direct/range {v20 .. v20}, Landroid/text/format/Time;-><init>()V

    .line 465
    .local v20, timeObj:Landroid/text/format/Time;
    invoke-virtual/range {v20 .. v20}, Landroid/text/format/Time;->setToNow()V

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPPER(emailAddress) LIKE  \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 469
    .local v5, whereClause1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.android.email.provider/account"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 472
    .local v15, cr1:Landroid/database/Cursor;
    if-eqz v15, :cond_2

    .line 473
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 474
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 475
    const-string v2, "_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v12, v2

    .line 477
    :cond_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 479
    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-nez v2, :cond_3

    .line 480
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mMasId:I

    invoke-static {v2}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getAccountId(I)J

    move-result-wide v12

    .line 482
    :cond_3
    const-string v2, "draft"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-static {v2, v12, v13, v3}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getFoldersForType(Landroid/content/Context;JI)Ljava/util/List;

    move-result-object v17

    .line 485
    .local v17, folders:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v2, :cond_4

    const-string v2, "BluetoothMasAppEmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DRAFT folders: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_4
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 488
    const-string v2, "ERROR"

    .line 570
    .end local v17           #folders:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v2

    .line 490
    .restart local v17       #folders:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const-string v2, "drafts"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 491
    const-string p1, "drafts"

    .line 497
    .end local v17           #folders:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPPER(displayName) = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 498
    .local v9, whereClause:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v2, "content://com.android.email.provider/mailbox"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 501
    .local v14, cr:Landroid/database/Cursor;
    if-eqz v14, :cond_8

    .line 502
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 503
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 504
    const-string v2, "_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 506
    :cond_7
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 508
    :cond_8
    const/4 v2, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_a

    .line 509
    const-string v2, "ERROR"

    goto :goto_0

    .line 493
    .end local v9           #whereClause:Ljava/lang/String;
    .end local v14           #cr:Landroid/database/Cursor;
    .restart local v17       #folders:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto :goto_1

    .line 512
    .end local v17           #folders:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9       #whereClause:Ljava/lang/String;
    .restart local v14       #cr:Landroid/database/Cursor;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v2, :cond_b

    .line 513
    const-string v2, "BluetoothMasAppEmail"

    const-string v3, "-------------"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const-string v2, "BluetoothMasAppEmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "To address "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const-string v2, "BluetoothMasAppEmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Text "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const-string v2, "BluetoothMasAppEmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Originator email address:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const-string v2, "BluetoothMasAppEmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Originator email name:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const-string v2, "BluetoothMasAppEmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time Stamp:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const-string v2, "BluetoothMasAppEmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Account Key:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const-string v2, "BluetoothMasAppEmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Folder Id:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string v2, "BluetoothMasAppEmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Folder Name:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const-string v2, "BluetoothMasAppEmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Subject"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_b
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 525
    .local v22, values:Landroid/content/ContentValues;
    const-string v2, "syncServerTimeStamp"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 526
    const-string v2, "syncServerId"

    const-string v3, "5:65"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v2, "displayName"

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v2, "timeStamp"

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 529
    const-string v2, "subject"

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v2, "flagLoaded"

    const-string v3, "1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string v2, "flagFavorite"

    const-string v3, "0"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v2, "flagAttachment"

    const-string v3, "0"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v2, "flags"

    const-string v3, "0"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v2, "accountKey"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 536
    const-string v2, "fromList"

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v2, "mailboxKey"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 539
    const-string v2, "toList"

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v2, "flagRead"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.android.email.provider/message"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v21

    .line 544
    .local v21, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v2, :cond_c

    .line 545
    const-string v3, "BluetoothMasAppEmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " NEW URI "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v21, :cond_d

    const-string v2, "null"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_c
    if-nez v21, :cond_e

    .line 549
    const-string v2, "ERROR"

    goto/16 :goto_0

    .line 545
    :cond_d
    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 551
    :cond_e
    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    .line 552
    .local v19, str:Ljava/lang/String;
    const-string v2, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 553
    .local v18, splitStr:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v2, v0

    const/4 v3, 0x5

    if-ge v2, v3, :cond_f

    .line 554
    const-string v2, "ERROR"

    goto/16 :goto_0

    .line 556
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v2, :cond_10

    .line 557
    const-string v2, "BluetoothMasAppEmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " NEW HANDLE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v4, v18, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_10
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 563
    .local v23, valuesBody:Landroid/content/ContentValues;
    const-string v2, "messageKey"

    const/4 v3, 0x4

    aget-object v3, v18, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string v2, "textContent"

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.android.email.provider/body"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 569
    const/4 v2, 0x4

    aget-object v2, v18, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->OFFSET_START:J

    add-long v24, v2, v6

    .line 570
    .local v24, virtualMsgId:J
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private disconnect()V
    .locals 4

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasAppEmail"

    const-string v1, "disconnect() sending serversession close."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x138c

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mMasId:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 205
    return-void
.end method

.method private getListEmailFromFolder(Ljava/lang/String;Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Ljava/util/List;
    .locals 31
    .parameter "folderName"
    .parameter "rsp"
    .parameter "appParams"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;",
            "Lcom/android/bluetooth/map/BluetoothMasAppParams;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;",
            ">;"
        }
    .end annotation

    .prologue
    .line 575
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .local v25, msgList:Ljava/util/List;,"Ljava/util/List<Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;>;"
    const-string v30, "content://com.android.email.provider/message"

    .line 577
    .local v30, urlEmail:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 578
    .local v3, uriEmail:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 580
    .local v2, crEmail:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mMasId:I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v4, v1, v6}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getConditionString(Ljava/lang/String;Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMasAppParams;I)Ljava/lang/String;

    move-result-object v5

    .line 583
    .local v5, whereClauseEmail:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v4, :cond_0

    .line 584
    const-string v4, "BluetoothMasAppEmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "## whereClauseEmail ##:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "timeStamp desc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 588
    .local v20, cursor:Landroid/database/Cursor;
    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v4, :cond_1

    .line 589
    const-string v4, "BluetoothMasAppEmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "move to First"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_1
    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v4, :cond_2

    .line 592
    const-string v4, "BluetoothMasAppEmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "move to Liststartoffset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    iget v7, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ListStartOffset:I

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_2
    if-eqz v20, :cond_6

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 596
    const-string v4, "_id"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 597
    .local v24, idInd:I
    const-string v4, "fromList"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 598
    .local v23, fromIndex:I
    const-string v4, "toList"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 599
    .local v29, toIndex:I
    const-string v4, "timeStamp"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 600
    .local v21, dateInd:I
    const-string v4, "flagRead"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 601
    .local v26, readInd:I
    const-string v4, "subject"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 602
    .local v28, subjectInd:I
    const-string v4, "replyToList"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 609
    .local v27, replyToInd:I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v4, :cond_4

    const-string v4, "BluetoothMasAppEmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " msgListSize "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->msgListingSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_4
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->msgListingSize:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p2

    iput v4, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->msgListingSize:I

    .line 612
    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 613
    .local v9, subject:Ljava/lang/String;
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 614
    .local v10, timestamp:Ljava/lang/String;
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 615
    .local v11, senderName:Ljava/lang/String;
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 616
    .local v12, senderAddressing:Ljava/lang/String;
    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 617
    .local v13, recipientName:Ljava/lang/String;
    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 618
    .local v14, recipientAddressing:Ljava/lang/String;
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 619
    .local v15, msgId:Ljava/lang/String;
    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 620
    .local v16, readStatus:Ljava/lang/String;
    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 632
    .local v17, replyToStr:Ljava/lang/String;
    new-instance v22, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;

    invoke-direct/range {v22 .. v22}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;-><init>()V

    .line 633
    .local v22, emailMsg:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->OFFSET_START:J

    move-wide/from16 v18, v0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    invoke-static/range {v6 .. v19}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->bldEmailMsgLstItem(Landroid/content/Context;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMasAppParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;

    move-result-object v22

    .line 639
    move-object/from16 v0, p2

    iget-byte v4, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->newMessage:B

    if-nez v4, :cond_5

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_5

    .line 640
    const/4 v4, 0x1

    move-object/from16 v0, p2

    iput-byte v4, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->newMessage:B

    .line 642
    :cond_5
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 645
    .end local v9           #subject:Ljava/lang/String;
    .end local v10           #timestamp:Ljava/lang/String;
    .end local v11           #senderName:Ljava/lang/String;
    .end local v12           #senderAddressing:Ljava/lang/String;
    .end local v13           #recipientName:Ljava/lang/String;
    .end local v14           #recipientAddressing:Ljava/lang/String;
    .end local v15           #msgId:Ljava/lang/String;
    .end local v16           #readStatus:Ljava/lang/String;
    .end local v17           #replyToStr:Ljava/lang/String;
    .end local v21           #dateInd:I
    .end local v22           #emailMsg:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    .end local v23           #fromIndex:I
    .end local v24           #idInd:I
    .end local v26           #readInd:I
    .end local v27           #replyToInd:I
    .end local v28           #subjectInd:I
    .end local v29           #toIndex:I
    :cond_6
    if-eqz v20, :cond_7

    .line 646
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 648
    :cond_7
    return-object v25
.end method

.method private isAllowedEmailFolderForPush(Ljava/lang/String;)Z
    .locals 5
    .parameter "folderName"

    .prologue
    const/4 v3, 0x1

    .line 652
    const-string v4, "draft"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "outbox"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 660
    :cond_0
    :goto_0
    return v3

    .line 655
    :cond_1
    iget v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mMasId:I

    invoke-static {v4}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getAccountId(I)J

    move-result-wide v0

    .line 656
    .local v0, id:J
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, v1, p1}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getTypeForFolder(Landroid/content/Context;JLjava/lang/String;)I

    move-result v2

    .line 657
    .local v2, type:I
    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    .line 660
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private loadSpecialMailboxName()V
    .locals 10

    .prologue
    .line 112
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mSpecialMailboxName:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 113
    iget v5, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mMasId:I

    invoke-static {v5}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getAccountId(I)J

    move-result-wide v1

    .line 114
    .local v1, id:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accountKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, where:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v5, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->SPECIAL_MAILBOX_TYPES:[I

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 117
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->EMAIL_BOX_URI:Landroid/net/Uri;

    const-string v7, "displayName"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->SPECIAL_MAILBOX_TYPES:[I

    aget v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/bluetooth/map/MapUtils/SqlHelper;->getFirstValueForColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 120
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mSpecialMailboxName:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v3           #name:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private pushMessageEmail(Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;
    .locals 19
    .parameter "rsp"
    .parameter "readStr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
        }
    .end annotation

    .prologue
    .line 666
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v2, :cond_0

    const-string v2, "BluetoothMasAppEmail"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " Before fromBmessageemail method:: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mMasId:I

    move/from16 v17, v0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-static {v2, v0, v1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fromBmessageEmail(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/bluetooth/map/MapUtils/BmessageConsts;

    move-result-object v11

    .line 669
    .local v11, bMsg:Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
    invoke-virtual {v11}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->getRecipientVcard_email()Ljava/lang/String;

    move-result-object v4

    .line 670
    .local v4, address:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->getBody_msg()Ljava/lang/String;

    move-result-object v5

    .line 671
    .local v5, text:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->getSubject()Ljava/lang/String;

    move-result-object v6

    .line 672
    .local v6, subject:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->getOriginatorVcard_email()Ljava/lang/String;

    move-result-object v7

    .line 673
    .local v7, originator:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->getOriginatorVcard_name()Ljava/lang/String;

    move-result-object v8

    .line 675
    .local v8, origName:Ljava/lang/String;
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mCurrentPath:Ljava/lang/String;

    .line 677
    .local v13, fullPath:Ljava/lang/String;
    :goto_0
    const-string v2, "/"

    invoke-virtual {v13, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 678
    .local v15, splitStrings:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    const-string v17, "+"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/map/BluetoothMns;->addMceInitiatedOperation(Ljava/lang/String;)V

    .line 679
    array-length v0, v15

    move/from16 v16, v0

    .line 681
    .local v16, tmp:I
    if-eqz p3, :cond_4

    .line 682
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 683
    add-int/lit8 v2, v16, -0x1

    aget-object v3, v15, v2

    .line 690
    .local v3, folderName:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->isAllowedEmailFolderForPush(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 691
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 692
    const/16 v2, 0xc3

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    .line 711
    :goto_2
    return-object p1

    .line 675
    .end local v3           #folderName:Ljava/lang/String;
    .end local v13           #fullPath:Ljava/lang/String;
    .end local v15           #splitStrings:[Ljava/lang/String;
    .end local v16           #tmp:I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mCurrentPath:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 685
    .restart local v13       #fullPath:Ljava/lang/String;
    .restart local v15       #splitStrings:[Ljava/lang/String;
    .restart local v16       #tmp:I
    :cond_3
    move-object/from16 v3, p3

    .restart local v3       #folderName:Ljava/lang/String;
    goto :goto_1

    .line 688
    .end local v3           #folderName:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v16, -0x1

    aget-object v3, v15, v2

    .restart local v3       #folderName:Ljava/lang/String;
    goto :goto_1

    :cond_5
    move-object/from16 v2, p0

    .line 695
    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->addToEmailFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 696
    .local v14, handle:Ljava/lang/String;
    const-string v2, "ERROR"

    if-ne v2, v14, :cond_6

    .line 697
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 698
    const/16 v2, 0xc4

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    goto :goto_2

    .line 701
    :cond_6
    move-object/from16 v0, p1

    iput-object v14, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 702
    const/16 v2, 0xa0

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    .line 704
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mMasId:I

    invoke-static {v2}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getAccountId(I)J

    move-result-wide v9

    .line 705
    .local v9, accountId:J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v2, :cond_7

    const-string v2, "BluetoothMasAppEmail"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " Account id before Mail service:: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_7
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 708
    .local v12, emailIn:Landroid/content/Intent;
    const-string v2, "com.android.email.intent.action.MAIL_SERVICE_WAKEUP"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    const-string v2, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v12, v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v12}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_2
.end method

.method private setMsgStatusEmail(JLcom/android/bluetooth/map/BluetoothMasAppParams;)I
    .locals 18
    .parameter "handle"
    .parameter "bluetoothMasAppParams"

    .prologue
    .line 717
    const-string v1, "content://com.android.email.provider/mailbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 718
    .local v2, uri1:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "(UPPER(displayName) = \'INBOX\' OR UPPER(displayName) LIKE \'%TRASH%\')"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 720
    .local v9, cr1:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 721
    .local v15, inboxFolderId:I
    const/4 v11, 0x0

    .line 722
    .local v11, deletedFolderId:I
    const/16 v16, 0x0

    .line 724
    .local v16, msgFolderId:I
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 726
    :cond_0
    const-string v1, "displayName"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 727
    .local v14, folderName:Ljava/lang/String;
    const-string v1, "INBOX"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 728
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 732
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 734
    .end local v14           #folderName:Ljava/lang/String;
    :cond_1
    if-eqz v9, :cond_2

    .line 735
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 739
    :cond_2
    const-wide/16 v5, 0x0

    sub-long v12, p1, v5

    .line 740
    .local v12, emailMsgId:J
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->OFFSET_START:J

    sub-long v12, p1, v5

    .line 741
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.email.provider/message/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 742
    .local v4, uri2:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 743
    .local v10, crEmail:Landroid/database/Cursor;
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 744
    move-object/from16 v0, p3

    iget-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusIndicator:B

    if-nez v1, :cond_6

    .line 746
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 747
    .local v17, values:Landroid/content/ContentValues;
    const-string v1, "flagRead"

    move-object/from16 v0, p3

    iget-byte v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusValue:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 748
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v1, v4, v0, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 771
    .end local v17           #values:Landroid/content/ContentValues;
    :cond_3
    :goto_1
    if-eqz v10, :cond_4

    .line 772
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 774
    :cond_4
    const/16 v1, 0xa0

    return v1

    .line 730
    .end local v4           #uri2:Landroid/net/Uri;
    .end local v10           #crEmail:Landroid/database/Cursor;
    .end local v12           #emailMsgId:J
    .restart local v14       #folderName:Ljava/lang/String;
    :cond_5
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    goto :goto_0

    .line 750
    .end local v14           #folderName:Ljava/lang/String;
    .restart local v4       #uri2:Landroid/net/Uri;
    .restart local v10       #crEmail:Landroid/database/Cursor;
    .restart local v12       #emailMsgId:J
    :cond_6
    move-object/from16 v0, p3

    iget-byte v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusValue:B

    const/4 v3, 0x1

    if-ne v1, v3, :cond_8

    .line 751
    const-string v1, "mailboxKey"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 752
    move/from16 v0, v16

    if-ne v0, v11, :cond_7

    .line 754
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/bluetooth/map/BluetoothMns;->addMceInitiatedOperation(Ljava/lang/String;)V

    .line 755
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.android.email.provider/message/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 759
    :cond_7
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 760
    .restart local v17       #values:Landroid/content/ContentValues;
    const-string v1, "mailboxKey"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v1, v4, v0, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 765
    .end local v17           #values:Landroid/content/ContentValues;
    :cond_8
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 766
    .restart local v17       #values:Landroid/content/ContentValues;
    const-string v1, "mailboxKey"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 767
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v1, v4, v0, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public checkPrecondition()Z
    .locals 4

    .prologue
    .line 184
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mMasId:I

    invoke-static {v2}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getAccountId(I)J

    move-result-wide v0

    .line 185
    .local v0, id:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 186
    const/4 v2, 0x0

    .line 188
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected getCompleteFolderList()Ljava/util/List;
    .locals 12
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
    .line 145
    iget-boolean v9, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v9, :cond_0

    const-string v9, "BluetoothMasAppEmail"

    const-string v10, "getCompleteFolderList"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    iget v9, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mMasId:I

    invoke-static {v9}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getAccountId(I)J

    move-result-wide v4

    .line 147
    .local v4, id:J
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    invoke-static {v9, v4, v5}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getEmailFolderList(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v6

    .line 148
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v1, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v9, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->SPECIAL_MAILBOX_TYPES:[I

    array-length v9, v9

    if-ge v2, v9, :cond_8

    .line 153
    sget-object v9, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->SPECIAL_MAILBOX_TYPES:[I

    aget v0, v9, v2

    .line 154
    .local v0, curType:I
    iget-boolean v9, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v9, :cond_1

    const-string v9, "BluetoothMasAppEmail"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " getCompleteFolderList: Current Type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 156
    .local v7, str:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    invoke-static {v9, v4, v5, v7}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getTypeForFolder(Landroid/content/Context;JLjava/lang/String;)I

    move-result v8

    .line 157
    .local v8, type:I
    iget-boolean v9, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v9, :cond_3

    const-string v9, "BluetoothMasAppEmail"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " getCompleteFolderList: type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_3
    if-ne v8, v0, :cond_2

    .line 159
    iget-boolean v9, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v9, :cond_4

    const-string v9, "BluetoothMasAppEmail"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " getCompleteFolderList: removing folder : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_4
    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 164
    .end local v7           #str:Ljava/lang/String;
    .end local v8           #type:I
    :cond_5
    sget-object v9, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->SPECIAL_MAILBOX_MAP_NAME:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 165
    iget-boolean v9, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v9, :cond_6

    const-string v9, "BluetoothMasAppEmail"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " getCompleteFolderList: adding default folder : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->SPECIAL_MAILBOX_MAP_NAME:[Ljava/lang/String;

    aget-object v11, v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_6
    sget-object v9, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->SPECIAL_MAILBOX_MAP_NAME:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 170
    .end local v0           #curType:I
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_9
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 171
    .restart local v7       #str:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    invoke-static {v9, v4, v5, v7}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getTypeForFolder(Landroid/content/Context;JLjava/lang/String;)I

    move-result v8

    .line 172
    .restart local v8       #type:I
    iget-boolean v9, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v9, :cond_a

    const-string v9, "BluetoothMasAppEmail"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " getCompleteFolderList: Processing type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for Folder : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_a
    const/4 v9, 0x7

    if-gt v8, v9, :cond_9

    .line 175
    iget-boolean v9, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v9, :cond_b

    const-string v9, "BluetoothMasAppEmail"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " getCompleteFolderList: Adding a valid folder:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_b
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 179
    .end local v7           #str:Ljava/lang/String;
    .end local v8           #type:I
    :cond_c
    iget-boolean v9, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v9, :cond_d

    const-string v9, "BluetoothMasAppEmail"

    const-string v10, "Returning from CompleteFolderList"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_d
    return-object v1
.end method

.method protected getMessageSpecific(JLcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;
    .locals 11
    .parameter "msgHandle"
    .parameter "rsp"
    .parameter "bluetoothMasAppParams"

    .prologue
    .line 307
    iget-byte v8, p4, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Charset:B

    if-nez v8, :cond_1

    .line 308
    const/16 v8, 0xc0

    iput v8, p3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->rsp:I

    .line 340
    :cond_0
    :goto_0
    return-object p3

    .line 312
    :cond_1
    iget-wide v8, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->OFFSET_START:J

    sub-long v3, p1, v8

    .line 313
    .local v3, emailMsgID:J
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mRemoteDeviceName:Ljava/lang/String;

    invoke-static {v3, v4, p3, v8, v9}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->bldEmailBmsg(JLcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 314
    .local v7, str:Ljava/lang/String;
    iget-boolean v8, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v8, :cond_2

    const-string v8, "BluetoothMasAppEmail"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_2
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 316
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "message"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->getMasId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, FILENAME:Ljava/lang/String;
    const/4 v1, 0x0

    .line 318
    .local v1, bos:Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 319
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 322
    :try_start_0
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 323
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 324
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 325
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 332
    :goto_1
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    .local v6, fileR:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 334
    iput-object v6, p3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->file:Ljava/io/File;

    .line 335
    const/4 v8, 0x1

    iput-byte v8, p3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->fractionDeliver:B

    goto/16 :goto_0

    .line 326
    .end local v6           #fileR:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 327
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v8, "BluetoothMasAppEmail"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to write "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 328
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 329
    .local v2, e:Ljava/io/IOException;
    const-string v8, "BluetoothMasAppEmail"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to write "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 337
    .end local v2           #e:Ljava/io/IOException;
    .restart local v6       #fileR:Ljava/io/File;
    :cond_3
    const/16 v8, 0xc0

    iput v8, p3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->rsp:I

    goto/16 :goto_0
.end method

.method protected msgListingSpecific(Ljava/util/List;Ljava/lang/String;Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;
    .locals 17
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
    .line 213
    .local p1, msgList:Ljava/util/List;,"Ljava/util/List<Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;>;"
    new-instance v5, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;

    invoke-direct {v5}, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;-><init>()V

    .line 214
    .local v5, bmlr:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mCurrentPath:Ljava/lang/String;

    .line 216
    .local v9, fullPath:Ljava/lang/String;
    :goto_0
    if-nez v9, :cond_2

    .line 218
    const/16 v14, 0xc0

    move-object/from16 v0, p3

    iput v14, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    .line 219
    move-object/from16 v0, p3

    iput-object v0, v5, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    .line 297
    :goto_1
    return-object v5

    .line 214
    .end local v9           #fullPath:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->getCompleteFolderList()Ljava/util/List;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mCurrentPath:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v14, v15, v1}, Lcom/android/bluetooth/map/MapUtils/CommonUtils;->getFullPath(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 223
    .restart local v9       #fullPath:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v14, :cond_3

    .line 224
    const-string v14, "BluetoothMasAppEmail"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "appParams.FilterMessageType ::"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p4

    iget-byte v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterMessageType:B

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v14, "BluetoothMasAppEmail"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Condition result:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p4

    iget-byte v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterMessageType:B

    move/from16 v16, v0

    and-int/lit8 v16, v16, 0x4

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_3
    const-string v14, "/"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 229
    .local v13, splitStrings:[Ljava/lang/String;
    array-length v14, v13

    const/4 v15, 0x3

    if-eq v14, v15, :cond_4

    array-length v14, v13

    const/4 v15, 0x4

    if-ne v14, v15, :cond_11

    .line 231
    :cond_4
    invoke-static/range {p4 .. p4}, Lcom/android/bluetooth/map/MapUtils/CommonUtils;->validateFilterPeriods(Lcom/android/bluetooth/map/BluetoothMasAppParams;)I

    move-result v14

    if-nez v14, :cond_5

    .line 232
    const/16 v14, 0xc0

    move-object/from16 v0, p3

    iput v14, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    .line 233
    move-object/from16 v0, p3

    iput-object v0, v5, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    goto :goto_1

    .line 236
    :cond_5
    move-object/from16 v0, p4

    iget-byte v14, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterReadStatus:B

    const/4 v15, 0x2

    if-le v14, v15, :cond_6

    .line 237
    const/16 v14, 0xc0

    move-object/from16 v0, p3

    iput v14, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    .line 238
    move-object/from16 v0, p3

    iput-object v0, v5, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    goto/16 :goto_1

    .line 242
    :cond_6
    move-object/from16 v0, p4

    iget-byte v14, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPriority:B

    if-eqz v14, :cond_7

    move-object/from16 v0, p4

    iget-byte v14, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPriority:B

    const/4 v15, 0x2

    if-ne v14, v15, :cond_10

    .line 243
    :cond_7
    move-object/from16 v0, p4

    iget-byte v14, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterMessageType:B

    and-int/lit8 v14, v14, 0x4

    if-nez v14, :cond_e

    .line 245
    array-length v14, v13

    const/4 v15, 0x3

    if-ge v14, v15, :cond_8

    .line 246
    const-string v14, "BluetoothMasAppEmail"

    const-string v15, "The folder path is invalid."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/16 v14, 0xc0

    move-object/from16 v0, p3

    iput v14, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    .line 248
    move-object/from16 v0, p3

    iput-object v0, v5, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    goto/16 :goto_1

    .line 251
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v14, :cond_9

    const-string v14, "BluetoothMasAppEmail"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "splitStrings[2] = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    aget-object v16, v13, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_9
    invoke-static {v13}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getFolderName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 255
    .local v7, folderName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 256
    .local v11, index:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mMasId:I

    invoke-static {v14}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getAccountId(I)J

    move-result-wide v3

    .line 257
    .local v3, accountId:J
    :goto_2
    sget-object v14, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->SPECIAL_MAILBOX_MAP_NAME:[Ljava/lang/String;

    array-length v14, v14

    if-ge v11, v14, :cond_c

    .line 258
    sget-object v14, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->SPECIAL_MAILBOX_MAP_NAME:[Ljava/lang/String;

    aget-object v14, v14, v11

    invoke-virtual {v14, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 259
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    sget-object v15, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->SPECIAL_MAILBOX_TYPES:[I

    aget v15, v15, v11

    invoke-static {v14, v3, v4, v15}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getFoldersForType(Landroid/content/Context;JI)Ljava/util/List;

    move-result-object v8

    .line 261
    .local v8, folders:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 262
    .local v12, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 263
    .local v6, folder:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v6, v1, v2}, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->getListEmailFromFolder(Ljava/lang/String;Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Ljava/util/List;

    move-result-object v12

    .line 264
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_a

    .line 265
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 257
    .end local v6           #folder:Ljava/lang/String;
    .end local v8           #folders:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;>;"
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 271
    :cond_c
    sget-object v14, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->SPECIAL_MAILBOX_MAP_NAME:[Ljava/lang/String;

    array-length v14, v14

    if-ne v11, v14, :cond_d

    .line 272
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v7, v1, v2}, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->getListEmailFromFolder(Ljava/lang/String;Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Ljava/util/List;

    move-result-object p1

    .line 275
    :cond_d
    const/16 v14, 0xa0

    move-object/from16 v0, p3

    iput v14, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    .line 276
    move-object/from16 v0, p3

    iget v14, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->msgListingSize:I

    iput v14, v5, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->messageListingSize:I

    .line 277
    move-object/from16 v0, p3

    iput-object v0, v5, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    .line 278
    move-object/from16 v0, p1

    iput-object v0, v5, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->msgList:Ljava/util/List;

    goto/16 :goto_1

    .line 282
    .end local v3           #accountId:J
    .end local v7           #folderName:Ljava/lang/String;
    .end local v11           #index:I
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v14, :cond_f

    const-string v14, "BluetoothMasAppEmail"

    const-string v15, "Invalid Message Filter, returning empty list"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_f
    const/16 v14, 0xa0

    move-object/from16 v0, p3

    iput v14, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    .line 284
    move-object/from16 v0, p3

    iput-object v0, v5, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    goto/16 :goto_1

    .line 288
    :cond_10
    move-object/from16 v0, p4

    iget-byte v14, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPriority:B

    const/4 v15, 0x2

    if-le v14, v15, :cond_11

    .line 289
    const/16 v14, 0xc0

    move-object/from16 v0, p3

    iput v14, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    .line 290
    move-object/from16 v0, p3

    iput-object v0, v5, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    goto/16 :goto_1

    .line 295
    :cond_11
    const/16 v14, 0xa0

    move-object/from16 v0, p3

    iput v14, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    .line 296
    move-object/from16 v0, p3

    iput-object v0, v5, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    goto/16 :goto_1
.end method

.method public msgStatus(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMasAppParams;)I
    .locals 5
    .parameter "msgHandle"
    .parameter "bluetoothMasAppParams"

    .prologue
    const/16 v2, 0xcc

    const/4 v4, 0x1

    .line 415
    iget-byte v3, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusIndicator:B

    if-eqz v3, :cond_1

    iget-byte v3, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusIndicator:B

    if-eq v3, v4, :cond_1

    .line 427
    :cond_0
    :goto_0
    return v2

    .line 419
    :cond_1
    iget-byte v3, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusValue:B

    if-eqz v3, :cond_2

    iget-byte v3, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusValue:B

    if-ne v3, v4, :cond_0

    .line 423
    :cond_2
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 424
    .local v0, handle:J
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->OFFSET_START:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->OFFSET_END:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 425
    const/16 v2, 0xc4

    goto :goto_0

    .line 427
    :cond_3
    invoke-direct {p0, v0, v1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->setMsgStatusEmail(JLcom/android/bluetooth/map/BluetoothMasAppParams;)I

    move-result v2

    goto :goto_0
.end method

.method public msgUpdate()I
    .locals 6

    .prologue
    .line 436
    iget-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v3, :cond_0

    const-string v3, "BluetoothMasAppEmail"

    const-string v4, "Message Update"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_0
    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mMasId:I

    invoke-static {v3}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getAccountId(I)J

    move-result-wide v0

    .line 438
    .local v0, accountId:J
    iget-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v3, :cond_1

    const-string v3, "BluetoothMasAppEmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Account id for Inbox Update: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 442
    .local v2, emailIn:Landroid/content/Intent;
    const-string v3, "com.android.email.intent.action.MAIL_SERVICE_WAKEUP"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const-string v3, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 444
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 446
    const/16 v3, 0xa0

    return v3
.end method

.method public onConnect()V
    .locals 4

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasAppEmail"

    const-string v1, "onConnect() registering email account content observer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->EMAIL_ACCOUNT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 195
    return-void
.end method

.method public onDisconnect()V
    .locals 2

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasAppEmail"

    const-string v1, "onDisconnect() unregistering email account content observer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 200
    return-void
.end method

.method public pushMsg(Ljava/lang/String;Ljava/io/File;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;
    .locals 15
    .parameter "name"
    .parameter "file"
    .parameter "bluetoothMasAppParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
        }
    .end annotation

    .prologue
    .line 350
    new-instance v8, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;

    invoke-direct {v8}, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;-><init>()V

    .line 351
    .local v8, rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;
    const/16 v11, 0xd3

    iput v11, v8, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    .line 352
    const/4 v11, 0x0

    iput-object v11, v8, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 354
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {p0, v11, v0, v12}, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->checkPath(ZLjava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mCurrentPath:Ljava/lang/String;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mCurrentPath:Ljava/lang/String;

    const-string v12, "telecom"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mCurrentPath:Ljava/lang/String;

    const-string v12, "telecom/msg"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    .line 358
    :cond_0
    const/16 v11, 0xc0

    iput v11, v8, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    move-object v9, v8

    .line 406
    .end local v8           #rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;
    .local v9, rsp:Ljava/lang/Object;
    :goto_0
    return-object v9

    .line 361
    .end local v9           #rsp:Ljava/lang/Object;
    .restart local v8       #rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;
    :cond_1
    const/4 v5, 0x0

    .line 362
    .local v5, readBytes:[B
    const/4 v3, 0x0

    .line 364
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 365
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v11

    const-wide/32 v13, 0x64000

    cmp-long v11, v11, v13

    if-lez v11, :cond_3

    .line 366
    const/16 v11, 0xcd

    iput v11, v8, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    .line 367
    const/4 v11, 0x0

    iput-object v11, v8, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 368
    const-string v11, "BluetoothMasAppEmail"

    const-string v12, "Message body is larger than the max length allowed"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_b

    .line 384
    if-eqz v4, :cond_2

    .line 386
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    :cond_2
    :goto_1
    move-object v9, v8

    .line 369
    .restart local v9       #rsp:Ljava/lang/Object;
    goto :goto_0

    .line 371
    .end local v9           #rsp:Ljava/lang/Object;
    :cond_3
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v11

    long-to-int v11, v11

    new-array v5, v11, [B

    .line 372
    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_b

    .line 384
    if-eqz v4, :cond_4

    .line 386
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    .line 393
    :cond_4
    :goto_2
    const-string v6, ""

    .line 394
    .local v6, readStr:Ljava/lang/String;
    const-string v10, ""

    .line 396
    .local v10, type:Ljava/lang/String;
    :try_start_5
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 397
    .end local v6           #readStr:Ljava/lang/String;
    .local v7, readStr:Ljava/lang/String;
    :try_start_6
    invoke-static {v7}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a

    move-result-object v10

    .line 401
    if-eqz v10, :cond_9

    const-string v11, "EMAIL"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 402
    move-object/from16 v0, p1

    invoke-direct {p0, v8, v7, v0}, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->pushMessageEmail(Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;

    move-result-object v8

    move-object v9, v8

    .line 403
    .restart local v9       #rsp:Ljava/lang/Object;
    goto :goto_0

    .line 374
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v7           #readStr:Ljava/lang/String;
    .end local v9           #rsp:Ljava/lang/Object;
    .end local v10           #type:Ljava/lang/String;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 375
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_7
    const-string v11, "BluetoothMasAppEmail"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 384
    if-eqz v3, :cond_5

    .line 386
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_5
    :goto_4
    move-object v9, v8

    .line 376
    .restart local v9       #rsp:Ljava/lang/Object;
    goto :goto_0

    .line 377
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v9           #rsp:Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 378
    .local v1, e:Ljava/io/IOException;
    :goto_5
    :try_start_9
    const-string v11, "BluetoothMasAppEmail"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 384
    if-eqz v3, :cond_6

    .line 386
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :cond_6
    :goto_6
    move-object v9, v8

    .line 379
    .restart local v9       #rsp:Ljava/lang/Object;
    goto :goto_0

    .line 380
    .end local v1           #e:Ljava/io/IOException;
    .end local v9           #rsp:Ljava/lang/Object;
    :catch_2
    move-exception v1

    .line 381
    .local v1, e:Ljava/lang/SecurityException;
    :goto_7
    :try_start_b
    const-string v11, "BluetoothMasAppEmail"

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 384
    if-eqz v3, :cond_7

    .line 386
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    :cond_7
    :goto_8
    move-object v9, v8

    .line 382
    .restart local v9       #rsp:Ljava/lang/Object;
    goto/16 :goto_0

    .line 384
    .end local v1           #e:Ljava/lang/SecurityException;
    .end local v9           #rsp:Ljava/lang/Object;
    :catchall_0
    move-exception v11

    :goto_9
    if-eqz v3, :cond_8

    .line 386
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    .line 384
    :cond_8
    :goto_a
    throw v11

    .line 398
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v6       #readStr:Ljava/lang/String;
    .restart local v10       #type:Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 399
    .local v1, e:Ljava/lang/Exception;
    :goto_b
    new-instance v11, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 405
    .end local v1           #e:Ljava/lang/Exception;
    .end local v6           #readStr:Ljava/lang/String;
    .restart local v7       #readStr:Ljava/lang/String;
    :cond_9
    const/16 v11, 0xc0

    iput v11, v8, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    move-object v9, v8

    .line 406
    .restart local v9       #rsp:Ljava/lang/Object;
    goto/16 :goto_0

    .line 387
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v7           #readStr:Ljava/lang/String;
    .end local v9           #rsp:Ljava/lang/Object;
    .end local v10           #type:Ljava/lang/String;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v2

    .line 388
    .local v2, ei:Ljava/io/IOException;
    const-string v12, "BluetoothMasAppEmail"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error while closing stream"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 387
    .end local v2           #ei:Ljava/io/IOException;
    .local v1, e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v2

    .line 388
    .restart local v2       #ei:Ljava/io/IOException;
    const-string v11, "BluetoothMasAppEmail"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error while closing stream"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 387
    .end local v2           #ei:Ljava/io/IOException;
    .local v1, e:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 388
    .restart local v2       #ei:Ljava/io/IOException;
    const-string v11, "BluetoothMasAppEmail"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error while closing stream"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 387
    .end local v2           #ei:Ljava/io/IOException;
    .local v1, e:Ljava/lang/SecurityException;
    :catch_7
    move-exception v2

    .line 388
    .restart local v2       #ei:Ljava/io/IOException;
    const-string v11, "BluetoothMasAppEmail"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error while closing stream"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 387
    .end local v1           #e:Ljava/lang/SecurityException;
    .end local v2           #ei:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_8
    move-exception v2

    .line 388
    .restart local v2       #ei:Ljava/io/IOException;
    const-string v11, "BluetoothMasAppEmail"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error while closing stream"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 387
    .end local v2           #ei:Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 388
    .restart local v2       #ei:Ljava/io/IOException;
    const-string v11, "BluetoothMasAppEmail"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error while closing stream"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 398
    .end local v2           #ei:Ljava/io/IOException;
    .restart local v7       #readStr:Ljava/lang/String;
    .restart local v10       #type:Ljava/lang/String;
    :catch_a
    move-exception v1

    move-object v6, v7

    .end local v7           #readStr:Ljava/lang/String;
    .restart local v6       #readStr:Ljava/lang/String;
    goto/16 :goto_b

    .line 384
    .end local v6           #readStr:Ljava/lang/String;
    .end local v10           #type:Ljava/lang/String;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_9

    .line 380
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_b
    move-exception v1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_7

    .line 377
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_c
    move-exception v1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_5

    .line 374
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_d
    move-exception v1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method public startMnsSession(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "remoteDevice"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasAppEmail"

    const-string v1, "Start MNS Client"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMns;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mMasId:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 132
    return-void
.end method

.method public stopMnsSession(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "remoteDevice"

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasAppEmail"

    const-string v1, "Stop MNS Client"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMns;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;->mMasId:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 141
    return-void
.end method
