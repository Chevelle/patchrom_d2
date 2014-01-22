.class public Lcom/android/bluetooth/map/BluetoothMnsEmail;
.super Lcom/android/bluetooth/map/BluetoothMns$MnsClient;
.source "BluetoothMnsEmail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;,
        Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;,
        Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailBox;
    }
.end annotation


# static fields
.field private static final EMAIL:Ljava/lang/String; = "EMAIL"

.field private static final EMAIL_TO_MAP:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "BluetoothMnsEmail"

.field private static final V:Z


# instance fields
.field private mAccountKey:J

.field private mEmailObserver:Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsEmail;->V:Z

    .line 68
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "inbox"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "draft"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "outbox"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sent"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMnsEmail;->EMAIL_TO_MAP:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 1
    .parameter "context"
    .parameter "masId"

    .prologue
    .line 83
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;-><init>(Landroid/content/Context;I)V

    .line 79
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;-><init>(Lcom/android/bluetooth/map/BluetoothMnsEmail;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail;->mEmailObserver:Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;

    .line 84
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsEmail;->V:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/map/BluetoothMnsEmail;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail;->mAccountKey:J

    return-wide v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMnsEmail;->EMAIL_TO_MAP:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected registerContentObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 88
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsEmail;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMnsEmail"

    const-string v1, "REGISTERING EMAIL MNS"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail;->mMasId:I

    invoke-static {v0}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getAccountId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail;->mAccountKey:J

    .line 90
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail;->mEmailObserver:Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->updateEmailBox()V

    .line 91
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail;->mEmailObserver:Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;->update(Z)V

    .line 92
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->EMAIL_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail;->mEmailObserver:Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 93
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsEmail;->V:Z

    if-eqz v0, :cond_1

    const-string v0, "BluetoothMnsEmail"

    const-string v1, "REGISTERING EMAIL MNS DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_1
    return-void
.end method

.method protected unregisterContentObserver()V
    .locals 2

    .prologue
    .line 98
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsEmail;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMnsEmail"

    const-string v1, "UNREGISTERING MNS EMAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail;->mEmailObserver:Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 100
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsEmail;->V:Z

    if-eqz v0, :cond_1

    const-string v0, "BluetoothMnsEmail"

    const-string v1, "UNREGISTERED MNS EMAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_1
    return-void
.end method
