.class Lmiui/util/DensityIndexFile$DescriptionPair;
.super Ljava/lang/Object;
.source "DensityIndexFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DensityIndexFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DescriptionPair"
.end annotation


# instance fields
.field mDataItemDescriptionOffset:J

.field mIndexGroupDescriptionOffset:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0
    .parameter "indexGroupDescriptionOffset"
    .parameter "dataItemDescriptionOffset"

    .prologue
    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iput-wide p1, p0, Lmiui/util/DensityIndexFile$DescriptionPair;->mIndexGroupDescriptionOffset:J

    .line 393
    iput-wide p3, p0, Lmiui/util/DensityIndexFile$DescriptionPair;->mDataItemDescriptionOffset:J

    .line 394
    return-void
.end method

.method static read(Ljava/io/DataInput;)Lmiui/util/DensityIndexFile$DescriptionPair;
    .locals 5
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    .line 398
    .local v2, indexGroupDescriptionOffset:J
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    .line 399
    .local v0, dataItemDescriptionOffset:J
    new-instance v4, Lmiui/util/DensityIndexFile$DescriptionPair;

    invoke-direct {v4, v2, v3, v0, v1}, Lmiui/util/DensityIndexFile$DescriptionPair;-><init>(JJ)V

    return-object v4
.end method


# virtual methods
.method write(Ljava/io/DataOutput;)I
    .locals 2
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    if-eqz p1, :cond_0

    .line 404
    iget-wide v0, p0, Lmiui/util/DensityIndexFile$DescriptionPair;->mIndexGroupDescriptionOffset:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 405
    iget-wide v0, p0, Lmiui/util/DensityIndexFile$DescriptionPair;->mDataItemDescriptionOffset:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 407
    :cond_0
    const/16 v0, 0x10

    return v0
.end method
