.class public Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/MapUtils/CommonUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BluetoothMasMessageRsp"
.end annotation


# instance fields
.field public file:Ljava/io/File;

.field public fractionDeliver:B

.field public rsp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->fractionDeliver:B

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->file:Ljava/io/File;

    .line 73
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->rsp:I

    return-void
.end method
