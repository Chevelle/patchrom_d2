.class Lmiui/maml/data/RootExpression$VarVersionVisitor;
.super Lmiui/maml/data/ExpressionVisitor;
.source "RootExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/RootExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VarVersionVisitor"
.end annotation


# instance fields
.field private mRoot:Lmiui/maml/data/RootExpression;

.field private mVar:Lmiui/maml/data/Variables;


# direct methods
.method public constructor <init>(Lmiui/maml/data/RootExpression;Lmiui/maml/data/Variables;)V
    .locals 0
    .parameter "root"
    .parameter "var"

    .prologue
    .line 44
    invoke-direct {p0}, Lmiui/maml/data/ExpressionVisitor;-><init>()V

    .line 45
    iput-object p1, p0, Lmiui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lmiui/maml/data/RootExpression;

    .line 46
    iput-object p2, p0, Lmiui/maml/data/RootExpression$VarVersionVisitor;->mVar:Lmiui/maml/data/Variables;

    .line 47
    return-void
.end method


# virtual methods
.method public visit(Lmiui/maml/data/Expression$FunctionExpression;)V
    .locals 2
    .parameter "exp"

    .prologue
    .line 64
    const-string v0, "rand"

    invoke-virtual {p1}, Lmiui/maml/data/Expression$FunctionExpression;->getFunName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lmiui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lmiui/maml/data/RootExpression;

    const/4 v1, 0x1

    #setter for: Lmiui/maml/data/RootExpression;->mAlwaysEvaluate:Z
    invoke-static {v0, v1}, Lmiui/maml/data/RootExpression;->access$002(Lmiui/maml/data/RootExpression;Z)Z

    .line 67
    :cond_0
    return-void
.end method

.method public visit(Lmiui/maml/data/Expression$NumberVariableExpression;)V
    .locals 5
    .parameter "exp"

    .prologue
    .line 52
    iget-object v0, p0, Lmiui/maml/data/RootExpression$VarVersionVisitor;->mVar:Lmiui/maml/data/Variables;

    invoke-virtual {p1, v0}, Lmiui/maml/data/Expression$NumberVariableExpression;->evaluate(Lmiui/maml/data/Variables;)D

    .line 53
    iget-object v0, p0, Lmiui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lmiui/maml/data/RootExpression;

    new-instance v1, Lmiui/maml/data/RootExpression$VarVersion;

    invoke-virtual {p1}, Lmiui/maml/data/Expression$NumberVariableExpression;->getIndex()I

    move-result v2

    invoke-virtual {p1}, Lmiui/maml/data/Expression$NumberVariableExpression;->getVersion()I

    move-result v3

    sget-object v4, Lmiui/maml/data/RootExpression$VarVersion$Type;->NUM:Lmiui/maml/data/RootExpression$VarVersion$Type;

    invoke-direct {v1, v2, v3, v4}, Lmiui/maml/data/RootExpression$VarVersion;-><init>(IILmiui/maml/data/RootExpression$VarVersion$Type;)V

    invoke-virtual {v0, v1}, Lmiui/maml/data/RootExpression;->addVarVersion(Lmiui/maml/data/RootExpression$VarVersion;)V

    .line 54
    return-void
.end method

.method public visit(Lmiui/maml/data/Expression$StringVariableExpression;)V
    .locals 5
    .parameter "exp"

    .prologue
    .line 58
    iget-object v0, p0, Lmiui/maml/data/RootExpression$VarVersionVisitor;->mVar:Lmiui/maml/data/Variables;

    invoke-virtual {p1, v0}, Lmiui/maml/data/Expression$StringVariableExpression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lmiui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lmiui/maml/data/RootExpression;

    new-instance v1, Lmiui/maml/data/RootExpression$VarVersion;

    invoke-virtual {p1}, Lmiui/maml/data/Expression$StringVariableExpression;->getIndex()I

    move-result v2

    invoke-virtual {p1}, Lmiui/maml/data/Expression$StringVariableExpression;->getVersion()I

    move-result v3

    sget-object v4, Lmiui/maml/data/RootExpression$VarVersion$Type;->STR:Lmiui/maml/data/RootExpression$VarVersion$Type;

    invoke-direct {v1, v2, v3, v4}, Lmiui/maml/data/RootExpression$VarVersion;-><init>(IILmiui/maml/data/RootExpression$VarVersion$Type;)V

    invoke-virtual {v0, v1}, Lmiui/maml/data/RootExpression;->addVarVersion(Lmiui/maml/data/RootExpression$VarVersion;)V

    .line 60
    return-void
.end method
