.class public Lmiui/maml/data/FileBinder;
.super Lmiui/maml/data/VariableBinder;
.source "FileBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/FileBinder$Variable;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "FileBinder"

.field public static final TAG_NAME:Ljava/lang/String; = "FileBinder"


# instance fields
.field private mCountVar:Lmiui/maml/util/IndexedNumberVariable;

.field protected mDirFormatter:Lmiui/maml/util/TextFormatter;

.field private mFiles:[Ljava/lang/String;

.field private mFilters:[Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field private mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/data/FileBinder$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .parameter "node"
    .parameter "root"

    .prologue
    .line 66
    invoke-direct {p0, p2}, Lmiui/maml/data/VariableBinder;-><init>(Lmiui/maml/ScreenElementRoot;)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/FileBinder;->mVariables:Ljava/util/ArrayList;

    .line 67
    invoke-direct {p0, p1}, Lmiui/maml/data/FileBinder;->load(Lorg/w3c/dom/Element;)V

    .line 68
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 6
    .parameter "node"

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    const-string v2, "FileBinder"

    const-string v3, "FileBinder node is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return-void

    .line 103
    :cond_0
    const-string v2, "name"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/data/FileBinder;->mName:Ljava/lang/String;

    .line 104
    const-string v2, "filter"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, filter:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    iput-object v2, p0, Lmiui/maml/data/FileBinder;->mFilters:[Ljava/lang/String;

    .line 106
    const-string v2, "dirExp"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    .line 107
    .local v0, dirExp:Lmiui/maml/data/Expression;
    new-instance v2, Lmiui/maml/util/TextFormatter;

    const-string v3, "dir"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lmiui/maml/util/TextFormatter;-><init>(Ljava/lang/String;Lmiui/maml/data/Expression;)V

    iput-object v2, p0, Lmiui/maml/data/FileBinder;->mDirFormatter:Lmiui/maml/util/TextFormatter;

    .line 108
    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 109
    new-instance v2, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/maml/data/FileBinder;->mName:Ljava/lang/String;

    const-string v4, "count"

    invoke-virtual {p0}, Lmiui/maml/data/FileBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v2, v3, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v2, p0, Lmiui/maml/data/FileBinder;->mCountVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 112
    :cond_1
    invoke-direct {p0, p1}, Lmiui/maml/data/FileBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    goto :goto_0

    .line 105
    .end local v0           #dirExp:Lmiui/maml/data/Expression;
    :cond_2
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private loadVariables(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "node"

    .prologue
    .line 116
    const-string v0, "Variable"

    new-instance v1, Lmiui/maml/data/FileBinder$1;

    invoke-direct {v1, p0}, Lmiui/maml/data/FileBinder$1;-><init>(Lmiui/maml/data/FileBinder;)V

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    .line 121
    return-void
.end method

.method private updateVariables()V
    .locals 7

    .prologue
    .line 128
    iget-object v4, p0, Lmiui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    if-nez v4, :cond_1

    const/4 v0, 0x0

    .line 129
    .local v0, count:I
    :goto_0
    iget-object v4, p0, Lmiui/maml/data/FileBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/data/FileBinder$Variable;

    .line 130
    .local v3, v:Lmiui/maml/data/FileBinder$Variable;
    iget-object v4, v3, Lmiui/maml/data/FileBinder$Variable;->mIndex:Lmiui/maml/data/Expression;

    if-eqz v4, :cond_0

    .line 132
    iget-object v4, v3, Lmiui/maml/data/FileBinder$Variable;->mIndex:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/data/FileBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v4, v5}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v4

    double-to-int v2, v4

    .line 133
    .local v2, index:I
    iget-object v5, v3, Lmiui/maml/data/FileBinder$Variable;->mVar:Lmiui/maml/util/IndexedStringVariable;

    if-nez v0, :cond_2

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v5, v4}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    goto :goto_1

    .line 128
    .end local v0           #count:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #index:I
    .end local v3           #v:Lmiui/maml/data/FileBinder$Variable;
    :cond_1
    iget-object v4, p0, Lmiui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    array-length v0, v4

    goto :goto_0

    .line 133
    .restart local v0       #count:I
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #index:I
    .restart local v3       #v:Lmiui/maml/data/FileBinder$Variable;
    :cond_2
    iget-object v4, p0, Lmiui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    rem-int v6, v2, v0

    aget-object v4, v4, v6

    goto :goto_2

    .line 135
    .end local v2           #index:I
    .end local v3           #v:Lmiui/maml/data/FileBinder$Variable;
    :cond_3
    return-void
.end method


# virtual methods
.method protected addVariable(Lmiui/maml/data/FileBinder$Variable;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 124
    iget-object v0, p0, Lmiui/maml/data/FileBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method public bridge synthetic getName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lmiui/maml/data/FileBinder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lmiui/maml/data/FileBinder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->init()V

    .line 76
    invoke-virtual {p0}, Lmiui/maml/data/FileBinder;->refresh()V

    .line 77
    return-void
.end method

.method public refresh()V
    .locals 5

    .prologue
    .line 86
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->refresh()V

    .line 87
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mDirFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {p0}, Lmiui/maml/data/FileBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v2, v3}, Lmiui/maml/util/TextFormatter;->getText(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, dir:Ljava/io/File;
    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mFilters:[Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lmiui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    .line 89
    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v0, 0x0

    .line 90
    .local v0, count:I
    :goto_1
    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mCountVar:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mCountVar:Lmiui/maml/util/IndexedNumberVariable;

    int-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 93
    :cond_0
    const-string v2, "FileBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-direct {p0}, Lmiui/maml/data/FileBinder;->updateVariables()V

    .line 96
    return-void

    .line 88
    .end local v0           #count:I
    :cond_1
    new-instance v2, Lmiui/maml/util/FilenameExtFilter;

    iget-object v3, p0, Lmiui/maml/data/FileBinder;->mFilters:[Ljava/lang/String;

    invoke-direct {v2, v3}, Lmiui/maml/util/FilenameExtFilter;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 89
    :cond_2
    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    array-length v0, v2

    goto :goto_1
.end method

.method public tick()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->tick()V

    .line 81
    invoke-direct {p0}, Lmiui/maml/data/FileBinder;->updateVariables()V

    .line 82
    return-void
.end method
