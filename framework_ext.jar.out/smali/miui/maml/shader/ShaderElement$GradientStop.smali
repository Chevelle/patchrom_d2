.class final Lmiui/maml/shader/ShaderElement$GradientStop;
.super Ljava/lang/Object;
.source "ShaderElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/shader/ShaderElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GradientStop"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "GradientStop"


# instance fields
.field private mColorParser:Lmiui/maml/util/ColorParser;

.field private mPositionExp:Lmiui/maml/data/Expression;

.field final synthetic this$0:Lmiui/maml/shader/ShaderElement;


# direct methods
.method public constructor <init>(Lmiui/maml/shader/ShaderElement;Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .parameter
    .parameter "node"
    .parameter "root"

    .prologue
    .line 46
    iput-object p1, p0, Lmiui/maml/shader/ShaderElement$GradientStop;->this$0:Lmiui/maml/shader/ShaderElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p2}, Lmiui/maml/util/ColorParser;->fromElement(Lorg/w3c/dom/Element;)Lmiui/maml/util/ColorParser;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/shader/ShaderElement$GradientStop;->mColorParser:Lmiui/maml/util/ColorParser;

    .line 48
    const-string v0, "position"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/shader/ShaderElement$GradientStop;->mPositionExp:Lmiui/maml/data/Expression;

    .line 49
    iget-object v0, p0, Lmiui/maml/shader/ShaderElement$GradientStop;->mPositionExp:Lmiui/maml/data/Expression;

    if-nez v0, :cond_0

    .line 50
    const-string v0, "GradientStop"

    const-string v1, "lost position attribute."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lmiui/maml/shader/ShaderElement$GradientStop;->mColorParser:Lmiui/maml/util/ColorParser;

    iget-object v1, p0, Lmiui/maml/shader/ShaderElement$GradientStop;->this$0:Lmiui/maml/shader/ShaderElement;

    iget-object v1, v1, Lmiui/maml/shader/ShaderElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/util/ColorParser;->getColor(Lmiui/maml/data/Variables;)I

    move-result v0

    return v0
.end method

.method public getPosition()F
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lmiui/maml/shader/ShaderElement$GradientStop;->mPositionExp:Lmiui/maml/data/Expression;

    iget-object v1, p0, Lmiui/maml/shader/ShaderElement$GradientStop;->this$0:Lmiui/maml/shader/ShaderElement;

    iget-object v1, v1, Lmiui/maml/shader/ShaderElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
