.class Lmiui/maml/elements/VariableArrayElement$Var;
.super Ljava/lang/Object;
.source "VariableArrayElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/VariableArrayElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Var"
.end annotation


# instance fields
.field private mConst:Z

.field private mCurrentItemIsExpression:Z

.field private mIndex:I

.field private mIndexExpression:Lmiui/maml/data/Expression;

.field private mName:Ljava/lang/String;

.field private mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mStringVar:Lmiui/maml/util/IndexedStringVariable;

.field final synthetic this$0:Lmiui/maml/elements/VariableArrayElement;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/VariableArrayElement;Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter
    .parameter "ele"

    .prologue
    .line 55
    iput-object p1, p0, Lmiui/maml/elements/VariableArrayElement$Var;->this$0:Lmiui/maml/elements/VariableArrayElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mIndex:I

    .line 56
    if-eqz p2, :cond_0

    .line 57
    const-string v0, "name"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mName:Ljava/lang/String;

    .line 58
    const-string v0, "index"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mIndexExpression:Lmiui/maml/data/Expression;

    .line 59
    const-string v0, "const"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mConst:Z

    .line 61
    #getter for: Lmiui/maml/elements/VariableArrayElement;->mIsStringType:Z
    invoke-static {p1}, Lmiui/maml/elements/VariableArrayElement;->access$000(Lmiui/maml/elements/VariableArrayElement;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    new-instance v0, Lmiui/maml/util/IndexedStringVariable;

    iget-object v1, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lmiui/maml/elements/VariableArrayElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lmiui/maml/elements/VariableArrayElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    goto :goto_0
.end method

.method private update()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 81
    iget-object v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mIndexExpression:Lmiui/maml/data/Expression;

    if-nez v3, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->this$0:Lmiui/maml/elements/VariableArrayElement;

    invoke-virtual {v3}, Lmiui/maml/elements/VariableArrayElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    .line 85
    .local v2, var:Lmiui/maml/data/Variables;
    iget-object v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v3, v2}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v3

    double-to-int v0, v3

    .line 86
    .local v0, index:I
    if-ltz v0, :cond_2

    iget-object v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->this$0:Lmiui/maml/elements/VariableArrayElement;

    #getter for: Lmiui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;
    invoke-static {v3}, Lmiui/maml/elements/VariableArrayElement;->access$100(Lmiui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_4

    .line 88
    :cond_2
    iget-object v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->this$0:Lmiui/maml/elements/VariableArrayElement;

    #getter for: Lmiui/maml/elements/VariableArrayElement;->mIsStringType:Z
    invoke-static {v3}, Lmiui/maml/elements/VariableArrayElement;->access$000(Lmiui/maml/elements/VariableArrayElement;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 89
    iget-object v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v3, v5}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_3
    iget-object v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v3, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    goto :goto_0

    .line 96
    :cond_4
    iget v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mIndex:I

    if-ne v3, v0, :cond_5

    iget-boolean v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mCurrentItemIsExpression:Z

    if-eqz v3, :cond_0

    .line 101
    :cond_5
    iget-object v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->this$0:Lmiui/maml/elements/VariableArrayElement;

    #getter for: Lmiui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;
    invoke-static {v3}, Lmiui/maml/elements/VariableArrayElement;->access$100(Lmiui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/VariableArrayElement$Item;

    .line 102
    .local v1, item:Lmiui/maml/elements/VariableArrayElement$Item;
    iget v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mIndex:I

    if-eq v3, v0, :cond_6

    .line 103
    iput v0, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mIndex:I

    .line 104
    invoke-virtual {v1}, Lmiui/maml/elements/VariableArrayElement$Item;->isExpression()Z

    move-result v3

    iput-boolean v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mCurrentItemIsExpression:Z

    .line 107
    :cond_6
    iget-object v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->this$0:Lmiui/maml/elements/VariableArrayElement;

    #getter for: Lmiui/maml/elements/VariableArrayElement;->mIsStringType:Z
    invoke-static {v3}, Lmiui/maml/elements/VariableArrayElement;->access$000(Lmiui/maml/elements/VariableArrayElement;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 108
    iget-object v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v1, v2}, Lmiui/maml/elements/VariableArrayElement$Item;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_7
    iget-object v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v1, v2}, Lmiui/maml/elements/VariableArrayElement$Item;->evaluate(Lmiui/maml/data/Variables;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/maml/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mIndex:I

    .line 77
    invoke-direct {p0}, Lmiui/maml/elements/VariableArrayElement$Var;->update()V

    .line 78
    return-void
.end method

.method public tick()V
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mConst:Z

    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0}, Lmiui/maml/elements/VariableArrayElement$Var;->update()V

    .line 73
    :cond_0
    return-void
.end method
