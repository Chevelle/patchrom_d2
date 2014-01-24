.class public Lorg/apache/commons/lang3/CharSetUtils;
.super Ljava/lang/Object;
.source "CharSetUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static varargs count(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "str"
    .parameter "set"

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 117
    :cond_1
    return v2

    .line 110
    :cond_2
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang3/CharSet;

    move-result-object v1

    .line 111
    .local v1, chars:Lorg/apache/commons/lang3/CharSet;
    const/4 v2, 0x0

    .line 112
    .local v2, count:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-char v0, v4, v3

    .line 113
    .local v0, c:C
    invoke-virtual {v1, v0}, Lorg/apache/commons/lang3/CharSet;->contains(C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 114
    add-int/lit8 v2, v2, 0x1

    .line 112
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static deepEmpty([Ljava/lang/String;)Z
    .locals 5
    .parameter "strings"

    .prologue
    const/4 v1, 0x0

    .line 208
    if-eqz p0, :cond_0

    .line 209
    array-length v3, p0

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_2

    .line 215
    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 209
    :cond_2
    aget-object v0, p0, v2

    .line 210
    .local v0, s:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static varargs delete(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "set"

    .prologue
    .line 172
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSetUtils;->modify(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs keep(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "set"

    .prologue
    .line 142
    if-nez p0, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 148
    :goto_0
    return-object v0

    .line 145
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 148
    :cond_2
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSetUtils;->modify(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static modify(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .parameter "str"
    .parameter "set"
    .parameter "expect"

    .prologue
    .line 188
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang3/CharSet;

    move-result-object v1

    .line 189
    .local v1, chars:Lorg/apache/commons/lang3/CharSet;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 190
    .local v0, buffer:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 191
    .local v2, chrs:[C
    array-length v4, v2

    .line 192
    .local v4, sz:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v4, :cond_0

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 193
    :cond_0
    aget-char v5, v2, v3

    invoke-virtual {v1, v5}, Lorg/apache/commons/lang3/CharSet;->contains(C)Z

    move-result v5

    if-ne v5, p2, :cond_1

    .line 194
    aget-char v5, v2, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static varargs squeeze(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "str"
    .parameter "set"

    .prologue
    .line 65
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 83
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 68
    .restart local p0
    :cond_1
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang3/CharSet;

    move-result-object v2

    .line 69
    .local v2, chars:Lorg/apache/commons/lang3/CharSet;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 70
    .local v0, buffer:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 71
    .local v3, chrs:[C
    array-length v6, v3

    .line 72
    .local v6, sz:I
    const/16 v5, 0x20

    .line 73
    .local v5, lastChar:C
    const/16 v1, 0x20

    .line 74
    .local v1, ch:C
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-lt v4, v6, :cond_2

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 75
    :cond_2
    aget-char v1, v3, v4

    .line 77
    if-ne v1, v5, :cond_3

    if-eqz v4, :cond_3

    invoke-virtual {v2, v1}, Lorg/apache/commons/lang3/CharSet;->contains(C)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 74
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    move v5, v1

    goto :goto_2
.end method
