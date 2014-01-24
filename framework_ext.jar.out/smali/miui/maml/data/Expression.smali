.class public abstract Lmiui/maml/data/Expression;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/Expression$1;,
        Lmiui/maml/data/Expression$FunctionExpression;,
        Lmiui/maml/data/Expression$FunctionImpl;,
        Lmiui/maml/data/Expression$BinaryExpression;,
        Lmiui/maml/data/Expression$UnaryExpression;,
        Lmiui/maml/data/Expression$StringExpression;,
        Lmiui/maml/data/Expression$NumberExpression;,
        Lmiui/maml/data/Expression$StringVariableExpression;,
        Lmiui/maml/data/Expression$NumberVariableExpression;,
        Lmiui/maml/data/Expression$VariableExpression;,
        Lmiui/maml/data/Expression$Tokenizer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Expression"

.field private static mOperatorsPriority:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 710
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "+-"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "*/%"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/maml/data/Expression;->mOperatorsPriority:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    return-void
.end method

.method static synthetic access$000(C)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-static {p0}, Lmiui/maml/data/Expression;->isVariableChar(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(C)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-static {p0}, Lmiui/maml/data/Expression;->isDigitChar(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(C)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-static {p0}, Lmiui/maml/data/Expression;->isFunctionChar(C)Z

    move-result v0

    return v0
.end method

.method public static build(Ljava/lang/String;)Lmiui/maml/data/Expression;
    .locals 2
    .parameter "exp"

    .prologue
    .line 587
    invoke-static {p0}, Lmiui/maml/data/Expression;->buildInner(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    .line 588
    .local v0, ex:Lmiui/maml/data/Expression;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lmiui/maml/data/RootExpression;

    invoke-direct {v1, v0}, Lmiui/maml/data/RootExpression;-><init>(Lmiui/maml/data/Expression;)V

    goto :goto_0
.end method

.method private static buildBracket(Lmiui/maml/data/Expression$Tokenizer$Token;Ljava/util/Stack;)Lmiui/maml/data/Expression;
    .locals 6
    .parameter "token"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/maml/data/Expression$Tokenizer$Token;",
            "Ljava/util/Stack",
            "<",
            "Lmiui/maml/data/Expression$Tokenizer$Token;",
            ">;)",
            "Lmiui/maml/data/Expression;"
        }
    .end annotation

    .prologue
    .local p1, opeStack:Ljava/util/Stack;,"Ljava/util/Stack<Lmiui/maml/data/Expression$Tokenizer$Token;>;"
    const/4 v3, 0x0

    .line 681
    iget-object v2, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-static {v2}, Lmiui/maml/data/Expression;->buildMultipleInner(Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v1

    .line 682
    .local v1, newExps:[Lmiui/maml/data/Expression;
    invoke-static {v1}, Lmiui/maml/data/Expression;->checkParams([Lmiui/maml/data/Expression;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 683
    const-string v2, "Expression"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid expressions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 699
    :goto_0
    return-object v2

    .line 688
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v2, v2, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    sget-object v4, Lmiui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    if-ne v2, v4, :cond_1

    .line 689
    new-instance v4, Lmiui/maml/data/Expression$FunctionExpression;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v2, v2, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v4, v1, v2}, Lmiui/maml/data/Expression$FunctionExpression;-><init>([Lmiui/maml/data/Expression;Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_0

    .line 690
    :cond_1
    array-length v2, v1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 691
    const/4 v2, 0x0

    aget-object v2, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 695
    const-string v2, "Expression"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const-string v2, "Expression"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to buid: multiple expressions in brackets, but seems no function presents:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 699
    goto :goto_0
.end method

.method private static buildInner(Ljava/lang/String;)Lmiui/maml/data/Expression;
    .locals 15
    .parameter "exp"

    .prologue
    const/4 v12, 0x0

    .line 592
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v1, v12

    .line 677
    :cond_0
    :goto_0
    return-object v1

    .line 599
    :cond_1
    new-instance v9, Lmiui/maml/data/Expression$Tokenizer;

    invoke-direct {v9, p0}, Lmiui/maml/data/Expression$Tokenizer;-><init>(Ljava/lang/String;)V

    .line 600
    .local v9, tk:Lmiui/maml/data/Expression$Tokenizer;
    const/4 v10, 0x0

    .line 601
    .local v10, token:Lmiui/maml/data/Expression$Tokenizer$Token;
    const/4 v8, 0x0

    .line 602
    .local v8, preToken:Lmiui/maml/data/Expression$Tokenizer$Token;
    new-instance v7, Ljava/util/Stack;

    invoke-direct {v7}, Ljava/util/Stack;-><init>()V

    .line 603
    .local v7, opeStack:Ljava/util/Stack;,"Ljava/util/Stack<Lmiui/maml/data/Expression$Tokenizer$Token;>;"
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 604
    .local v3, expStack:Ljava/util/Stack;,"Ljava/util/Stack<Lmiui/maml/data/Expression;>;"
    const/4 v4, 0x0

    .line 605
    .local v4, minus:Z
    :goto_1
    invoke-virtual {v9}, Lmiui/maml/data/Expression$Tokenizer;->getToken()Lmiui/maml/data/Expression$Tokenizer$Token;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 609
    sget-object v11, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Tokenizer$TokenType:[I

    iget-object v13, v10, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v13}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v13

    aget v11, v11, v13

    packed-switch v11, :pswitch_data_0

    .line 664
    :goto_2
    move-object v8, v10

    goto :goto_1

    .line 615
    :pswitch_0
    const/4 v5, 0x0

    .line 616
    .local v5, newExp:Lmiui/maml/data/Expression;
    sget-object v11, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Tokenizer$TokenType:[I

    iget-object v13, v10, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v13}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v13

    aget v11, v11, v13

    packed-switch v11, :pswitch_data_1

    :cond_2
    move-object v6, v5

    .line 637
    .end local v5           #newExp:Lmiui/maml/data/Expression;
    .local v6, newExp:Lmiui/maml/data/Expression;
    :goto_3
    if-eqz v4, :cond_a

    .line 638
    new-instance v5, Lmiui/maml/data/Expression$UnaryExpression;

    const-string v11, "-"

    invoke-direct {v5, v6, v11}, Lmiui/maml/data/Expression$UnaryExpression;-><init>(Lmiui/maml/data/Expression;Ljava/lang/String;)V

    .line 640
    .end local v6           #newExp:Lmiui/maml/data/Expression;
    .restart local v5       #newExp:Lmiui/maml/data/Expression;
    :goto_4
    invoke-virtual {v3, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 618
    :pswitch_1
    new-instance v5, Lmiui/maml/data/Expression$NumberVariableExpression;

    .end local v5           #newExp:Lmiui/maml/data/Expression;
    iget-object v11, v10, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v5, v11}, Lmiui/maml/data/Expression$NumberVariableExpression;-><init>(Ljava/lang/String;)V

    .restart local v5       #newExp:Lmiui/maml/data/Expression;
    move-object v6, v5

    .line 619
    .end local v5           #newExp:Lmiui/maml/data/Expression;
    .restart local v6       #newExp:Lmiui/maml/data/Expression;
    goto :goto_3

    .line 621
    .end local v6           #newExp:Lmiui/maml/data/Expression;
    .restart local v5       #newExp:Lmiui/maml/data/Expression;
    :pswitch_2
    new-instance v5, Lmiui/maml/data/Expression$StringVariableExpression;

    .end local v5           #newExp:Lmiui/maml/data/Expression;
    iget-object v11, v10, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v5, v11}, Lmiui/maml/data/Expression$StringVariableExpression;-><init>(Ljava/lang/String;)V

    .restart local v5       #newExp:Lmiui/maml/data/Expression;
    move-object v6, v5

    .line 622
    .end local v5           #newExp:Lmiui/maml/data/Expression;
    .restart local v6       #newExp:Lmiui/maml/data/Expression;
    goto :goto_3

    .line 624
    .end local v6           #newExp:Lmiui/maml/data/Expression;
    .restart local v5       #newExp:Lmiui/maml/data/Expression;
    :pswitch_3
    new-instance v5, Lmiui/maml/data/Expression$NumberExpression;

    .end local v5           #newExp:Lmiui/maml/data/Expression;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_3

    const-string v11, "-"

    :goto_5
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v10, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Lmiui/maml/data/Expression$NumberExpression;-><init>(Ljava/lang/String;)V

    .line 625
    .restart local v5       #newExp:Lmiui/maml/data/Expression;
    const/4 v4, 0x0

    move-object v6, v5

    .line 626
    .end local v5           #newExp:Lmiui/maml/data/Expression;
    .restart local v6       #newExp:Lmiui/maml/data/Expression;
    goto :goto_3

    .line 624
    .end local v6           #newExp:Lmiui/maml/data/Expression;
    :cond_3
    const-string v11, ""

    goto :goto_5

    .line 628
    .restart local v5       #newExp:Lmiui/maml/data/Expression;
    :pswitch_4
    new-instance v5, Lmiui/maml/data/Expression$StringExpression;

    .end local v5           #newExp:Lmiui/maml/data/Expression;
    iget-object v11, v10, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v5, v11}, Lmiui/maml/data/Expression$StringExpression;-><init>(Ljava/lang/String;)V

    .restart local v5       #newExp:Lmiui/maml/data/Expression;
    move-object v6, v5

    .line 629
    .end local v5           #newExp:Lmiui/maml/data/Expression;
    .restart local v6       #newExp:Lmiui/maml/data/Expression;
    goto :goto_3

    .line 631
    .end local v6           #newExp:Lmiui/maml/data/Expression;
    .restart local v5       #newExp:Lmiui/maml/data/Expression;
    :pswitch_5
    invoke-static {v10, v7}, Lmiui/maml/data/Expression;->buildBracket(Lmiui/maml/data/Expression$Tokenizer$Token;Ljava/util/Stack;)Lmiui/maml/data/Expression;

    move-result-object v5

    .line 632
    if-nez v5, :cond_2

    move-object v1, v12

    .line 633
    goto/16 :goto_0

    .line 643
    .end local v5           #newExp:Lmiui/maml/data/Expression;
    :pswitch_6
    iget-object v11, v10, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    const-string v13, "-"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz v8, :cond_4

    iget-object v11, v8, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    sget-object v13, Lmiui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    if-ne v11, v13, :cond_6

    .line 645
    :cond_4
    const/4 v4, 0x1

    goto :goto_2

    .line 652
    :cond_5
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/Expression;

    .line 653
    .local v1, exp2:Lmiui/maml/data/Expression;
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/Expression;

    .line 654
    .local v0, exp1:Lmiui/maml/data/Expression;
    new-instance v13, Lmiui/maml/data/Expression$BinaryExpression;

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v11, v11, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v13, v0, v1, v11}, Lmiui/maml/data/Expression$BinaryExpression;-><init>(Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    .end local v0           #exp1:Lmiui/maml/data/Expression;
    .end local v1           #exp2:Lmiui/maml/data/Expression;
    :cond_6
    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v11

    if-lez v11, :cond_7

    iget-object v13, v10, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v11, v11, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-static {v13, v11}, Lmiui/maml/data/Expression;->cmpOpePri(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-gtz v11, :cond_7

    .line 648
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v11

    const/4 v13, 0x2

    if-ge v11, v13, :cond_5

    .line 649
    const-string v11, "Expression"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fail to buid: invalid operation position:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v12

    .line 650
    goto/16 :goto_0

    .line 656
    :cond_7
    invoke-virtual {v7, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    const/4 v4, 0x0

    .line 659
    goto/16 :goto_2

    .line 661
    :pswitch_7
    invoke-virtual {v7, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 667
    :cond_8
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v11

    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    if-eq v11, v13, :cond_9

    .line 668
    const-string v11, "Expression"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fail to buid: invalid expression:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v12

    .line 669
    goto/16 :goto_0

    .line 672
    :cond_9
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/Expression;

    .line 673
    .restart local v1       #exp2:Lmiui/maml/data/Expression;
    :goto_6
    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 674
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/Expression;

    .line 675
    .restart local v0       #exp1:Lmiui/maml/data/Expression;
    new-instance v2, Lmiui/maml/data/Expression$BinaryExpression;

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v11, v11, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v2, v0, v1, v11}, Lmiui/maml/data/Expression$BinaryExpression;-><init>(Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;Ljava/lang/String;)V

    .end local v1           #exp2:Lmiui/maml/data/Expression;
    .local v2, exp2:Lmiui/maml/data/Expression;
    move-object v1, v2

    .line 676
    .end local v2           #exp2:Lmiui/maml/data/Expression;
    .restart local v1       #exp2:Lmiui/maml/data/Expression;
    goto :goto_6

    .end local v0           #exp1:Lmiui/maml/data/Expression;
    .end local v1           #exp2:Lmiui/maml/data/Expression;
    .restart local v6       #newExp:Lmiui/maml/data/Expression;
    :cond_a
    move-object v5, v6

    .end local v6           #newExp:Lmiui/maml/data/Expression;
    .restart local v5       #newExp:Lmiui/maml/data/Expression;
    goto/16 :goto_4

    .line 609
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 616
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static buildMultiple(Ljava/lang/String;)[Lmiui/maml/data/Expression;
    .locals 5
    .parameter "exp"

    .prologue
    .line 550
    invoke-static {p0}, Lmiui/maml/data/Expression;->buildMultipleInner(Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v0

    .line 551
    .local v0, exps:[Lmiui/maml/data/Expression;
    array-length v3, v0

    new-array v2, v3, [Lmiui/maml/data/RootExpression;

    .line 552
    .local v2, roots:[Lmiui/maml/data/RootExpression;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 553
    aget-object v3, v0, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_1
    aput-object v3, v2, v1

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 553
    :cond_0
    new-instance v3, Lmiui/maml/data/RootExpression;

    aget-object v4, v0, v1

    invoke-direct {v3, v4}, Lmiui/maml/data/RootExpression;-><init>(Lmiui/maml/data/Expression;)V

    goto :goto_1

    .line 555
    :cond_1
    return-object v2
.end method

.method private static buildMultipleInner(Ljava/lang/String;)[Lmiui/maml/data/Expression;
    .locals 8
    .parameter "exp"

    .prologue
    .line 559
    const/4 v0, 0x0

    .line 560
    .local v0, bracketCount:I
    const/4 v4, 0x0

    .line 561
    .local v4, inApostrophe:Z
    const/4 v6, 0x0

    .line 562
    .local v6, start:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .local v2, exps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/maml/data/Expression;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 564
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 565
    .local v1, c:C
    if-nez v4, :cond_0

    .line 566
    const/16 v7, 0x2c

    if-ne v1, v7, :cond_2

    if-nez v0, :cond_2

    .line 567
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmiui/maml/data/Expression;->buildInner(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    add-int/lit8 v6, v3, 0x1

    .line 575
    :cond_0
    :goto_1
    const/16 v7, 0x27

    if-ne v1, v7, :cond_1

    .line 576
    if-nez v4, :cond_4

    const/4 v4, 0x1

    .line 563
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 569
    :cond_2
    const/16 v7, 0x28

    if-ne v1, v7, :cond_3

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 571
    :cond_3
    const/16 v7, 0x29

    if-ne v1, v7, :cond_0

    .line 572
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 576
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 579
    .end local v1           #c:C
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 580
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmiui/maml/data/Expression;->buildInner(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Lmiui/maml/data/Expression;

    .line 583
    .local v5, ret:[Lmiui/maml/data/Expression;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lmiui/maml/data/Expression;

    return-object v7
.end method

.method private static checkParams([Lmiui/maml/data/Expression;)Z
    .locals 2
    .parameter "params"

    .prologue
    .line 703
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 704
    aget-object v1, p0, v0

    if-nez v1, :cond_0

    .line 705
    const/4 v1, 0x0

    .line 707
    :goto_1
    return v1

    .line 703
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 707
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static cmpOpePri(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "op1"
    .parameter "op2"

    .prologue
    .line 715
    invoke-static {p0}, Lmiui/maml/data/Expression;->getPriority(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Lmiui/maml/data/Expression;->getPriority(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static getPriority(Ljava/lang/String;)I
    .locals 2
    .parameter "op"

    .prologue
    .line 719
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lmiui/maml/data/Expression;->mOperatorsPriority:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 720
    sget-object v1, Lmiui/maml/data/Expression;->mOperatorsPriority:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 723
    .end local v0           #i:I
    :goto_1
    return v0

    .line 719
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 723
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static isDigitChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 541
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFunctionChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 545
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVariableChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 537
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x5f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_3

    const/16 v0, 0x39

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract accept(Lmiui/maml/data/ExpressionVisitor;)V
.end method

.method public abstract evaluate(Lmiui/maml/data/Variables;)D
.end method

.method public evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;
    .locals 1
    .parameter "var"

    .prologue
    .line 733
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNull(Lmiui/maml/data/Variables;)Z
    .locals 1
    .parameter "var"

    .prologue
    .line 729
    const/4 v0, 0x0

    return v0
.end method
