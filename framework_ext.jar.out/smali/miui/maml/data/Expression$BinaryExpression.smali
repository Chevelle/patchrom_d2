.class Lmiui/maml/data/Expression$BinaryExpression;
.super Lmiui/maml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BinaryExpression"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/Expression$BinaryExpression$Ope;
    }
.end annotation


# instance fields
.field private mExp1:Lmiui/maml/data/Expression;

.field private mExp2:Lmiui/maml/data/Expression;

.field private mOpe:Lmiui/maml/data/Expression$BinaryExpression$Ope;


# direct methods
.method public constructor <init>(Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;Ljava/lang/String;)V
    .locals 3
    .parameter "exp1"
    .parameter "exp2"
    .parameter "op"

    .prologue
    .line 392
    invoke-direct {p0}, Lmiui/maml/data/Expression;-><init>()V

    .line 365
    sget-object v0, Lmiui/maml/data/Expression$BinaryExpression$Ope;->INVALID:Lmiui/maml/data/Expression$BinaryExpression$Ope;

    iput-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$BinaryExpression$Ope;

    .line 393
    iput-object p1, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    .line 394
    iput-object p2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    .line 395
    invoke-static {p3}, Lmiui/maml/data/Expression$BinaryExpression;->parseOperator(Ljava/lang/String;)Lmiui/maml/data/Expression$BinaryExpression$Ope;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$BinaryExpression$Ope;

    .line 396
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$BinaryExpression$Ope;

    sget-object v1, Lmiui/maml/data/Expression$BinaryExpression$Ope;->INVALID:Lmiui/maml/data/Expression$BinaryExpression$Ope;

    if-ne v0, v1, :cond_0

    .line 397
    const-string v0, "Expression"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BinaryExpression: invalid operator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_0
    return-void
.end method

.method public static parseOperator(Ljava/lang/String;)Lmiui/maml/data/Expression$BinaryExpression$Ope;
    .locals 1
    .parameter "op"

    .prologue
    .line 377
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    sget-object v0, Lmiui/maml/data/Expression$BinaryExpression$Ope;->ADD:Lmiui/maml/data/Expression$BinaryExpression$Ope;

    .line 389
    :goto_0
    return-object v0

    .line 379
    :cond_0
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    sget-object v0, Lmiui/maml/data/Expression$BinaryExpression$Ope;->MIN:Lmiui/maml/data/Expression$BinaryExpression$Ope;

    goto :goto_0

    .line 381
    :cond_1
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 382
    sget-object v0, Lmiui/maml/data/Expression$BinaryExpression$Ope;->MUL:Lmiui/maml/data/Expression$BinaryExpression$Ope;

    goto :goto_0

    .line 383
    :cond_2
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 384
    sget-object v0, Lmiui/maml/data/Expression$BinaryExpression$Ope;->DIV:Lmiui/maml/data/Expression$BinaryExpression$Ope;

    goto :goto_0

    .line 385
    :cond_3
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 386
    sget-object v0, Lmiui/maml/data/Expression$BinaryExpression$Ope;->MOD:Lmiui/maml/data/Expression$BinaryExpression$Ope;

    goto :goto_0

    .line 389
    :cond_4
    sget-object v0, Lmiui/maml/data/Expression$BinaryExpression$Ope;->INVALID:Lmiui/maml/data/Expression$BinaryExpression$Ope;

    goto :goto_0
.end method


# virtual methods
.method public accept(Lmiui/maml/data/ExpressionVisitor;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 457
    invoke-virtual {p1, p0}, Lmiui/maml/data/ExpressionVisitor;->visit(Lmiui/maml/data/Expression$BinaryExpression;)V

    .line 458
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->accept(Lmiui/maml/data/ExpressionVisitor;)V

    .line 459
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->accept(Lmiui/maml/data/ExpressionVisitor;)V

    .line 460
    return-void
.end method

.method public evaluate(Lmiui/maml/data/Variables;)D
    .locals 4
    .parameter "var"

    .prologue
    .line 403
    sget-object v0, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$BinaryExpression$Ope:[I

    iget-object v1, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$BinaryExpression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$BinaryExpression$Ope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 416
    const-string v0, "Expression"

    const-string v1, "fail to evalute BinaryExpression, invalid operator"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 405
    :pswitch_0
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_0

    .line 407
    :pswitch_1
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    goto :goto_0

    .line 409
    :pswitch_2
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    goto :goto_0

    .line 411
    :pswitch_3
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v2

    div-double/2addr v0, v2

    goto :goto_0

    .line 413
    :pswitch_4
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v2

    rem-double/2addr v0, v2

    goto :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;
    .locals 5
    .parameter "var"

    .prologue
    const/4 v2, 0x0

    .line 437
    iget-object v3, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v3, p1}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, str1:Ljava/lang/String;
    iget-object v3, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v3, p1}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, str2:Ljava/lang/String;
    sget-object v3, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$BinaryExpression$Ope:[I

    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$BinaryExpression$Ope;

    invoke-virtual {v4}, Lmiui/maml/data/Expression$BinaryExpression$Ope;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 451
    const-string v3, "Expression"

    const-string v4, "fail to evalute string BinaryExpression, invalid operator"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 452
    .end local v1           #str2:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 441
    .restart local v1       #str2:Ljava/lang/String;
    :pswitch_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    move-object v1, v2

    .line 442
    goto :goto_0

    .line 443
    :cond_1
    if-eqz v0, :cond_0

    .line 445
    if-nez v1, :cond_2

    move-object v1, v0

    .line 446
    goto :goto_0

    .line 448
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 439
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isNull(Lmiui/maml/data/Variables;)Z
    .locals 4
    .parameter "var"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 422
    sget-object v2, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$BinaryExpression$Ope:[I

    iget-object v3, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$BinaryExpression$Ope;

    invoke-virtual {v3}, Lmiui/maml/data/Expression$BinaryExpression$Ope;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 432
    :cond_0
    :goto_0
    return v0

    .line 425
    :pswitch_0
    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v2, p1}, Lmiui/maml/data/Expression;->isNull(Lmiui/maml/data/Variables;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2, p1}, Lmiui/maml/data/Expression;->isNull(Lmiui/maml/data/Variables;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 429
    :pswitch_1
    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v2, p1}, Lmiui/maml/data/Expression;->isNull(Lmiui/maml/data/Variables;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2, p1}, Lmiui/maml/data/Expression;->isNull(Lmiui/maml/data/Variables;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
