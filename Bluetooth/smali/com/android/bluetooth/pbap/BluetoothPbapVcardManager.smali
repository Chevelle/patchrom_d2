.class public Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    }
.end annotation


# static fields
.field static final CALLLOG_SORT_ORDER:Ljava/lang/String; = "_id DESC"

.field private static final CLAUSE_ONLY_VISIBLE:Ljava/lang/String; = "in_visible_group=1"

.field static final CONTACTS_ALT_NAME_COLUMN_INDEX:I = 0x2

.field static final CONTACTS_ID_COLUMN_INDEX:I = 0x0

.field static final CONTACTS_PRIM_NAME_COLUMN_INDEX:I = 0x1

.field static final CONTACTS_PROJECTION:[Ljava/lang/String; = null

.field static final PHONES_PROJECTION:[Ljava/lang/String; = null

.field private static final PHONE_NUMBER_COLUMN_INDEX:I = 0x3

.field static final SORT_ORDER_PHONE_NUMBER:Ljava/lang/String; = "data1 ASC"

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapVcardManager"

.field private static final V:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data2"

    aput-object v1, v0, v4

    const-string v1, "data3"

    aput-object v1, v0, v5

    const-string v1, "data1"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 88
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "display_name_alt"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    .line 108
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    .line 109
    return-void
.end method

.method private getDisplayNameColumn()Ljava/lang/String;
    .locals 4

    .prologue
    .line 244
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "android.contacts.DISPLAY_ORDER"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 247
    .local v0, order:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v1, "display_name_alt"

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "display_name"

    goto :goto_0
.end method

.method private getDisplayNameColumnIndex()I
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 235
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "android.contacts.DISPLAY_ORDER"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 238
    .local v0, order:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private final getOwnerPhoneNumberVcardFromProfile(ZJ)Ljava/lang/String;
    .locals 2
    .parameter "vcardType21"
    .parameter "filter"

    .prologue
    .line 119
    if-eqz p1, :cond_0

    .line 120
    const/high16 v0, -0x4000

    .line 125
    .local v0, vcardType:I
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p2, p3}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->createProfileVCard(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 122
    .end local v0           #vcardType:I
    :cond_0
    const v0, -0x3fffffff

    .restart local v0       #vcardType:I
    goto :goto_0
.end method


# virtual methods
.method public final composeAndSendCallLogVcards(ILjavax/obex/Operation;IIZJ)I
    .locals 21
    .parameter "type"
    .parameter "op"
    .parameter "startPoint"
    .parameter "endPoint"
    .parameter "vcardType21"
    .parameter "filter"

    .prologue
    .line 336
    const/4 v2, 0x1

    move/from16 v0, p3

    if-lt v0, v2, :cond_0

    move/from16 v0, p3

    move/from16 v1, p4

    if-le v0, v1, :cond_1

    .line 337
    :cond_0
    const-string v2, "BluetoothPbapVcardManager"

    const-string v6, "internal error: startPoint or endPoint is not correct."

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/16 v2, 0xd0

    .line 392
    :goto_0
    return v2

    .line 340
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object v5

    .line 342
    .local v5, typeSelection:Ljava/lang/String;
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 343
    .local v3, myUri:Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    .line 346
    .local v4, CALLLOG_PROJECTION:[Ljava/lang/String;
    const/4 v14, 0x0

    .line 348
    .local v14, ID_COLUMN_INDEX:I
    const/4 v15, 0x0

    .line 349
    .local v15, callsCursor:Landroid/database/Cursor;
    const-wide/16 v19, 0x0

    .line 350
    .local v19, startPointId:J
    const-wide/16 v16, 0x0

    .line 353
    .local v16, endPointId:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const-string v7, "_id DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 355
    if-eqz v15, :cond_2

    .line 356
    add-int/lit8 v2, p3, -0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 357
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v19

    .line 359
    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_4

    .line 360
    move-wide/from16 v16, v19

    .line 368
    :cond_2
    :goto_1
    if-eqz v15, :cond_3

    .line 369
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 374
    :cond_3
    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_6

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v19

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 384
    .local v18, recordSelection:Ljava/lang/String;
    :goto_2
    if-nez v5, :cond_7

    .line 385
    move-object/from16 v8, v18

    .line 392
    .local v8, selection:Ljava/lang/String;
    :goto_3
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v9, p5

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v13}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZJLjava/lang/String;Z)I

    move-result v2

    goto :goto_0

    .line 362
    .end local v8           #selection:Ljava/lang/String;
    .end local v18           #recordSelection:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, p4, -0x1

    :try_start_1
    invoke-interface {v15, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 363
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v16

    goto :goto_1

    .line 368
    :catchall_0
    move-exception v2

    if-eqz v15, :cond_5

    .line 369
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 368
    :cond_5
    throw v2

    .line 379
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id>="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " AND "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "_id"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "<="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v19

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .restart local v18       #recordSelection:Ljava/lang/String;
    goto :goto_2

    .line 387
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ") AND ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #selection:Ljava/lang/String;
    goto :goto_3
.end method

.method public final composeAndSendPhonebookOneVcard(Ljavax/obex/Operation;IZLjava/lang/String;IJ)I
    .locals 14
    .parameter "op"
    .parameter "offset"
    .parameter "vcardType21"
    .parameter "ownerVCard"
    .parameter "orderByWhat"
    .parameter "filter"

    .prologue
    .line 442
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ge v0, v1, :cond_0

    .line 443
    const-string v1, "BluetoothPbapVcardManager"

    const-string v3, "Internal error: offset is not correct."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/16 v1, 0xd0

    .line 486
    :goto_0
    return v1

    .line 446
    :cond_0
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 447
    .local v2, myUri:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 448
    .local v11, contactCursor:Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 449
    .local v5, selection:Ljava/lang/String;
    const-wide/16 v12, 0x0

    .line 450
    .local v12, contactId:J
    sget v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    move/from16 v0, p5

    if-ne v0, v1, :cond_4

    .line 452
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v4, "in_visible_group=1"

    const/4 v5, 0x0

    const-string v6, "_id"

    .end local v5           #selection:Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 454
    if-eqz v11, :cond_1

    .line 455
    add-int/lit8 v1, p2, -0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 456
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v12

    .line 460
    :cond_1
    if-eqz v11, :cond_2

    .line 461
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 482
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 486
    .restart local v5       #selection:Ljava/lang/String;
    const/4 v10, 0x1

    move-object v3, p0

    move-object v4, p1

    move/from16 v6, p3

    move-wide/from16 v7, p6

    move-object/from16 v9, p4

    invoke-virtual/range {v3 .. v10}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZJLjava/lang/String;Z)I

    move-result v1

    goto :goto_0

    .line 460
    .end local v5           #selection:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_3

    .line 461
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 460
    :cond_3
    throw v1

    .line 464
    .restart local v5       #selection:Ljava/lang/String;
    :cond_4
    sget v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    move/from16 v0, p5

    if-ne v0, v1, :cond_7

    .line 466
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v4, "in_visible_group=1"

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getDisplayNameColumn()Ljava/lang/String;

    .end local v5           #selection:Ljava/lang/String;
    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 468
    if-eqz v11, :cond_5

    .line 469
    add-int/lit8 v1, p2, -0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 470
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v12

    .line 474
    :cond_5
    if-eqz v11, :cond_2

    .line 475
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 474
    :catchall_1
    move-exception v1

    if-eqz v11, :cond_6

    .line 475
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 474
    :cond_6
    throw v1

    .line 479
    .restart local v5       #selection:Ljava/lang/String;
    :cond_7
    const-string v1, "BluetoothPbapVcardManager"

    const-string v3, "Parameter orderByWhat is not supported!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/16 v1, 0xd0

    goto/16 :goto_0
.end method

.method public final composeAndSendPhonebookVcards(Ljavax/obex/Operation;IIZJLjava/lang/String;)I
    .locals 17
    .parameter "op"
    .parameter "startPoint"
    .parameter "endPoint"
    .parameter "vcardType21"
    .parameter "filter"
    .parameter "ownerVCard"

    .prologue
    .line 397
    const/4 v2, 0x1

    move/from16 v0, p2

    if-lt v0, v2, :cond_0

    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    .line 398
    :cond_0
    const-string v2, "BluetoothPbapVcardManager"

    const-string v4, "internal error: startPoint or endPoint is not correct."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/16 v2, 0xd0

    .line 437
    :goto_0
    return v2

    .line 401
    :cond_1
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 403
    .local v3, myUri:Landroid/net/Uri;
    const/4 v12, 0x0

    .line 404
    .local v12, contactCursor:Landroid/database/Cursor;
    const-wide/16 v15, 0x0

    .line 405
    .local v15, startPointId:J
    const-wide/16 v13, 0x0

    .line 407
    .local v13, endPointId:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v5, "in_visible_group=1"

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 409
    if-eqz v12, :cond_2

    .line 410
    add-int/lit8 v2, p2, -0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 411
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v15

    .line 413
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_4

    .line 414
    move-wide v13, v15

    .line 422
    :cond_2
    :goto_1
    if-eqz v12, :cond_3

    .line 423
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 428
    :cond_3
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_6

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "in_visible_group=1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 437
    .local v6, selection:Ljava/lang/String;
    :goto_2
    const/4 v11, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-virtual/range {v4 .. v11}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZJLjava/lang/String;Z)I

    move-result v2

    goto :goto_0

    .line 416
    .end local v6           #selection:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, p3, -0x1

    :try_start_1
    invoke-interface {v12, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 417
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v13

    goto :goto_1

    .line 422
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_5

    .line 423
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 422
    :cond_5
    throw v2

    .line 431
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id>="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "in_visible_group=1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #selection:Ljava/lang/String;
    goto :goto_2
.end method

.method public final composeAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZJLjava/lang/String;Z)I
    .locals 20
    .parameter "op"
    .parameter "selection"
    .parameter "vcardType21"
    .parameter "filter"
    .parameter "ownerVCard"
    .parameter "isContacts"

    .prologue
    .line 491
    const-wide/16 v17, 0x0

    .line 494
    .local v17, timestamp:J
    if-eqz p7, :cond_14

    .line 495
    const/4 v15, 0x0

    .line 496
    .local v15, composer:Lcom/android/vcard/VCardComposer;
    const/4 v13, 0x0

    .line 500
    .local v13, buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    if-eqz p3, :cond_4

    .line 501
    const/high16 v5, -0x4000

    .line 506
    .local v5, vcardType:I
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->includePhotosInVcard()Z

    move-result v4

    if-nez v4, :cond_0

    .line 507
    const/high16 v4, 0x80

    or-int/2addr v5, v4

    .line 510
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "android.contacts.DISPLAY_ORDER"

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 512
    .local v16, order:I
    const/4 v4, 0x2

    move/from16 v0, v16

    if-ne v0, v4, :cond_1

    .line 513
    const/high16 v4, 0x100

    or-int/2addr v5, v4

    .line 516
    :cond_1
    new-instance v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardComposer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    move-wide/from16 v6, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardComposer;-><init>(Landroid/content/Context;IJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    .end local v15           #composer:Lcom/android/vcard/VCardComposer;
    .local v3, composer:Lcom/android/vcard/VCardComposer;
    :try_start_1
    new-instance v14, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-direct {v14, v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 518
    .end local v13           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .local v14, buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_2
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "_id"

    const/4 v12, 0x0

    move-object v6, v3

    move-object/from16 v9, p2

    invoke-virtual/range {v6 .. v12}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-result v4

    if-nez v4, :cond_5

    .line 520
    const/16 v4, 0xd0

    .line 549
    if-eqz v3, :cond_2

    .line 550
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 552
    :cond_2
    if-eqz v14, :cond_3

    .line 553
    invoke-virtual {v14}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_3
    move-object v13, v14

    .line 601
    .end local v3           #composer:Lcom/android/vcard/VCardComposer;
    .end local v5           #vcardType:I
    .end local v14           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v16           #order:I
    .end local p1
    .restart local v13       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :goto_1
    return v4

    .line 503
    .restart local v15       #composer:Lcom/android/vcard/VCardComposer;
    .restart local p1
    :cond_4
    const v5, -0x3fffffff

    .restart local v5       #vcardType:I
    goto :goto_0

    .line 522
    .end local v13           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v15           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v3       #composer:Lcom/android/vcard/VCardComposer;
    .restart local v14       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v16       #order:I
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onInit(Landroid/content/Context;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-result v4

    if-nez v4, :cond_8

    .line 523
    const/16 v4, 0xd0

    .line 549
    if-eqz v3, :cond_6

    .line 550
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 552
    :cond_6
    if-eqz v14, :cond_7

    .line 553
    invoke-virtual {v14}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_7
    move-object v13, v14

    .line 523
    .end local v14           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v13       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto :goto_1

    .line 526
    .end local v13           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v14       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :cond_8
    :try_start_4
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_9

    .line 527
    sget-boolean v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v4, :cond_c

    .line 528
    check-cast p1, Ljavax/obex/ServerOperation;

    .end local p1
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 529
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 549
    :cond_9
    if-eqz v3, :cond_a

    .line 550
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 552
    :cond_a
    if-eqz v14, :cond_b

    .line 553
    invoke-virtual {v14}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_b
    move-object v13, v14

    .line 601
    .end local v3           #composer:Lcom/android/vcard/VCardComposer;
    .end local v5           #vcardType:I
    .end local v14           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v16           #order:I
    .restart local v13       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :goto_2
    const/16 v4, 0xa0

    goto :goto_1

    .line 532
    .end local v13           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v3       #composer:Lcom/android/vcard/VCardComposer;
    .restart local v5       #vcardType:I
    .restart local v14       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v16       #order:I
    .restart local p1
    :cond_c
    :try_start_5
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object v19

    .line 533
    .local v19, vcard:Ljava/lang/String;
    if-nez v19, :cond_f

    .line 534
    const-string v4, "BluetoothPbapVcardManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read a contact. Error reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 536
    const/16 v4, 0xd0

    .line 549
    if-eqz v3, :cond_d

    .line 550
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 552
    :cond_d
    if-eqz v14, :cond_e

    .line 553
    invoke-virtual {v14}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_e
    move-object v13, v14

    .line 536
    .end local v14           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v13       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto :goto_1

    .line 543
    .end local v13           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v14       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :cond_f
    :try_start_6
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onEntryCreated(Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-result v4

    if-nez v4, :cond_8

    .line 545
    const/16 v4, 0xd0

    .line 549
    if-eqz v3, :cond_10

    .line 550
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 552
    :cond_10
    if-eqz v14, :cond_11

    .line 553
    invoke-virtual {v14}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_11
    move-object v13, v14

    .line 545
    .end local v14           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v13       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto/16 :goto_1

    .line 549
    .end local v3           #composer:Lcom/android/vcard/VCardComposer;
    .end local v16           #order:I
    .end local v19           #vcard:Ljava/lang/String;
    .restart local v15       #composer:Lcom/android/vcard/VCardComposer;
    :catchall_0
    move-exception v4

    move-object v3, v15

    .end local v15           #composer:Lcom/android/vcard/VCardComposer;
    .end local p1
    .restart local v3       #composer:Lcom/android/vcard/VCardComposer;
    :goto_3
    if-eqz v3, :cond_12

    .line 550
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 552
    :cond_12
    if-eqz v13, :cond_13

    .line 553
    invoke-virtual {v13}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 549
    :cond_13
    throw v4

    .line 557
    .end local v3           #composer:Lcom/android/vcard/VCardComposer;
    .end local v5           #vcardType:I
    .end local v13           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local p1
    :cond_14
    const/4 v3, 0x0

    .line 558
    .local v3, composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    const/4 v13, 0x0

    .line 561
    .restart local v13       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_7
    new-instance v15, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-direct {v15, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 562
    .end local v3           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .local v15, composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    :try_start_8
    new-instance v14, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-direct {v14, v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 563
    .end local v13           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v14       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_9
    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "_id DESC"

    move-object/from16 v0, p2

    invoke-virtual {v15, v4, v0, v6, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onInit(Landroid/content/Context;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result v4

    if-nez v4, :cond_19

    .line 566
    :cond_15
    const/16 v4, 0xd0

    .line 589
    if-eqz v15, :cond_16

    .line 590
    invoke-virtual {v15}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 592
    :cond_16
    if-eqz v14, :cond_17

    .line 593
    invoke-virtual {v14}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_17
    move-object v13, v14

    .line 566
    .end local v14           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v13       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto/16 :goto_1

    .line 586
    .end local v13           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v14       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v19       #vcard:Ljava/lang/String;
    :cond_18
    :try_start_a
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onEntryCreated(Ljava/lang/String;)Z

    .line 569
    .end local v19           #vcard:Ljava/lang/String;
    :cond_19
    invoke-virtual {v15}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 570
    sget-boolean v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v4, :cond_1d

    .line 571
    check-cast p1, Ljavax/obex/ServerOperation;

    .end local p1
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 572
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 589
    :cond_1a
    if-eqz v15, :cond_1b

    .line 590
    invoke-virtual {v15}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 592
    :cond_1b
    if-eqz v14, :cond_1c

    .line 593
    invoke-virtual {v14}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_1c
    move-object v13, v14

    .line 595
    .end local v14           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v13       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto/16 :goto_2

    .line 575
    .end local v13           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v14       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local p1
    :cond_1d
    :try_start_b
    move/from16 v0, p3

    invoke-virtual {v15, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->createOneEntry(Z)Ljava/lang/String;

    move-result-object v19

    .line 576
    .restart local v19       #vcard:Ljava/lang/String;
    if-nez v19, :cond_18

    .line 577
    const-string v4, "BluetoothPbapVcardManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read a contact. Error reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 579
    const/16 v4, 0xd0

    .line 589
    if-eqz v15, :cond_1e

    .line 590
    invoke-virtual {v15}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 592
    :cond_1e
    if-eqz v14, :cond_1f

    .line 593
    invoke-virtual {v14}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_1f
    move-object v13, v14

    .line 579
    .end local v14           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v13       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto/16 :goto_1

    .line 589
    .end local v15           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .end local v19           #vcard:Ljava/lang/String;
    .restart local v3       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    :catchall_1
    move-exception v4

    .end local p1
    :goto_4
    if-eqz v3, :cond_20

    .line 590
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 592
    :cond_20
    if-eqz v13, :cond_21

    .line 593
    invoke-virtual {v13}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 589
    :cond_21
    throw v4

    .end local v3           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local v15       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local p1
    :catchall_2
    move-exception v4

    move-object v3, v15

    .end local v15           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local v3       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    goto :goto_4

    .end local v3           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .end local v13           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local p1
    .restart local v14       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v15       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    :catchall_3
    move-exception v4

    move-object v13, v14

    .end local v14           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v13       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    move-object v3, v15

    .end local v15           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local v3       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    goto :goto_4

    .line 549
    .local v3, composer:Lcom/android/vcard/VCardComposer;
    .restart local v5       #vcardType:I
    .restart local v16       #order:I
    .restart local p1
    :catchall_4
    move-exception v4

    goto/16 :goto_3

    .end local v13           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local p1
    .restart local v14       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :catchall_5
    move-exception v4

    move-object v13, v14

    .end local v14           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v13       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto/16 :goto_3
.end method

.method public final getCallHistorySize(I)I
    .locals 8
    .parameter "type"

    .prologue
    .line 178
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 179
    .local v1, myUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, selection:Ljava/lang/String;
    const/4 v7, 0x0

    .line 181
    .local v7, size:I
    const/4 v6, 0x0

    .line 183
    .local v6, callCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 185
    if-eqz v6, :cond_0

    .line 186
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 189
    :cond_0
    if-eqz v6, :cond_1

    .line 190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_1
    return v7

    .line 189
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_2
    throw v0
.end method

.method public final getContactNamesByNumber(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .parameter "phoneNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v11, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 300
    .local v6, contactCursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 302
    .local v1, uri:Landroid/net/Uri;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 303
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 310
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v3, "in_visible_group=1"

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 313
    if-eqz v6, :cond_3

    .line 314
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getDisplayNameColumnIndex()I

    move-result v10

    .line 315
    .local v10, nameIndex:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 317
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 318
    .local v9, name:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 319
    .local v7, id:J
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v2, 0x104000e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 323
    :cond_0
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 327
    .end local v7           #id:J
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #nameIndex:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 328
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 327
    :cond_1
    throw v0

    .line 305
    :cond_2
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 327
    :cond_3
    if-eqz v6, :cond_4

    .line 328
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 331
    :cond_4
    return-object v11
.end method

.method public final getContactsSize()I
    .locals 8

    .prologue
    .line 161
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 162
    .local v1, myUri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 163
    .local v7, size:I
    const/4 v6, 0x0

    .line 165
    .local v6, contactCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const-string v3, "in_visible_group=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 166
    if-eqz v6, :cond_0

    .line 167
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 170
    :cond_0
    if-eqz v6, :cond_1

    .line 171
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_1
    return v7

    .line 170
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 171
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_2
    throw v0
.end method

.method public final getOwnerPhoneNumberVcard(ZJ)Ljava/lang/String;
    .locals 5
    .parameter "vcardType21"
    .parameter "filter"

    .prologue
    .line 130
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->useProfileForOwnerVcard()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getOwnerPhoneNumberVcardFromProfile(ZJ)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, vcard:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    :goto_0
    return-object v3

    .line 138
    .end local v3           #vcard:Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;-><init>(Landroid/content/Context;)V

    .line 139
    .local v0, composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneName()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, name:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneNum()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, number:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v2, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->composeVCardForPhoneOwnNumber(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 143
    .restart local v3       #vcard:Ljava/lang/String;
    goto :goto_0
.end method

.method public final getPhonebookNameList(I)Ljava/util/ArrayList;
    .locals 11
    .parameter "orderByWhat"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v9, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 256
    .local v10, ownerName:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->useProfileForOwnerVcard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->getProfileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 259
    :cond_0
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 260
    :cond_1
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneName()Ljava/lang/String;

    move-result-object v10

    .line 262
    :cond_2
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 266
    .local v1, myUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 268
    .local v6, contactCursor:Landroid/database/Cursor;
    :try_start_0
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    if-ne p1, v0, :cond_6

    .line 270
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v3, "in_visible_group=1"

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 277
    :cond_3
    :goto_0
    if-eqz v6, :cond_7

    .line 278
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getDisplayNameColumnIndex()I

    move-result v8

    .line 279
    .local v8, nameIndex:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_7

    .line 281
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 282
    .local v7, name:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 283
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v2, 0x104000e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 285
    :cond_4
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 289
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #nameIndex:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 290
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 289
    :cond_5
    throw v0

    .line 272
    :cond_6
    :try_start_1
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    if-ne p1, v0, :cond_3

    .line 274
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v3, "in_visible_group=1"

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getDisplayNameColumn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_0

    .line 289
    :cond_7
    if-eqz v6, :cond_8

    .line 290
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_8
    return-object v9
.end method

.method public final getPhonebookSize(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 148
    packed-switch p1, :pswitch_data_0

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getCallHistorySize(I)I

    move-result v0

    .line 157
    .local v0, size:I
    :goto_0
    return v0

    .line 150
    .end local v0           #size:I
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getContactsSize()I

    move-result v0

    .line 151
    .restart local v0       #size:I
    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final loadCallHistoryList(I)Ljava/util/ArrayList;
    .locals 11
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 197
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 198
    .local v1, myUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "number"

    aput-object v0, v2, v4

    const-string v0, "name"

    aput-object v0, v2, v5

    .line 202
    .local v2, projection:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 203
    .local v7, CALLS_NUMBER_COLUMN_INDEX:I
    const/4 v6, 0x1

    .line 205
    .local v6, CALLS_NAME_COLUMN_INDEX:I
    const/4 v8, 0x0

    .line 206
    .local v8, callCursor:Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v9, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 210
    if-eqz v8, :cond_3

    .line 211
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 213
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 214
    .local v10, name:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 217
    const-string v0, "-1"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-3"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v4, 0x7f04000e

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 223
    :cond_1
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 227
    .end local v10           #name:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 228
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 227
    :cond_2
    throw v0

    :cond_3
    if-eqz v8, :cond_4

    .line 228
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_4
    return-object v9
.end method
