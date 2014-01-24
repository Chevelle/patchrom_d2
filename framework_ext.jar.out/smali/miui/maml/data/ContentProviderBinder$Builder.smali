.class public Lmiui/maml/data/ContentProviderBinder$Builder;
.super Ljava/lang/Object;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBinder:Lmiui/maml/data/ContentProviderBinder;


# direct methods
.method protected constructor <init>(Lmiui/maml/data/ContentProviderBinder;)V
    .locals 0
    .parameter "binder"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    .line 106
    return-void
.end method


# virtual methods
.method public addVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILmiui/maml/data/Variables;)V
    .locals 2
    .parameter "name"
    .parameter "type"
    .parameter "column"
    .parameter "row"
    .parameter "var"

    .prologue
    .line 146
    new-instance v0, Lmiui/maml/data/ContentProviderBinder$Variable;

    invoke-direct {v0, p1, p2, p5}, Lmiui/maml/data/ContentProviderBinder$Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    .line 147
    .local v0, v:Lmiui/maml/data/ContentProviderBinder$Variable;
    iput-object p3, v0, Lmiui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    .line 148
    iput p4, v0, Lmiui/maml/data/ContentProviderBinder$Variable;->mRow:I

    .line 149
    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    invoke-virtual {v1, v0}, Lmiui/maml/data/ContentProviderBinder;->addVariable(Lmiui/maml/data/ContentProviderBinder$Variable;)V

    .line 150
    return-void
.end method

.method public setArgs([Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "args"

    .prologue
    .line 129
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    iput-object p1, v0, Lmiui/maml/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    .line 130
    return-object p0
.end method

.method public setColumns([Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "columns"

    .prologue
    .line 124
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    iput-object p1, v0, Lmiui/maml/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    .line 125
    return-object p0
.end method

.method public setCountName(Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "countName"

    .prologue
    .line 139
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    iput-object p1, v0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    invoke-virtual {v0}, Lmiui/maml/data/ContentProviderBinder;->createCountVar()V

    .line 141
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "name"

    .prologue
    .line 109
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    iput-object p1, v0, Lmiui/maml/data/ContentProviderBinder;->mName:Ljava/lang/String;

    .line 110
    return-object p0
.end method

.method public setOrder(Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "order"

    .prologue
    .line 134
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    iput-object p1, v0, Lmiui/maml/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public setWhere(Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;
    .locals 2
    .parameter "where"

    .prologue
    .line 114
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    new-instance v1, Lmiui/maml/util/TextFormatter;

    invoke-direct {v1, p1}, Lmiui/maml/util/TextFormatter;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lmiui/maml/data/ContentProviderBinder;->mWhereFormatter:Lmiui/maml/util/TextFormatter;

    .line 115
    return-object p0
.end method

.method public setWhere(Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;
    .locals 2
    .parameter "whereFormat"
    .parameter "whereParas"

    .prologue
    .line 119
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    new-instance v1, Lmiui/maml/util/TextFormatter;

    invoke-direct {v1, p1, p2}, Lmiui/maml/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lmiui/maml/data/ContentProviderBinder;->mWhereFormatter:Lmiui/maml/util/TextFormatter;

    .line 120
    return-object p0
.end method
