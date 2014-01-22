.class public Lcom/android/bluetooth/map/BluetoothMnsSmsMms;
.super Lcom/android/bluetooth/map/BluetoothMns$MnsClient;
.source "BluetoothMnsSmsMms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;,
        Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;
    }
.end annotation


# static fields
.field private static final MMS:Ljava/lang/String; = "MMS"

.field private static final MMS_BOX_TYPE_COL:I = 0x1

.field private static final MMS_DATE_COL:I = 0x4

.field private static final MMS_ID_COL:I = 0x0

.field private static final MMS_MSG_TYPE_COL:I = 0x3

.field private static final MMS_PROJECTION:[Ljava/lang/String; = null

.field private static final MMS_THREAD_ID_COL:I = 0x2

.field private static final MSG_TO_MAP:[Ljava/lang/String; = null

.field private static final SMS_CDMA:Ljava/lang/String; = "SMS_CDMA"

.field private static final SMS_DATE_COL:I = 0x3

.field private static final SMS_GSM:Ljava/lang/String; = "SMS_GSM"

.field private static final SMS_ID_COL:I = 0x0

.field private static final SMS_PROJECTION:[Ljava/lang/String; = null

.field private static final SMS_THREAD_ID_COL:I = 0x2

.field private static final SMS_TYPE_COL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothMnsSmsMms"

.field private static final V:Z


# instance fields
.field private final MMS_OFFSET_START:J

.field private final SMS_OFFSET_START:J

.field private mMmsSmsObserver:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->V:Z

    .line 58
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "inbox"

    aput-object v1, v0, v4

    const-string v1, "sent"

    aput-object v1, v0, v5

    const-string v1, "draft"

    aput-object v1, v0, v6

    const-string v1, "outbox"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "outbox"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "outbox"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "inbox"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "inbox"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->MSG_TO_MAP:[Ljava/lang/String;

    .line 99
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "msg_box"

    aput-object v1, v0, v4

    const-string v1, "thread_id"

    aput-object v1, v0, v5

    const-string v1, "m_type"

    aput-object v1, v0, v6

    const-string v1, "date"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->MMS_PROJECTION:[Ljava/lang/String;

    .line 107
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    const-string v1, "thread_id"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->SMS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 6
    .parameter "context"
    .parameter "masId"

    .prologue
    .line 78
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;-><init>(Landroid/content/Context;I)V

    .line 75
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;-><init>(Lcom/android/bluetooth/map/BluetoothMnsSmsMms;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mMmsSmsObserver:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;

    .line 79
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->OFFSET_START:J

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->SMS_OFFSET_START:J

    .line 80
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->OFFSET_START:J

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->OFFSET_END:J

    iget-wide v4, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->OFFSET_START:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->MMS_OFFSET_START:J

    .line 81
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->V:Z

    return v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->SMS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->MSG_TO_MAP:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->MMS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/map/BluetoothMnsSmsMms;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->SMS_OFFSET_START:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/map/BluetoothMnsSmsMms;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->MMS_OFFSET_START:J

    return-wide v0
.end method


# virtual methods
.method protected registerContentObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 85
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMnsSmsMms"

    const-string v1, "REGISTERING SMS/MMS MNS"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mMmsSmsObserver:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;->update(Z)V

    .line 87
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mMmsSmsObserver:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 89
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->V:Z

    if-eqz v0, :cond_1

    const-string v0, "BluetoothMnsSmsMms"

    const-string v1, "REGISTERING SMS/MMS MNS DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_1
    return-void
.end method

.method protected unregisterContentObserver()V
    .locals 2

    .prologue
    .line 94
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMnsSmsMms"

    const-string v1, "UNREGISTERING MNS SMS/MMS"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->mMmsSmsObserver:Lcom/android/bluetooth/map/BluetoothMnsSmsMms$MmsSmsContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 96
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;->V:Z

    if-eqz v0, :cond_1

    const-string v0, "BluetoothMnsSmsMms"

    const-string v1, "UNREGISTERING MNS SMS/MMS DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_1
    return-void
.end method
