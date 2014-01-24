.class Lmiui/maml/ActionCommand$ExternCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExternCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ExternCommand"


# instance fields
.field private mCommand:Ljava/lang/String;

.field private mNumParaExp:Lmiui/maml/data/Expression;

.field private mStrParaExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter "root"
    .parameter "ele"

    .prologue
    .line 1051
    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/ScreenElementRoot;)V

    .line 1052
    const-string v0, "command"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$ExternCommand;->mCommand:Ljava/lang/String;

    .line 1053
    const-string v0, "numPara"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$ExternCommand;->mNumParaExp:Lmiui/maml/data/Expression;

    .line 1054
    const-string v0, "strPara"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$ExternCommand;->mStrParaExp:Lmiui/maml/data/Expression;

    .line 1055
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1059
    iget-object v2, p0, Lmiui/maml/ActionCommand$ExternCommand;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v3, p0, Lmiui/maml/ActionCommand$ExternCommand;->mCommand:Ljava/lang/String;

    iget-object v0, p0, Lmiui/maml/ActionCommand$ExternCommand;->mNumParaExp:Lmiui/maml/data/Expression;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iget-object v4, p0, Lmiui/maml/ActionCommand$ExternCommand;->mStrParaExp:Lmiui/maml/data/Expression;

    if-nez v4, :cond_1

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Lmiui/maml/ScreenElementRoot;->issueExternCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 1062
    return-void

    .line 1059
    :cond_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$ExternCommand;->mNumParaExp:Lmiui/maml/data/Expression;

    iget-object v4, p0, Lmiui/maml/ActionCommand$ExternCommand;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v0, v4}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmiui/maml/ActionCommand$ExternCommand;->mStrParaExp:Lmiui/maml/data/Expression;

    iget-object v4, p0, Lmiui/maml/ActionCommand$ExternCommand;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v1, v4}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
