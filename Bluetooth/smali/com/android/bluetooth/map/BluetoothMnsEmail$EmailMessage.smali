.class Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;
.super Ljava/lang/Object;
.source "BluetoothMnsEmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMnsEmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmailMessage"
.end annotation


# instance fields
.field mAccountKey:J

.field mFolderName:Ljava/lang/String;

.field mId:J

.field mType:I


# direct methods
.method public constructor <init>(JJLjava/lang/String;I)V
    .locals 0
    .parameter "id"
    .parameter "accountKey"
    .parameter "folderName"
    .parameter "type"

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;->mId:J

    .line 131
    iput-wide p3, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;->mAccountKey:J

    .line 132
    iput-object p5, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;->mFolderName:Ljava/lang/String;

    .line 133
    iput p6, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;->mType:I

    .line 134
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", folder name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;->mFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", account key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;->mAccountKey:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailMessage;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
