.class public Lmiui/util/DensityIndexFile$Builder;
.super Ljava/lang/Object;
.source "DensityIndexFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DensityIndexFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/DensityIndexFile$Builder$IndexData;,
        Lmiui/util/DensityIndexFile$Builder$DataItemHolder;,
        Lmiui/util/DensityIndexFile$Builder$Item;
    }
.end annotation


# instance fields
.field mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

.field mFileHeader:Lmiui/util/DensityIndexFile$FileHeader;

.field mIndexDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/util/DensityIndexFile$Builder$IndexData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 765
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    .line 766
    return-void
.end method

.method private build()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    .line 943
    iget-object v8, p0, Lmiui/util/DensityIndexFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 944
    .local v0, dataCount:I
    new-instance v8, Lmiui/util/DensityIndexFile$FileHeader;

    invoke-direct {v8, v0}, Lmiui/util/DensityIndexFile$FileHeader;-><init>(I)V

    iput-object v8, p0, Lmiui/util/DensityIndexFile$Builder;->mFileHeader:Lmiui/util/DensityIndexFile$FileHeader;

    .line 946
    const/4 v4, 0x0

    .local v4, k:I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 947
    iget-object v8, p0, Lmiui/util/DensityIndexFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DensityIndexFile$Builder$IndexData;

    .line 948
    .local v2, idk:Lmiui/util/DensityIndexFile$Builder$IndexData;
    iget-object v8, p0, Lmiui/util/DensityIndexFile$Builder;->mFileHeader:Lmiui/util/DensityIndexFile$FileHeader;

    iget-object v8, v8, Lmiui/util/DensityIndexFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DensityIndexFile$DescriptionPair;

    new-instance v9, Lmiui/util/DensityIndexFile$DescriptionPair;

    invoke-direct {v9, v10, v11, v10, v11}, Lmiui/util/DensityIndexFile$DescriptionPair;-><init>(JJ)V

    aput-object v9, v8, v4

    .line 950
    const/4 v5, 0x0

    .line 951
    .local v5, length:I
    const/4 v5, 0x0

    :goto_1
    iget-object v8, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_0

    .line 952
    iget-object v8, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 957
    :cond_0
    new-array v8, v5, [Lmiui/util/DensityIndexFile$IndexGroupDescription;

    iput-object v8, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DensityIndexFile$IndexGroupDescription;

    .line 958
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v8, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DensityIndexFile$IndexGroupDescription;

    array-length v8, v8

    if-ge v1, v8, :cond_2

    .line 959
    iget-object v8, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 960
    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/DensityIndexFile$Builder$Item;>;"
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 962
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/util/DensityIndexFile$Builder$Item;

    iget v7, v8, Lmiui/util/DensityIndexFile$Builder$Item;->mIndex:I

    .line 963
    .local v7, minIndex:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/util/DensityIndexFile$Builder$Item;

    iget v8, v8, Lmiui/util/DensityIndexFile$Builder$Item;->mIndex:I

    add-int/lit8 v6, v8, 0x1

    .line 964
    .local v6, maxIndex:I
    iget-object v8, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DensityIndexFile$IndexGroupDescription;

    new-instance v9, Lmiui/util/DensityIndexFile$IndexGroupDescription;

    invoke-direct {v9, v7, v6, v10, v11}, Lmiui/util/DensityIndexFile$IndexGroupDescription;-><init>(IIJ)V

    aput-object v9, v8, v1

    .line 958
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 951
    .end local v1           #i:I
    .end local v3           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/DensityIndexFile$Builder$Item;>;"
    .end local v6           #maxIndex:I
    .end local v7           #minIndex:I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 946
    .restart local v1       #i:I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 968
    .end local v1           #i:I
    .end local v2           #idk:Lmiui/util/DensityIndexFile$Builder$IndexData;
    .end local v5           #length:I
    :cond_3
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lmiui/util/DensityIndexFile$Builder;->writeAll(Ljava/io/DataOutput;)I

    .line 969
    return-void
.end method

.method private checkCurrentIndexingDataKind()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 930
    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    if-nez v0, :cond_0

    .line 931
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Please add a data kind before adding group"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 933
    :cond_0
    return-void
.end method

.method private checkCurrentIndexingGroup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 936
    invoke-direct {p0}, Lmiui/util/DensityIndexFile$Builder;->checkCurrentIndexingDataKind()V

    .line 937
    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v0, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 938
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Please add a data group before adding data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 940
    :cond_0
    return-void
.end method

.method private writeAll(Ljava/io/DataOutput;)I
    .locals 11
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 972
    const/4 v7, 0x0

    .line 973
    .local v7, written:I
    const/4 v4, 0x0

    .local v4, k:I
    :goto_0
    iget-object v8, p0, Lmiui/util/DensityIndexFile$Builder;->mFileHeader:Lmiui/util/DensityIndexFile$FileHeader;

    iget-object v8, v8, Lmiui/util/DensityIndexFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DensityIndexFile$DescriptionPair;

    array-length v8, v8

    if-ge v4, v8, :cond_f

    .line 974
    iget-object v8, p0, Lmiui/util/DensityIndexFile$Builder;->mFileHeader:Lmiui/util/DensityIndexFile$FileHeader;

    invoke-virtual {v8, p1}, Lmiui/util/DensityIndexFile$FileHeader;->write(Ljava/io/DataOutput;)I

    move-result v8

    add-int/2addr v7, v8

    .line 975
    iget-object v8, p0, Lmiui/util/DensityIndexFile$Builder;->mFileHeader:Lmiui/util/DensityIndexFile$FileHeader;

    iget-object v8, v8, Lmiui/util/DensityIndexFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DensityIndexFile$DescriptionPair;

    aget-object v8, v8, v4

    int-to-long v9, v7

    iput-wide v9, v8, Lmiui/util/DensityIndexFile$DescriptionPair;->mIndexGroupDescriptionOffset:J

    .line 977
    iget-object v8, p0, Lmiui/util/DensityIndexFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/DensityIndexFile$Builder$IndexData;

    .line 978
    .local v1, idk:Lmiui/util/DensityIndexFile$Builder$IndexData;
    if-eqz p1, :cond_0

    .line 979
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DensityIndexFile$IndexGroupDescription;

    array-length v8, v8

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeInt(I)V

    .line 981
    :cond_0
    add-int/lit8 v7, v7, 0x4

    .line 982
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DensityIndexFile$IndexGroupDescription;

    array-length v8, v8

    if-ge v0, v8, :cond_1

    .line 983
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DensityIndexFile$IndexGroupDescription;

    aget-object v8, v8, v0

    invoke-virtual {v8, p1}, Lmiui/util/DensityIndexFile$IndexGroupDescription;->write(Ljava/io/DataOutput;)I

    move-result v8

    add-int/2addr v7, v8

    .line 982
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 986
    :cond_1
    iget-object v8, p0, Lmiui/util/DensityIndexFile$Builder;->mFileHeader:Lmiui/util/DensityIndexFile$FileHeader;

    iget-object v8, v8, Lmiui/util/DensityIndexFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DensityIndexFile$DescriptionPair;

    aget-object v8, v8, v4

    int-to-long v9, v7

    iput-wide v9, v8, Lmiui/util/DensityIndexFile$DescriptionPair;->mDataItemDescriptionOffset:J

    .line 987
    if-eqz p1, :cond_2

    .line 988
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    array-length v8, v8

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeInt(I)V

    .line 990
    :cond_2
    add-int/lit8 v7, v7, 0x4

    .line 991
    const/4 v0, 0x0

    :goto_2
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    array-length v8, v8

    if-ge v0, v8, :cond_3

    .line 992
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    aget-object v8, v8, v0

    invoke-virtual {v8, p1}, Lmiui/util/DensityIndexFile$DataItemDescription;->write(Ljava/io/DataOutput;)I

    move-result v8

    add-int/2addr v7, v8

    .line 991
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 995
    :cond_3
    const/4 v0, 0x0

    :goto_3
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    array-length v8, v8

    if-ge v0, v8, :cond_4

    .line 996
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    aget-object v8, v8, v0

    int-to-long v9, v7

    iput-wide v9, v8, Lmiui/util/DensityIndexFile$DataItemDescription;->mOffset:J

    .line 997
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    aget-object v9, v8, v0

    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    invoke-virtual {v8}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->getAll()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v9, p1, v8}, Lmiui/util/DensityIndexFile$DataItemDescription;->writeDataItems(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v8

    add-int/2addr v7, v8

    .line 995
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1000
    :cond_4
    const/4 v0, 0x0

    :goto_4
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DensityIndexFile$IndexGroupDescription;

    array-length v8, v8

    if-ge v0, v8, :cond_e

    .line 1001
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DensityIndexFile$IndexGroupDescription;

    aget-object v8, v8, v0

    int-to-long v9, v7

    iput-wide v9, v8, Lmiui/util/DensityIndexFile$IndexGroupDescription;->mOffset:J

    .line 1002
    if-nez p1, :cond_7

    .line 1003
    const/4 v6, 0x0

    .line 1004
    .local v6, sizeOfItem:I
    const/4 v5, 0x0

    .local v5, m:I
    :goto_5
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    array-length v8, v8

    if-ge v5, v8, :cond_5

    .line 1005
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    aget-object v8, v8, v5

    iget-byte v8, v8, Lmiui/util/DensityIndexFile$DataItemDescription;->mIndexSize:B

    add-int/2addr v6, v8

    .line 1004
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1007
    :cond_5
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DensityIndexFile$IndexGroupDescription;

    aget-object v8, v8, v0

    iget v8, v8, Lmiui/util/DensityIndexFile$IndexGroupDescription;->mMaxIndex:I

    iget-object v9, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DensityIndexFile$IndexGroupDescription;

    aget-object v9, v9, v0

    iget v9, v9, Lmiui/util/DensityIndexFile$IndexGroupDescription;->mMinIndex:I

    sub-int/2addr v8, v9

    mul-int/2addr v8, v6

    add-int/2addr v7, v8

    .line 1000
    .end local v5           #m:I
    .end local v6           #sizeOfItem:I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1009
    :cond_7
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DensityIndexFile$IndexGroupDescription;

    aget-object v8, v8, v0

    iget v3, v8, Lmiui/util/DensityIndexFile$IndexGroupDescription;->mMinIndex:I

    .local v3, j:I
    :goto_6
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DensityIndexFile$IndexGroupDescription;

    aget-object v8, v8, v0

    iget v8, v8, Lmiui/util/DensityIndexFile$IndexGroupDescription;->mMaxIndex:I

    if-ge v3, v8, :cond_6

    .line 1010
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DensityIndexFile$Builder$Item;

    .line 1011
    .local v2, item:Lmiui/util/DensityIndexFile$Builder$Item;
    if-nez v2, :cond_8

    .line 1012
    iget-object v2, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDefaultValue:Lmiui/util/DensityIndexFile$Builder$Item;

    .line 1014
    :cond_8
    const/4 v5, 0x0

    .restart local v5       #m:I
    :goto_7
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    array-length v8, v8

    if-ge v5, v8, :cond_d

    .line 1015
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    aget-object v8, v8, v5

    iget-byte v8, v8, Lmiui/util/DensityIndexFile$DataItemDescription;->mIndexSize:B

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 1016
    iget-object v8, v2, Lmiui/util/DensityIndexFile$Builder$Item;->mObjects:[Ljava/lang/Object;

    aget-object v8, v8, v5

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1024
    :cond_9
    :goto_8
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    aget-object v8, v8, v5

    iget-byte v8, v8, Lmiui/util/DensityIndexFile$DataItemDescription;->mIndexSize:B

    add-int/2addr v7, v8

    .line 1014
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 1017
    :cond_a
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    aget-object v8, v8, v5

    iget-byte v8, v8, Lmiui/util/DensityIndexFile$DataItemDescription;->mIndexSize:B

    const/4 v9, 0x2

    if-ne v8, v9, :cond_b

    .line 1018
    iget-object v8, v2, Lmiui/util/DensityIndexFile$Builder$Item;->mObjects:[Ljava/lang/Object;

    aget-object v8, v8, v5

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeShort(I)V

    goto :goto_8

    .line 1019
    :cond_b
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    aget-object v8, v8, v5

    iget-byte v8, v8, Lmiui/util/DensityIndexFile$DataItemDescription;->mIndexSize:B

    const/4 v9, 0x4

    if-ne v8, v9, :cond_c

    .line 1020
    iget-object v8, v2, Lmiui/util/DensityIndexFile$Builder$Item;->mObjects:[Ljava/lang/Object;

    aget-object v8, v8, v5

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_8

    .line 1021
    :cond_c
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    aget-object v8, v8, v5

    iget-byte v8, v8, Lmiui/util/DensityIndexFile$DataItemDescription;->mIndexSize:B

    const/16 v9, 0x8

    if-ne v8, v9, :cond_9

    .line 1022
    iget-object v8, v2, Lmiui/util/DensityIndexFile$Builder$Item;->mObjects:[Ljava/lang/Object;

    aget-object v8, v8, v5

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {p1, v8, v9}, Ljava/io/DataOutput;->writeLong(J)V

    goto :goto_8

    .line 1009
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 973
    .end local v2           #item:Lmiui/util/DensityIndexFile$Builder$Item;
    .end local v3           #j:I
    .end local v5           #m:I
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1030
    .end local v0           #i:I
    .end local v1           #idk:Lmiui/util/DensityIndexFile$Builder$IndexData;
    :cond_f
    return v7
.end method


# virtual methods
.method public varargs add(I[Ljava/lang/Object;)V
    .locals 5
    .parameter "index"
    .parameter "objects"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 839
    invoke-direct {p0}, Lmiui/util/DensityIndexFile$Builder;->checkCurrentIndexingGroup()V

    .line 841
    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    array-length v2, v2

    array-length v3, p2

    if-eq v2, v3, :cond_0

    .line 842
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Different number of objects inputted"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 845
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_7

    .line 846
    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    aget-object v2, v2, v0

    iget-byte v2, v2, Lmiui/util/DensityIndexFile$DataItemDescription;->mType:B

    packed-switch v2, :pswitch_data_0

    .line 903
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unsupported type of objects inputted"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 848
    :pswitch_0
    aget-object v2, p2, v0

    instance-of v2, v2, Ljava/lang/Byte;

    if-nez v2, :cond_2

    .line 849
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] should be byte"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 853
    :pswitch_1
    aget-object v2, p2, v0

    instance-of v2, v2, Ljava/lang/Short;

    if-nez v2, :cond_2

    .line 854
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] should be short"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 858
    :pswitch_2
    aget-object v2, p2, v0

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_2

    .line 859
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] should be int"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 863
    :pswitch_3
    aget-object v2, p2, v0

    instance-of v2, v2, Ljava/lang/Long;

    if-nez v2, :cond_2

    .line 864
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] should be long"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 868
    :pswitch_4
    aget-object v2, p2, v0

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_1

    .line 869
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] should be String"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 871
    :cond_1
    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v0

    .line 872
    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    aget-object v3, v2, v0

    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    invoke-virtual {v2}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->size()I

    move-result v2

    invoke-static {v2}, Lmiui/util/DensityIndexFile;->getSizeOf(I)B

    move-result v2

    iput-byte v2, v3, Lmiui/util/DensityIndexFile$DataItemDescription;->mIndexSize:B

    .line 845
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 875
    :pswitch_5
    aget-object v2, p2, v0

    instance-of v2, v2, [B

    if-nez v2, :cond_3

    .line 876
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] should be byte[]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 878
    :cond_3
    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v0

    .line 879
    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    aget-object v3, v2, v0

    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    invoke-virtual {v2}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->size()I

    move-result v2

    invoke-static {v2}, Lmiui/util/DensityIndexFile;->getSizeOf(I)B

    move-result v2

    iput-byte v2, v3, Lmiui/util/DensityIndexFile$DataItemDescription;->mIndexSize:B

    goto :goto_1

    .line 882
    :pswitch_6
    aget-object v2, p2, v0

    instance-of v2, v2, [S

    if-nez v2, :cond_4

    .line 883
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] should be short[]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 885
    :cond_4
    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v0

    .line 886
    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    aget-object v3, v2, v0

    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    invoke-virtual {v2}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->size()I

    move-result v2

    invoke-static {v2}, Lmiui/util/DensityIndexFile;->getSizeOf(I)B

    move-result v2

    iput-byte v2, v3, Lmiui/util/DensityIndexFile$DataItemDescription;->mIndexSize:B

    goto/16 :goto_1

    .line 889
    :pswitch_7
    aget-object v2, p2, v0

    instance-of v2, v2, [I

    if-nez v2, :cond_5

    .line 890
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] should be int[]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 892
    :cond_5
    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v0

    .line 893
    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    aget-object v3, v2, v0

    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    invoke-virtual {v2}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->size()I

    move-result v2

    invoke-static {v2}, Lmiui/util/DensityIndexFile;->getSizeOf(I)B

    move-result v2

    iput-byte v2, v3, Lmiui/util/DensityIndexFile$DataItemDescription;->mIndexSize:B

    goto/16 :goto_1

    .line 896
    :pswitch_8
    aget-object v2, p2, v0

    instance-of v2, v2, [J

    if-nez v2, :cond_6

    .line 897
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] should be long[]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 899
    :cond_6
    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v0

    .line 900
    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    aget-object v3, v2, v0

    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    invoke-virtual {v2}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->size()I

    move-result v2

    invoke-static {v2}, Lmiui/util/DensityIndexFile;->getSizeOf(I)B

    move-result v2

    iput-byte v2, v3, Lmiui/util/DensityIndexFile$DataItemDescription;->mIndexSize:B

    goto/16 :goto_1

    .line 907
    :cond_7
    new-instance v1, Lmiui/util/DensityIndexFile$Builder$Item;

    invoke-direct {v1, p0, p1, p2}, Lmiui/util/DensityIndexFile$Builder$Item;-><init>(Lmiui/util/DensityIndexFile$Builder;I[Ljava/lang/Object;)V

    .line 908
    .local v1, item:Lmiui/util/DensityIndexFile$Builder$Item;
    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;

    iget-object v3, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v3, v3, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    return-void

    .line 846
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

.method public addGroup([I[[Ljava/lang/Object;)V
    .locals 3
    .parameter "indexes"
    .parameter "objects"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 826
    invoke-direct {p0}, Lmiui/util/DensityIndexFile$Builder;->checkCurrentIndexingDataKind()V

    .line 828
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_0

    .line 829
    invoke-virtual {p0}, Lmiui/util/DensityIndexFile$Builder;->newGroup()V

    .line 830
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 831
    aget v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lmiui/util/DensityIndexFile$Builder;->add(I[Ljava/lang/Object;)V

    .line 830
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 834
    .end local v0           #i:I
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Different number between indexes and objects"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 836
    .restart local v0       #i:I
    :cond_1
    return-void
.end method

.method public varargs addKind([Ljava/lang/Object;)V
    .locals 9
    .parameter "objects"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 769
    new-instance v0, Lmiui/util/DensityIndexFile$Builder$IndexData;

    array-length v4, p1

    invoke-direct {v0, v4}, Lmiui/util/DensityIndexFile$Builder$IndexData;-><init>(I)V

    iput-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    .line 770
    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    iget-object v4, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v0, p1

    if-ge v7, v0, :cond_9

    .line 773
    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v0, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    new-instance v4, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;-><init>(Lmiui/util/DensityIndexFile$Builder;Lmiui/util/DensityIndexFile$1;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    const/4 v1, 0x0

    .line 776
    .local v1, type:B
    const/4 v2, 0x1

    .line 777
    .local v2, indexSize:B
    aget-object v0, p1, v7

    instance-of v0, v0, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    .line 778
    const/4 v1, 0x0

    .line 779
    const/4 v2, 0x1

    .line 780
    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v0, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    aget-object v4, p1, v7

    invoke-virtual {v0, v4}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 812
    :goto_1
    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v8, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    new-instance v0, Lmiui/util/DensityIndexFile$DataItemDescription;

    const-wide/16 v5, 0x0

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lmiui/util/DensityIndexFile$DataItemDescription;-><init>(BBBBJ)V

    aput-object v0, v8, v7

    .line 772
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 781
    :cond_0
    aget-object v0, p1, v7

    instance-of v0, v0, Ljava/lang/Short;

    if-eqz v0, :cond_1

    .line 782
    const/4 v1, 0x1

    .line 783
    const/4 v2, 0x2

    .line 784
    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v0, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    aget-object v4, p1, v7

    invoke-virtual {v0, v4}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    goto :goto_1

    .line 785
    :cond_1
    aget-object v0, p1, v7

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 786
    const/4 v1, 0x2

    .line 787
    const/4 v2, 0x4

    .line 788
    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v0, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    aget-object v4, p1, v7

    invoke-virtual {v0, v4}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    goto :goto_1

    .line 789
    :cond_2
    aget-object v0, p1, v7

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 790
    const/4 v1, 0x3

    .line 791
    const/16 v2, 0x8

    .line 792
    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v0, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    aget-object v4, p1, v7

    invoke-virtual {v0, v4}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    goto :goto_1

    .line 793
    :cond_3
    aget-object v0, p1, v7

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 794
    const/4 v1, 0x4

    .line 795
    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v0, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    aget-object v4, p1, v7

    invoke-virtual {v0, v4}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v7

    goto :goto_1

    .line 796
    :cond_4
    aget-object v0, p1, v7

    instance-of v0, v0, [B

    if-eqz v0, :cond_5

    .line 797
    const/4 v1, 0x5

    .line 798
    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v0, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    aget-object v4, p1, v7

    invoke-virtual {v0, v4}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v7

    goto/16 :goto_1

    .line 799
    :cond_5
    aget-object v0, p1, v7

    instance-of v0, v0, [S

    if-eqz v0, :cond_6

    .line 800
    const/4 v1, 0x6

    .line 801
    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v0, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    aget-object v4, p1, v7

    invoke-virtual {v0, v4}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v7

    goto/16 :goto_1

    .line 802
    :cond_6
    aget-object v0, p1, v7

    instance-of v0, v0, [I

    if-eqz v0, :cond_7

    .line 803
    const/4 v1, 0x7

    .line 804
    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v0, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    aget-object v4, p1, v7

    invoke-virtual {v0, v4}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v7

    goto/16 :goto_1

    .line 805
    :cond_7
    aget-object v0, p1, v7

    instance-of v0, v0, [J

    if-eqz v0, :cond_8

    .line 806
    const/16 v1, 0x8

    .line 807
    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v0, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    aget-object v4, p1, v7

    invoke-virtual {v0, v4}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v7

    goto/16 :goto_1

    .line 809
    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported type of object["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] inputted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 815
    .end local v1           #type:B
    .end local v2           #indexSize:B
    :cond_9
    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    new-instance v3, Lmiui/util/DensityIndexFile$Builder$Item;

    const/4 v4, -0x1

    invoke-direct {v3, p0, v4, p1}, Lmiui/util/DensityIndexFile$Builder$Item;-><init>(Lmiui/util/DensityIndexFile$Builder;I[Ljava/lang/Object;)V

    iput-object v3, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDefaultValue:Lmiui/util/DensityIndexFile$Builder$Item;

    .line 816
    return-void
.end method

.method public newGroup()V
    .locals 2

    .prologue
    .line 819
    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v0, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v0, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;

    iget-object v1, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v1, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 821
    :cond_0
    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v0, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    :cond_1
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 5
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 913
    invoke-direct {p0}, Lmiui/util/DensityIndexFile$Builder;->build()V

    .line 915
    const/4 v1, 0x0

    .line 916
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v0, 0x0

    .line 918
    .local v0, done:Z
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 919
    .end local v1           #dos:Ljava/io/DataOutputStream;
    .local v2, dos:Ljava/io/DataOutputStream;
    :try_start_1
    invoke-direct {p0, v2}, Lmiui/util/DensityIndexFile$Builder;->writeAll(Ljava/io/DataOutput;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 920
    const/4 v0, 0x1

    .line 922
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 923
    if-nez v0, :cond_0

    .line 924
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 927
    :cond_0
    return-void

    .line 922
    .end local v2           #dos:Ljava/io/DataOutputStream;
    .restart local v1       #dos:Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v3

    :goto_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 923
    if-nez v0, :cond_1

    .line 924
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 922
    :cond_1
    throw v3

    .end local v1           #dos:Ljava/io/DataOutputStream;
    .restart local v2       #dos:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #dos:Ljava/io/DataOutputStream;
    .restart local v1       #dos:Ljava/io/DataOutputStream;
    goto :goto_0
.end method
