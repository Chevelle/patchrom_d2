.class Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;
.super Ljava/io/InputStream;
.source "SimulateNinePngUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/SimulateNinePngUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NinePathInputStream"
.end annotation


# instance fields
.field private mCount:I

.field private mExtraHeaderData:[B

.field private mInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[B)V
    .locals 1
    .parameter "is"
    .parameter "header"

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 151
    iput v0, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    .line 154
    iput-object p1, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mInputStream:Ljava/io/InputStream;

    .line 155
    iput-object p2, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mExtraHeaderData:[B

    .line 156
    iput v0, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    .line 157
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 185
    :cond_0
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget v0, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    iget-object v1, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mExtraHeaderData:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mExtraHeaderData:[B

    iget v1, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    aget-byte v0, v0, v1

    .line 164
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, readCnt:I
    :goto_0
    iget v2, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    iget-object v3, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mExtraHeaderData:[B

    array-length v3, v3

    if-ge v2, v3, :cond_0

    if-ge v0, p3, :cond_0

    .line 172
    add-int/lit8 v1, v0, 0x1

    .end local v0           #readCnt:I
    .local v1, readCnt:I
    add-int v2, p2, v0

    iget-object v3, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mExtraHeaderData:[B

    iget v4, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    aget-byte v3, v3, v4

    aput-byte v3, p1, v2

    move v0, v1

    .end local v1           #readCnt:I
    .restart local v0       #readCnt:I
    goto :goto_0

    .line 174
    :cond_0
    if-ge v0, p3, :cond_1

    .line 175
    iget-object v2, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mInputStream:Ljava/io/InputStream;

    add-int v3, p2, v0

    sub-int v4, p3, v0

    invoke-virtual {v2, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    add-int/2addr v0, v2

    .line 177
    :cond_1
    return v0
.end method
