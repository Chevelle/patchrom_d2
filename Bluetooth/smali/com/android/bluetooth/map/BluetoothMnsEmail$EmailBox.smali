.class Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailBox;
.super Ljava/lang/Object;
.source "BluetoothMnsEmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMnsEmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmailBox"
.end annotation


# instance fields
.field mAccountKey:J

.field mDisplayName:Ljava/lang/String;

.field mId:J

.field mType:I


# direct methods
.method public constructor <init>(JLjava/lang/String;JI)V
    .locals 0
    .parameter "id"
    .parameter "displayName"
    .parameter "accountKey"
    .parameter "type"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailBox;->mId:J

    .line 111
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailBox;->mDisplayName:Ljava/lang/String;

    .line 112
    iput-wide p4, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailBox;->mAccountKey:J

    .line 113
    iput p6, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailBox;->mType:I

    .line 114
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailBox;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", display name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailBox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", account key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailBox;->mAccountKey:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMnsEmail$EmailBox;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
