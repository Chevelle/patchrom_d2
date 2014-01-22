.class public Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/MapUtils/CommonUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BluetoothMsgListRsp"
.end annotation


# instance fields
.field public messageListingSize:I

.field public msgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;",
            ">;"
        }
    .end annotation
.end field

.field public rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->messageListingSize:I

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->msgList:Ljava/util/List;

    return-void
.end method
