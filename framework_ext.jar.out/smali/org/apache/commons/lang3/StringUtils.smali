.class public Lorg/apache/commons/lang3/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/StringUtils$InitStripAccents;
    }
.end annotation


# static fields
.field public static final EMPTY:Ljava/lang/String; = ""

.field public static final INDEX_NOT_FOUND:I = -0x1

.field private static final PAD_LIMIT:I = 0x2000

.field private static final WHITESPACE_BLOCK:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/StringUtils;->WHITESPACE_BLOCK:Ljava/util/regex/Pattern;

    .line 111
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    return-void
.end method

.method public static abbreviate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "maxWidth"

    .prologue
    .line 5678
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static abbreviate(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .parameter "str"
    .parameter "offset"
    .parameter "maxWidth"

    .prologue
    const/4 v3, 0x4

    .line 5717
    if-nez p0, :cond_1

    .line 5718
    const/4 p0, 0x0

    .line 5742
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 5720
    .restart local p0
    :cond_1
    if-ge p2, v3, :cond_2

    .line 5721
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Minimum abbreviation width is 4"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5723
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p2, :cond_0

    .line 5726
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le p1, v1, :cond_3

    .line 5727
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    .line 5729
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v2, p2, -0x3

    if-ge v1, v2, :cond_4

    .line 5730
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p2, -0x3

    sub-int p1, v1, v2

    .line 5732
    :cond_4
    const-string v0, "..."

    .line 5733
    .local v0, abrevMarker:Ljava/lang/String;
    if-gt p1, v3, :cond_5

    .line 5734
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5736
    :cond_5
    const/4 v1, 0x7

    if-ge p2, v1, :cond_6

    .line 5737
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Minimum abbreviation width with offset is 7"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5739
    :cond_6
    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 5740
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, p2, -0x3

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5742
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, p2, -0x3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static abbreviateMiddle(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "str"
    .parameter "middle"
    .parameter "length"

    .prologue
    .line 5775
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5792
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 5779
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p2, v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    if-lt p2, v4, :cond_0

    .line 5783
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v3, p2, v4

    .line 5784
    .local v3, targetSting:I
    div-int/lit8 v4, v3, 0x2

    rem-int/lit8 v5, v3, 0x2

    add-int v2, v4, v5

    .line 5785
    .local v2, startOffset:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v5, v3, 0x2

    sub-int v1, v4, v5

    .line 5787
    .local v1, endOffset:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5788
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5789
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5790
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5792
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 5032
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, strLen:I
    if-nez v0, :cond_1

    .line 5035
    .end local v0           #strLen:I
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .restart local v0       #strLen:I
    .restart local p0
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5036
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5037
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5038
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static center(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "size"

    .prologue
    .line 4826
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->center(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static center(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .parameter "size"
    .parameter "padChar"

    .prologue
    .line 4854
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    .line 4864
    :cond_0
    :goto_0
    return-object p0

    .line 4857
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 4858
    .local v1, strLen:I
    sub-int v0, p1, v1

    .line 4859
    .local v0, pads:I
    if-lez v0, :cond_0

    .line 4862
    div-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v1

    invoke-static {p0, v2, p2}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    .line 4863
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    .line 4864
    goto :goto_0
.end method

.method public static center(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .parameter "size"
    .parameter "padStr"

    .prologue
    .line 4894
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    .line 4907
    :cond_0
    :goto_0
    return-object p0

    .line 4897
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4898
    const-string p2, " "

    .line 4900
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 4901
    .local v1, strLen:I
    sub-int v0, p1, v1

    .line 4902
    .local v0, pads:I
    if-lez v0, :cond_0

    .line 4905
    div-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v1

    invoke-static {p0, v2, p2}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4906
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4907
    goto :goto_0
.end method

.method public static chomp(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "str"

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    const/16 v5, 0xd

    .line 4340
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4362
    .end local p0
    .local v1, last:C
    .local v2, lastIdx:I
    :cond_0
    :goto_0
    return-object p0

    .line 4344
    .end local v1           #last:C
    .end local v2           #lastIdx:I
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 4345
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4346
    .local v0, ch:C
    if-eq v0, v5, :cond_2

    if-ne v0, v7, :cond_0

    .line 4347
    :cond_2
    const-string p0, ""

    goto :goto_0

    .line 4352
    .end local v0           #ch:C
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 4353
    .restart local v2       #lastIdx:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 4355
    .restart local v1       #last:C
    if-ne v1, v7, :cond_5

    .line 4356
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_4

    .line 4357
    add-int/lit8 v2, v2, -0x1

    .line 4362
    :cond_4
    :goto_1
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4359
    :cond_5
    if-eq v1, v5, :cond_4

    .line 4360
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static chomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "separator"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4394
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static chop(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "str"

    .prologue
    const/4 v6, 0x0

    .line 4423
    if-nez p0, :cond_1

    .line 4424
    const/4 v2, 0x0

    .line 4436
    :cond_0
    :goto_0
    return-object v2

    .line 4426
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 4427
    .local v3, strLen:I
    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    .line 4428
    const-string v2, ""

    goto :goto_0

    .line 4430
    :cond_2
    add-int/lit8 v1, v3, -0x1

    .line 4431
    .local v1, lastIdx:I
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 4432
    .local v2, ret:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4433
    .local v0, last:C
    const/16 v4, 0xa

    if-ne v0, v4, :cond_0

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    .line 4434
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static contains(Ljava/lang/CharSequence;I)Z
    .locals 2
    .parameter "seq"
    .parameter "searchChar"

    .prologue
    const/4 v0, 0x0

    .line 1377
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1380
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "seq"
    .parameter "searchSeq"

    .prologue
    const/4 v0, 0x0

    .line 1406
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1409
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static containsAny(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "cs"
    .parameter "searchChars"

    .prologue
    .line 1638
    if-nez p1, :cond_0

    .line 1639
    const/4 v0, 0x0

    .line 1641
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSequenceUtils;->toCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->containsAny(Ljava/lang/CharSequence;[C)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs containsAny(Ljava/lang/CharSequence;[C)Z
    .locals 11
    .parameter "cs"
    .parameter "searchChars"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1580
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    move v7, v8

    .line 1606
    :cond_1
    :goto_0
    return v7

    .line 1583
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1584
    .local v2, csLength:I
    array-length v6, p1

    .line 1585
    .local v6, searchLength:I
    add-int/lit8 v1, v2, -0x1

    .line 1586
    .local v1, csLast:I
    add-int/lit8 v5, v6, -0x1

    .line 1587
    .local v5, searchLast:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-lt v3, v2, :cond_3

    move v7, v8

    .line 1606
    goto :goto_0

    .line 1588
    :cond_3
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1589
    .local v0, ch:C
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    if-lt v4, v6, :cond_4

    .line 1587
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1590
    :cond_4
    aget-char v9, p1, v4

    if-ne v9, v0, :cond_5

    .line 1591
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1592
    if-eq v4, v5, :cond_1

    .line 1596
    if-ge v3, v1, :cond_5

    add-int/lit8 v9, v4, 0x1

    aget-char v9, p1, v9

    add-int/lit8 v10, v3, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_1

    .line 1589
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public static containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 7
    .parameter "str"
    .parameter "searchStr"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1437
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1447
    :cond_0
    :goto_0
    return v4

    .line 1440
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 1441
    .local v5, len:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int v6, v0, v5

    .line 1442
    .local v6, max:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-gt v2, v6, :cond_0

    move-object v0, p0

    move-object v3, p1

    .line 1443
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_2

    move v4, v1

    .line 1444
    goto :goto_0

    .line 1442
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static containsNone(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 1
    .parameter "cs"
    .parameter "invalidChars"

    .prologue
    .line 1889
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1890
    :cond_0
    const/4 v0, 0x1

    .line 1892
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->containsNone(Ljava/lang/CharSequence;[C)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs containsNone(Ljava/lang/CharSequence;[C)Z
    .locals 11
    .parameter "cs"
    .parameter "searchChars"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1836
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v7, v8

    .line 1862
    :cond_1
    :goto_0
    return v7

    .line 1839
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1840
    .local v2, csLen:I
    add-int/lit8 v1, v2, -0x1

    .line 1841
    .local v1, csLast:I
    array-length v6, p1

    .line 1842
    .local v6, searchLen:I
    add-int/lit8 v5, v6, -0x1

    .line 1843
    .local v5, searchLast:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-lt v3, v2, :cond_3

    move v7, v8

    .line 1862
    goto :goto_0

    .line 1844
    :cond_3
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1845
    .local v0, ch:C
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    if-lt v4, v6, :cond_4

    .line 1843
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1846
    :cond_4
    aget-char v9, p1, v4

    if-ne v9, v0, :cond_5

    .line 1847
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1848
    if-eq v4, v5, :cond_1

    .line 1852
    if-ge v3, v1, :cond_5

    add-int/lit8 v9, v4, 0x1

    aget-char v9, p1, v9

    add-int/lit8 v10, v3, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_1

    .line 1845
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public static containsOnly(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 1
    .parameter "cs"
    .parameter "validChars"

    .prologue
    .line 1804
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1805
    :cond_0
    const/4 v0, 0x0

    .line 1807
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->containsOnly(Ljava/lang/CharSequence;[C)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs containsOnly(Ljava/lang/CharSequence;[C)Z
    .locals 4
    .parameter "cs"
    .parameter "valid"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1768
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v0, v1

    .line 1777
    :cond_1
    :goto_0
    return v0

    .line 1771
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1774
    array-length v2, p1

    if-nez v2, :cond_3

    move v0, v1

    .line 1775
    goto :goto_0

    .line 1777
    :cond_3
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->indexOfAnyBut(Ljava/lang/CharSequence;[C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public static containsWhitespace(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "seq"

    .prologue
    const/4 v2, 0x0

    .line 1460
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1469
    :cond_0
    :goto_0
    return v2

    .line 1463
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1464
    .local v1, strLen:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 1465
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1466
    const/4 v2, 0x1

    goto :goto_0

    .line 1464
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static countMatches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 3
    .parameter "str"
    .parameter "sub"

    .prologue
    .line 5142
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5143
    :cond_0
    const/4 v0, 0x0

    .line 5151
    :cond_1
    return v0

    .line 5145
    :cond_2
    const/4 v0, 0x0

    .line 5146
    .local v0, count:I
    const/4 v1, 0x0

    .line 5147
    .local v1, idx:I
    :goto_0
    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 5148
    add-int/lit8 v0, v0, 0x1

    .line 5149
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public static defaultIfBlank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 5565
    .local p0, str:Ljava/lang/CharSequence;,"TT;"
    .local p1, defaultStr:Ljava/lang/CharSequence;,"TT;"
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1           #defaultStr:Ljava/lang/CharSequence;,"TT;"
    :goto_0
    return-object p1

    .restart local p1       #defaultStr:Ljava/lang/CharSequence;,"TT;"
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static defaultIfEmpty(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 5587
    .local p0, str:Ljava/lang/CharSequence;,"TT;"
    .local p1, defaultStr:Ljava/lang/CharSequence;,"TT;"
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1           #defaultStr:Ljava/lang/CharSequence;,"TT;"
    :goto_0
    return-object p1

    .restart local p1       #defaultStr:Ljava/lang/CharSequence;,"TT;"
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static defaultString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "str"

    .prologue
    .line 5522
    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0
    :cond_0
    return-object p0
.end method

.method public static defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "str"
    .parameter "defaultStr"

    .prologue
    .line 5543
    if-nez p0, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "str"

    .prologue
    .line 3554
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3568
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 3557
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 3558
    .local v4, sz:I
    new-array v0, v4, [C

    .line 3559
    .local v0, chs:[C
    const/4 v1, 0x0

    .line 3560
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    move v2, v1

    .end local v1           #count:I
    .local v2, count:I
    :goto_1
    if-lt v3, v4, :cond_2

    .line 3565
    if-eq v2, v4, :cond_0

    .line 3568
    new-instance p0, Ljava/lang/String;

    .end local p0
    const/4 v5, 0x0

    invoke-direct {p0, v0, v5, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 3561
    .restart local p0
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3562
    add-int/lit8 v1, v2, 0x1

    .end local v2           #count:I
    .restart local v1       #count:I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v0, v2

    .line 3560
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #count:I
    .restart local v2       #count:I
    goto :goto_1

    :cond_3
    move v1, v2

    .end local v2           #count:I
    .restart local v1       #count:I
    goto :goto_2
.end method

.method public static difference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str1"
    .parameter "str2"

    .prologue
    .line 5823
    if-nez p0, :cond_0

    .line 5833
    .end local p1
    :goto_0
    return-object p1

    .line 5826
    .restart local p1
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    .line 5827
    goto :goto_0

    .line 5829
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 5830
    .local v0, at:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 5831
    const-string p1, ""

    goto :goto_0

    .line 5833
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "str"
    .parameter "suffix"

    .prologue
    .line 6434
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method private static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 6
    .parameter "str"
    .parameter "suffix"
    .parameter "ignoreCase"

    .prologue
    const/4 v4, 0x0

    .line 6476
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 6477
    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 v4, 0x1

    .line 6483
    :cond_1
    :goto_0
    return v4

    .line 6479
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 6482
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v2, v0, v1

    .line 6483
    .local v2, strOffset:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p2

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v4

    goto :goto_0
.end method

.method public static varargs endsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 5
    .parameter "string"
    .parameter "searchStrings"

    .prologue
    const/4 v1, 0x0

    .line 6553
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6561
    :cond_0
    :goto_0
    return v1

    .line 6556
    :cond_1
    array-length v3, p1

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 6557
    .local v0, searchString:Ljava/lang/CharSequence;
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6558
    const/4 v1, 0x1

    goto :goto_0

    .line 6556
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "str"
    .parameter "suffix"

    .prologue
    .line 6461
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "cs1"
    .parameter "cs2"

    .prologue
    .line 782
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6
    .parameter "str1"
    .parameter "str2"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 807
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 808
    :cond_0
    if-ne p0, p1, :cond_1

    .line 810
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 808
    goto :goto_0

    .line 810
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v1

    goto :goto_0
.end method

.method public static varargs getCommonPrefix([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "strs"

    .prologue
    const/4 v2, 0x0

    .line 6004
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 6005
    :cond_0
    const-string v1, ""

    .line 6019
    :goto_0
    return-object v1

    .line 6007
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->indexOfDifference([Ljava/lang/CharSequence;)I

    move-result v0

    .line 6008
    .local v0, smallestIndexOfDiff:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 6010
    aget-object v1, p0, v2

    if-nez v1, :cond_2

    .line 6011
    const-string v1, ""

    goto :goto_0

    .line 6013
    :cond_2
    aget-object v1, p0, v2

    goto :goto_0

    .line 6014
    :cond_3
    if-nez v0, :cond_4

    .line 6016
    const-string v1, ""

    goto :goto_0

    .line 6019
    :cond_4
    aget-object v1, p0, v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 13
    .parameter "s"
    .parameter "t"

    .prologue
    const/4 v10, 0x0

    .line 6062
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 6063
    :cond_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Strings must not be null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 6083
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 6084
    .local v6, n:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 6086
    .local v5, m:I
    if-nez v6, :cond_2

    move v10, v5

    .line 6135
    :goto_0
    return v10

    .line 6088
    :cond_2
    if-nez v5, :cond_3

    move v10, v6

    .line 6089
    goto :goto_0

    .line 6092
    :cond_3
    if-le v6, v5, :cond_4

    .line 6094
    move-object v9, p0

    .line 6095
    .local v9, tmp:Ljava/lang/CharSequence;
    move-object p0, p1

    .line 6096
    move-object p1, v9

    .line 6097
    move v6, v5

    .line 6098
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 6101
    .end local v9           #tmp:Ljava/lang/CharSequence;
    :cond_4
    add-int/lit8 v11, v6, 0x1

    new-array v7, v11, [I

    .line 6102
    .local v7, p:[I
    add-int/lit8 v11, v6, 0x1

    new-array v2, v11, [I

    .line 6113
    .local v2, d:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-le v3, v6, :cond_5

    .line 6117
    const/4 v4, 0x1

    .local v4, j:I
    :goto_2
    if-le v4, v5, :cond_6

    .line 6135
    aget v10, v7, v6

    goto :goto_0

    .line 6114
    .end local v4           #j:I
    :cond_5
    aput v3, v7, v3

    .line 6113
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6118
    .restart local v4       #j:I
    :cond_6
    add-int/lit8 v11, v4, -0x1

    invoke-interface {p1, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 6119
    .local v8, t_j:C
    aput v4, v2, v10

    .line 6121
    const/4 v3, 0x1

    :goto_3
    if-le v3, v6, :cond_7

    .line 6128
    move-object v0, v7

    .line 6129
    .local v0, _d:[I
    move-object v7, v2

    .line 6130
    move-object v2, v0

    .line 6117
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 6122
    .end local v0           #_d:[I
    :cond_7
    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ne v11, v8, :cond_8

    move v1, v10

    .line 6124
    .local v1, cost:I
    :goto_4
    add-int/lit8 v11, v3, -0x1

    aget v11, v2, v11

    add-int/lit8 v11, v11, 0x1

    aget v12, v7, v3

    add-int/lit8 v12, v12, 0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/lit8 v12, v3, -0x1

    aget v12, v7, v12

    add-int/2addr v12, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    aput v11, v2, v3

    .line 6121
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 6122
    .end local v1           #cost:I
    :cond_8
    const/4 v1, 0x1

    goto :goto_4
.end method

.method public static getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 15
    .parameter "s"
    .parameter "t"
    .parameter "threshold"

    .prologue
    .line 6171
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 6172
    :cond_0
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Strings must not be null"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 6174
    :cond_1
    if-gez p2, :cond_2

    .line 6175
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Threshold must not be negative"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 6222
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    .line 6223
    .local v9, n:I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 6226
    .local v6, m:I
    if-nez v9, :cond_4

    .line 6227
    move/from16 v0, p2

    if-gt v6, v0, :cond_3

    move v13, v6

    .line 6296
    :goto_0
    return v13

    .line 6227
    :cond_3
    const/4 v13, -0x1

    goto :goto_0

    .line 6228
    :cond_4
    if-nez v6, :cond_6

    .line 6229
    move/from16 v0, p2

    if-gt v9, v0, :cond_5

    move v13, v9

    goto :goto_0

    :cond_5
    const/4 v13, -0x1

    goto :goto_0

    .line 6232
    :cond_6
    if-le v9, v6, :cond_7

    .line 6234
    move-object v12, p0

    .line 6235
    .local v12, tmp:Ljava/lang/CharSequence;
    move-object/from16 p0, p1

    .line 6236
    move-object/from16 p1, v12

    .line 6237
    move v9, v6

    .line 6238
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 6241
    .end local v12           #tmp:Ljava/lang/CharSequence;
    :cond_7
    add-int/lit8 v13, v9, 0x1

    new-array v10, v13, [I

    .line 6242
    .local v10, p:[I
    add-int/lit8 v13, v9, 0x1

    new-array v3, v13, [I

    .line 6246
    .local v3, d:[I
    move/from16 v0, p2

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int/lit8 v2, v13, 0x1

    .line 6247
    .local v2, boundary:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-lt v4, v2, :cond_8

    .line 6252
    array-length v13, v10

    const v14, 0x7fffffff

    invoke-static {v10, v2, v13, v14}, Ljava/util/Arrays;->fill([IIII)V

    .line 6253
    const v13, 0x7fffffff

    invoke-static {v3, v13}, Ljava/util/Arrays;->fill([II)V

    .line 6256
    const/4 v5, 0x1

    .local v5, j:I
    :goto_2
    if-le v5, v6, :cond_9

    .line 6293
    aget v13, v10, v9

    move/from16 v0, p2

    if-gt v13, v0, :cond_e

    .line 6294
    aget v13, v10, v9

    goto :goto_0

    .line 6248
    .end local v5           #j:I
    :cond_8
    aput v4, v10, v4

    .line 6247
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 6257
    .restart local v5       #j:I
    :cond_9
    add-int/lit8 v13, v5, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    .line 6258
    .local v11, t_j:C
    const/4 v13, 0x0

    aput v5, v3, v13

    .line 6261
    const/4 v13, 0x1

    sub-int v14, v5, p2

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 6262
    .local v8, min:I
    add-int v13, v5, p2

    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 6265
    .local v7, max:I
    if-le v8, v7, :cond_a

    .line 6266
    const/4 v13, -0x1

    goto :goto_0

    .line 6270
    :cond_a
    const/4 v13, 0x1

    if-le v8, v13, :cond_b

    .line 6271
    add-int/lit8 v13, v8, -0x1

    const v14, 0x7fffffff

    aput v14, v3, v13

    .line 6275
    :cond_b
    move v4, v8

    :goto_3
    if-le v4, v7, :cond_c

    .line 6286
    move-object v1, v10

    .line 6287
    .local v1, _d:[I
    move-object v10, v3

    .line 6288
    move-object v3, v1

    .line 6256
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 6276
    .end local v1           #_d:[I
    :cond_c
    add-int/lit8 v13, v4, -0x1

    invoke-interface {p0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ne v13, v11, :cond_d

    .line 6278
    add-int/lit8 v13, v4, -0x1

    aget v13, v10, v13

    aput v13, v3, v4

    .line 6275
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 6281
    :cond_d
    add-int/lit8 v13, v4, -0x1

    aget v13, v3, v13

    aget v14, v10, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int/lit8 v14, v4, -0x1

    aget v14, v10, v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    aput v13, v3, v4

    goto :goto_4

    .line 6296
    .end local v7           #max:I
    .end local v8           #min:I
    .end local v11           #t_j:C
    :cond_e
    const/4 v13, -0x1

    goto/16 :goto_0
.end method

.method public static indexOf(Ljava/lang/CharSequence;I)I
    .locals 1
    .parameter "seq"
    .parameter "searchChar"

    .prologue
    .line 837
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    const/4 v0, -0x1

    .line 840
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/CharSequence;II)I
    .locals 1
    .parameter "seq"
    .parameter "searchChar"
    .parameter "startPos"

    .prologue
    .line 870
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    const/4 v0, -0x1

    .line 873
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "seq"
    .parameter "searchSeq"

    .prologue
    .line 901
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 902
    :cond_0
    const/4 v0, -0x1

    .line 904
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .parameter "seq"
    .parameter "searchSeq"
    .parameter "startPos"

    .prologue
    .line 941
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 942
    :cond_0
    const/4 v0, -0x1

    .line 944
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOfAny(Ljava/lang/CharSequence;Ljava/lang/String;)I
    .locals 1
    .parameter "cs"
    .parameter "searchChars"

    .prologue
    .line 1547
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1548
    :cond_0
    const/4 v0, -0x1

    .line 1550
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->indexOfAny(Ljava/lang/CharSequence;[C)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs indexOfAny(Ljava/lang/CharSequence;[C)I
    .locals 10
    .parameter "cs"
    .parameter "searchChars"

    .prologue
    const/4 v7, -0x1

    .line 1498
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    move v3, v7

    .line 1520
    :cond_1
    :goto_0
    return v3

    .line 1501
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1502
    .local v2, csLen:I
    add-int/lit8 v1, v2, -0x1

    .line 1503
    .local v1, csLast:I
    array-length v6, p1

    .line 1504
    .local v6, searchLen:I
    add-int/lit8 v5, v6, -0x1

    .line 1505
    .local v5, searchLast:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-lt v3, v2, :cond_3

    move v3, v7

    .line 1520
    goto :goto_0

    .line 1506
    :cond_3
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1507
    .local v0, ch:C
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    if-lt v4, v6, :cond_4

    .line 1505
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1508
    :cond_4
    aget-char v8, p1, v4

    if-ne v8, v0, :cond_5

    .line 1509
    if-ge v3, v1, :cond_1

    if-ge v4, v5, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1511
    add-int/lit8 v8, v4, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v9, v3, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-eq v8, v9, :cond_1

    .line 1507
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public static varargs indexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I
    .locals 7
    .parameter "str"
    .parameter "searchStrs"

    .prologue
    const/4 v5, -0x1

    .line 1925
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v1, v5

    .line 1949
    :cond_1
    :goto_0
    return v1

    .line 1928
    :cond_2
    array-length v3, p1

    .line 1931
    .local v3, sz:I
    const v1, 0x7fffffff

    .line 1933
    .local v1, ret:I
    const/4 v4, 0x0

    .line 1934
    .local v4, tmp:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v3, :cond_3

    .line 1949
    const v6, 0x7fffffff

    if-ne v1, v6, :cond_1

    move v1, v5

    goto :goto_0

    .line 1935
    :cond_3
    aget-object v2, p1, v0

    .line 1936
    .local v2, search:Ljava/lang/CharSequence;
    if-nez v2, :cond_5

    .line 1934
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1939
    :cond_5
    const/4 v6, 0x0

    invoke-static {p0, v2, v6}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v4

    .line 1940
    if-eq v4, v5, :cond_4

    .line 1944
    if-ge v4, v1, :cond_4

    .line 1945
    move v1, v4

    goto :goto_2
.end method

.method public static indexOfAnyBut(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 8
    .parameter "seq"
    .parameter "searchChars"

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 1721
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move v3, v5

    .line 1739
    :cond_1
    :goto_0
    return v3

    .line 1724
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 1725
    .local v4, strLen:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-lt v3, v4, :cond_3

    move v3, v5

    .line 1739
    goto :goto_0

    .line 1726
    :cond_3
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1727
    .local v0, ch:C
    invoke-static {p1, v0, v6}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v7

    if-ltz v7, :cond_5

    const/4 v2, 0x1

    .line 1728
    .local v2, chFound:Z
    :goto_2
    add-int/lit8 v7, v3, 0x1

    if-ge v7, v4, :cond_6

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1729
    add-int/lit8 v7, v3, 0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1730
    .local v1, ch2:C
    if-eqz v2, :cond_4

    invoke-static {p1, v1, v6}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v7

    if-ltz v7, :cond_1

    .line 1725
    .end local v1           #ch2:C
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2           #chFound:Z
    :cond_5
    move v2, v6

    .line 1727
    goto :goto_2

    .line 1734
    .restart local v2       #chFound:Z
    :cond_6
    if-nez v2, :cond_4

    goto :goto_0
.end method

.method public static varargs indexOfAnyBut(Ljava/lang/CharSequence;[C)I
    .locals 10
    .parameter "cs"
    .parameter "searchChars"

    .prologue
    const/4 v7, -0x1

    .line 1671
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    move v3, v7

    .line 1694
    :cond_1
    :goto_0
    return v3

    .line 1674
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1675
    .local v2, csLen:I
    add-int/lit8 v1, v2, -0x1

    .line 1676
    .local v1, csLast:I
    array-length v6, p1

    .line 1677
    .local v6, searchLen:I
    add-int/lit8 v5, v6, -0x1

    .line 1679
    .local v5, searchLast:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-lt v3, v2, :cond_3

    move v3, v7

    .line 1694
    goto :goto_0

    .line 1680
    :cond_3
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1681
    .local v0, ch:C
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    if-ge v4, v6, :cond_1

    .line 1682
    aget-char v8, p1, v4

    if-ne v8, v0, :cond_5

    .line 1683
    if-ge v3, v1, :cond_4

    if-ge v4, v5, :cond_4

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1684
    add-int/lit8 v8, v4, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v9, v3, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_5

    .line 1679
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1681
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public static indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 4
    .parameter "cs1"
    .parameter "cs2"

    .prologue
    const/4 v1, -0x1

    .line 5862
    if-ne p0, p1, :cond_1

    move v0, v1

    .line 5877
    :cond_0
    :goto_0
    return v0

    .line 5865
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    .line 5866
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 5869
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v0, v2, :cond_5

    .line 5874
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    move v0, v1

    .line 5877
    goto :goto_0

    .line 5870
    :cond_5
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_4

    .line 5869
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static varargs indexOfDifference([Ljava/lang/CharSequence;)I
    .locals 14
    .parameter "css"

    .prologue
    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 5913
    if-eqz p0, :cond_0

    array-length v12, p0

    const/4 v13, 0x1

    if-gt v12, v13, :cond_2

    :cond_0
    move v8, v11

    .line 5967
    :cond_1
    :goto_0
    return v8

    .line 5916
    :cond_2
    const/4 v1, 0x0

    .line 5917
    .local v1, anyStringNull:Z
    const/4 v0, 0x1

    .line 5918
    .local v0, allStringsNull:Z
    array-length v2, p0

    .line 5919
    .local v2, arrayLen:I
    const v8, 0x7fffffff

    .line 5920
    .local v8, shortestStrLen:I
    const/4 v7, 0x0

    .line 5925
    .local v7, longestStrLen:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-lt v6, v2, :cond_4

    .line 5937
    if-nez v0, :cond_3

    if-nez v7, :cond_6

    if-nez v1, :cond_6

    :cond_3
    move v8, v11

    .line 5938
    goto :goto_0

    .line 5926
    :cond_4
    aget-object v12, p0, v6

    if-nez v12, :cond_5

    .line 5927
    const/4 v1, 0x1

    .line 5928
    const/4 v8, 0x0

    .line 5925
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 5930
    :cond_5
    const/4 v0, 0x0

    .line 5931
    aget-object v12, p0, v6

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 5932
    aget-object v12, p0, v6

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_2

    .line 5942
    :cond_6
    if-nez v8, :cond_7

    move v8, v10

    .line 5943
    goto :goto_0

    .line 5947
    :cond_7
    const/4 v5, -0x1

    .line 5948
    .local v5, firstDiff:I
    const/4 v9, 0x0

    .local v9, stringPos:I
    :goto_3
    if-lt v9, v8, :cond_a

    .line 5961
    :cond_8
    if-ne v5, v11, :cond_9

    if-ne v8, v7, :cond_1

    :cond_9
    move v8, v5

    .line 5967
    goto :goto_0

    .line 5949
    :cond_a
    aget-object v12, p0, v10

    invoke-interface {v12, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 5950
    .local v4, comparisonChar:C
    const/4 v3, 0x1

    .local v3, arrayPos:I
    :goto_4
    if-lt v3, v2, :cond_b

    .line 5956
    :goto_5
    if-ne v5, v11, :cond_8

    .line 5948
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 5951
    :cond_b
    aget-object v12, p0, v3

    invoke-interface {v12, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-eq v12, v4, :cond_c

    .line 5952
    move v5, v9

    .line 5953
    goto :goto_5

    .line 5950
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method public static indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "str"
    .parameter "searchStr"

    .prologue
    .line 1048
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 8
    .parameter "str"
    .parameter "searchStr"
    .parameter "startPos"

    .prologue
    const/4 v7, -0x1

    .line 1084
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v2, v7

    .line 1102
    :cond_1
    :goto_0
    return v2

    .line 1087
    :cond_2
    if-gez p2, :cond_3

    .line 1088
    const/4 p2, 0x0

    .line 1090
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v6, v0, 0x1

    .line 1091
    .local v6, endLimit:I
    if-le p2, v6, :cond_4

    move v2, v7

    .line 1092
    goto :goto_0

    .line 1094
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5

    move v2, p2

    .line 1095
    goto :goto_0

    .line 1097
    :cond_5
    move v2, p2

    .local v2, i:I
    :goto_1
    if-lt v2, v6, :cond_6

    move v2, v7

    .line 1102
    goto :goto_0

    .line 1098
    :cond_6
    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1097
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isAllLowerCase(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "cs"

    .prologue
    const/4 v2, 0x0

    .line 5459
    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5468
    :cond_0
    :goto_0
    return v2

    .line 5462
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5463
    .local v1, sz:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v1, :cond_2

    .line 5468
    const/4 v2, 0x1

    goto :goto_0

    .line 5464
    :cond_2
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5463
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isAllUpperCase(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "cs"

    .prologue
    const/4 v2, 0x0

    .line 5491
    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5500
    :cond_0
    :goto_0
    return v2

    .line 5494
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5495
    .local v1, sz:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v1, :cond_2

    .line 5500
    const/4 v2, 0x1

    goto :goto_0

    .line 5496
    :cond_2
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5495
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isAlpha(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "cs"

    .prologue
    const/4 v2, 0x0

    .line 5177
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 5186
    :cond_0
    :goto_0
    return v2

    .line 5180
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5181
    .local v1, sz:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v1, :cond_2

    .line 5186
    const/4 v2, 0x1

    goto :goto_0

    .line 5182
    :cond_2
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5181
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isAlphaSpace(Ljava/lang/CharSequence;)Z
    .locals 5
    .parameter "cs"

    .prologue
    const/4 v2, 0x0

    .line 5212
    if-nez p0, :cond_1

    .line 5221
    :cond_0
    :goto_0
    return v2

    .line 5215
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5216
    .local v1, sz:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v1, :cond_2

    .line 5221
    const/4 v2, 0x1

    goto :goto_0

    .line 5217
    :cond_2
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 5216
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isAlphanumeric(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "cs"

    .prologue
    const/4 v2, 0x0

    .line 5247
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 5256
    :cond_0
    :goto_0
    return v2

    .line 5250
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5251
    .local v1, sz:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v1, :cond_2

    .line 5256
    const/4 v2, 0x1

    goto :goto_0

    .line 5252
    :cond_2
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5251
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isAlphanumericSpace(Ljava/lang/CharSequence;)Z
    .locals 5
    .parameter "cs"

    .prologue
    const/4 v2, 0x0

    .line 5282
    if-nez p0, :cond_1

    .line 5291
    :cond_0
    :goto_0
    return v2

    .line 5285
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5286
    .local v1, sz:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v1, :cond_2

    .line 5291
    const/4 v2, 0x1

    goto :goto_0

    .line 5287
    :cond_2
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 5286
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isAsciiPrintable(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "cs"

    .prologue
    const/4 v2, 0x0

    .line 5321
    if-nez p0, :cond_1

    .line 5330
    :cond_0
    :goto_0
    return v2

    .line 5324
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5325
    .local v1, sz:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v1, :cond_2

    .line 5330
    const/4 v2, 0x1

    goto :goto_0

    .line 5326
    :cond_2
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/commons/lang3/CharUtils;->isAsciiPrintable(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5325
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isBlank(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "cs"

    .prologue
    const/4 v2, 0x1

    .line 224
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, strLen:I
    if-nez v1, :cond_1

    .line 232
    .end local v1           #strLen:I
    :cond_0
    :goto_0
    return v2

    .line 227
    .restart local v1       #strLen:I
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 228
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 229
    const/4 v2, 0x0

    goto :goto_0

    .line 227
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "cs"

    .prologue
    .line 184
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNotBlank(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "cs"

    .prologue
    .line 253
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNotEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "cs"

    .prologue
    .line 203
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNumeric(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "cs"

    .prologue
    const/4 v2, 0x0

    .line 5357
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 5366
    :cond_0
    :goto_0
    return v2

    .line 5360
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5361
    .local v1, sz:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v1, :cond_2

    .line 5366
    const/4 v2, 0x1

    goto :goto_0

    .line 5362
    :cond_2
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5361
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isNumericSpace(Ljava/lang/CharSequence;)Z
    .locals 5
    .parameter "cs"

    .prologue
    const/4 v2, 0x0

    .line 5394
    if-nez p0, :cond_1

    .line 5403
    :cond_0
    :goto_0
    return v2

    .line 5397
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5398
    .local v1, sz:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v1, :cond_2

    .line 5403
    const/4 v2, 0x1

    goto :goto_0

    .line 5399
    :cond_2
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 5398
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isWhitespace(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "cs"

    .prologue
    const/4 v2, 0x0

    .line 5427
    if-nez p0, :cond_1

    .line 5436
    :cond_0
    :goto_0
    return v2

    .line 5430
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5431
    .local v1, sz:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v1, :cond_2

    .line 5436
    const/4 v2, 0x1

    goto :goto_0

    .line 5432
    :cond_2
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5431
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static join(Ljava/lang/Iterable;C)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter "separator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3510
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    if-nez p0, :cond_0

    .line 3511
    const/4 v0, 0x0

    .line 3513
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter "separator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3531
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    if-nez p0, :cond_0

    .line 3532
    const/4 v0, 0x0

    .line 3534
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join(Ljava/util/Iterator;C)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter "separator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3422
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    if-nez p0, :cond_0

    .line 3423
    const/4 v3, 0x0

    .line 3447
    :goto_0
    return-object v3

    .line 3425
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3426
    const-string v3, ""

    goto :goto_0

    .line 3428
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3429
    .local v1, first:Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3430
    invoke-static {v1}, Lorg/apache/commons/lang3/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3434
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3435
    .local v0, buf:Ljava/lang/StringBuilder;
    if-eqz v1, :cond_3

    .line 3436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3439
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 3447
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3440
    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3441
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3442
    .local v2, obj:Ljava/lang/Object;
    if-eqz v2, :cond_3

    .line 3443
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter "separator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3466
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    if-nez p0, :cond_0

    .line 3467
    const/4 v3, 0x0

    .line 3492
    :goto_0
    return-object v3

    .line 3469
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3470
    const-string v3, ""

    goto :goto_0

    .line 3472
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3473
    .local v1, first:Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3474
    invoke-static {v1}, Lorg/apache/commons/lang3/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3478
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3479
    .local v0, buf:Ljava/lang/StringBuilder;
    if-eqz v1, :cond_3

    .line 3480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3483
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 3492
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3484
    :cond_4
    if-eqz p1, :cond_5

    .line 3485
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3487
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3488
    .local v2, obj:Ljava/lang/Object;
    if-eqz v2, :cond_3

    .line 3489
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static varargs join([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "elements"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3239
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;C)Ljava/lang/String;
    .locals 2
    .parameter "array"
    .parameter "separator"

    .prologue
    .line 3265
    if-nez p0, :cond_0

    .line 3266
    const/4 v0, 0x0

    .line 3269
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([Ljava/lang/Object;CII)Ljava/lang/String;
    .locals 4
    .parameter "array"
    .parameter "separator"
    .parameter "startIndex"
    .parameter "endIndex"

    .prologue
    .line 3299
    if-nez p0, :cond_0

    .line 3300
    const/4 v3, 0x0

    .line 3317
    :goto_0
    return-object v3

    .line 3302
    :cond_0
    sub-int v2, p3, p2

    .line 3303
    .local v2, noOfItems:I
    if-gtz v2, :cond_1

    .line 3304
    const-string v3, ""

    goto :goto_0

    .line 3307
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v2, 0x10

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3309
    .local v0, buf:Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, i:I
    :goto_1
    if-lt v1, p3, :cond_2

    .line 3317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3310
    :cond_2
    if-le v1, p2, :cond_3

    .line 3311
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3313
    :cond_3
    aget-object v3, p0, v1

    if-eqz v3, :cond_4

    .line 3314
    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3309
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "array"
    .parameter "separator"

    .prologue
    .line 3344
    if-nez p0, :cond_0

    .line 3345
    const/4 v0, 0x0

    .line 3347
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .parameter "array"
    .parameter "separator"
    .parameter "startIndex"
    .parameter "endIndex"

    .prologue
    .line 3378
    if-nez p0, :cond_0

    .line 3379
    const/4 v3, 0x0

    .line 3402
    :goto_0
    return-object v3

    .line 3381
    :cond_0
    if-nez p1, :cond_1

    .line 3382
    const-string p1, ""

    .line 3387
    :cond_1
    sub-int v2, p3, p2

    .line 3388
    .local v2, noOfItems:I
    if-gtz v2, :cond_2

    .line 3389
    const-string v3, ""

    goto :goto_0

    .line 3392
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v2, 0x10

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3394
    .local v0, buf:Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, i:I
    :goto_1
    if-lt v1, p3, :cond_3

    .line 3402
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3395
    :cond_3
    if-le v1, p2, :cond_4

    .line 3396
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3398
    :cond_4
    aget-object v3, p0, v1

    if-eqz v3, :cond_5

    .line 3399
    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3394
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;I)I
    .locals 1
    .parameter "seq"
    .parameter "searchChar"

    .prologue
    .line 1128
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1129
    const/4 v0, -0x1

    .line 1131
    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;II)I
    .locals 1
    .parameter "seq"
    .parameter "searchChar"
    .parameter "startPos"

    .prologue
    .line 1163
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1164
    const/4 v0, -0x1

    .line 1166
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "seq"
    .parameter "searchSeq"

    .prologue
    .line 1193
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1194
    :cond_0
    const/4 v0, -0x1

    .line 1196
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .parameter "seq"
    .parameter "searchSeq"
    .parameter "startPos"

    .prologue
    .line 1267
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1268
    :cond_0
    const/4 v0, -0x1

    .line 1270
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs lastIndexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I
    .locals 6
    .parameter "str"
    .parameter "searchStrs"

    .prologue
    .line 1979
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 1980
    :cond_0
    const/4 v1, -0x1

    .line 1995
    :cond_1
    return v1

    .line 1982
    :cond_2
    array-length v3, p1

    .line 1983
    .local v3, sz:I
    const/4 v1, -0x1

    .line 1984
    .local v1, ret:I
    const/4 v4, 0x0

    .line 1985
    .local v4, tmp:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 1986
    aget-object v2, p1, v0

    .line 1987
    .local v2, search:Ljava/lang/CharSequence;
    if-nez v2, :cond_4

    .line 1985
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1990
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {p0, v2, v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v4

    .line 1991
    if-le v4, v1, :cond_3

    .line 1992
    move v1, v4

    goto :goto_1
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "str"
    .parameter "searchStr"

    .prologue
    .line 1297
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1298
    :cond_0
    const/4 v0, -0x1

    .line 1300
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 7
    .parameter "str"
    .parameter "searchStr"
    .parameter "startPos"

    .prologue
    const/4 v6, -0x1

    .line 1333
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v2, v6

    .line 1351
    :cond_1
    :goto_0
    return v2

    .line 1336
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_3

    .line 1337
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int p2, v0, v1

    .line 1339
    :cond_3
    if-gez p2, :cond_4

    move v2, v6

    .line 1340
    goto :goto_0

    .line 1342
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5

    move v2, p2

    .line 1343
    goto :goto_0

    .line 1346
    :cond_5
    move v2, p2

    .local v2, i:I
    :goto_1
    if-gez v2, :cond_6

    move v2, v6

    .line 1351
    goto :goto_0

    .line 1347
    :cond_6
    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1346
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public static lastOrdinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .parameter "str"
    .parameter "searchStr"
    .parameter "ordinal"

    .prologue
    .line 1234
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I

    move-result v0

    return v0
.end method

.method public static left(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "len"

    .prologue
    .line 2135
    if-nez p0, :cond_1

    .line 2136
    const/4 p0, 0x0

    .line 2144
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 2138
    .restart local p0
    :cond_1
    if-gez p1, :cond_2

    .line 2139
    const-string p0, ""

    goto :goto_0

    .line 2141
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 2144
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static leftPad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "size"

    .prologue
    .line 4693
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static leftPad(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 2
    .parameter "str"
    .parameter "size"
    .parameter "padChar"

    .prologue
    .line 4718
    if-nez p0, :cond_1

    .line 4719
    const/4 p0, 0x0

    .line 4728
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 4721
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, p1, v1

    .line 4722
    .local v0, pads:I
    if-lez v0, :cond_0

    .line 4725
    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    .line 4726
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4728
    :cond_2
    invoke-static {p2, v0}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "str"
    .parameter "size"
    .parameter "padStr"

    .prologue
    const/4 v7, 0x0

    .line 4755
    if-nez p0, :cond_1

    .line 4756
    const/4 p0, 0x0

    .line 4781
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 4758
    .restart local p0
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4759
    const-string p2, " "

    .line 4761
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 4762
    .local v2, padLen:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 4763
    .local v5, strLen:I
    sub-int v4, p1, v5

    .line 4764
    .local v4, pads:I
    if-lez v4, :cond_0

    .line 4767
    const/4 v6, 0x1

    if-ne v2, v6, :cond_3

    const/16 v6, 0x2000

    if-gt v4, v6, :cond_3

    .line 4768
    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {p0, p1, v6}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4771
    :cond_3
    if-ne v4, v2, :cond_4

    .line 4772
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4773
    :cond_4
    if-ge v4, v2, :cond_5

    .line 4774
    invoke-virtual {p2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4776
    :cond_5
    new-array v3, v4, [C

    .line 4777
    .local v3, padding:[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 4778
    .local v1, padChars:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v4, :cond_6

    .line 4781
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4779
    :cond_6
    rem-int v6, v0, v2

    aget-char v6, v1, v6

    aput-char v6, v3, v0

    .line 4778
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static length(Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "cs"

    .prologue
    .line 4797
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method public static lowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 4981
    if-nez p0, :cond_0

    .line 4982
    const/4 v0, 0x0

    .line 4984
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static lowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "locale"

    .prologue
    .line 5004
    if-nez p0, :cond_0

    .line 5005
    const/4 v0, 0x0

    .line 5007
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static mid(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .parameter "str"
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 2206
    if-nez p0, :cond_0

    .line 2207
    const/4 v0, 0x0

    .line 2218
    :goto_0
    return-object v0

    .line 2209
    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 2210
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 2212
    :cond_2
    if-gez p1, :cond_3

    .line 2213
    const/4 p1, 0x0

    .line 2215
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p1, p2

    if-gt v0, v1, :cond_4

    .line 2216
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2218
    :cond_4
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static normalizeSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    .line 6528
    if-nez p0, :cond_0

    .line 6529
    const/4 v0, 0x0

    .line 6531
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/commons/lang3/StringUtils;->WHITESPACE_BLOCK:Ljava/util/regex/Pattern;

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .parameter "str"
    .parameter "searchStr"
    .parameter "ordinal"

    .prologue
    .line 982
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I

    move-result v0

    return v0
.end method

.method private static ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I
    .locals 3
    .parameter "str"
    .parameter "searchStr"
    .parameter "ordinal"
    .parameter "lastIndex"

    .prologue
    const/4 v1, -0x1

    .line 1000
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-gtz p2, :cond_1

    .line 1019
    :cond_0
    :goto_0
    return v1

    .line 1003
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 1004
    if-eqz p3, :cond_2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1006
    :cond_3
    const/4 v0, 0x0

    .line 1007
    .local v0, found:I
    if-eqz p3, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1009
    .local v1, index:I
    :cond_4
    if-eqz p3, :cond_5

    .line 1010
    add-int/lit8 v2, v1, -0x1

    invoke-static {p0, p1, v2}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    .line 1014
    :goto_2
    if-ltz v1, :cond_0

    .line 1017
    add-int/lit8 v0, v0, 0x1

    .line 1018
    if-lt v0, p2, :cond_4

    goto :goto_0

    .line 1012
    :cond_5
    add-int/lit8 v2, v1, 0x1

    invoke-static {p0, p1, v2}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    goto :goto_2
.end method

.method public static overlay(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .parameter "str"
    .parameter "overlay"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 4281
    if-nez p0, :cond_0

    .line 4282
    const/4 v2, 0x0

    .line 4305
    :goto_0
    return-object v2

    .line 4284
    :cond_0
    if-nez p1, :cond_1

    .line 4285
    const-string p1, ""

    .line 4287
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4288
    .local v0, len:I
    if-gez p2, :cond_2

    .line 4289
    const/4 p2, 0x0

    .line 4291
    :cond_2
    if-le p2, v0, :cond_3

    .line 4292
    move p2, v0

    .line 4294
    :cond_3
    if-gez p3, :cond_4

    .line 4295
    const/4 p3, 0x0

    .line 4297
    :cond_4
    if-le p3, v0, :cond_5

    .line 4298
    move p3, v0

    .line 4300
    :cond_5
    if-le p2, p3, :cond_6

    .line 4301
    move v1, p2

    .line 4302
    .local v1, temp:I
    move p2, p3

    .line 4303
    move p3, v1

    .line 4305
    .end local v1           #temp:I
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    add-int v3, v0, p2

    sub-int/2addr v3, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4306
    const/4 v3, 0x0

    invoke-virtual {p0, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4307
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4308
    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4309
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static remove(Ljava/lang/String;C)Ljava/lang/String;
    .locals 6
    .parameter "str"
    .parameter "remove"

    .prologue
    .line 3762
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 3772
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 3765
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3766
    .local v0, chars:[C
    const/4 v2, 0x0

    .line 3767
    .local v2, pos:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v0

    if-lt v1, v4, :cond_2

    .line 3772
    new-instance p0, Ljava/lang/String;

    .end local p0
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 3768
    .restart local p0
    :cond_2
    aget-char v4, v0, v1

    if-eq v4, p1, :cond_3

    .line 3769
    add-int/lit8 v3, v2, 0x1

    .end local v2           #pos:I
    .local v3, pos:I
    aget-char v4, v0, v1

    aput-char v4, v0, v2

    move v2, v3

    .line 3767
    .end local v3           #pos:I
    .restart local v2       #pos:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"
    .parameter "remove"

    .prologue
    .line 3736
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3739
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    const-string v0, ""

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static removeAccentsJava6(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 6
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 673
    invoke-static {}, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->access$0()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->access$4()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 674
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "java.text.Normalizer is not available"

    invoke-static {}, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->access$2()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 677
    :cond_1
    invoke-static {}, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->access$0()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->access$4()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 678
    .local v0, result:Ljava/lang/String;
    invoke-static {}, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->access$5()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 679
    return-object v0
.end method

.method private static removeAccentsSUN(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 7
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 697
    invoke-static {}, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->access$1()Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_0

    .line 698
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "sun.text.Normalizer is not available"

    invoke-static {}, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->access$3()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 701
    :cond_0
    invoke-static {}, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->access$1()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 702
    .local v0, result:Ljava/lang/String;
    invoke-static {}, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->access$6()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 703
    return-object v0
.end method

.method public static removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .parameter "remove"

    .prologue
    .line 3667
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3673
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 3670
    .restart local p0
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3671
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeEndIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .parameter "remove"

    .prologue
    .line 3703
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3709
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 3706
    .restart local p0
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3707
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "remove"

    .prologue
    .line 3598
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3604
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 3601
    .restart local p0
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3602
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeStartIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "remove"

    .prologue
    .line 3633
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3639
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 3636
    .restart local p0
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3637
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static repeat(CI)Ljava/lang/String;
    .locals 3
    .parameter "ch"
    .parameter "repeat"

    .prologue
    .line 4554
    new-array v0, p1, [C

    .line 4555
    .local v0, buf:[C
    add-int/lit8 v1, p1, -0x1

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_0

    .line 4558
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 4556
    :cond_0
    aput-char p0, v0, v1

    .line 4555
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .parameter "str"
    .parameter "repeat"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4465
    if-nez p0, :cond_1

    .line 4466
    const/4 p0, 0x0

    .line 4497
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 4468
    .restart local p0
    :cond_1
    if-gtz p1, :cond_2

    .line 4469
    const-string p0, ""

    goto :goto_0

    .line 4471
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 4472
    .local v4, inputLength:I
    if-eq p1, v9, :cond_0

    if-eqz v4, :cond_0

    .line 4475
    if-ne v4, v9, :cond_3

    const/16 v7, 0x2000

    if-gt p1, v7, :cond_3

    .line 4476
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, p1}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4479
    :cond_3
    mul-int v6, v4, p1

    .line 4480
    .local v6, outputLength:I
    packed-switch v4, :pswitch_data_0

    .line 4493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4494
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-lt v3, p1, :cond_5

    .line 4497
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4482
    .end local v0           #buf:Ljava/lang/StringBuilder;
    .end local v3           #i:I
    :pswitch_0
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, p1}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4484
    :pswitch_1
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 4485
    .local v1, ch0:C
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 4486
    .local v2, ch1:C
    new-array v5, v6, [C

    .line 4487
    .local v5, output2:[C
    mul-int/lit8 v7, p1, 0x2

    add-int/lit8 v3, v7, -0x2

    .restart local v3       #i:I
    :goto_2
    if-gez v3, :cond_4

    .line 4491
    new-instance p0, Ljava/lang/String;

    .end local p0
    invoke-direct {p0, v5}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 4488
    .restart local p0
    :cond_4
    aput-char v1, v5, v3

    .line 4489
    add-int/lit8 v7, v3, 0x1

    aput-char v2, v5, v7

    .line 4487
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 4495
    .end local v1           #ch0:C
    .end local v2           #ch1:C
    .end local v5           #output2:[C
    .restart local v0       #buf:Ljava/lang/StringBuilder;
    :cond_5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4494
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4480
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static repeat(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .parameter "separator"
    .parameter "repeat"

    .prologue
    .line 4522
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 4523
    :cond_0
    invoke-static {p0, p2}, Lorg/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 4527
    :goto_0
    return-object v1

    .line 4526
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4527
    .local v0, result:Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "text"
    .parameter "searchString"
    .parameter "replacement"

    .prologue
    .line 3828
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .parameter "text"
    .parameter "searchString"
    .parameter "replacement"
    .parameter "max"

    .prologue
    const/16 v5, 0x40

    const/4 v7, -0x1

    .line 3860
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 3882
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 3863
    .restart local p0
    :cond_1
    const/4 v4, 0x0

    .line 3864
    .local v4, start:I
    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 3865
    .local v1, end:I
    if-eq v1, v7, :cond_0

    .line 3868
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 3869
    .local v3, replLength:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v2, v6, v3

    .line 3870
    .local v2, increase:I
    if-gez v2, :cond_2

    const/4 v2, 0x0

    .line 3871
    :cond_2
    if-gez p3, :cond_5

    const/16 v5, 0x10

    :cond_3
    :goto_1
    mul-int/2addr v2, v5

    .line 3872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3873
    .local v0, buf:Ljava/lang/StringBuilder;
    :goto_2
    if-ne v1, v7, :cond_6

    .line 3881
    :cond_4
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3882
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3871
    .end local v0           #buf:Ljava/lang/StringBuilder;
    :cond_5
    if-gt p3, v5, :cond_3

    move v5, p3

    goto :goto_1

    .line 3874
    .restart local v0       #buf:Ljava/lang/StringBuilder;
    :cond_6
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3875
    add-int v4, v1, v3

    .line 3876
    add-int/lit8 p3, p3, -0x1

    if-eqz p3, :cond_4

    .line 3879
    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_2
.end method

.method public static replaceChars(Ljava/lang/String;CC)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "searchChar"
    .parameter "replaceChar"

    .prologue
    .line 4178
    if-nez p0, :cond_0

    .line 4179
    const/4 v0, 0x0

    .line 4181
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "str"
    .parameter "searchChars"
    .parameter "replaceChars"

    .prologue
    .line 4221
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4246
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 4224
    .restart local p0
    :cond_1
    if-nez p2, :cond_2

    .line 4225
    const-string p2, ""

    .line 4227
    :cond_2
    const/4 v4, 0x0

    .line 4228
    .local v4, modified:Z
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 4229
    .local v5, replaceCharsLength:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 4230
    .local v6, strLength:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4231
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v6, :cond_3

    .line 4243
    if-eqz v4, :cond_0

    .line 4244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4232
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 4233
    .local v1, ch:C
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 4234
    .local v3, index:I
    if-ltz v3, :cond_5

    .line 4235
    const/4 v4, 0x1

    .line 4236
    if-ge v3, v5, :cond_4

    .line 4237
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4231
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4240
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "text"
    .parameter "searchList"
    .parameter "replacementList"

    .prologue
    const/4 v0, 0x0

    .line 3925
    invoke-static {p0, p1, p2, v0, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 20
    .parameter "text"
    .parameter "searchList"
    .parameter "replacementList"
    .parameter "repeat"
    .parameter "timeToLive"

    .prologue
    .line 4033
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_0

    if-eqz p1, :cond_0

    .line 4034
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    if-eqz v17, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 4152
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 4039
    .restart local p0
    :cond_1
    if-gez p4, :cond_2

    .line 4040
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "Aborting to protect against StackOverflowError - output of one loop is the input of another"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 4044
    :cond_2
    move-object/from16 v0, p1

    array-length v12, v0

    .line 4045
    .local v12, searchLength:I
    move-object/from16 v0, p2

    array-length v10, v0

    .line 4048
    .local v10, replacementLength:I
    if-eq v12, v10, :cond_3

    .line 4049
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Search and Replace array lengths don\'t match: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4050
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 4051
    const-string v19, " vs "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 4052
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 4049
    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 4056
    :cond_3
    new-array v8, v12, [Z

    .line 4059
    .local v8, noMoreMatchesForReplIndex:[Z
    const/4 v15, -0x1

    .line 4060
    .local v15, textIndex:I
    const/4 v9, -0x1

    .line 4061
    .local v9, replaceIndex:I
    const/4 v14, -0x1

    .line 4065
    .local v14, tempIndex:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-lt v6, v12, :cond_5

    .line 4085
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_0

    .line 4089
    const/4 v13, 0x0

    .line 4092
    .local v13, start:I
    const/4 v7, 0x0

    .line 4095
    .local v7, increase:I
    const/4 v6, 0x0

    :goto_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v6, v0, :cond_a

    .line 4105
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    div-int/lit8 v17, v17, 0x5

    move/from16 v0, v17

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 4107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    add-int v17, v17, v7

    move/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4109
    .local v4, buf:Ljava/lang/StringBuilder;
    :cond_4
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_d

    .line 4143
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v16

    .line 4144
    .local v16, textLength:I
    move v6, v13

    :goto_3
    move/from16 v0, v16

    if-lt v6, v0, :cond_13

    .line 4147
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 4148
    .local v11, result:Ljava/lang/String;
    if-nez p3, :cond_14

    move-object/from16 p0, v11

    .line 4149
    goto :goto_0

    .line 4066
    .end local v4           #buf:Ljava/lang/StringBuilder;
    .end local v7           #increase:I
    .end local v11           #result:Ljava/lang/String;
    .end local v13           #start:I
    .end local v16           #textLength:I
    :cond_5
    aget-boolean v17, v8, v6

    if-nez v17, :cond_6

    aget-object v17, p1, v6

    if-eqz v17, :cond_6

    .line 4067
    aget-object v17, p1, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_6

    aget-object v17, p2, v6

    if-nez v17, :cond_7

    .line 4065
    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4070
    :cond_7
    aget-object v17, p1, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 4073
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_8

    .line 4074
    const/16 v17, 0x1

    aput-boolean v17, v8, v6

    goto :goto_4

    .line 4076
    :cond_8
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_9

    if-ge v14, v15, :cond_6

    .line 4077
    :cond_9
    move v15, v14

    .line 4078
    move v9, v6

    goto :goto_4

    .line 4096
    .restart local v7       #increase:I
    .restart local v13       #start:I
    :cond_a
    aget-object v17, p1, v6

    if-eqz v17, :cond_b

    aget-object v17, p2, v6

    if-nez v17, :cond_c

    .line 4095
    :cond_b
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 4099
    :cond_c
    aget-object v17, p2, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    aget-object v18, p1, v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    sub-int v5, v17, v18

    .line 4100
    .local v5, greater:I
    if-lez v5, :cond_b

    .line 4101
    mul-int/lit8 v17, v5, 0x3

    add-int v7, v7, v17

    goto :goto_5

    .line 4111
    .end local v5           #greater:I
    .restart local v4       #buf:Ljava/lang/StringBuilder;
    :cond_d
    move v6, v13

    :goto_6
    if-lt v6, v15, :cond_f

    .line 4114
    aget-object v17, p2, v9

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4116
    aget-object v17, p1, v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v13, v15, v17

    .line 4118
    const/4 v15, -0x1

    .line 4119
    const/4 v9, -0x1

    .line 4120
    const/4 v14, -0x1

    .line 4123
    const/4 v6, 0x0

    :goto_7
    if-ge v6, v12, :cond_4

    .line 4124
    aget-boolean v17, v8, v6

    if-nez v17, :cond_e

    aget-object v17, p1, v6

    if-eqz v17, :cond_e

    .line 4125
    aget-object v17, p1, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_e

    aget-object v17, p2, v6

    if-nez v17, :cond_10

    .line 4123
    :cond_e
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 4112
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4111
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 4128
    :cond_10
    aget-object v17, p1, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v14

    .line 4131
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_11

    .line 4132
    const/16 v17, 0x1

    aput-boolean v17, v8, v6

    goto :goto_8

    .line 4134
    :cond_11
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_12

    if-ge v14, v15, :cond_e

    .line 4135
    :cond_12
    move v15, v14

    .line 4136
    move v9, v6

    goto :goto_8

    .line 4145
    .restart local v16       #textLength:I
    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4144
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 4152
    .restart local v11       #result:Ljava/lang/String;
    :cond_14
    add-int/lit8 v17, p4, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, v17

    invoke-static {v11, v0, v1, v2, v3}, Lorg/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static replaceEachRepeatedly(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"
    .parameter "searchList"
    .parameter "replacementList"

    .prologue
    .line 3975
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 3976
    .local v0, timeToLive:I
    :goto_0
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3975
    .end local v0           #timeToLive:I
    :cond_0
    array-length v0, p1

    goto :goto_0
.end method

.method public static replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "text"
    .parameter "searchString"
    .parameter "replacement"

    .prologue
    .line 3801
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 5607
    if-nez p0, :cond_0

    .line 5608
    const/4 v0, 0x0

    .line 5610
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static reverseDelimited(Ljava/lang/String;C)Ljava/lang/String;
    .locals 2
    .parameter "str"
    .parameter "separatorChar"

    .prologue
    .line 5633
    if-nez p0, :cond_0

    .line 5634
    const/4 v1, 0x0

    .line 5640
    :goto_0
    return-object v1

    .line 5638
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    .line 5639
    .local v0, strs:[Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([Ljava/lang/Object;)V

    .line 5640
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static right(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "len"

    .prologue
    .line 2168
    if-nez p0, :cond_1

    .line 2169
    const/4 p0, 0x0

    .line 2177
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 2171
    .restart local p0
    :cond_1
    if-gez p1, :cond_2

    .line 2172
    const-string p0, ""

    goto :goto_0

    .line 2174
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 2177
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static rightPad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "size"

    .prologue
    .line 4581
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rightPad(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 2
    .parameter "str"
    .parameter "size"
    .parameter "padChar"

    .prologue
    .line 4606
    if-nez p0, :cond_1

    .line 4607
    const/4 p0, 0x0

    .line 4616
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 4609
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, p1, v1

    .line 4610
    .local v0, pads:I
    if-lez v0, :cond_0

    .line 4613
    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    .line 4614
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4616
    :cond_2
    invoke-static {p2, v0}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "str"
    .parameter "size"
    .parameter "padStr"

    .prologue
    const/4 v7, 0x0

    .line 4643
    if-nez p0, :cond_1

    .line 4644
    const/4 p0, 0x0

    .line 4669
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 4646
    .restart local p0
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4647
    const-string p2, " "

    .line 4649
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 4650
    .local v2, padLen:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 4651
    .local v5, strLen:I
    sub-int v4, p1, v5

    .line 4652
    .local v4, pads:I
    if-lez v4, :cond_0

    .line 4655
    const/4 v6, 0x1

    if-ne v2, v6, :cond_3

    const/16 v6, 0x2000

    if-gt v4, v6, :cond_3

    .line 4656
    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {p0, p1, v6}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4659
    :cond_3
    if-ne v4, v2, :cond_4

    .line 4660
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4661
    :cond_4
    if-ge v4, v2, :cond_5

    .line 4662
    invoke-virtual {p2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4664
    :cond_5
    new-array v3, v4, [C

    .line 4665
    .local v3, padding:[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 4666
    .local v1, padChars:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v4, :cond_6

    .line 4669
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4667
    :cond_6
    rem-int v6, v0, v2

    aget-char v6, v1, v6

    aput-char v6, v3, v0

    .line 4666
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    .line 2536
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "separatorChar"

    .prologue
    .line 2564
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "str"
    .parameter "separatorChars"

    .prologue
    .line 2593
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "separatorChars"
    .parameter "max"

    .prologue
    .line 2627
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByCharacterType(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 3137
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 9
    .parameter "str"
    .parameter "camelCase"

    .prologue
    .line 3183
    if-nez p0, :cond_0

    .line 3184
    const/4 v7, 0x0

    .line 3211
    :goto_0
    return-object v7

    .line 3186
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 3187
    sget-object v7, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 3189
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3190
    .local v0, c:[C
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3191
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 3192
    .local v5, tokenStart:I
    aget-char v7, v0, v5

    invoke-static {v7}, Ljava/lang/Character;->getType(C)I

    move-result v1

    .line 3193
    .local v1, currentType:I
    add-int/lit8 v4, v5, 0x1

    .local v4, pos:I
    :goto_1
    array-length v7, v0

    if-lt v4, v7, :cond_2

    .line 3210
    new-instance v7, Ljava/lang/String;

    array-length v8, v0

    sub-int/2addr v8, v5

    invoke-direct {v7, v0, v5, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3211
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    goto :goto_0

    .line 3194
    :cond_2
    aget-char v7, v0, v4

    invoke-static {v7}, Ljava/lang/Character;->getType(C)I

    move-result v6

    .line 3195
    .local v6, type:I
    if-ne v6, v1, :cond_3

    .line 3193
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3198
    :cond_3
    if-eqz p1, :cond_5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    const/4 v7, 0x1

    if-ne v1, v7, :cond_5

    .line 3199
    add-int/lit8 v3, v4, -0x1

    .line 3200
    .local v3, newTokenStart:I
    if-eq v3, v5, :cond_4

    .line 3201
    new-instance v7, Ljava/lang/String;

    sub-int v8, v3, v5

    invoke-direct {v7, v0, v5, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3202
    move v5, v3

    .line 3208
    .end local v3           #newTokenStart:I
    :cond_4
    :goto_3
    move v1, v6

    goto :goto_2

    .line 3205
    :cond_5
    new-instance v7, Ljava/lang/String;

    sub-int v8, v4, v5

    invoke-direct {v7, v0, v5, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3206
    move v5, v4

    goto :goto_3
.end method

.method public static splitByCharacterTypeCamelCase(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 3165
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "str"
    .parameter "separator"

    .prologue
    .line 2654
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "separator"
    .parameter "max"

    .prologue
    .line 2685
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "str"
    .parameter "separator"

    .prologue
    .line 2714
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "separator"
    .parameter "max"

    .prologue
    .line 2747
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .locals 8
    .parameter "str"
    .parameter "separator"
    .parameter "max"
    .parameter "preserveAllTokens"

    .prologue
    const/4 v6, 0x0

    .line 2766
    if-nez p0, :cond_0

    .line 2827
    :goto_0
    return-object v6

    .line 2770
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2772
    .local v2, len:I
    if-nez v2, :cond_1

    .line 2773
    sget-object v6, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 2776
    :cond_1
    if-eqz p1, :cond_2

    const-string v7, ""

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2778
    :cond_2
    invoke-static {p0, v6, p2, p3}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 2781
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 2783
    .local v4, separatorLength:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2784
    .local v5, substrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 2785
    .local v3, numberOfSubstrings:I
    const/4 v0, 0x0

    .line 2786
    .local v0, beg:I
    const/4 v1, 0x0

    .line 2787
    .local v1, end:I
    :goto_1
    if-lt v1, v2, :cond_4

    .line 2827
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    goto :goto_0

    .line 2788
    :cond_4
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 2790
    const/4 v6, -0x1

    if-le v1, v6, :cond_9

    .line 2791
    if-le v1, v0, :cond_6

    .line 2792
    add-int/lit8 v3, v3, 0x1

    .line 2794
    if-ne v3, p2, :cond_5

    .line 2795
    move v1, v2

    .line 2796
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2800
    :cond_5
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2805
    add-int v0, v1, v4

    goto :goto_1

    .line 2809
    :cond_6
    if-eqz p3, :cond_7

    .line 2810
    add-int/lit8 v3, v3, 0x1

    .line 2811
    if-ne v3, p2, :cond_8

    .line 2812
    move v1, v2

    .line 2813
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2818
    :cond_7
    :goto_2
    add-int v0, v1, v4

    goto :goto_1

    .line 2815
    :cond_8
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2822
    :cond_9
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2823
    move v1, v2

    goto :goto_1
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 2856
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "separatorChar"

    .prologue
    .line 2892
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "str"
    .parameter "separatorChars"

    .prologue
    .line 2975
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "separatorChars"
    .parameter "max"

    .prologue
    .line 3015
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;
    .locals 7
    .parameter "str"
    .parameter "separatorChar"
    .parameter "preserveAllTokens"

    .prologue
    .line 2910
    if-nez p0, :cond_0

    .line 2911
    const/4 v6, 0x0

    .line 2938
    :goto_0
    return-object v6

    .line 2913
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2914
    .local v2, len:I
    if-nez v2, :cond_1

    .line 2915
    sget-object v6, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 2917
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2918
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v5, 0x0

    .line 2919
    .local v5, start:I
    const/4 v4, 0x0

    .line 2920
    .local v4, match:Z
    const/4 v1, 0x0

    .line 2921
    .local v1, lastMatch:Z
    :goto_1
    if-lt v0, v2, :cond_4

    .line 2935
    if-nez v4, :cond_2

    if-eqz p2, :cond_3

    if-eqz v1, :cond_3

    .line 2936
    :cond_2
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2938
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    goto :goto_0

    .line 2922
    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, p1, :cond_7

    .line 2923
    if-nez v4, :cond_5

    if-eqz p2, :cond_6

    .line 2924
    :cond_5
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2925
    const/4 v4, 0x0

    .line 2926
    const/4 v1, 0x1

    .line 2928
    :cond_6
    add-int/lit8 v0, v0, 0x1

    move v5, v0

    .line 2929
    goto :goto_1

    .line 2931
    :cond_7
    const/4 v1, 0x0

    .line 2932
    const/4 v4, 0x1

    .line 2933
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .locals 11
    .parameter "str"
    .parameter "separatorChars"
    .parameter "max"
    .parameter "preserveAllTokens"

    .prologue
    .line 3037
    if-nez p0, :cond_0

    .line 3038
    const/4 v9, 0x0

    .line 3114
    :goto_0
    return-object v9

    .line 3040
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 3041
    .local v2, len:I
    if-nez v2, :cond_1

    .line 3042
    sget-object v9, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 3044
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3045
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x1

    .line 3046
    .local v6, sizePlus1:I
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v8, 0x0

    .line 3047
    .local v8, start:I
    const/4 v4, 0x0

    .line 3048
    .local v4, match:Z
    const/4 v1, 0x0

    .line 3049
    .local v1, lastMatch:Z
    if-nez p1, :cond_8

    move v7, v6

    .line 3051
    .end local v6           #sizePlus1:I
    .local v7, sizePlus1:I
    :goto_1
    if-lt v0, v2, :cond_4

    move v6, v7

    .line 3111
    .end local v7           #sizePlus1:I
    .restart local v6       #sizePlus1:I
    :goto_2
    if-nez v4, :cond_2

    if-eqz p3, :cond_3

    if-eqz v1, :cond_3

    .line 3112
    :cond_2
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3114
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    goto :goto_0

    .line 3052
    .end local v6           #sizePlus1:I
    .restart local v7       #sizePlus1:I
    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 3053
    if-nez v4, :cond_5

    if-eqz p3, :cond_14

    .line 3054
    :cond_5
    const/4 v1, 0x1

    .line 3055
    add-int/lit8 v6, v7, 0x1

    .end local v7           #sizePlus1:I
    .restart local v6       #sizePlus1:I
    if-ne v7, p2, :cond_6

    .line 3056
    move v0, v2

    .line 3057
    const/4 v1, 0x0

    .line 3059
    :cond_6
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3060
    const/4 v4, 0x0

    .line 3062
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v8, v0

    move v7, v6

    .line 3063
    .end local v6           #sizePlus1:I
    .restart local v7       #sizePlus1:I
    goto :goto_1

    .line 3065
    :cond_7
    const/4 v1, 0x0

    .line 3066
    const/4 v4, 0x1

    .line 3067
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3069
    .end local v7           #sizePlus1:I
    .restart local v6       #sizePlus1:I
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_13

    .line 3071
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .local v5, sep:C
    move v7, v6

    .line 3072
    .end local v6           #sizePlus1:I
    .restart local v7       #sizePlus1:I
    :goto_4
    if-lt v0, v2, :cond_9

    move v6, v7

    .end local v7           #sizePlus1:I
    .restart local v6       #sizePlus1:I
    goto :goto_2

    .line 3073
    .end local v6           #sizePlus1:I
    .restart local v7       #sizePlus1:I
    :cond_9
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_c

    .line 3074
    if-nez v4, :cond_a

    if-eqz p3, :cond_12

    .line 3075
    :cond_a
    const/4 v1, 0x1

    .line 3076
    add-int/lit8 v6, v7, 0x1

    .end local v7           #sizePlus1:I
    .restart local v6       #sizePlus1:I
    if-ne v7, p2, :cond_b

    .line 3077
    move v0, v2

    .line 3078
    const/4 v1, 0x0

    .line 3080
    :cond_b
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3081
    const/4 v4, 0x0

    .line 3083
    :goto_5
    add-int/lit8 v0, v0, 0x1

    move v8, v0

    move v7, v6

    .line 3084
    .end local v6           #sizePlus1:I
    .restart local v7       #sizePlus1:I
    goto :goto_4

    .line 3086
    :cond_c
    const/4 v1, 0x0

    .line 3087
    const/4 v4, 0x1

    .line 3088
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3093
    .end local v5           #sep:C
    :cond_d
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_10

    .line 3094
    if-nez v4, :cond_e

    if-eqz p3, :cond_11

    .line 3095
    :cond_e
    const/4 v1, 0x1

    .line 3096
    add-int/lit8 v6, v7, 0x1

    .end local v7           #sizePlus1:I
    .restart local v6       #sizePlus1:I
    if-ne v7, p2, :cond_f

    .line 3097
    move v0, v2

    .line 3098
    const/4 v1, 0x0

    .line 3100
    :cond_f
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3101
    const/4 v4, 0x0

    .line 3103
    :goto_6
    add-int/lit8 v0, v0, 0x1

    move v8, v0

    move v7, v6

    .line 3092
    .end local v6           #sizePlus1:I
    .restart local v7       #sizePlus1:I
    :goto_7
    if-lt v0, v2, :cond_d

    move v6, v7

    .end local v7           #sizePlus1:I
    .restart local v6       #sizePlus1:I
    goto/16 :goto_2

    .line 3106
    .end local v6           #sizePlus1:I
    .restart local v7       #sizePlus1:I
    :cond_10
    const/4 v1, 0x0

    .line 3107
    const/4 v4, 0x1

    .line 3108
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    move v6, v7

    .end local v7           #sizePlus1:I
    .restart local v6       #sizePlus1:I
    goto :goto_6

    .end local v6           #sizePlus1:I
    .restart local v5       #sep:C
    .restart local v7       #sizePlus1:I
    :cond_12
    move v6, v7

    .end local v7           #sizePlus1:I
    .restart local v6       #sizePlus1:I
    goto :goto_5

    .end local v5           #sep:C
    :cond_13
    move v7, v6

    .end local v6           #sizePlus1:I
    .restart local v7       #sizePlus1:I
    goto :goto_7

    :cond_14
    move v6, v7

    .end local v7           #sizePlus1:I
    .restart local v6       #sizePlus1:I
    goto :goto_3
.end method

.method public static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "str"
    .parameter "prefix"

    .prologue
    .line 6326
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method private static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 6
    .parameter "str"
    .parameter "prefix"
    .parameter "ignoreCase"

    .prologue
    const/4 v2, 0x0

    .line 6367
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 6368
    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 v2, 0x1

    .line 6373
    :cond_1
    :goto_0
    return v2

    .line 6370
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 6373
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p2

    move-object v3, p1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v2

    goto :goto_0
.end method

.method public static varargs startsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 5
    .parameter "string"
    .parameter "searchStrings"

    .prologue
    const/4 v1, 0x0

    .line 6396
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6404
    :cond_0
    :goto_0
    return v1

    .line 6399
    :cond_1
    array-length v3, p1

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 6400
    .local v0, searchString:Ljava/lang/CharSequence;
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6401
    const/4 v1, 0x1

    goto :goto_0

    .line 6399
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "str"
    .parameter "prefix"

    .prologue
    .line 6352
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static strip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 362
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "stripChars"

    .prologue
    .line 449
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    .end local p0
    :goto_0
    return-object p0

    .line 452
    .restart local p0
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 453
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripAccents(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "input"

    .prologue
    .line 629
    if-nez p0, :cond_0

    .line 630
    const/4 v2, 0x0

    .line 645
    :goto_0
    return-object v2

    .line 633
    :cond_0
    const/4 v2, 0x0

    .line 634
    .local v2, result:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->access$0()Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 635
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->removeAccentsJava6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 636
    :cond_1
    invoke-static {}, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->access$1()Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 637
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->removeAccentsSUN(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 639
    :cond_2
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    .line 640
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "The stripAccents(CharSequence) method requires at least Java6, but got: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 641
    invoke-static {}, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->access$2()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 642
    const-string v6, "; or a Sun JVM: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->access$3()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 640
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 639
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "IllegalArgumentException occurred"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 648
    .end local v0           #iae:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 649
    .local v0, iae:Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "IllegalAccessException occurred"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 650
    .end local v0           #iae:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 651
    .local v1, ite:Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "InvocationTargetException occurred"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 652
    .end local v1           #ite:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v3

    .line 653
    .local v3, se:Ljava/lang/SecurityException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "SecurityException occurred"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static varargs stripAll([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "strs"

    .prologue
    .line 567
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "strs"
    .parameter "stripChars"

    .prologue
    .line 597
    if-eqz p0, :cond_0

    array-length v2, p0

    .local v2, strsLen:I
    if-nez v2, :cond_2

    .end local v2           #strsLen:I
    :cond_0
    move-object v1, p0

    .line 604
    :cond_1
    return-object v1

    .line 600
    .restart local v2       #strsLen:I
    :cond_2
    new-array v1, v2, [Ljava/lang/String;

    .line 601
    .local v1, newArr:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 602
    aget-object v3, p0, v0

    invoke-static {v3, p1}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 601
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .parameter "stripChars"

    .prologue
    .line 527
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, end:I
    if-nez v0, :cond_1

    .line 542
    .end local v0           #end:I
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 531
    .restart local v0       #end:I
    .restart local p0
    :cond_1
    if-nez p1, :cond_4

    .line 532
    :goto_1
    if-eqz v0, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_3

    .line 542
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 533
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 535
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    :goto_2
    if-eqz v0, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 539
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public static stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"
    .parameter "stripChars"

    .prologue
    .line 482
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, strLen:I
    if-nez v1, :cond_1

    .line 497
    .end local v1           #strLen:I
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 485
    .restart local v1       #strLen:I
    .restart local p0
    :cond_1
    const/4 v0, 0x0

    .line 486
    .local v0, start:I
    if-nez p1, :cond_4

    .line 487
    :goto_1
    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_3

    .line 497
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 488
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 490
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 493
    :goto_2
    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 494
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static stripToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 419
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static stripToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    const/4 v0, 0x0

    .line 389
    if-nez p0, :cond_0

    .line 393
    .end local p0
    :goto_0
    return-object v0

    .line 392
    .restart local p0
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 393
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    move-object p0, v0

    .end local p0
    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public static substring(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "start"

    .prologue
    .line 2025
    if-nez p0, :cond_0

    .line 2026
    const/4 v0, 0x0

    .line 2041
    :goto_0
    return-object v0

    .line 2030
    :cond_0
    if-gez p1, :cond_1

    .line 2031
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    .line 2034
    :cond_1
    if-gez p1, :cond_2

    .line 2035
    const/4 p1, 0x0

    .line 2037
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_3

    .line 2038
    const-string v0, ""

    goto :goto_0

    .line 2041
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static substring(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2080
    if-nez p0, :cond_0

    .line 2081
    const/4 v0, 0x0

    .line 2109
    :goto_0
    return-object v0

    .line 2085
    :cond_0
    if-gez p2, :cond_1

    .line 2086
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p2, v0

    .line 2088
    :cond_1
    if-gez p1, :cond_2

    .line 2089
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    .line 2093
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_3

    .line 2094
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    .line 2098
    :cond_3
    if-le p1, p2, :cond_4

    .line 2099
    const-string v0, ""

    goto :goto_0

    .line 2102
    :cond_4
    if-gez p1, :cond_5

    .line 2103
    const/4 p1, 0x0

    .line 2105
    :cond_5
    if-gez p2, :cond_6

    .line 2106
    const/4 p2, 0x0

    .line 2109
    :cond_6
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"
    .parameter "separator"

    .prologue
    .line 2293
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2303
    .end local p0
    :goto_0
    return-object p0

    .line 2296
    .restart local p0
    :cond_0
    if-nez p1, :cond_1

    .line 2297
    const-string p0, ""

    goto :goto_0

    .line 2299
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2300
    .local v0, pos:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 2301
    const-string p0, ""

    goto :goto_0

    .line 2303
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringAfterLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .parameter "separator"

    .prologue
    .line 2374
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2384
    .end local p0
    :goto_0
    return-object p0

    .line 2377
    .restart local p0
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2378
    const-string p0, ""

    goto :goto_0

    .line 2380
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 2381
    .local v0, pos:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_3

    .line 2382
    :cond_2
    const-string p0, ""

    goto :goto_0

    .line 2384
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringBefore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"
    .parameter "separator"

    .prologue
    .line 2251
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 2261
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 2254
    .restart local p0
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 2255
    const-string p0, ""

    goto :goto_0

    .line 2257
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2258
    .local v0, pos:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2261
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringBeforeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"
    .parameter "separator"

    .prologue
    .line 2334
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2341
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 2337
    .restart local p0
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 2338
    .local v0, pos:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2341
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "tag"

    .prologue
    .line 2411
    invoke-static {p0, p1, p1}, Lorg/apache/commons/lang3/StringUtils;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "str"
    .parameter "open"
    .parameter "close"

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 2442
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2452
    :cond_0
    :goto_0
    return-object v2

    .line 2445
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2446
    .local v1, start:I
    if-eq v1, v4, :cond_0

    .line 2447
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 2448
    .local v0, end:I
    if-eq v0, v4, :cond_0

    .line 2449
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static substringsBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .parameter "str"
    .parameter "open"
    .parameter "close"

    .prologue
    const/4 v7, 0x0

    .line 2478
    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2505
    :cond_0
    :goto_0
    return-object v7

    .line 2481
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 2482
    .local v6, strLen:I
    if-nez v6, :cond_2

    .line 2483
    sget-object v7, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 2485
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2486
    .local v0, closeLen:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 2487
    .local v3, openLen:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2488
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 2489
    .local v4, pos:I
    :goto_1
    sub-int v8, v6, v0

    if-lt v4, v8, :cond_4

    .line 2502
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2505
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    goto :goto_0

    .line 2490
    :cond_4
    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 2491
    .local v5, start:I
    if-ltz v5, :cond_3

    .line 2494
    add-int/2addr v5, v3

    .line 2495
    invoke-virtual {p0, p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 2496
    .local v1, end:I
    if-ltz v1, :cond_3

    .line 2499
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2500
    add-int v4, v1, v0

    goto :goto_1
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 5100
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5116
    .end local p0
    :goto_0
    return-object p0

    .line 5104
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 5106
    .local v0, buffer:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, v0

    if-lt v2, v3, :cond_1

    .line 5116
    new-instance p0, Ljava/lang/String;

    .end local p0
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 5107
    .restart local p0
    :cond_1
    aget-char v1, v0, v2

    .line 5108
    .local v1, ch:C
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5109
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    aput-char v3, v0, v2

    .line 5106
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5110
    :cond_3
    invoke-static {v1}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5111
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    aput-char v3, v0, v2

    goto :goto_2

    .line 5112
    :cond_4
    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5113
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    aput-char v3, v0, v2

    goto :goto_2
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "bytes"
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 6579
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 282
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static trimToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 334
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static trimToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    .line 308
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, ts:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .end local v0           #ts:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 5063
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, strLen:I
    if-nez v0, :cond_1

    .line 5066
    .end local v0           #strLen:I
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .restart local v0       #strLen:I
    .restart local p0
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5067
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5068
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5069
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static upperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 4932
    if-nez p0, :cond_0

    .line 4933
    const/4 v0, 0x0

    .line 4935
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static upperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "locale"

    .prologue
    .line 4955
    if-nez p0, :cond_0

    .line 4956
    const/4 v0, 0x0

    .line 4958
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
