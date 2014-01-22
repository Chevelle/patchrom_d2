.class public Lcom/android/bluetooth/map/MapUtils/EmailUtils;
.super Ljava/lang/Object;
.source "EmailUtils.java"


# static fields
.field private static final ACCOUNT_ID_NAME_PROJECTION:[Ljava/lang/String; = null

.field private static final ACCOUNT_ID_PROJECTION:[Ljava/lang/String; = null

.field public static final ACCOUNT_KEY:Ljava/lang/String; = "accountKey"

.field public static final AUTHORITY:Ljava/lang/String; = "com.android.email.provider"

.field public static final BIT_ATTACHMENT_SIZE:I = 0x400

.field public static final BIT_DATETIME:I = 0x2

.field public static final BIT_PRIORITY:I = 0x800

.field public static final BIT_PROTECTED:I = 0x4000

.field public static final BIT_READ:I = 0x1000

.field public static final BIT_RECEPTION_STATUS:I = 0x100

.field public static final BIT_RECIPIENT_ADDRESSING:I = 0x20

.field public static final BIT_RECIPIENT_NAME:I = 0x10

.field public static final BIT_REPLYTO_ADDRESSING:I = 0x8000

.field public static final BIT_SENDER_ADDRESSING:I = 0x8

.field public static final BIT_SENDER_NAME:I = 0x4

.field public static final BIT_SENT:I = 0x2000

.field public static final BIT_SIZE:I = 0x80

.field public static final BIT_SUBJECT:I = 0x1

.field public static final BIT_TEXT:I = 0x200

.field public static final BIT_TYPE:I = 0x40

.field public static final BMW:Ljava/lang/String; = "BMW"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final EMAIL_ACCOUNT_URI:Landroid/net/Uri; = null

.field public static final EMAIL_ADDRESS:Ljava/lang/String; = "emailAddress"

.field public static final EMAIL_BOX_COLUMN_ACCOUNT_KEY:I = 0x2

.field public static final EMAIL_BOX_COLUMN_DISPLAY_NAME:I = 0x1

.field public static final EMAIL_BOX_COLUMN_RECORD_ID:I = 0x0

.field public static final EMAIL_BOX_COLUMN_TYPE:I = 0x3

.field public static final EMAIL_BOX_PROJECTION:[Ljava/lang/String; = null

.field public static final EMAIL_BOX_URI:Landroid/net/Uri; = null

.field public static final EMAIL_MESSAGE_PROJECTION:[Ljava/lang/String; = null

.field public static final EMAIL_MESSAGE_URI:Landroid/net/Uri; = null

.field public static final EMAIL_URI:Landroid/net/Uri; = null

.field public static final IS_DEFAULT:Ljava/lang/String; = "isDefault"

.field public static final MAILBOX_KEY:Ljava/lang/String; = "mailboxKey"

.field public static final MSG_COL_ACCOUNT_KEY:I = 0x2

.field public static final MSG_COL_MAILBOX_KEY:I = 0x1

.field public static final MSG_COL_RECORD_ID:I = 0x0

.field public static final RECORD_ID:Ljava/lang/String; = "_id"

.field public static final TAG:Ljava/lang/String; = "EmailUtils"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_DELETED:I = 0x6

.field public static final TYPE_DRAFT:I = 0x3

.field public static final TYPE_INBOX:I = 0x0

.field public static final TYPE_OUTBOX:I = 0x4

.field public static final TYPE_SENT:I = 0x5

.field public static final V:Z

.field public static sAccToMas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static sMasToAcc:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    .line 712
    const-string v0, "content://com.android.email.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->EMAIL_URI:Landroid/net/Uri;

    .line 713
    sget-object v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->EMAIL_URI:Landroid/net/Uri;

    const-string v1, "account"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->EMAIL_ACCOUNT_URI:Landroid/net/Uri;

    .line 714
    sget-object v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->EMAIL_URI:Landroid/net/Uri;

    const-string v1, "mailbox"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->EMAIL_BOX_URI:Landroid/net/Uri;

    .line 715
    sget-object v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->EMAIL_URI:Landroid/net/Uri;

    const-string v1, "message"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->EMAIL_MESSAGE_URI:Landroid/net/Uri;

    .line 723
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "displayName"

    aput-object v1, v0, v3

    const-string v1, "accountKey"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->EMAIL_BOX_PROJECTION:[Ljava/lang/String;

    .line 730
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "mailboxKey"

    aput-object v1, v0, v3

    const-string v1, "accountKey"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->EMAIL_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 736
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "emailAddress"

    aput-object v1, v0, v3

    const-string v1, "isDefault"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->ACCOUNT_ID_PROJECTION:[Ljava/lang/String;

    .line 739
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "emailAddress"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->ACCOUNT_ID_NAME_PROJECTION:[Ljava/lang/String;

    .line 754
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->sAccToMas:Ljava/util/HashMap;

    .line 755
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->sMasToAcc:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bldEmailBmsg(JLcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 33
    .parameter "msgHandle"
    .parameter "rsp"
    .parameter "context"
    .parameter "remoteDeviceName"

    .prologue
    .line 533
    const/16 v30, 0x0

    .line 535
    .local v30, str:Ljava/lang/String;
    const/4 v15, 0x0

    .line 537
    .local v15, cr1:Landroid/database/Cursor;
    const/16 v32, 0x0

    .line 538
    .local v32, timeStamp:Ljava/lang/String;
    const/16 v31, 0x0

    .line 539
    .local v31, subjectText:Ljava/lang/String;
    const-string v2, "content://com.android.email.provider/message"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 540
    .local v3, uri1:Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " _id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 543
    .local v5, whereClause:Ljava/lang/String;
    new-instance v12, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;

    invoke-direct {v12}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;-><init>()V

    .line 545
    .local v12, bmsg:Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 547
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 548
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 549
    const-string v2, "mailboxKey"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 550
    .local v19, folderId:I
    move/from16 v0, v19

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getContainingFolderEmail(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 551
    .local v14, containingFolder:Ljava/lang/String;
    const-string v2, "timeStamp"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 552
    const-string v2, "subject"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 555
    const-string v2, "EMAIL"

    invoke-virtual {v12, v2}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setType(Ljava/lang/String;)V

    .line 557
    const-string v2, "1.0"

    invoke-virtual {v12, v2}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBmsg_version(Ljava/lang/String;)V

    .line 558
    const-string v2, "flagRead"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 559
    const-string v2, "READ"

    invoke-virtual {v12, v2}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setStatus(Ljava/lang/String;)V

    .line 564
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "telecom/msg/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setFolder(Ljava/lang/String;)V

    .line 567
    const-string v2, "2.1"

    invoke-virtual {v12, v2}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setVcard_version(Ljava/lang/String;)V

    .line 569
    const/16 v28, 0x0

    .line 570
    .local v28, senderName:Ljava/lang/String;
    const-string v2, "fromList"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 571
    const-string v2, "\u0002"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 572
    const-string v2, "\u0002"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    .line 573
    .local v29, senderStr:[Ljava/lang/String;
    if-eqz v29, :cond_0

    move-object/from16 v0, v29

    array-length v2, v0

    if-lez v2, :cond_0

    .line 574
    const/4 v2, 0x1

    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setOriginatorVcard_name(Ljava/lang/String;)V

    .line 575
    const/4 v2, 0x0

    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setOriginatorVcard_email(Ljava/lang/String;)V

    .line 583
    .end local v29           #senderStr:[Ljava/lang/String;
    :cond_0
    :goto_1
    const/16 v26, 0x0

    .line 584
    .local v26, recipientName:Ljava/lang/String;
    const/16 v22, 0x0

    .line 585
    .local v22, multiRecepients:Ljava/lang/String;
    const-string v2, "toList"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 586
    const-string v2, "\u0002"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 587
    const-string v2, "\u0002"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 588
    .local v25, recepientStr:[Ljava/lang/String;
    if-eqz v25, :cond_1

    move-object/from16 v0, v25

    array-length v2, v0

    if-lez v2, :cond_1

    .line 589
    const/4 v2, 0x1

    aget-object v2, v25, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setRecipientVcard_name(Ljava/lang/String;)V

    .line 590
    const/4 v2, 0x0

    aget-object v2, v25, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setRecipientVcard_email(Ljava/lang/String;)V

    .line 606
    .end local v14           #containingFolder:Ljava/lang/String;
    .end local v19           #folderId:I
    .end local v22           #multiRecepients:Ljava/lang/String;
    .end local v25           #recepientStr:[Ljava/lang/String;
    .end local v26           #recipientName:Ljava/lang/String;
    .end local v28           #senderName:Ljava/lang/String;
    :cond_1
    :goto_2
    if-eqz v15, :cond_2

    .line 607
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 611
    :cond_2
    const/16 v16, 0x0

    .line 612
    .local v16, cr2:Landroid/database/Cursor;
    const-string v2, "content://com.android.email.provider/body"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 613
    .local v7, uri2:Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " messageKey = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 614
    .local v9, whereStr:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 616
    if-eqz v16, :cond_7

    .line 617
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    .local v27, sb:Ljava/lang/StringBuilder;
    const/16 v18, 0x0

    .line 620
    .local v18, emailBody:Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 621
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 622
    const-string v2, "textContent"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 623
    if-eqz v18, :cond_3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 624
    :cond_3
    const-string v2, "htmlContent"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 625
    .local v20, msgBody:Ljava/lang/String;
    if-eqz v20, :cond_4

    .line 626
    invoke-static/range {v20 .. v20}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v21

    .line 627
    .local v21, msgText:Ljava/lang/CharSequence;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 632
    .end local v20           #msgBody:Ljava/lang/String;
    .end local v21           #msgText:Ljava/lang/CharSequence;
    :cond_4
    new-instance v17, Ljava/util/Date;

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    move-object/from16 v0, v17

    invoke-direct {v0, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 633
    .local v17, date:Ljava/util/Date;
    const-string v2, "From:"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->getOriginatorVcard_email()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    const-string v2, "To:"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->getRecipientVcard_email()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    if-eqz p4, :cond_d

    const-string v2, "BMW"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 636
    const-string v2, "Mime-Version: 1.0"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    const-string v2, "Content-Type: text/plain; charset=\"UTF-8\""

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    const-string v2, "Content-Transfer-Encoding: 8bit"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    const-string v2, "Date:"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "EEE, dd MMM yyyy HH:mm:ss Z"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    const-string v2, "\r\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    const-string v2, "Subject:"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    :goto_3
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_msg(Ljava/lang/String;)V

    .line 674
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    invoke-virtual {v12, v2}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_length(I)V

    .line 676
    sget-boolean v2, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v2, :cond_5

    .line 677
    const-string v2, "EmailUtils"

    const-string v4, "bMessageEmail test\n"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const-string v2, "EmailUtils"

    const-string v4, "=======================\n\n"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_5
    invoke-static {v12}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->toBmessageEmail(Lcom/android/bluetooth/map/MapUtils/BmessageConsts;)Ljava/lang/String;

    move-result-object v30

    .line 681
    sget-boolean v2, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v2, :cond_6

    .line 682
    const-string v2, "EmailUtils"

    move-object/from16 v0, v30

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const-string v2, "EmailUtils"

    const-string v4, "\n\n"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 687
    .end local v17           #date:Ljava/util/Date;
    .end local v18           #emailBody:Ljava/lang/String;
    .end local v27           #sb:Ljava/lang/StringBuilder;
    :cond_7
    return-object v30

    .line 561
    .end local v7           #uri2:Landroid/net/Uri;
    .end local v9           #whereStr:Ljava/lang/String;
    .end local v16           #cr2:Landroid/database/Cursor;
    .restart local v14       #containingFolder:Ljava/lang/String;
    .restart local v19       #folderId:I
    :cond_8
    const-string v2, "UNREAD"

    invoke-virtual {v12, v2}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 579
    .restart local v28       #senderName:Ljava/lang/String;
    :cond_9
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setOriginatorVcard_name(Ljava/lang/String;)V

    .line 580
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setOriginatorVcard_email(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 593
    .restart local v22       #multiRecepients:Ljava/lang/String;
    .restart local v26       #recipientName:Ljava/lang/String;
    :cond_a
    const-string v2, "\u0001"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 594
    const/4 v2, 0x1

    const/16 v4, 0x3b

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v22

    .line 595
    sget-boolean v2, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v2, :cond_b

    .line 596
    const-string v2, "EmailUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ::Recepient name :: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_b
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setRecipientVcard_name(Ljava/lang/String;)V

    .line 599
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setRecipientVcard_email(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 602
    :cond_c
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setRecipientVcard_name(Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setRecipientVcard_email(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 646
    .end local v14           #containingFolder:Ljava/lang/String;
    .end local v19           #folderId:I
    .end local v22           #multiRecepients:Ljava/lang/String;
    .end local v26           #recipientName:Ljava/lang/String;
    .end local v28           #senderName:Ljava/lang/String;
    .restart local v7       #uri2:Landroid/net/Uri;
    .restart local v9       #whereStr:Ljava/lang/String;
    .restart local v16       #cr2:Landroid/database/Cursor;
    .restart local v17       #date:Ljava/util/Date;
    .restart local v18       #emailBody:Ljava/lang/String;
    .restart local v27       #sb:Ljava/lang/StringBuilder;
    :cond_d
    new-instance v23, Ljava/util/Random;

    invoke-direct/range {v23 .. v23}, Ljava/util/Random;-><init>()V

    .line 647
    .local v23, randomGenerator:Ljava/util/Random;
    const/16 v2, 0x3e8

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v24

    .line 648
    .local v24, randomInt:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MessageBoundary."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 649
    .local v13, boundary:Ljava/lang/String;
    if-eqz v18, :cond_e

    .line 650
    :goto_4
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 651
    const/16 v2, 0x3e8

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v24

    .line 652
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MessageBoundary."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    .line 655
    :cond_e
    const-string v2, "Date: "

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    const-string v2, "Subject:"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    const-string v2, "Mime-Version: 1.0"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Type: multipart/mixed; boundary=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    const-string v2, "Content-Transfer-Encoding: 8bit"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    const-string v2, "MIME Message"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    const-string v2, "Content-Type: text/plain; charset=\"UTF-8\""

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    const-string v2, "Content-Transfer-Encoding: 8bit"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    const-string v2, "Content-Disposition:inline"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "--"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3
.end method

.method public static bldEmailMsgLstItem(Landroid/content/Context;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMasAppParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    .locals 23
    .parameter "context"
    .parameter "folderName"
    .parameter "appParams"
    .parameter "subject"
    .parameter "timestamp"
    .parameter "senderName"
    .parameter "senderAddressing"
    .parameter "recipientName"
    .parameter "recipientAddressing"
    .parameter "msgId"
    .parameter "readStatus"
    .parameter "replyToStr"
    .parameter "offset"

    .prologue
    .line 291
    new-instance v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;

    invoke-direct {v4}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;-><init>()V

    .line 292
    .local v4, emailMsg:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    invoke-static/range {p9 .. p9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    add-long v19, v19, p12

    move-wide/from16 v0, v19

    invoke-virtual {v4, v0, v1}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setMsg_handle(J)V

    .line 294
    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    .line 295
    .local v18, time:Landroid/text/format/Time;
    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Landroid/text/format/Time;->set(J)V

    .line 297
    invoke-virtual/range {v18 .. v18}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0xf

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, datetimeStr:Ljava/lang/String;
    iget-object v0, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->msgInfo:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts$MsgInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts$MsgInfo;->setDateTime(Ljava/lang/String;)V

    .line 301
    sget-boolean v19, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v19, :cond_0

    .line 302
    const-string v19, "EmailUtils"

    const-string v20, "bldEmailMsgLstItem"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v19, "EmailUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Subject: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v19, "EmailUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "timestamp: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string v19, "EmailUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "senderName: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v19, "EmailUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "senderAddressing: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v19, "EmailUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "recipientName: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v19, "EmailUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "recipientAddressing: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v19, "EmailUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "msgId: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string v19, "EmailUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "readStatus: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v19, "EmailUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "replyToStr: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v19, "EmailUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "offset: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, p12

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x1

    and-long v19, v19, v21

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_3

    .line 317
    sget-boolean v19, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v19, :cond_1

    .line 318
    const-string v19, "EmailUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "bldEmailMsgLstItem :: Subject "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_1
    if-eqz p3, :cond_a

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->SubjectLength:S

    move/from16 v19, v0

    if-lez v19, :cond_a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->SubjectLength:S

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_a

    .line 322
    const/16 v19, 0x0

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->SubjectLength:S

    move/from16 v20, v0

    move-object/from16 v0, p3

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 328
    :cond_2
    :goto_0
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sendSubject:Z

    .line 331
    :cond_3
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x2

    and-long v19, v19, v21

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_4

    .line 334
    invoke-virtual {v4, v3}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setDatetime(Ljava/lang/String;)V

    .line 337
    :cond_4
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x4

    and-long v19, v19, v21

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_6

    .line 338
    if-eqz p5, :cond_6

    .line 339
    const-string v19, "\u0002"

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 340
    const-string v19, "\u0002"

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 341
    .local v17, senderStr:[Ljava/lang/String;
    if-eqz v17, :cond_6

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_6

    .line 342
    sget-boolean v19, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v19, :cond_5

    .line 343
    const-string v19, "EmailUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " ::Sender name split String 0:: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v21, v17, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "::Sender name split String 1:: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v21, v17, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_5
    const/16 v19, 0x1

    aget-object v19, v17, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSender_name(Ljava/lang/String;)V

    .line 355
    .end local v17           #senderStr:[Ljava/lang/String;
    :cond_6
    :goto_1
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x8

    and-long v19, v19, v21

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_8

    .line 356
    if-eqz p6, :cond_8

    .line 357
    const-string v19, "\u0002"

    move-object/from16 v0, p6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 358
    const-string v19, "\u0002"

    move-object/from16 v0, p6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 359
    .local v16, senderAddrStr:[Ljava/lang/String;
    if-eqz v16, :cond_8

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_8

    .line 360
    sget-boolean v19, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v19, :cond_7

    .line 361
    const-string v19, "EmailUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " ::Sender Addressing split String 0:: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v21, v16, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "::Sender Addressing split String 1:: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v21, v16, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_7
    const/16 v19, 0x0

    aget-object v19, v16, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSender_addressing(Ljava/lang/String;)V

    .line 373
    .end local v16           #senderAddrStr:[Ljava/lang/String;
    :cond_8
    :goto_2
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x10

    and-long v19, v19, v21

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_10

    .line 374
    const-string v8, ""

    .line 375
    .local v8, multiRecepients:Ljava/lang/String;
    if-eqz p7, :cond_10

    .line 376
    const-string v19, "\u0001"

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 377
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v14, recipientNameArr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v12, recipientEmailArr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v19, "\u0001"

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 380
    .local v9, multiRecipientStr:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v5, v0, :cond_d

    .line 381
    aget-object v19, v9, v5

    const-string v20, "\u0002"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 382
    aget-object v19, v9, v5

    const-string v20, "\u0002"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 383
    .local v11, recepientStr:[Ljava/lang/String;
    const/16 v19, 0x1

    aget-object v19, v11, v19

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    const/16 v19, 0x0

    aget-object v19, v11, v19

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    .end local v11           #recepientStr:[Ljava/lang/String;
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 325
    .end local v5           #i:I
    .end local v8           #multiRecepients:Ljava/lang/String;
    .end local v9           #multiRecipientStr:[Ljava/lang/String;
    .end local v12           #recipientEmailArr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v14           #recipientNameArr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    if-eqz p3, :cond_2

    .line 326
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSubject(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 350
    :cond_b
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSender_name(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 368
    :cond_c
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSender_addressing(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 387
    .restart local v5       #i:I
    .restart local v8       #multiRecepients:Ljava/lang/String;
    .restart local v9       #multiRecipientStr:[Ljava/lang/String;
    .restart local v12       #recipientEmailArr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14       #recipientNameArr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_d
    if-eqz v14, :cond_f

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_f

    .line 388
    const/4 v5, 0x0

    :goto_4
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v5, v0, :cond_f

    .line 389
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ge v5, v0, :cond_e

    .line 390
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 388
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 393
    :cond_e
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .line 397
    :cond_f
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setRecepient_name(Ljava/lang/String;)V

    .line 415
    .end local v5           #i:I
    .end local v8           #multiRecepients:Ljava/lang/String;
    .end local v9           #multiRecipientStr:[Ljava/lang/String;
    .end local v12           #recipientEmailArr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v14           #recipientNameArr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_10
    :goto_6
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x20

    and-long v19, v19, v21

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_18

    .line 416
    const-string v7, ""

    .line 418
    .local v7, multiRecepientAddrs:Ljava/lang/String;
    if-eqz p8, :cond_18

    .line 419
    const-string v19, "\u0001"

    move-object/from16 v0, p8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_27

    .line 420
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .restart local v14       #recipientNameArr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .restart local v12       #recipientEmailArr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p7, :cond_15

    .line 423
    const-string v19, "\u0001"

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 424
    .restart local v9       #multiRecipientStr:[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_7
    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v5, v0, :cond_15

    .line 425
    aget-object v19, v9, v5

    const-string v20, "\u0002"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 426
    aget-object v19, v9, v5

    const-string v20, "\u0002"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 427
    .restart local v11       #recepientStr:[Ljava/lang/String;
    const/16 v19, 0x1

    aget-object v19, v11, v19

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    const/16 v19, 0x0

    aget-object v19, v11, v19

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    .end local v11           #recepientStr:[Ljava/lang/String;
    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 399
    .end local v5           #i:I
    .end local v7           #multiRecepientAddrs:Ljava/lang/String;
    .end local v9           #multiRecipientStr:[Ljava/lang/String;
    .end local v12           #recipientEmailArr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v14           #recipientNameArr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8       #multiRecepients:Ljava/lang/String;
    :cond_12
    const-string v19, "\u0002"

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 400
    const-string v19, "\u0002"

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 401
    .restart local v11       #recepientStr:[Ljava/lang/String;
    if-eqz v11, :cond_10

    array-length v0, v11

    move/from16 v19, v0

    if-lez v19, :cond_10

    .line 402
    sget-boolean v19, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v19, :cond_13

    .line 403
    const-string v19, "EmailUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " ::Recepient name split String 0:: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v21, v11, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "::Recepient name split String 1:: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v21, v11, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_13
    const/16 v19, 0x1

    aget-object v19, v11, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setRecepient_name(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 410
    .end local v11           #recepientStr:[Ljava/lang/String;
    :cond_14
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setRecepient_name(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 432
    .end local v8           #multiRecepients:Ljava/lang/String;
    .restart local v7       #multiRecepientAddrs:Ljava/lang/String;
    .restart local v12       #recipientEmailArr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14       #recipientNameArr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_15
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    .line 433
    .local v13, recipientEmailArrSize:I
    if-lez v13, :cond_17

    .line 434
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_8
    if-ge v5, v13, :cond_17

    .line 435
    add-int/lit8 v19, v13, -0x1

    move/from16 v0, v19

    if-ge v5, v0, :cond_16

    .line 436
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 434
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 438
    :cond_16
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    .line 442
    .end local v5           #i:I
    :cond_17
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setRecepient_addressing(Ljava/lang/String;)V

    .line 443
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSendRecipient_addressing(Z)V

    .line 461
    .end local v7           #multiRecepientAddrs:Ljava/lang/String;
    .end local v12           #recipientEmailArr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v13           #recipientEmailArrSize:I
    .end local v14           #recipientNameArr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_18
    :goto_a
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x40

    and-long v19, v19, v21

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_19

    .line 462
    const-string v19, "EMAIL"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setType(Ljava/lang/String;)V

    .line 465
    :cond_19
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x80

    and-long v19, v19, v21

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_1a

    .line 466
    const/4 v6, 0x0

    .line 467
    .local v6, msgSize:I
    invoke-static/range {p9 .. p9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getMessageSizeEmail(JLandroid/content/Context;)I

    move-result v6

    .line 468
    invoke-virtual {v4, v6}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSize(I)V

    .line 471
    .end local v6           #msgSize:I
    :cond_1a
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x100

    and-long v19, v19, v21

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_1b

    .line 472
    const-string v19, "complete"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setReception_status(Ljava/lang/String;)V

    .line 475
    :cond_1b
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x200

    and-long v19, v19, v21

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_1c

    .line 477
    const-string v19, "yes"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setContains_text(Ljava/lang/String;)V

    .line 480
    :cond_1c
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x400

    and-long v19, v19, v21

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_1d

    .line 481
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setAttachment_size(I)V

    .line 484
    :cond_1d
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x800

    and-long v19, v19, v21

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_1e

    .line 486
    const-string v19, "no"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setPriority(Ljava/lang/String;)V

    .line 489
    :cond_1e
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x1000

    and-long v19, v19, v21

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_20

    .line 490
    sget-boolean v19, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v19, :cond_1f

    .line 491
    const-string v19, "EmailUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " ::Read Status:: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_1f
    const-string v19, "1"

    move-object/from16 v0, p10

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2a

    .line 494
    const-string v19, "yes"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setRead(Ljava/lang/String;)V

    .line 500
    :cond_20
    :goto_b
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x2000

    and-long v19, v19, v21

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_22

    .line 502
    const-string v19, "sent"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_21

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "SENT"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2b

    .line 503
    :cond_21
    const-string v19, "yes"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSent(Ljava/lang/String;)V

    .line 509
    :cond_22
    :goto_c
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x4000

    and-long v19, v19, v21

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_23

    .line 510
    const-string v19, "no"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setMsg_protected(Ljava/lang/String;)V

    .line 513
    :cond_23
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    move-wide/from16 v19, v0

    const-wide/32 v21, 0x8000

    and-long v19, v19, v21

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_26

    .line 515
    sget-boolean v19, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v19, :cond_24

    .line 516
    const-string v19, "EmailUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " ::Reply To addressing:: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_24
    if-eqz p11, :cond_2c

    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_2c

    .line 519
    const-string v19, "\u0002"

    move-object/from16 v0, p11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_25

    .line 520
    const-string v19, "\u0002"

    move-object/from16 v0, p11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 521
    .local v15, replyToStrArr:[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object p11, v15, v19

    .line 523
    .end local v15           #replyToStrArr:[Ljava/lang/String;
    :cond_25
    move-object/from16 v0, p11

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setReplyTo_addressing(Ljava/lang/String;)V

    .line 528
    :cond_26
    :goto_d
    return-object v4

    .line 444
    .restart local v7       #multiRecepientAddrs:Ljava/lang/String;
    :cond_27
    const-string v19, "\u0002"

    move-object/from16 v0, p8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_29

    .line 445
    const-string v19, "\u0002"

    move-object/from16 v0, p8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 446
    .local v10, recepientAddrStr:[Ljava/lang/String;
    if-eqz v10, :cond_18

    array-length v0, v10

    move/from16 v19, v0

    if-lez v19, :cond_18

    .line 447
    sget-boolean v19, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v19, :cond_28

    .line 448
    const-string v19, "EmailUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " ::Recepient addressing split String 0:: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v21, v10, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "::Recepient addressing split String 1:: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v21, v10, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_28
    const/16 v19, 0x0

    aget-object v19, v10, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setRecepient_addressing(Ljava/lang/String;)V

    .line 452
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSendRecipient_addressing(Z)V

    goto/16 :goto_a

    .line 455
    .end local v10           #recepientAddrStr:[Ljava/lang/String;
    :cond_29
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setRecepient_addressing(Ljava/lang/String;)V

    .line 456
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSendRecipient_addressing(Z)V

    goto/16 :goto_a

    .line 496
    .end local v7           #multiRecepientAddrs:Ljava/lang/String;
    :cond_2a
    const-string v19, "no"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setRead(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 505
    :cond_2b
    const-string v19, "no"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSent(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 525
    :cond_2c
    invoke-virtual {v4}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->getSender_addressing()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setReplyTo_addressing(Ljava/lang/String;)V

    goto/16 :goto_d
.end method

.method public static clearMapTable()V
    .locals 1

    .prologue
    .line 758
    sget-object v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->sAccToMas:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 759
    sget-object v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->sMasToAcc:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 760
    return-void
.end method

.method public static countEmailAccount(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 801
    sget-object v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->EMAIL_ACCOUNT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, v1, v1}, Lcom/android/bluetooth/map/MapUtils/SqlHelper;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static folderListEmail(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, folderList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 78
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "displayName"

    aput-object v0, v2, v9

    .line 79
    .local v2, projection:[Ljava/lang/String;
    const-string v0, "content://com.android.email.provider/mailbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 80
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 82
    .local v6, cr:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 84
    :cond_0
    sget-boolean v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v0, :cond_1

    .line 85
    const-string v0, "EmailUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Column Name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_1
    const/4 v7, 0x0

    .line 88
    .local v7, folderFlag:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 89
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 90
    const/4 v7, 0x1

    .line 94
    :cond_2
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Drafts"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    const/4 v7, 0x1

    .line 97
    :cond_3
    if-nez v7, :cond_4

    .line 98
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    .end local v7           #folderFlag:I
    .end local v8           #i:I
    :cond_5
    sget-boolean v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v0, :cond_6

    .line 104
    const-string v0, "EmailUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Folder Listing of SMS,MMS and EMAIL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_6
    if-eqz v6, :cond_7

    .line 107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 109
    :cond_7
    return-object p0

    .line 88
    .restart local v7       #folderFlag:I
    .restart local v8       #i:I
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public static getAccountId(I)J
    .locals 3
    .parameter "masId"

    .prologue
    .line 774
    sget-object v1, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->sMasToAcc:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 775
    .local v0, accountId:Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public static getConditionString(Ljava/lang/String;Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMasAppParams;I)Ljava/lang/String;
    .locals 11
    .parameter "folderName"
    .parameter "context"
    .parameter "appParams"
    .parameter "masId"

    .prologue
    const/16 v10, 0x2a

    const/16 v9, 0x25

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 189
    invoke-static {p0, p1, p3}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getWhereIsQueryForTypeEmail(Ljava/lang/String;Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, whereClauseEmail:Ljava/lang/String;
    iget-byte v4, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterReadStatus:B

    if-eqz v4, :cond_4

    .line 193
    iget-byte v4, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterReadStatus:B

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 194
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " AND "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 197
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " flagRead = 0 "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 199
    :cond_1
    sget-boolean v4, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v4, :cond_2

    .line 200
    const-string v4, "EmailUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Filter Read Status Value:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-byte v8, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterReadStatus:B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v4, "EmailUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Filter Read Status Condition Value:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-byte v8, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterReadStatus:B

    and-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_2
    iget-byte v4, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterReadStatus:B

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    .line 204
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " AND "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 207
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " flagRead = 1 "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 210
    :cond_4
    sget-boolean v4, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v4, :cond_5

    .line 211
    const-string v4, "EmailUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Filter Recipient Value:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v7, "EmailUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Filter Recipient Condition 1 :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    if-eqz v4, :cond_11

    move v4, v5

    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 214
    const-string v4, "EmailUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Filter Recipient Condition 2 :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_12

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_5
    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    if-eqz v4, :cond_8

    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 220
    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 221
    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    invoke-virtual {v4, v10, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    .line 223
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 226
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " toList LIKE \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 231
    :cond_8
    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    if-eqz v4, :cond_b

    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b

    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 234
    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 235
    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    invoke-virtual {v4, v10, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    .line 238
    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_a

    .line 239
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 241
    :cond_a
    iget-object v1, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    .line 242
    .local v1, str1:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "fromList LIKE \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 244
    .end local v1           #str1:Ljava/lang/String;
    :cond_b
    sget-boolean v4, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v4, :cond_c

    .line 245
    const-string v4, "EmailUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "whereClauseEmail :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_c
    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    if-eqz v4, :cond_e

    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_e

    .line 251
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 254
    .local v2, time:Landroid/text/format/Time;
    :try_start_0
    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 255
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_d

    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 258
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "timeStamp >= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 267
    .end local v2           #time:Landroid/text/format/Time;
    :cond_e
    :goto_2
    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    if-eqz v4, :cond_10

    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_10

    .line 269
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 271
    .restart local v2       #time:Landroid/text/format/Time;
    :try_start_1
    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 272
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_f

    .line 273
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 275
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "timeStamp < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/util/TimeFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 282
    .end local v2           #time:Landroid/text/format/Time;
    :cond_10
    :goto_3
    return-object v3

    :cond_11
    move v4, v6

    .line 212
    goto/16 :goto_0

    :cond_12
    move v5, v6

    .line 214
    goto/16 :goto_1

    .line 260
    .restart local v2       #time:Landroid/text/format/Time;
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Landroid/util/TimeFormatException;
    const-string v4, "EmailUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad formatted FilterPeriodBegin, Ignore"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 276
    .end local v0           #e:Landroid/util/TimeFormatException;
    :catch_1
    move-exception v0

    .line 277
    .restart local v0       #e:Landroid/util/TimeFormatException;
    const-string v4, "EmailUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad formatted FilterPeriodEnd, Ignore"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static getContainingFolderEmail(ILandroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "folderId"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 696
    const/4 v7, 0x0

    .line 697
    .local v7, folderName:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 698
    .local v3, whereClause:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.email.provider/mailbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 701
    .local v6, cr:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 702
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 703
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 704
    const-string v0, "displayName"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 706
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 708
    :cond_1
    return-object v7
.end method

.method public static getDefaultEmailAccountId(Landroid/content/Context;)J
    .locals 5
    .parameter "context"

    .prologue
    .line 898
    sget-boolean v2, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v2, :cond_0

    const-string v2, "EmailUtils"

    const-string v3, "getDefaultEmailAccountId()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_0
    const-string v2, "isDefault=1"

    invoke-static {p0, v2}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getEmailAccountId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 900
    .local v0, id:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 901
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getEmailAccountId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 903
    :cond_1
    sget-boolean v2, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v2, :cond_2

    const-string v2, "EmailUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_2
    return-wide v0
.end method

.method public static getEmailAccountDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "where"

    .prologue
    const/4 v4, 0x0

    .line 877
    sget-boolean v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "EmailUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEmailAccountIdName("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_0
    const/4 v7, 0x0

    .line 879
    .local v7, displayName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->EMAIL_ACCOUNT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->ACCOUNT_ID_NAME_PROJECTION:[Ljava/lang/String;

    move-object v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 881
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 882
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 883
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 885
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 887
    :cond_2
    sget-boolean v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v0, :cond_3

    const-string v0, "EmailUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_3
    return-object v7
.end method

.method public static getEmailAccountId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 9
    .parameter "context"
    .parameter "where"

    .prologue
    const/4 v4, 0x0

    .line 835
    sget-boolean v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "EmailUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEmailAccountId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_0
    const-wide/16 v7, -0x1

    .line 837
    .local v7, id:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->EMAIL_ACCOUNT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->ACCOUNT_ID_PROJECTION:[Ljava/lang/String;

    move-object v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 839
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 840
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 841
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 843
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 845
    :cond_2
    sget-boolean v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v0, :cond_3

    const-string v0, "EmailUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_3
    return-wide v7
.end method

.method public static getEmailAccountIdEmail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "where"

    .prologue
    const/4 v4, 0x0

    .line 856
    sget-boolean v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "EmailUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEmailAccountIdName("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_0
    const/4 v7, 0x0

    .line 858
    .local v7, idEmail:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->EMAIL_ACCOUNT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->ACCOUNT_ID_NAME_PROJECTION:[Ljava/lang/String;

    move-object v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 860
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 861
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 862
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 864
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 866
    :cond_2
    sget-boolean v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v0, :cond_3

    const-string v0, "EmailUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "idEmail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_3
    return-object v7
.end method

.method public static getEmailAccountIdList(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 908
    sget-boolean v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "EmailUtils"

    const-string v1, "getEmailAccountIdList()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_0
    const-wide/16 v7, -0x1

    .line 910
    .local v7, id:J
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 911
    .local v9, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->EMAIL_ACCOUNT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->ACCOUNT_ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 913
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 914
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 916
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 917
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    sget-boolean v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v0, :cond_2

    const-string v0, "EmailUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 921
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 923
    :cond_4
    return-object v9
.end method

.method public static getEmailFolderList(Landroid/content/Context;J)Ljava/util/List;
    .locals 5
    .parameter "context"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 933
    sget-boolean v1, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v1, :cond_0

    const-string v1, "EmailUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEmailFolderList: id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 935
    .local v0, sb:Ljava/lang/StringBuilder;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    .line 936
    const-string v1, "accountKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 940
    :cond_1
    sget-object v1, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->EMAIL_BOX_URI:Landroid/net/Uri;

    const-string v2, "displayName"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/MapUtils/SqlHelper;->getListForColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getFolderForType(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "id"
    .parameter "type"

    .prologue
    .line 951
    sget-boolean v1, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v1, :cond_0

    const-string v1, "EmailUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFolderForType: id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 953
    .local v0, sb:Ljava/lang/StringBuilder;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    .line 954
    const-string v1, "accountKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 957
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    :cond_1
    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 962
    sget-object v1, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->EMAIL_BOX_URI:Landroid/net/Uri;

    const-string v2, "displayName"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/MapUtils/SqlHelper;->getFirstValueForColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFolderName([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "splitStringsEmail"

    .prologue
    const/4 v4, 0x2

    .line 172
    sget-boolean v1, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v1, :cond_0

    .line 173
    const-string v1, "EmailUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":: Split Strings Array in getFolderName ::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    aget-object v1, p0, v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[Gmail]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    aget-object v1, p0, v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Gmail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 176
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, folderName:Ljava/lang/String;
    :goto_0
    sget-boolean v1, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v1, :cond_2

    .line 182
    const-string v1, "EmailUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folderName :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_2
    return-object v0

    .line 179
    .end local v0           #folderName:Ljava/lang/String;
    :cond_3
    aget-object v0, p0, v4

    .restart local v0       #folderName:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getFoldersForType(Landroid/content/Context;JI)Ljava/util/List;
    .locals 5
    .parameter "context"
    .parameter "id"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 973
    sget-boolean v1, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v1, :cond_0

    const-string v1, "EmailUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFolderForType: id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 975
    .local v0, sb:Ljava/lang/StringBuilder;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    .line 976
    const-string v1, "accountKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 979
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    :cond_1
    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 984
    sget-object v1, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->EMAIL_BOX_URI:Landroid/net/Uri;

    const-string v2, "displayName"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/MapUtils/SqlHelper;->getListForColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getMasId(J)I
    .locals 3
    .parameter "accountId"

    .prologue
    .line 779
    sget-object v1, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->sAccToMas:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 780
    .local v0, masId:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getMessageSizeEmail(JLandroid/content/Context;)I
    .locals 10
    .parameter "messageId"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 139
    sget-boolean v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "EmailUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":: Message Id in getMessageSizeEmail ::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    const/4 v8, 0x0

    .line 144
    .local v8, msgSize:I
    const-string v0, "content://com.android.email.provider/body"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 146
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "messageKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 149
    .local v6, cr:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    const-string v0, "textContent"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 152
    .local v9, textContent:Ljava/lang/String;
    const-string v0, "htmlContent"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 153
    .local v7, htmlContent:Ljava/lang/String;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    .line 164
    .end local v7           #htmlContent:Ljava/lang/String;
    .end local v9           #textContent:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    .line 165
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 167
    :cond_2
    return v8

    .line 156
    .restart local v7       #htmlContent:Ljava/lang/String;
    .restart local v9       #textContent:Ljava/lang/String;
    :cond_3
    if-nez v9, :cond_1

    .line 157
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    goto :goto_0
.end method

.method public static getTypeForFolder(Landroid/content/Context;JLjava/lang/String;)I
    .locals 5
    .parameter "context"
    .parameter "id"
    .parameter "folderName"

    .prologue
    .line 988
    sget-boolean v1, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->V:Z

    if-eqz v1, :cond_0

    const-string v1, "EmailUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTypeForFolder: id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", folderName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 990
    .local v0, sb:Ljava/lang/StringBuilder;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    .line 991
    const-string v1, "accountKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 994
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    :cond_1
    const-string v1, "displayName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    sget-object v1, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->EMAIL_BOX_URI:Landroid/net/Uri;

    const-string v2, "type"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/MapUtils/SqlHelper;->getFirstIntForColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getWhereIsQueryForTypeEmail(Ljava/lang/String;Landroid/content/Context;I)Ljava/lang/String;
    .locals 10
    .parameter "folder"
    .parameter "context"
    .parameter "masId"

    .prologue
    const/4 v2, 0x0

    .line 113
    const-string v8, "mailboxKey = -1"

    .line 115
    .local v8, query:Ljava/lang/String;
    const-string v0, "content://com.android.email.provider/mailbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 116
    .local v1, uri:Landroid/net/Uri;
    if-nez p0, :cond_0

    move-object v9, v8

    .line 135
    .end local v8           #query:Ljava/lang/String;
    .local v9, query:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 119
    .end local v9           #query:Ljava/lang/String;
    .restart local v8       #query:Ljava/lang/String;
    :cond_0
    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    const-string v0, "\'"

    const-string v3, "\'\'"

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 122
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(accountKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getAccountId(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") AND (UPPER(displayName) = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 125
    .local v6, cr:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 126
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 129
    .local v7, folderId:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mailboxKey = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 133
    .end local v7           #folderId:Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v9, v8

    .line 135
    .end local v8           #query:Ljava/lang/String;
    .restart local v9       #query:Ljava/lang/String;
    goto :goto_0
.end method

.method public static hasEmailAccount(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 810
    sget-object v1, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->EMAIL_ACCOUNT_URI:Landroid/net/Uri;

    invoke-static {p0, v1, v2, v2}, Lcom/android/bluetooth/map/MapUtils/SqlHelper;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 811
    .local v0, numAccounts:I
    if-lez v0, :cond_0

    .line 812
    const/4 v1, 0x1

    .line 814
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasEmailAccount(Landroid/content/Context;J)Z
    .locals 4
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 819
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 820
    .local v1, where:Ljava/lang/String;
    sget-object v2, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->EMAIL_ACCOUNT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3}, Lcom/android/bluetooth/map/MapUtils/SqlHelper;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 821
    .local v0, numAccounts:I
    if-lez v0, :cond_0

    .line 822
    const/4 v2, 0x1

    .line 824
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static removeMasIdIfNotPresent(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 784
    .local p0, accountIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    sget-object v8, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->sMasToAcc:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    .line 785
    .local v6, oldList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 786
    .local v7, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 787
    .local v4, oldId:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {p0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 789
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 792
    .end local v4           #oldId:J
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 793
    .local v0, accountId:J
    sget-object v8, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->sAccToMas:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 794
    .local v3, masId:Ljava/lang/Integer;
    if-eqz v3, :cond_2

    .line 795
    sget-object v8, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->sMasToAcc:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 798
    .end local v0           #accountId:J
    .end local v3           #masId:Ljava/lang/Integer;
    :cond_3
    return-void
.end method

.method public static updateMapTable(JI)V
    .locals 3
    .parameter "accountId"
    .parameter "masId"

    .prologue
    .line 763
    sget-object v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->sAccToMas:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    sget-object v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->sAccToMas:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    :cond_0
    sget-object v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->sMasToAcc:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    sget-object v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->sMasToAcc:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    :cond_1
    sget-object v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->sAccToMas:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    sget-object v0, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->sMasToAcc:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    return-void
.end method
