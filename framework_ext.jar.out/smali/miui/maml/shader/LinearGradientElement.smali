.class public Lmiui/maml/shader/LinearGradientElement;
.super Lmiui/maml/shader/ShaderElement;
.source "LinearGradientElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "LinearGradient"


# instance fields
.field private mEndX:F

.field private mEndXExp:Lmiui/maml/data/Expression;

.field private mEndY:F

.field private mEndYExp:Lmiui/maml/data/Expression;

.field private mInitEndX:F

.field private mInitEndY:F

.field private mInitX:F

.field private mInitY:F


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .parameter "node"
    .parameter "root"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lmiui/maml/shader/ShaderElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 22
    const-string v0, "x1"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/shader/LinearGradientElement;->mEndXExp:Lmiui/maml/data/Expression;

    .line 23
    const-string v0, "y1"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/shader/LinearGradientElement;->mEndYExp:Lmiui/maml/data/Expression;

    .line 25
    iget-object v0, p0, Lmiui/maml/shader/LinearGradientElement;->mGradientStops:Lmiui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {v0}, Lmiui/maml/shader/ShaderElement$GradientStops;->update()V

    .line 26
    return-void
.end method

.method private final getEndX()F
    .locals 4

    .prologue
    .line 74
    iget-object v2, p0, Lmiui/maml/shader/LinearGradientElement;->mEndXExp:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/shader/LinearGradientElement;->mEndXExp:Lmiui/maml/data/Expression;

    iget-object v3, p0, Lmiui/maml/shader/LinearGradientElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    .line 75
    .local v0, x:D
    :goto_0
    iget-object v2, p0, Lmiui/maml/shader/LinearGradientElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-float v2, v2

    return v2

    .line 74
    .end local v0           #x:D
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private final getEndY()F
    .locals 4

    .prologue
    .line 79
    iget-object v2, p0, Lmiui/maml/shader/LinearGradientElement;->mEndYExp:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/shader/LinearGradientElement;->mEndYExp:Lmiui/maml/data/Expression;

    iget-object v3, p0, Lmiui/maml/shader/LinearGradientElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    .line 80
    .local v0, y:D
    :goto_0
    iget-object v2, p0, Lmiui/maml/shader/LinearGradientElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-float v2, v2

    return v2

    .line 79
    .end local v0           #y:D
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onGradientStopsChanged()V
    .locals 8

    .prologue
    .line 42
    invoke-virtual {p0}, Lmiui/maml/shader/LinearGradientElement;->getX()F

    move-result v0

    iput v0, p0, Lmiui/maml/shader/LinearGradientElement;->mInitX:F

    iput v0, p0, Lmiui/maml/shader/LinearGradientElement;->mX:F

    .line 43
    invoke-virtual {p0}, Lmiui/maml/shader/LinearGradientElement;->getY()F

    move-result v0

    iput v0, p0, Lmiui/maml/shader/LinearGradientElement;->mInitY:F

    iput v0, p0, Lmiui/maml/shader/LinearGradientElement;->mY:F

    .line 44
    invoke-direct {p0}, Lmiui/maml/shader/LinearGradientElement;->getEndX()F

    move-result v0

    iput v0, p0, Lmiui/maml/shader/LinearGradientElement;->mInitEndX:F

    iput v0, p0, Lmiui/maml/shader/LinearGradientElement;->mEndX:F

    .line 45
    invoke-direct {p0}, Lmiui/maml/shader/LinearGradientElement;->getEndY()F

    move-result v0

    iput v0, p0, Lmiui/maml/shader/LinearGradientElement;->mInitEndY:F

    iput v0, p0, Lmiui/maml/shader/LinearGradientElement;->mEndY:F

    .line 47
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lmiui/maml/shader/LinearGradientElement;->mX:F

    iget v2, p0, Lmiui/maml/shader/LinearGradientElement;->mY:F

    iget v3, p0, Lmiui/maml/shader/LinearGradientElement;->mEndX:F

    iget v4, p0, Lmiui/maml/shader/LinearGradientElement;->mEndY:F

    iget-object v5, p0, Lmiui/maml/shader/LinearGradientElement;->mGradientStops:Lmiui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {v5}, Lmiui/maml/shader/ShaderElement$GradientStops;->getColors()[I

    move-result-object v5

    iget-object v6, p0, Lmiui/maml/shader/LinearGradientElement;->mGradientStops:Lmiui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {v6}, Lmiui/maml/shader/ShaderElement$GradientStops;->getPositions()[F

    move-result-object v6

    iget-object v7, p0, Lmiui/maml/shader/LinearGradientElement;->mTileMode:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lmiui/maml/shader/LinearGradientElement;->mShader:Landroid/graphics/Shader;

    .line 49
    return-void
.end method

.method public updateShaderMatrix()Z
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-virtual {p0}, Lmiui/maml/shader/LinearGradientElement;->getX()F

    move-result v8

    .line 54
    .local v8, x:F
    invoke-virtual {p0}, Lmiui/maml/shader/LinearGradientElement;->getY()F

    move-result v9

    .line 55
    .local v9, y:F
    invoke-direct {p0}, Lmiui/maml/shader/LinearGradientElement;->getEndX()F

    move-result v6

    .line 56
    .local v6, endX:F
    invoke-direct {p0}, Lmiui/maml/shader/LinearGradientElement;->getEndY()F

    move-result v7

    .line 57
    .local v7, endY:F
    iget v0, p0, Lmiui/maml/shader/LinearGradientElement;->mX:F

    cmpl-float v0, v8, v0

    if-nez v0, :cond_0

    iget v0, p0, Lmiui/maml/shader/LinearGradientElement;->mY:F

    cmpl-float v0, v9, v0

    if-nez v0, :cond_0

    iget v0, p0, Lmiui/maml/shader/LinearGradientElement;->mEndX:F

    cmpl-float v0, v6, v0

    if-nez v0, :cond_0

    iget v0, p0, Lmiui/maml/shader/LinearGradientElement;->mEndY:F

    cmpl-float v0, v7, v0

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    iput v8, p0, Lmiui/maml/shader/LinearGradientElement;->mX:F

    .line 59
    iput v9, p0, Lmiui/maml/shader/LinearGradientElement;->mY:F

    .line 60
    iput v6, p0, Lmiui/maml/shader/LinearGradientElement;->mEndX:F

    .line 61
    iput v7, p0, Lmiui/maml/shader/LinearGradientElement;->mEndY:F

    .line 63
    iget-object v0, p0, Lmiui/maml/shader/LinearGradientElement;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 64
    iget-object v0, p0, Lmiui/maml/shader/LinearGradientElement;->mShaderMatrix:Landroid/graphics/Matrix;

    new-array v1, v11, [F

    iget v3, p0, Lmiui/maml/shader/LinearGradientElement;->mInitX:F

    aput v3, v1, v2

    iget v3, p0, Lmiui/maml/shader/LinearGradientElement;->mInitY:F

    aput v3, v1, v10

    iget v3, p0, Lmiui/maml/shader/LinearGradientElement;->mInitEndX:F

    aput v3, v1, v5

    iget v3, p0, Lmiui/maml/shader/LinearGradientElement;->mInitEndY:F

    aput v3, v1, v4

    new-array v3, v11, [F

    aput v8, v3, v2

    aput v9, v3, v10

    aput v6, v3, v5

    aput v7, v3, v4

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    move v2, v10

    .line 70
    :cond_1
    return v2
.end method
