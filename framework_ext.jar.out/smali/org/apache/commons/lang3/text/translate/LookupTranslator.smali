.class public Lorg/apache/commons/lang3/text/translate/LookupTranslator;
.super Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
.source "LookupTranslator.java"


# instance fields
.field private final longest:I

.field private final lookupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final shortest:I


# direct methods
.method public varargs constructor <init>([[Ljava/lang/CharSequence;)V
    .locals 10
    .parameter "lookup"

    .prologue
    const/4 v5, 0x0

    .line 40
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;-><init>()V

    .line 41
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->lookupMap:Ljava/util/HashMap;

    .line 42
    const v1, 0x7fffffff

    .line 43
    .local v1, _shortest:I
    const/4 v0, 0x0

    .line 44
    .local v0, _longest:I
    if-eqz p1, :cond_0

    .line 45
    array-length v6, p1

    move v4, v5

    :goto_0
    if-lt v4, v6, :cond_1

    .line 56
    :cond_0
    iput v1, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->shortest:I

    .line 57
    iput v0, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->longest:I

    .line 58
    return-void

    .line 45
    :cond_1
    aget-object v2, p1, v4

    .line 46
    .local v2, seq:[Ljava/lang/CharSequence;
    iget-object v7, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->lookupMap:Ljava/util/HashMap;

    aget-object v8, v2, v5

    const/4 v9, 0x1

    aget-object v9, v2, v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    aget-object v7, v2, v5

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 48
    .local v3, sz:I
    if-ge v3, v1, :cond_2

    .line 49
    move v1, v3

    .line 51
    :cond_2
    if-le v3, v0, :cond_3

    .line 52
    move v0, v3

    .line 45
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 6
    .parameter "input"
    .parameter "index"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget v1, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->longest:I

    .line 66
    .local v1, max:I
    iget v4, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->longest:I

    add-int/2addr v4, p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 67
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v1, v4, p2

    .line 70
    :cond_0
    move v0, v1

    .local v0, i:I
    :goto_0
    iget v4, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->shortest:I

    if-ge v0, v4, :cond_1

    .line 78
    const/4 v0, 0x0

    .end local v0           #i:I
    :goto_1
    return v0

    .line 71
    .restart local v0       #i:I
    :cond_1
    add-int v4, p2, v0

    invoke-interface {p1, p2, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 72
    .local v3, subSeq:Ljava/lang/CharSequence;
    iget-object v4, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->lookupMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 73
    .local v2, result:Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    .line 74
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
