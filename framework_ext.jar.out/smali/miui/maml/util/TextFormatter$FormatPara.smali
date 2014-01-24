.class abstract Lmiui/maml/util/TextFormatter$FormatPara;
.super Ljava/lang/Object;
.source "TextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/util/TextFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "FormatPara"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/util/TextFormatter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lmiui/maml/util/TextFormatter$FormatPara;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/String;)Lmiui/maml/util/TextFormatter$FormatPara;
    .locals 5
    .parameter "para"

    .prologue
    .line 165
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, exp:Ljava/lang/String;
    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    new-instance v2, Lmiui/maml/util/TextFormatter$StringVarPara;

    new-instance v3, Lmiui/maml/util/Variable;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lmiui/maml/util/Variable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lmiui/maml/util/TextFormatter$StringVarPara;-><init>(Lmiui/maml/util/Variable;)V

    .line 174
    :goto_0
    return-object v2

    .line 169
    :cond_0
    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    .line 170
    .local v1, expression:Lmiui/maml/data/Expression;
    if-nez v1, :cond_1

    .line 171
    const-string v2, "TextFormatter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid parameter expression:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v2, 0x0

    goto :goto_0

    .line 174
    :cond_1
    new-instance v2, Lmiui/maml/util/TextFormatter$ExpressioPara;

    invoke-direct {v2, v1}, Lmiui/maml/util/TextFormatter$ExpressioPara;-><init>(Lmiui/maml/data/Expression;)V

    goto :goto_0
.end method

.method public static buildArray(Ljava/lang/String;)[Lmiui/maml/util/TextFormatter$FormatPara;
    .locals 9
    .parameter "exp"

    .prologue
    const/4 v7, 0x0

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, bracketCount:I
    const/4 v6, 0x0

    .line 137
    .local v6, start:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v2, exps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/maml/util/TextFormatter$FormatPara;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_5

    .line 139
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 140
    .local v1, c:C
    if-nez v0, :cond_2

    .line 141
    const/16 v8, 0x2c

    if-ne v1, v8, :cond_2

    .line 142
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmiui/maml/util/TextFormatter$FormatPara;->build(Ljava/lang/String;)Lmiui/maml/util/TextFormatter$FormatPara;

    move-result-object v4

    .line 143
    .local v4, para:Lmiui/maml/util/TextFormatter$FormatPara;
    if-nez v4, :cond_1

    .line 161
    .end local v1           #c:C
    :cond_0
    :goto_1
    return-object v7

    .line 145
    .restart local v1       #c:C
    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v6, v3, 0x1

    .line 149
    .end local v4           #para:Lmiui/maml/util/TextFormatter$FormatPara;
    :cond_2
    const/16 v8, 0x28

    if-ne v1, v8, :cond_4

    .line 150
    add-int/lit8 v0, v0, 0x1

    .line 138
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    :cond_4
    const/16 v8, 0x29

    if-ne v1, v8, :cond_3

    .line 152
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 155
    .end local v1           #c:C
    :cond_5
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmiui/maml/util/TextFormatter$FormatPara;->build(Ljava/lang/String;)Lmiui/maml/util/TextFormatter$FormatPara;

    move-result-object v4

    .line 156
    .restart local v4       #para:Lmiui/maml/util/TextFormatter$FormatPara;
    if-eqz v4, :cond_0

    .line 159
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Lmiui/maml/util/TextFormatter$FormatPara;

    .line 161
    .local v5, ret:[Lmiui/maml/util/TextFormatter$FormatPara;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lmiui/maml/util/TextFormatter$FormatPara;

    goto :goto_1
.end method


# virtual methods
.method public abstract evaluate(Lmiui/maml/data/Variables;)Ljava/lang/Object;
.end method
