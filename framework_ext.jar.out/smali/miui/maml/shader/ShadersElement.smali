.class public final Lmiui/maml/shader/ShadersElement;
.super Ljava/lang/Object;
.source "ShadersElement.java"


# static fields
.field public static final FILL_TAG_NAME:Ljava/lang/String; = "FillShaders"

.field public static final STROKE_TAG_NAME:Ljava/lang/String; = "StrokeShaders"


# instance fields
.field private mShaderElement:Lmiui/maml/shader/ShaderElement;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 0
    .parameter "node"
    .parameter "root"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-direct {p0, p1, p2}, Lmiui/maml/shader/ShadersElement;->loadShaderElements(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 22
    return-void
.end method

.method private loadShaderElements(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 7
    .parameter "node"
    .parameter "root"

    .prologue
    .line 25
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 26
    .local v3, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 27
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 28
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 32
    check-cast v1, Lorg/w3c/dom/Element;

    .line 33
    .local v1, ele:Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    .line 34
    .local v4, tag:Ljava/lang/String;
    const-string v5, "LinearGradient"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 35
    new-instance v5, Lmiui/maml/shader/LinearGradientElement;

    invoke-direct {v5, v1, p2}, Lmiui/maml/shader/LinearGradientElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v5, p0, Lmiui/maml/shader/ShadersElement;->mShaderElement:Lmiui/maml/shader/ShaderElement;

    .line 43
    :cond_2
    :goto_1
    iget-object v5, p0, Lmiui/maml/shader/ShadersElement;->mShaderElement:Lmiui/maml/shader/ShaderElement;

    if-eqz v5, :cond_0

    .line 47
    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v1           #ele:Lorg/w3c/dom/Element;
    .end local v4           #tag:Ljava/lang/String;
    :cond_3
    return-void

    .line 36
    .restart local v0       #child:Lorg/w3c/dom/Node;
    .restart local v1       #ele:Lorg/w3c/dom/Element;
    .restart local v4       #tag:Ljava/lang/String;
    :cond_4
    const-string v5, "RadialGradient"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 37
    new-instance v5, Lmiui/maml/shader/RadialGradientElement;

    invoke-direct {v5, v1, p2}, Lmiui/maml/shader/RadialGradientElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v5, p0, Lmiui/maml/shader/ShadersElement;->mShaderElement:Lmiui/maml/shader/ShaderElement;

    goto :goto_1

    .line 38
    :cond_5
    const-string v5, "SweepGradient"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 39
    new-instance v5, Lmiui/maml/shader/SweepGradientElement;

    invoke-direct {v5, v1, p2}, Lmiui/maml/shader/SweepGradientElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v5, p0, Lmiui/maml/shader/ShadersElement;->mShaderElement:Lmiui/maml/shader/ShaderElement;

    goto :goto_1

    .line 40
    :cond_6
    const-string v5, "BitmapShader"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 41
    new-instance v5, Lmiui/maml/shader/BitmapShaderElement;

    invoke-direct {v5, v1, p2}, Lmiui/maml/shader/BitmapShaderElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v5, p0, Lmiui/maml/shader/ShadersElement;->mShaderElement:Lmiui/maml/shader/ShaderElement;

    goto :goto_1
.end method


# virtual methods
.method public getShader()Landroid/graphics/Shader;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lmiui/maml/shader/ShadersElement;->mShaderElement:Lmiui/maml/shader/ShaderElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/shader/ShadersElement;->mShaderElement:Lmiui/maml/shader/ShaderElement;

    invoke-virtual {v0}, Lmiui/maml/shader/ShaderElement;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateShader()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lmiui/maml/shader/ShadersElement;->mShaderElement:Lmiui/maml/shader/ShaderElement;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lmiui/maml/shader/ShadersElement;->mShaderElement:Lmiui/maml/shader/ShaderElement;

    invoke-virtual {v0}, Lmiui/maml/shader/ShaderElement;->updateShader()V

    .line 55
    :cond_0
    return-void
.end method
