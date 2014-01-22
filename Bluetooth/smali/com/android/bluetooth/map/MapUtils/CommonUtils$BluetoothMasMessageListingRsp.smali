.class public Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/MapUtils/CommonUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BluetoothMasMessageListingRsp"
.end annotation


# instance fields
.field public file:Ljava/io/File;

.field public msgListingSize:I

.field public newMessage:B

.field public rsp:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->file:Ljava/io/File;

    .line 65
    iput v1, p0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->msgListingSize:I

    .line 66
    iput-byte v1, p0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->newMessage:B

    .line 67
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    return-void
.end method
