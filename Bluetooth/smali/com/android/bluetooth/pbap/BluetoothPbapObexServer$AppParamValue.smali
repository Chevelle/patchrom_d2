.class Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
.super Ljava/lang/Object;
.source "BluetoothPbapObexServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppParamValue"
.end annotation


# instance fields
.field public filter:J

.field public listStartOffset:I

.field public maxListCount:I

.field public needTag:I

.field public order:Ljava/lang/String;

.field public searchAttr:Ljava/lang/String;

.field public searchValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

.field public vcard21:Z


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 456
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    const v0, 0xffff

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    .line 458
    iput v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    .line 459
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    .line 460
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    .line 461
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->order:Ljava/lang/String;

    .line 462
    iput v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vcard21:Z

    .line 464
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->filter:J

    .line 465
    return-void
.end method


# virtual methods
.method public getActualFilter()J
    .locals 6

    .prologue
    .line 475
    iget-wide v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->filter:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 476
    const-wide/16 v2, -0x1

    .line 484
    :goto_0
    return-wide v2

    .line 478
    :cond_0
    const-wide/16 v0, 0x85

    .line 481
    .local v0, mandatory:J
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vcard21:Z

    if-nez v2, :cond_1

    .line 482
    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    .line 484
    :cond_1
    iget-wide v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->filter:J

    or-long/2addr v2, v0

    goto :goto_0
.end method
