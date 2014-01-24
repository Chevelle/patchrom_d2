.class Lmiui/maml/ActionCommand$VariableAssignmentCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariableAssignmentCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VariableCommand"


# instance fields
.field private mExpression:Lmiui/maml/data/Expression;

.field private mName:Ljava/lang/String;

.field private mNumVariable:Lmiui/maml/util/IndexedNumberVariable;

.field private mPersist:Z

.field private mStrVariable:Lmiui/maml/util/IndexedStringVariable;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Lorg/w3c/dom/Element;)V
    .locals 7
    .parameter "root"
    .parameter "ele"

    .prologue
    .line 754
    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/ScreenElementRoot;)V

    .line 755
    const-string v3, "name"

    invoke-interface {p2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 756
    const-string v3, "expression"

    invoke-interface {p2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, expression:Ljava/lang/String;
    const-string v3, "type"

    invoke-interface {p2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 758
    .local v1, type:Ljava/lang/String;
    const-string v3, "persist"

    invoke-interface {p2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    .line 760
    new-instance v2, Lmiui/maml/util/Variable;

    iget-object v3, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-direct {v2, v3}, Lmiui/maml/util/Variable;-><init>(Ljava/lang/String;)V

    .line 761
    .local v2, v:Lmiui/maml/util/Variable;
    const-string v3, "string"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 762
    new-instance v3, Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v2}, Lmiui/maml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lmiui/maml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v6

    iget-object v6, v6, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v3, v4, v5, v6}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v3, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mStrVariable:Lmiui/maml/util/IndexedStringVariable;

    .line 766
    :goto_0
    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    .line 767
    iget-object v3, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    if-nez v3, :cond_0

    .line 768
    const-string v3, "ActionCommand"

    const-string v4, "invalid expression in VariableAssignmentCommand"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_0
    return-void

    .line 764
    :cond_1
    new-instance v3, Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v2}, Lmiui/maml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lmiui/maml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v6

    iget-object v6, v6, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v3, v4, v5, v6}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v3, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mNumVariable:Lmiui/maml/util/IndexedNumberVariable;

    goto :goto_0
.end method


# virtual methods
.method protected doPerform()V
    .locals 5

    .prologue
    .line 774
    iget-object v2, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    if-nez v2, :cond_1

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 778
    :cond_1
    iget-object v2, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mNumVariable:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz v2, :cond_2

    .line 779
    iget-object v2, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    iget-object v3, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v2, v3}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    .line 780
    .local v0, v:D
    iget-object v2, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mNumVariable:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v2, v0, v1}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 781
    iget-boolean v2, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    if-eqz v2, :cond_0

    .line 782
    iget-object v2, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v3, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmiui/maml/ScreenElementRoot;->saveVar(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0

    .line 783
    .end local v0           #v:D
    :cond_2
    iget-object v2, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mStrVariable:Lmiui/maml/util/IndexedStringVariable;

    if-eqz v2, :cond_0

    .line 784
    iget-object v2, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    iget-object v3, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v2, v3}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, v:Ljava/lang/String;
    iget-object v2, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mStrVariable:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v2, v0}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 786
    iget-boolean v2, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    if-eqz v2, :cond_0

    .line 787
    iget-object v2, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v3, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lmiui/maml/ScreenElementRoot;->saveVar(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
