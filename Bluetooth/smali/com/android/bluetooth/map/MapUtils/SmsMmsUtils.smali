.class public Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils;
.super Ljava/lang/Object;
.source "SmsMmsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;
    }
.end annotation


# static fields
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

.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final DELETED_THREAD_ID:I = -0x1

.field public static final DRAFT:Ljava/lang/String; = "draft"

.field public static final DRAFTS:Ljava/lang/String; = "drafts"

.field static final EMAIL_DATA_COLUMN_INDEX:I = 0x0

.field public static final FAILED:Ljava/lang/String; = "failed"

.field public static final FORLDER_LIST_SMS_MMS:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORLDER_LIST_SMS_MMS_MNS:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INBOX:Ljava/lang/String; = "inbox"

.field public static final MMS_URI:Landroid/net/Uri; = null

.field public static final OUTBOX:Ljava/lang/String; = "outbox"

.field static final PHONELOOKUP_DISPLAY_NAME_COLUMN_INDEX:I = 0x2

.field static final PHONELOOKUP_ID_COLUMN_INDEX:I = 0x0

.field static final PHONELOOKUP_LOOKUP_KEY_COLUMN_INDEX:I = 0x1

.field public static final QUEUED:Ljava/lang/String; = "queued"

.field public static final SENT:Ljava/lang/String; = "sent"

.field public static final SMS_URI:Landroid/net/Uri; = null

.field public static final TAG:Ljava/lang/String; = "SmsMmsUtils"

.field public static final THREAD_ID_COLUMN:[Ljava/lang/String; = null

.field public static final UNDELIVERED:Ljava/lang/String; = "undelivered"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils;->FORLDER_LIST_SMS_MMS:Ljava/util/ArrayList;

    .line 94
    sget-object v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils;->FORLDER_LIST_SMS_MMS:Ljava/util/ArrayList;

    const-string v1, "inbox"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils;->FORLDER_LIST_SMS_MMS:Ljava/util/ArrayList;

    const-string v1, "outbox"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils;->FORLDER_LIST_SMS_MMS:Ljava/util/ArrayList;

    const-string v1, "sent"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils;->FORLDER_LIST_SMS_MMS:Ljava/util/ArrayList;

    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils;->FORLDER_LIST_SMS_MMS:Ljava/util/ArrayList;

    const-string v1, "draft"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils;->FORLDER_LIST_SMS_MMS_MNS:Ljava/util/ArrayList;

    .line 101
    sget-object v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils;->FORLDER_LIST_SMS_MMS_MNS:Ljava/util/ArrayList;

    const-string v1, "inbox"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils;->FORLDER_LIST_SMS_MMS_MNS:Ljava/util/ArrayList;

    const-string v1, "outbox"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils;->FORLDER_LIST_SMS_MMS_MNS:Ljava/util/ArrayList;

    const-string v1, "sent"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils;->FORLDER_LIST_SMS_MMS_MNS:Ljava/util/ArrayList;

    const-string v1, "draft"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils;->FORLDER_LIST_SMS_MMS_MNS:Ljava/util/ArrayList;

    const-string v1, "failed"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils;->FORLDER_LIST_SMS_MMS_MNS:Ljava/util/ArrayList;

    const-string v1, "queued"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils;->SMS_URI:Landroid/net/Uri;

    .line 209
    const-string v0, "content://mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils;->MMS_URI:Landroid/net/Uri;

    .line 210
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils;->THREAD_ID_COLUMN:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public static getConditionStringSms(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Ljava/lang/String;
    .locals 6
    .parameter "folderName"
    .parameter "appParams"

    .prologue
    .line 155
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils;->getWhereIsQueryForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, whereClause:Ljava/lang/String;
    iget-byte v3, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterReadStatus:B

    if-eqz v3, :cond_3

    .line 159
    iget-byte v3, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterReadStatus:B

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 160
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
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

    .line 165
    :cond_1
    iget-byte v3, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterReadStatus:B

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 166
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
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

    .line 175
    :cond_3
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 177
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 179
    .local v1, time:Landroid/text/format/Time;
    :try_start_0
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 180
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
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

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 191
    .end local v1           #time:Landroid/text/format/Time;
    :cond_5
    :goto_0
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 193
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 195
    .restart local v1       #time:Landroid/text/format/Time;
    :try_start_1
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 196
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 199
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

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/util/TimeFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 205
    .end local v1           #time:Landroid/text/format/Time;
    :cond_7
    :goto_1
    return-object v2

    .line 184
    .restart local v1       #time:Landroid/text/format/Time;
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Landroid/util/TimeFormatException;
    const-string v3, "SmsMmsUtils"

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

    goto :goto_0

    .line 200
    .end local v0           #e:Landroid/util/TimeFormatException;
    :catch_1
    move-exception v0

    .line 201
    .restart local v0       #e:Landroid/util/TimeFormatException;
    const-string v3, "SmsMmsUtils"

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

    goto :goto_1
.end method

.method public static getFolderTypeMms(Ljava/lang/String;)I
    .locals 2
    .parameter "folder"

    .prologue
    .line 110
    const/4 v0, -0x5

    .line 112
    .local v0, folderType:I
    const-string v1, "inbox"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    const/4 v0, 0x1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    const-string v1, "outbox"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    const/4 v0, 0x4

    goto :goto_0

    .line 118
    :cond_2
    const-string v1, "sent"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 119
    const/4 v0, 0x2

    goto :goto_0

    .line 121
    :cond_3
    const-string v1, "draft"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "drafts"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 122
    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    .line 124
    :cond_5
    const-string v1, "deleted"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getNumMmsMsgs(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 216
    const/4 v7, 0x0

    .line 218
    .local v7, msgCount:I
    const-string v3, "deleted"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    const-string v3, "content://mms/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 220
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 221
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "thread_id = -1"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 222
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 223
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 224
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 235
    :cond_0
    :goto_0
    return v7

    .line 227
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

    .line 228
    .restart local v1       #uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 229
    .restart local v0       #cr:Landroid/content/ContentResolver;
    const-string v3, "thread_id <> -1"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 230
    .restart local v6       #cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 231
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 232
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getWhereIsQueryForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "folder"

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 133
    .local v0, query:Ljava/lang/String;
    const-string v1, "inbox"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const-string v0, "type = 1 AND thread_id <> -1"

    .line 151
    :goto_0
    return-object v0

    .line 136
    :cond_0
    const-string v1, "outbox"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    const-string v0, "(type = 4 OR type = 5 OR type = 6) AND thread_id <> -1"

    goto :goto_0

    .line 139
    :cond_1
    const-string v1, "sent"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    const-string v0, "type = 2 AND thread_id <> -1"

    goto :goto_0

    .line 142
    :cond_2
    const-string v1, "draft"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    const-string v0, "type = 3 AND thread_id <> -1"

    goto :goto_0

    .line 145
    :cond_3
    const-string v1, "deleted"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 146
    const-string v0, "thread_id = -1"

    goto :goto_0

    .line 149
    :cond_4
    const-string v0, "type = -1"

    goto :goto_0
.end method
