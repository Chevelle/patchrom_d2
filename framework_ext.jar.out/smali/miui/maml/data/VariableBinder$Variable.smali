.class public Lmiui/maml/data/VariableBinder$Variable;
.super Ljava/lang/Object;
.source "VariableBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/VariableBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Variable"
.end annotation


# static fields
.field public static final DOUBLE:I = 0x6

.field public static final FLOAT:I = 0x5

.field public static final INT:I = 0x3

.field public static final LONG:I = 0x4

.field public static final STRING:I = 0x2

.field public static final TAG_NAME:Ljava/lang/String; = "Variable"

.field public static final TYPE_BASE:I = 0x3e8


# instance fields
.field public mName:Ljava/lang/String;

.field public mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

.field public mStringVar:Lmiui/maml/util/IndexedStringVariable;

.field public mType:I

.field public mTypeStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V
    .locals 0
    .parameter "name"
    .parameter "type"
    .parameter "var"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lmiui/maml/data/VariableBinder$Variable;->mName:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lmiui/maml/data/VariableBinder$Variable;->mTypeStr:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder$Variable;->parseType()V

    .line 81
    invoke-direct {p0, p3}, Lmiui/maml/data/VariableBinder$Variable;->createVar(Lmiui/maml/data/Variables;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V
    .locals 2
    .parameter "node"
    .parameter "var"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    if-nez p1, :cond_0

    .line 86
    const-string v0, "Variable"

    const-string v1, "Variable node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mName:Ljava/lang/String;

    .line 90
    const-string v0, "type"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mTypeStr:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder$Variable;->parseType()V

    .line 92
    invoke-direct {p0, p2}, Lmiui/maml/data/VariableBinder$Variable;->createVar(Lmiui/maml/data/Variables;)V

    .line 93
    invoke-virtual {p0, p1}, Lmiui/maml/data/VariableBinder$Variable;->onLoad(Lorg/w3c/dom/Element;)V

    .line 94
    return-void
.end method

.method private createVar(Lmiui/maml/data/Variables;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 116
    iget v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 117
    new-instance v0, Lmiui/maml/util/IndexedStringVariable;

    iget-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mName:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder$Variable;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mName:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    goto :goto_0
.end method


# virtual methods
.method public isNumber()Z
    .locals 2

    .prologue
    .line 97
    iget v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mType:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mType:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLoad(Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 113
    return-void
.end method

.method protected parseType()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 124
    const-string v0, "string"

    iget-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mTypeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x2

    iput v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mType:I

    .line 137
    :goto_0
    return-void

    .line 126
    :cond_0
    const-string v0, "double"

    iget-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mTypeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iput v2, p0, Lmiui/maml/data/VariableBinder$Variable;->mType:I

    goto :goto_0

    .line 128
    :cond_1
    const-string v0, "float"

    iget-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mTypeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    const/4 v0, 0x5

    iput v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mType:I

    goto :goto_0

    .line 130
    :cond_2
    const-string v0, "int"

    iget-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mTypeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "integer"

    iget-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mTypeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 131
    :cond_3
    const/4 v0, 0x3

    iput v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mType:I

    goto :goto_0

    .line 132
    :cond_4
    const-string v0, "long"

    iget-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mTypeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 133
    const/4 v0, 0x4

    iput v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mType:I

    goto :goto_0

    .line 135
    :cond_5
    iput v2, p0, Lmiui/maml/data/VariableBinder$Variable;->mType:I

    goto :goto_0
.end method

.method public setValue(D)V
    .locals 1
    .parameter "value"

    .prologue
    .line 101
    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 104
    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 107
    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v0, p1}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 110
    :cond_0
    return-void
.end method
