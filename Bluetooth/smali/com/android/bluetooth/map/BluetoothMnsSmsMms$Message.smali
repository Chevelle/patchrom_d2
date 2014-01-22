.class Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;
.super Ljava/lang/Object;
.source "BluetoothMnsSmsMms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMnsSmsMms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Message"
.end annotation


# instance fields
.field mDate:J

.field mFolderName:Ljava/lang/String;

.field mId:J

.field mThreadId:J

.field mType:I


# direct methods
.method public constructor <init>(JLjava/lang/String;IJJ)V
    .locals 0
    .parameter "id"
    .parameter "folderName"
    .parameter "type"
    .parameter "threadId"
    .parameter "date"

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;->mId:J

    .line 123
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;->mFolderName:Ljava/lang/String;

    .line 124
    iput p4, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;->mType:I

    .line 125
    iput-wide p5, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;->mThreadId:J

    .line 126
    iput-wide p7, p0, Lcom/android/bluetooth/map/BluetoothMnsSmsMms$Message;->mDate:J

    .line 127
    return-void
.end method
