.class public Lcom/android/bluetooth/opp/BluetoothOppBatch;
.super Ljava/lang/Object;
.source "BluetoothOppBatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BtOppBatch"

.field private static final V:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field public final mDestination:Landroid/bluetooth/BluetoothDevice;

.field public final mDirection:I

.field public mId:I

.field private mListener:Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;

.field private final mShares:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/opp/BluetoothOppShareInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mStatus:I

.field public final mTimestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 3
    .parameter "context"
    .parameter "info"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 107
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mContext:Landroid/content/Context;

    .line 108
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    .line 109
    iget-wide v1, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    iput-wide v1, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mTimestamp:J

    .line 110
    iget v1, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    .line 111
    iget-object v1, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    .line 112
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 113
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method


# virtual methods
.method public addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mListener:Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mListener:Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;

    iget v1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-interface {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;->onShareAdded(I)V

    .line 130
    :cond_0
    return-void
.end method

.method public cancelBatch()V
    .locals 5

    .prologue
    .line 161
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mListener:Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;

    if-eqz v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mListener:Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;

    invoke-interface {v2}, Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;->onBatchCanceled()V

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_3

    .line 166
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 168
    .local v1, info:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    iget v2, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_2

    .line 169
    iget v2, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 170
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 174
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mContext:Landroid/content/Context;

    iget v3, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/16 v4, 0x1ea

    invoke-static {v2, v3, v4}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 165
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 177
    .end local v1           #info:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 178
    return-void
.end method

.method public deleteShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 139
    iget v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_0

    .line 140
    const/16 v0, 0x1ea

    iput v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 141
    iget v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mListener:Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mListener:Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;

    iget v1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-interface {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;->onShareDeleted(I)V

    .line 149
    :cond_1
    return-void
.end method

.method public getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    .locals 4

    .prologue
    .line 206
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 208
    .local v1, share:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    iget v2, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    const/16 v3, 0xbe

    if-ne v2, v3, :cond_0

    .line 212
    .end local v1           #share:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :goto_1
    return-object v1

    .line 206
    .restart local v1       #share:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    .end local v1           #share:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public hasShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerListern(Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mListener:Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;

    .line 198
    return-void
.end method
