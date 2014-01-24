.class Lmiui/util/DensityIndexFile$DataItemDescription;
.super Ljava/lang/Object;
.source "DensityIndexFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DensityIndexFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataItemDescription"
.end annotation


# static fields
.field static final BYTE:B = 0x0t

.field static final BYTE_ARRAY:B = 0x5t

.field static final INTEGER:B = 0x2t

.field static final INTEGER_ARRAY:B = 0x7t

.field static final LONG:B = 0x3t

.field static final LONG_ARRAY:B = 0x8t

.field static final SHORT:B = 0x1t

.field static final SHORT_ARRAY:B = 0x6t

.field static final STRING:B = 0x4t

.field static sBuffer:[B


# instance fields
.field mIndexSize:B

.field mLengthSize:B

.field mOffset:J

.field mOffsetSize:B

.field mType:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/16 v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lmiui/util/DensityIndexFile$DataItemDescription;->sBuffer:[B

    return-void
.end method

.method constructor <init>(BBBBJ)V
    .locals 0
    .parameter "type"
    .parameter "indexSize"
    .parameter "lengthSize"
    .parameter "offsetSize"
    .parameter "offset"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-byte p1, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mType:B

    .line 88
    iput-byte p2, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mIndexSize:B

    .line 89
    iput-byte p3, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mLengthSize:B

    .line 90
    iput-byte p4, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mOffsetSize:B

    .line 91
    iput-wide p5, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mOffset:J

    .line 92
    return-void
.end method

.method static aquireBuffer(I)[B
    .locals 3
    .parameter "size"

    .prologue
    .line 69
    const-class v2, Lmiui/util/DensityIndexFile$DataItemDescription;

    monitor-enter v2

    .line 70
    :try_start_0
    sget-object v1, Lmiui/util/DensityIndexFile$DataItemDescription;->sBuffer:[B

    if-eqz v1, :cond_0

    sget-object v1, Lmiui/util/DensityIndexFile$DataItemDescription;->sBuffer:[B

    array-length v1, v1

    if-ge v1, p0, :cond_1

    .line 71
    :cond_0
    new-array v1, p0, [B

    sput-object v1, Lmiui/util/DensityIndexFile$DataItemDescription;->sBuffer:[B

    .line 73
    :cond_1
    sget-object v0, Lmiui/util/DensityIndexFile$DataItemDescription;->sBuffer:[B

    .line 74
    .local v0, bs:[B
    const/4 v1, 0x0

    sput-object v1, Lmiui/util/DensityIndexFile$DataItemDescription;->sBuffer:[B

    .line 75
    monitor-exit v2

    return-object v0

    .line 76
    .end local v0           #bs:[B
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static read(Ljava/io/DataInput;)Lmiui/util/DensityIndexFile$DataItemDescription;
    .locals 7
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 96
    .local v1, type:B
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    .line 97
    .local v2, indexSize:B
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    .line 98
    .local v3, lengthSize:B
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v4

    .line 99
    .local v4, offsetSize:B
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v5

    .line 100
    .local v5, offset:J
    new-instance v0, Lmiui/util/DensityIndexFile$DataItemDescription;

    invoke-direct/range {v0 .. v6}, Lmiui/util/DensityIndexFile$DataItemDescription;-><init>(BBBBJ)V

    return-object v0
.end method

.method static releaseBuffer([B)V
    .locals 3
    .parameter "buffer"

    .prologue
    .line 79
    const-class v1, Lmiui/util/DensityIndexFile$DataItemDescription;

    monitor-enter v1

    .line 80
    if-eqz p0, :cond_1

    :try_start_0
    sget-object v0, Lmiui/util/DensityIndexFile$DataItemDescription;->sBuffer:[B

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/util/DensityIndexFile$DataItemDescription;->sBuffer:[B

    array-length v0, v0

    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 81
    :cond_0
    sput-object p0, Lmiui/util/DensityIndexFile$DataItemDescription;->sBuffer:[B

    .line 83
    :cond_1
    monitor-exit v1

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method readDataItems(Ljava/io/RandomAccessFile;)[Ljava/lang/Object;
    .locals 4
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, ret:[Ljava/lang/Object;
    iget-byte v1, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mType:B

    packed-switch v1, :pswitch_data_0

    .line 383
    :goto_0
    return-object v0

    .line 357
    :pswitch_0
    new-array v0, v2, [Ljava/lang/Object;

    .line 358
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    .line 361
    :pswitch_1
    new-array v0, v2, [Ljava/lang/Object;

    .line 362
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    .line 365
    :pswitch_2
    new-array v0, v2, [Ljava/lang/Object;

    .line 366
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    .line 369
    :pswitch_3
    new-array v0, v2, [Ljava/lang/Object;

    .line 370
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    .line 377
    :pswitch_4
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    new-array v0, v1, [Ljava/lang/Object;

    .line 378
    invoke-virtual {p0, p1, v3}, Lmiui/util/DensityIndexFile$DataItemDescription;->readSingleDataItem(Ljava/io/RandomAccessFile;I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    .line 355
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method readSingleDataItem(Ljava/io/RandomAccessFile;I)Ljava/lang/Object;
    .locals 10
    .parameter "raf"
    .parameter "dataItemIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 301
    const/4 v6, 0x0

    .line 302
    .local v6, ret:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 304
    .local v2, buf:[B
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 305
    .local v0, basePos:J
    if-eqz p2, :cond_0

    .line 306
    iget-byte v7, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mOffsetSize:B

    mul-int/2addr v7, p2

    int-to-long v7, v7

    add-long/2addr v7, v0

    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 308
    :cond_0
    iget-byte v7, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mOffsetSize:B

    invoke-static {p1, v7}, Lmiui/util/DensityIndexFile;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v7

    add-long/2addr v7, v0

    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 310
    iget-byte v7, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mType:B

    packed-switch v7, :pswitch_data_0

    .line 349
    .end local v6           #ret:Ljava/lang/Object;
    :cond_1
    :goto_0
    invoke-static {v2}, Lmiui/util/DensityIndexFile$DataItemDescription;->releaseBuffer([B)V

    .line 350
    return-object v6

    .line 312
    .restart local v6       #ret:Ljava/lang/Object;
    :pswitch_0
    iget-byte v7, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mLengthSize:B

    invoke-static {p1, v7}, Lmiui/util/DensityIndexFile;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v7

    long-to-int v5, v7

    .line 313
    .local v5, length:I
    invoke-static {v5}, Lmiui/util/DensityIndexFile$DataItemDescription;->aquireBuffer(I)[B

    move-result-object v2

    .line 314
    invoke-virtual {p1, v2, v9, v5}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 315
    new-instance v6, Ljava/lang/String;

    .end local v6           #ret:Ljava/lang/Object;
    invoke-direct {v6, v2, v9, v5}, Ljava/lang/String;-><init>([BII)V

    .line 316
    .local v6, ret:Ljava/lang/String;
    goto :goto_0

    .line 319
    .end local v5           #length:I
    .local v6, ret:Ljava/lang/Object;
    :pswitch_1
    iget-byte v7, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mLengthSize:B

    invoke-static {p1, v7}, Lmiui/util/DensityIndexFile;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v7

    long-to-int v7, v7

    new-array v2, v7, [B

    .line 320
    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 321
    move-object v6, v2

    .line 322
    .local v6, ret:[B
    const/4 v2, 0x0

    .line 323
    goto :goto_0

    .line 325
    .local v6, ret:Ljava/lang/Object;
    :pswitch_2
    iget-byte v7, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mLengthSize:B

    invoke-static {p1, v7}, Lmiui/util/DensityIndexFile;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v7

    long-to-int v7, v7

    new-array v3, v7, [S

    .line 326
    .local v3, d:[S
    move-object v6, v3

    .line 327
    .local v6, ret:[S
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    array-length v7, v3

    if-ge v4, v7, :cond_1

    .line 328
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v7

    aput-short v7, v3, v4

    .line 327
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 333
    .end local v3           #d:[S
    .end local v4           #j:I
    .local v6, ret:Ljava/lang/Object;
    :pswitch_3
    iget-byte v7, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mLengthSize:B

    invoke-static {p1, v7}, Lmiui/util/DensityIndexFile;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v7

    long-to-int v7, v7

    new-array v3, v7, [I

    .line 334
    .local v3, d:[I
    move-object v6, v3

    .line 335
    .local v6, ret:[I
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_2
    array-length v7, v3

    if-ge v4, v7, :cond_1

    .line 336
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    aput v7, v3, v4

    .line 335
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 341
    .end local v3           #d:[I
    .end local v4           #j:I
    .local v6, ret:Ljava/lang/Object;
    :pswitch_4
    iget-byte v7, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mLengthSize:B

    invoke-static {p1, v7}, Lmiui/util/DensityIndexFile;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v7

    long-to-int v7, v7

    new-array v3, v7, [J

    .line 342
    .local v3, d:[J
    move-object v6, v3

    .line 343
    .local v6, ret:[J
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_3
    array-length v7, v3

    if-ge v4, v7, :cond_1

    .line 344
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v7

    aput-wide v7, v3, v4

    .line 343
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 310
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method write(Ljava/io/DataOutput;)I
    .locals 2
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    if-eqz p1, :cond_0

    .line 105
    iget-byte v0, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mType:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 106
    iget-byte v0, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mIndexSize:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 107
    iget-byte v0, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mLengthSize:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 108
    iget-byte v0, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mOffsetSize:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 109
    iget-wide v0, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mOffset:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 111
    :cond_0
    const/16 v0, 0xc

    return v0
.end method

.method writeDataItems(Ljava/io/DataOutput;Ljava/util/List;)I
    .locals 8
    .parameter "o"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, dataItems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 179
    const/4 v4, 0x0

    .line 180
    .local v4, written:I
    iget-byte v5, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mType:B

    packed-switch v5, :pswitch_data_0

    .line 297
    :cond_0
    :goto_0
    return v4

    .line 182
    :pswitch_0
    if-eqz p1, :cond_1

    .line 183
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeByte(I)V

    .line 185
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 186
    goto :goto_0

    .line 188
    :pswitch_1
    if-eqz p1, :cond_2

    .line 189
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeShort(I)V

    .line 191
    :cond_2
    add-int/lit8 v4, v4, 0x2

    .line 192
    goto :goto_0

    .line 194
    :pswitch_2
    if-eqz p1, :cond_3

    .line 195
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    .line 197
    :cond_3
    add-int/lit8 v4, v4, 0x4

    .line 198
    goto :goto_0

    .line 200
    :pswitch_3
    if-eqz p1, :cond_4

    .line 201
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {p1, v5, v6}, Ljava/io/DataOutput;->writeLong(J)V

    .line 203
    :cond_4
    add-int/lit8 v4, v4, 0x8

    .line 204
    goto :goto_0

    .line 206
    :pswitch_4
    if-eqz p1, :cond_5

    .line 207
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    .line 209
    :cond_5
    add-int/lit8 v4, v4, 0x4

    .line 210
    invoke-virtual {p0, p1, p2}, Lmiui/util/DensityIndexFile$DataItemDescription;->writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v5

    add-int/lit8 v4, v5, 0x4

    .line 212
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 213
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 214
    .local v1, d:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 215
    .local v0, bs:[B
    if-eqz p1, :cond_6

    .line 216
    iget-byte v5, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mLengthSize:B

    array-length v6, v0

    int-to-long v6, v6

    invoke-static {p1, v5, v6, v7}, Lmiui/util/DensityIndexFile;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    .line 217
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    array-length v5, v0

    if-ge v3, v5, :cond_6

    .line 218
    aget-byte v5, v0, v3

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeByte(I)V

    .line 217
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 221
    .end local v3           #j:I
    :cond_6
    iget-byte v5, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mLengthSize:B

    array-length v6, v0

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 225
    .end local v0           #bs:[B
    .end local v1           #d:Ljava/lang/String;
    .end local v2           #i:I
    :pswitch_5
    if-eqz p1, :cond_7

    .line 226
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    .line 228
    :cond_7
    add-int/lit8 v4, v4, 0x4

    .line 229
    invoke-virtual {p0, p1, p2}, Lmiui/util/DensityIndexFile$DataItemDescription;->writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v5

    add-int/lit8 v4, v5, 0x4

    .line 231
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 232
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v1, v5

    check-cast v1, [B

    .line 233
    .local v1, d:[B
    if-eqz p1, :cond_8

    .line 234
    iget-byte v5, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mLengthSize:B

    array-length v6, v1

    int-to-long v6, v6

    invoke-static {p1, v5, v6, v7}, Lmiui/util/DensityIndexFile;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    .line 235
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write([B)V

    .line 237
    :cond_8
    iget-byte v5, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mLengthSize:B

    array-length v6, v1

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 241
    .end local v1           #d:[B
    .end local v2           #i:I
    :pswitch_6
    if-eqz p1, :cond_9

    .line 242
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    .line 244
    :cond_9
    add-int/lit8 v4, v4, 0x4

    .line 245
    invoke-virtual {p0, p1, p2}, Lmiui/util/DensityIndexFile$DataItemDescription;->writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v5

    add-int/lit8 v4, v5, 0x4

    .line 247
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 248
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [S

    move-object v1, v5

    check-cast v1, [S

    .line 249
    .local v1, d:[S
    if-eqz p1, :cond_a

    .line 250
    iget-byte v5, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mLengthSize:B

    array-length v6, v1

    int-to-long v6, v6

    invoke-static {p1, v5, v6, v7}, Lmiui/util/DensityIndexFile;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    .line 251
    const/4 v3, 0x0

    .restart local v3       #j:I
    :goto_5
    array-length v5, v1

    if-ge v3, v5, :cond_a

    .line 252
    aget-short v5, v1, v3

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeShort(I)V

    .line 251
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 255
    .end local v3           #j:I
    :cond_a
    iget-byte v5, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mLengthSize:B

    array-length v6, v1

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 247
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 259
    .end local v1           #d:[S
    .end local v2           #i:I
    :pswitch_7
    if-eqz p1, :cond_b

    .line 260
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    .line 262
    :cond_b
    add-int/lit8 v4, v4, 0x4

    .line 263
    invoke-virtual {p0, p1, p2}, Lmiui/util/DensityIndexFile$DataItemDescription;->writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v5

    add-int/lit8 v4, v5, 0x4

    .line 265
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 266
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    move-object v1, v5

    check-cast v1, [I

    .line 267
    .local v1, d:[I
    if-eqz p1, :cond_c

    .line 268
    iget-byte v5, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mLengthSize:B

    array-length v6, v1

    int-to-long v6, v6

    invoke-static {p1, v5, v6, v7}, Lmiui/util/DensityIndexFile;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    .line 269
    const/4 v3, 0x0

    .restart local v3       #j:I
    :goto_7
    array-length v5, v1

    if-ge v3, v5, :cond_c

    .line 270
    aget v5, v1, v3

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    .line 269
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 273
    .end local v3           #j:I
    :cond_c
    iget-byte v5, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mLengthSize:B

    array-length v6, v1

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 277
    .end local v1           #d:[I
    .end local v2           #i:I
    :pswitch_8
    if-eqz p1, :cond_d

    .line 278
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    .line 280
    :cond_d
    add-int/lit8 v4, v4, 0x4

    .line 281
    invoke-virtual {p0, p1, p2}, Lmiui/util/DensityIndexFile$DataItemDescription;->writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v5

    add-int/lit8 v4, v5, 0x4

    .line 283
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 284
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    move-object v1, v5

    check-cast v1, [J

    .line 285
    .local v1, d:[J
    if-eqz p1, :cond_e

    .line 286
    iget-byte v5, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mLengthSize:B

    array-length v6, v1

    int-to-long v6, v6

    invoke-static {p1, v5, v6, v7}, Lmiui/util/DensityIndexFile;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    .line 287
    const/4 v3, 0x0

    .restart local v3       #j:I
    :goto_9
    array-length v5, v1

    if-ge v3, v5, :cond_e

    .line 288
    aget-wide v5, v1, v3

    invoke-interface {p1, v5, v6}, Ljava/io/DataOutput;->writeLong(J)V

    .line 287
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 291
    .end local v3           #j:I
    :cond_e
    iget-byte v5, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mLengthSize:B

    array-length v6, v1

    mul-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 283
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 180
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I
    .locals 8
    .parameter "o"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    .local p2, dataItems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    iget-byte v5, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mOffsetSize:B

    if-eqz v5, :cond_0

    iget-byte v5, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mLengthSize:B

    if-nez v5, :cond_3

    .line 116
    :cond_0
    const/4 v2, 0x0

    .line 117
    .local v2, maxLength:I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v3, v5, 0x4

    .line 118
    .local v3, offset:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 119
    const/4 v1, 0x0

    .line 120
    .local v1, length:I
    iget-byte v5, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mType:B

    packed-switch v5, :pswitch_data_0

    .line 142
    :goto_1
    if-ge v2, v1, :cond_1

    .line 143
    move v2, v1

    .line 118
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :pswitch_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v1, v5

    .line 123
    add-int/2addr v3, v1

    .line 124
    goto :goto_1

    .line 126
    :pswitch_1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    check-cast v5, [B

    array-length v1, v5

    .line 127
    add-int/2addr v3, v1

    .line 128
    goto :goto_1

    .line 130
    :pswitch_2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [S

    check-cast v5, [S

    array-length v1, v5

    .line 131
    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v3, v5

    .line 132
    goto :goto_1

    .line 134
    :pswitch_3
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    array-length v1, v5

    .line 135
    mul-int/lit8 v5, v1, 0x4

    add-int/2addr v3, v5

    .line 136
    goto :goto_1

    .line 138
    :pswitch_4
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    check-cast v5, [J

    array-length v1, v5

    .line 139
    mul-int/lit8 v5, v1, 0x8

    add-int/2addr v3, v5

    goto :goto_1

    .line 146
    .end local v1           #length:I
    :cond_2
    invoke-static {v2}, Lmiui/util/DensityIndexFile;->getSizeOf(I)B

    move-result v5

    iput-byte v5, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mLengthSize:B

    .line 147
    iget-byte v5, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mLengthSize:B

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 148
    invoke-static {v3}, Lmiui/util/DensityIndexFile;->getSizeOf(I)B

    move-result v5

    iput-byte v5, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mOffsetSize:B

    .line 151
    .end local v0           #i:I
    .end local v2           #maxLength:I
    .end local v3           #offset:I
    :cond_3
    iget-byte v5, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mOffsetSize:B

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    mul-int v4, v5, v6

    .line 152
    .local v4, written:I
    if-eqz p1, :cond_4

    .line 153
    move v3, v4

    .line 154
    .restart local v3       #offset:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 155
    iget-byte v5, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mOffsetSize:B

    int-to-long v6, v3

    invoke-static {p1, v5, v6, v7}, Lmiui/util/DensityIndexFile;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    .line 156
    iget-byte v5, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mType:B

    packed-switch v5, :pswitch_data_1

    .line 154
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 158
    :pswitch_5
    iget-byte v6, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mLengthSize:B

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 159
    goto :goto_3

    .line 161
    :pswitch_6
    iget-byte v6, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mLengthSize:B

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    check-cast v5, [B

    array-length v5, v5

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 162
    goto :goto_3

    .line 164
    :pswitch_7
    iget-byte v6, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mLengthSize:B

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [S

    check-cast v5, [S

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 165
    goto :goto_3

    .line 167
    :pswitch_8
    iget-byte v6, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mLengthSize:B

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 168
    goto :goto_3

    .line 170
    :pswitch_9
    iget-byte v6, p0, Lmiui/util/DensityIndexFile$DataItemDescription;->mLengthSize:B

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    check-cast v5, [J

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    goto :goto_3

    .line 175
    .end local v0           #i:I
    .end local v3           #offset:I
    :cond_4
    return v4

    .line 120
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 156
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
