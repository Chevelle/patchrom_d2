.class public Lmiui/maml/data/ExpressionVisitor;
.super Ljava/lang/Object;
.source "ExpressionVisitor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lmiui/maml/data/Expression$BinaryExpression;)V
    .locals 0
    .parameter "exp"

    .prologue
    .line 6
    return-void
.end method

.method public visit(Lmiui/maml/data/Expression$FunctionExpression;)V
    .locals 0
    .parameter "exp"

    .prologue
    .line 24
    return-void
.end method

.method public visit(Lmiui/maml/data/Expression$NumberExpression;)V
    .locals 0
    .parameter "exp"

    .prologue
    .line 9
    return-void
.end method

.method public visit(Lmiui/maml/data/Expression$NumberVariableExpression;)V
    .locals 0
    .parameter "exp"

    .prologue
    .line 15
    return-void
.end method

.method public visit(Lmiui/maml/data/Expression$StringExpression;)V
    .locals 0
    .parameter "exp"

    .prologue
    .line 12
    return-void
.end method

.method public visit(Lmiui/maml/data/Expression$StringVariableExpression;)V
    .locals 0
    .parameter "exp"

    .prologue
    .line 18
    return-void
.end method

.method public visit(Lmiui/maml/data/Expression$UnaryExpression;)V
    .locals 0
    .parameter "exp"

    .prologue
    .line 21
    return-void
.end method
