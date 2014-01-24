.class Lmiui/maml/data/Expression$UnaryExpression;
.super Lmiui/maml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnaryExpression"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/Expression$UnaryExpression$Ope;
    }
.end annotation


# instance fields
.field private mExp:Lmiui/maml/data/Expression;

.field private mOpe:Lmiui/maml/data/Expression$UnaryExpression$Ope;


# direct methods
.method public constructor <init>(Lmiui/maml/data/Expression;Ljava/lang/String;)V
    .locals 3
    .parameter "exp"
    .parameter "op"

    .prologue
    .line 315
    invoke-direct {p0}, Lmiui/maml/data/Expression;-><init>()V

    .line 308
    sget-object v0, Lmiui/maml/data/Expression$UnaryExpression$Ope;->INVALID:Lmiui/maml/data/Expression$UnaryExpression$Ope;

    iput-object v0, p0, Lmiui/maml/data/Expression$UnaryExpression;->mOpe:Lmiui/maml/data/Expression$UnaryExpression$Ope;

    .line 316
    iput-object p1, p0, Lmiui/maml/data/Expression$UnaryExpression;->mExp:Lmiui/maml/data/Expression;

    .line 317
    invoke-static {p2}, Lmiui/maml/data/Expression$UnaryExpression;->parseOperator(Ljava/lang/String;)Lmiui/maml/data/Expression$UnaryExpression$Ope;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/Expression$UnaryExpression;->mOpe:Lmiui/maml/data/Expression$UnaryExpression$Ope;

    .line 318
    iget-object v0, p0, Lmiui/maml/data/Expression$UnaryExpression;->mOpe:Lmiui/maml/data/Expression$UnaryExpression$Ope;

    sget-object v1, Lmiui/maml/data/Expression$UnaryExpression$Ope;->INVALID:Lmiui/maml/data/Expression$UnaryExpression$Ope;

    if-ne v0, v1, :cond_0

    .line 319
    const-string v0, "Expression"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BinaryExpression: invalid operator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    return-void
.end method

.method public static parseOperator(Ljava/lang/String;)Lmiui/maml/data/Expression$UnaryExpression$Ope;
    .locals 1
    .parameter "op"

    .prologue
    .line 324
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    sget-object v0, Lmiui/maml/data/Expression$UnaryExpression$Ope;->MIN:Lmiui/maml/data/Expression$UnaryExpression$Ope;

    .line 328
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmiui/maml/data/Expression$UnaryExpression$Ope;->INVALID:Lmiui/maml/data/Expression$UnaryExpression$Ope;

    goto :goto_0
.end method


# virtual methods
.method public accept(Lmiui/maml/data/ExpressionVisitor;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 354
    invoke-virtual {p1, p0}, Lmiui/maml/data/ExpressionVisitor;->visit(Lmiui/maml/data/Expression$UnaryExpression;)V

    .line 355
    iget-object v0, p0, Lmiui/maml/data/Expression$UnaryExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->accept(Lmiui/maml/data/ExpressionVisitor;)V

    .line 356
    return-void
.end method

.method public evaluate(Lmiui/maml/data/Variables;)D
    .locals 4
    .parameter "var"

    .prologue
    .line 333
    sget-object v0, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$UnaryExpression$Ope:[I

    iget-object v1, p0, Lmiui/maml/data/Expression$UnaryExpression;->mOpe:Lmiui/maml/data/Expression$UnaryExpression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$UnaryExpression$Ope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 338
    const-string v0, "Expression"

    const-string v1, "fail to evalute UnaryExpression, invalid operator"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lmiui/maml/data/Expression$UnaryExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 335
    :pswitch_0
    const-wide/16 v0, 0x0

    iget-object v2, p0, Lmiui/maml/data/Expression$UnaryExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v2, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    goto :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;
    .locals 2
    .parameter "var"

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Lmiui/maml/data/Expression$UnaryExpression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull(Lmiui/maml/data/Variables;)Z
    .locals 1
    .parameter "var"

    .prologue
    .line 344
    iget-object v0, p0, Lmiui/maml/data/Expression$UnaryExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->isNull(Lmiui/maml/data/Variables;)Z

    move-result v0

    return v0
.end method
