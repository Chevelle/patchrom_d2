.class public Lmiui/maml/data/Expression$FunctionExpression;
.super Lmiui/maml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FunctionExpression"
.end annotation


# static fields
.field protected static sFunMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/maml/data/Expression$FunctionImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFun:Lmiui/maml/data/Expression$FunctionImpl;

.field private mFunName:Ljava/lang/String;

.field private mParaExps:[Lmiui/maml/data/Expression;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 482
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/maml/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    .line 484
    invoke-static {}, Lmiui/maml/data/FunctionsLoader;->load()V

    .line 485
    return-void
.end method

.method public constructor <init>([Lmiui/maml/data/Expression;Ljava/lang/String;)V
    .locals 0
    .parameter "params"
    .parameter "fun"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 488
    invoke-direct {p0}, Lmiui/maml/data/Expression;-><init>()V

    .line 489
    iput-object p1, p0, Lmiui/maml/data/Expression$FunctionExpression;->mParaExps:[Lmiui/maml/data/Expression;

    .line 490
    iput-object p2, p0, Lmiui/maml/data/Expression$FunctionExpression;->mFunName:Ljava/lang/String;

    .line 491
    invoke-direct {p0, p2}, Lmiui/maml/data/Expression$FunctionExpression;->parseFunction(Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method private parseFunction(Ljava/lang/String;)V
    .locals 6
    .parameter "fun"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 506
    sget-object v1, Lmiui/maml/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/Expression$FunctionImpl;

    .line 507
    .local v0, fd:Lmiui/maml/data/Expression$FunctionImpl;
    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid function:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lmiui/maml/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 509
    iput-object v0, p0, Lmiui/maml/data/Expression$FunctionExpression;->mFun:Lmiui/maml/data/Expression$FunctionImpl;

    .line 510
    iget-object v1, p0, Lmiui/maml/data/Expression$FunctionExpression;->mParaExps:[Lmiui/maml/data/Expression;

    array-length v1, v1

    iget v4, v0, Lmiui/maml/data/Expression$FunctionImpl;->params:I

    if-lt v1, v4, :cond_1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parameters count not matching for function: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmiui/maml/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 511
    return-void

    :cond_0
    move v1, v3

    .line 507
    goto :goto_0

    :cond_1
    move v2, v3

    .line 510
    goto :goto_1
.end method

.method public static registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V
    .locals 4
    .parameter "f"
    .parameter "d"

    .prologue
    .line 495
    sget-object v1, Lmiui/maml/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/Expression$FunctionImpl;

    .line 496
    .local v0, fun:Lmiui/maml/data/Expression$FunctionImpl;
    if-eqz v0, :cond_0

    .line 497
    const-string v1, "Expression"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duplicated function name registation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_0
    return-void
.end method

.method public static removeFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V
    .locals 1
    .parameter "f"
    .parameter "d"

    .prologue
    .line 502
    sget-object v0, Lmiui/maml/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    return-void
.end method


# virtual methods
.method public accept(Lmiui/maml/data/ExpressionVisitor;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 525
    invoke-virtual {p1, p0}, Lmiui/maml/data/ExpressionVisitor;->visit(Lmiui/maml/data/Expression$FunctionExpression;)V

    .line 526
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lmiui/maml/data/Expression$FunctionExpression;->mParaExps:[Lmiui/maml/data/Expression;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 527
    iget-object v1, p0, Lmiui/maml/data/Expression$FunctionExpression;->mParaExps:[Lmiui/maml/data/Expression;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lmiui/maml/data/Expression;->accept(Lmiui/maml/data/ExpressionVisitor;)V

    .line 526
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 529
    :cond_0
    return-void
.end method

.method public evaluate(Lmiui/maml/data/Variables;)D
    .locals 2
    .parameter "var"

    .prologue
    .line 515
    iget-object v0, p0, Lmiui/maml/data/Expression$FunctionExpression;->mFun:Lmiui/maml/data/Expression$FunctionImpl;

    iget-object v1, p0, Lmiui/maml/data/Expression$FunctionExpression;->mParaExps:[Lmiui/maml/data/Expression;

    invoke-virtual {v0, v1, p1}, Lmiui/maml/data/Expression$FunctionImpl;->evaluate([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;
    .locals 2
    .parameter "var"

    .prologue
    .line 520
    iget-object v0, p0, Lmiui/maml/data/Expression$FunctionExpression;->mFun:Lmiui/maml/data/Expression$FunctionImpl;

    iget-object v1, p0, Lmiui/maml/data/Expression$FunctionExpression;->mParaExps:[Lmiui/maml/data/Expression;

    invoke-virtual {v0, v1, p1}, Lmiui/maml/data/Expression$FunctionImpl;->evaluateStr([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFunName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lmiui/maml/data/Expression$FunctionExpression;->mFunName:Ljava/lang/String;

    return-object v0
.end method
