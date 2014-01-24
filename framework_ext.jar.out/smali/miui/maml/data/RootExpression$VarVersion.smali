.class public Lmiui/maml/data/RootExpression$VarVersion;
.super Ljava/lang/Object;
.source "RootExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/RootExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VarVersion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/RootExpression$VarVersion$Type;
    }
.end annotation


# instance fields
.field mIndex:I

.field mType:Lmiui/maml/data/RootExpression$VarVersion$Type;

.field mVersion:I


# direct methods
.method public constructor <init>(IILmiui/maml/data/RootExpression$VarVersion$Type;)V
    .locals 0
    .parameter "index"
    .parameter "version"
    .parameter "type"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lmiui/maml/data/RootExpression$VarVersion;->mIndex:I

    .line 22
    iput p2, p0, Lmiui/maml/data/RootExpression$VarVersion;->mVersion:I

    .line 23
    iput-object p3, p0, Lmiui/maml/data/RootExpression$VarVersion;->mType:Lmiui/maml/data/RootExpression$VarVersion$Type;

    .line 24
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "version"

    .prologue
    const/4 v1, 0x0

    .line 31
    instance-of v2, p1, Lmiui/maml/data/RootExpression$VarVersion;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 32
    check-cast v0, Lmiui/maml/data/RootExpression$VarVersion;

    .line 33
    .local v0, tempVersion:Lmiui/maml/data/RootExpression$VarVersion;
    iget v2, v0, Lmiui/maml/data/RootExpression$VarVersion;->mIndex:I

    iget v3, p0, Lmiui/maml/data/RootExpression$VarVersion;->mIndex:I

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lmiui/maml/data/RootExpression$VarVersion;->mType:Lmiui/maml/data/RootExpression$VarVersion$Type;

    iget-object v3, p0, Lmiui/maml/data/RootExpression$VarVersion;->mType:Lmiui/maml/data/RootExpression$VarVersion$Type;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 35
    .end local v0           #tempVersion:Lmiui/maml/data/RootExpression$VarVersion;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lmiui/maml/data/RootExpression$VarVersion;->mType:Lmiui/maml/data/RootExpression$VarVersion$Type;

    sget-object v1, Lmiui/maml/data/RootExpression$VarVersion$Type;->NUM:Lmiui/maml/data/RootExpression$VarVersion$Type;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmiui/maml/data/RootExpression$VarVersion;->mIndex:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmiui/maml/data/RootExpression$VarVersion;->mIndex:I

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
