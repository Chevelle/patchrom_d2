.class public Lmiui/maml/util/TextFormatter;
.super Ljava/lang/Object;
.source "TextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/util/TextFormatter$1;,
        Lmiui/maml/util/TextFormatter$StringVarPara;,
        Lmiui/maml/util/TextFormatter$ExpressioPara;,
        Lmiui/maml/util/TextFormatter$FormatPara;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextFormatter"


# instance fields
.field private mFormat:Ljava/lang/String;

.field private mFormatExpression:Lmiui/maml/data/Expression;

.field private mFormatVar:Lmiui/maml/util/Variable;

.field private mIndexedFormatVar:Lmiui/maml/util/IndexedStringVariable;

.field private mIndexedTextVar:Lmiui/maml/util/IndexedStringVariable;

.field private mParas:[Lmiui/maml/util/TextFormatter$FormatPara;

.field private mParasValue:[Ljava/lang/Object;

.field private mText:Ljava/lang/String;

.field private mTextExpression:Lmiui/maml/data/Expression;

.field private mTextVar:Lmiui/maml/util/Variable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 39
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "format"
    .parameter "paras"

    .prologue
    .line 43
    const-string v0, ""

    invoke-direct {p0, v0, p1, p2}, Lmiui/maml/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "text"
    .parameter "format"
    .parameter "paras"

    .prologue
    const/4 v2, 0x1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lmiui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lmiui/maml/util/Variable;

    iget-object v1, p0, Lmiui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    invoke-direct {v0, v1}, Lmiui/maml/util/Variable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/util/TextFormatter;->mTextVar:Lmiui/maml/util/Variable;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lmiui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    .line 59
    :cond_0
    iput-object p2, p0, Lmiui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Lmiui/maml/util/Variable;

    iget-object v1, p0, Lmiui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    invoke-direct {v0, v1}, Lmiui/maml/util/Variable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormatVar:Lmiui/maml/util/Variable;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    .line 68
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 69
    invoke-static {p3}, Lmiui/maml/util/TextFormatter$FormatPara;->buildArray(Ljava/lang/String;)[Lmiui/maml/util/TextFormatter$FormatPara;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/util/TextFormatter;->mParas:[Lmiui/maml/util/TextFormatter$FormatPara;

    .line 70
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mParas:[Lmiui/maml/util/TextFormatter$FormatPara;

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mParas:[Lmiui/maml/util/TextFormatter$FormatPara;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lmiui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    .line 74
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V
    .locals 0
    .parameter "text"
    .parameter "format"
    .parameter "paras"
    .parameter "textExp"
    .parameter "formatExp"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iput-object p4, p0, Lmiui/maml/util/TextFormatter;->mTextExpression:Lmiui/maml/data/Expression;

    .line 83
    iput-object p5, p0, Lmiui/maml/util/TextFormatter;->mFormatExpression:Lmiui/maml/data/Expression;

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmiui/maml/data/Expression;)V
    .locals 6
    .parameter "text"
    .parameter "textExp"

    .prologue
    .line 77
    const-string v2, ""

    const-string v3, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lmiui/maml/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    .line 78
    return-void
.end method

.method public static fromElement(Lorg/w3c/dom/Element;)Lmiui/maml/util/TextFormatter;
    .locals 6
    .parameter "e"

    .prologue
    .line 214
    new-instance v0, Lmiui/maml/util/TextFormatter;

    const-string v1, "text"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "paras"

    invoke-interface {p0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "textExp"

    invoke-interface {p0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v4

    const-string v5, "formatExp"

    invoke-interface {p0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lmiui/maml/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    return-object v0
.end method

.method public static fromElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/util/TextFormatter;
    .locals 6
    .parameter "e"
    .parameter "textAttr"
    .parameter "formatAttr"
    .parameter "parasAttr"
    .parameter "textExpAttr"
    .parameter "formatExpAttr"

    .prologue
    .line 220
    new-instance v0, Lmiui/maml/util/TextFormatter;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, p4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v4

    invoke-interface {p0, p5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lmiui/maml/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    return-object v0
.end method


# virtual methods
.method public getFormat(Lmiui/maml/data/Variables;)Ljava/lang/String;
    .locals 3
    .parameter "v"

    .prologue
    .line 93
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormatExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormatExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    .line 96
    :cond_0
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormatVar:Lmiui/maml/util/Variable;

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mIndexedFormatVar:Lmiui/maml/util/IndexedStringVariable;

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Lmiui/maml/util/IndexedStringVariable;

    iget-object v1, p0, Lmiui/maml/util/TextFormatter;->mFormatVar:Lmiui/maml/util/Variable;

    invoke-virtual {v1}, Lmiui/maml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/util/TextFormatter;->mFormatVar:Lmiui/maml/util/Variable;

    invoke-virtual {v2}, Lmiui/maml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/util/TextFormatter;->mIndexedFormatVar:Lmiui/maml/util/IndexedStringVariable;

    .line 100
    :cond_1
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mIndexedFormatVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v0}, Lmiui/maml/util/IndexedStringVariable;->get()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    goto :goto_0
.end method

.method public getText(Lmiui/maml/data/Variables;)Ljava/lang/String;
    .locals 6
    .parameter "v"

    .prologue
    .line 110
    iget-object v3, p0, Lmiui/maml/util/TextFormatter;->mTextExpression:Lmiui/maml/data/Expression;

    if-eqz v3, :cond_0

    .line 111
    iget-object v3, p0, Lmiui/maml/util/TextFormatter;->mTextExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v3, p1}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v3

    .line 130
    :goto_0
    return-object v3

    .line 113
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/maml/util/TextFormatter;->getFormat(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, format:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lmiui/maml/util/TextFormatter;->mParas:[Lmiui/maml/util/TextFormatter$FormatPara;

    if-eqz v3, :cond_2

    .line 115
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v3, p0, Lmiui/maml/util/TextFormatter;->mParas:[Lmiui/maml/util/TextFormatter$FormatPara;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 116
    iget-object v3, p0, Lmiui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    iget-object v4, p0, Lmiui/maml/util/TextFormatter;->mParas:[Lmiui/maml/util/TextFormatter$FormatPara;

    aget-object v4, v4, v2

    invoke-virtual {v4, p1}, Lmiui/maml/util/TextFormatter$FormatPara;->evaluate(Lmiui/maml/data/Variables;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 119
    :cond_1
    :try_start_0
    iget-object v3, p0, Lmiui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Ljava/util/IllegalFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Format error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 124
    .end local v0           #e:Ljava/util/IllegalFormatException;
    .end local v2           #i:I
    :cond_2
    iget-object v3, p0, Lmiui/maml/util/TextFormatter;->mTextVar:Lmiui/maml/util/Variable;

    if-eqz v3, :cond_4

    .line 125
    iget-object v3, p0, Lmiui/maml/util/TextFormatter;->mIndexedTextVar:Lmiui/maml/util/IndexedStringVariable;

    if-nez v3, :cond_3

    .line 126
    new-instance v3, Lmiui/maml/util/IndexedStringVariable;

    iget-object v4, p0, Lmiui/maml/util/TextFormatter;->mTextVar:Lmiui/maml/util/Variable;

    invoke-virtual {v4}, Lmiui/maml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/util/TextFormatter;->mTextVar:Lmiui/maml/util/Variable;

    invoke-virtual {v5}, Lmiui/maml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, p1}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v3, p0, Lmiui/maml/util/TextFormatter;->mIndexedTextVar:Lmiui/maml/util/IndexedStringVariable;

    .line 128
    :cond_3
    iget-object v3, p0, Lmiui/maml/util/TextFormatter;->mIndexedTextVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v3}, Lmiui/maml/util/IndexedStringVariable;->get()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 130
    :cond_4
    iget-object v3, p0, Lmiui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasFormat()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormatVar:Lmiui/maml/util/Variable;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 87
    iput-object p1, p0, Lmiui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    .line 90
    return-void
.end method
