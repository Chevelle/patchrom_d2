.class public Lmiui/maml/elements/CircleScreenElement;
.super Lmiui/maml/elements/GeometryScreenElement;
.source "CircleScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Circle"


# instance fields
.field private mRadiusExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .parameter "node"
    .parameter "root"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 19
    const-string v0, "r"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/CircleScreenElement;->mRadiusExp:Lmiui/maml/data/Expression;

    .line 20
    return-void
.end method

.method private final getRadius()F
    .locals 3

    .prologue
    .line 36
    iget-object v1, p0, Lmiui/maml/elements/CircleScreenElement;->mRadiusExp:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/maml/elements/CircleScreenElement;->mRadiusExp:Lmiui/maml/data/Expression;

    iget-object v2, p0, Lmiui/maml/elements/CircleScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v1

    double-to-float v0, v1

    .line 37
    .local v0, r:F
    :goto_0
    float-to-double v1, v0

    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/CircleScreenElement;->scale(D)F

    move-result v1

    return v1

    .line 36
    .end local v0           #r:F
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Lmiui/maml/elements/GeometryScreenElement$DrawMode;)V
    .locals 4
    .parameter "c"
    .parameter "mode"

    .prologue
    const/high16 v3, 0x4000

    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Lmiui/maml/elements/CircleScreenElement;->getRadius()F

    move-result v0

    .line 27
    .local v0, r:F
    sget-object v1, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_OUTER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    if-ne p2, v1, :cond_1

    .line 28
    iget v1, p0, Lmiui/maml/elements/CircleScreenElement;->mWeight:F

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    .line 32
    :cond_0
    :goto_0
    iget-object v1, p0, Lmiui/maml/elements/CircleScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 33
    return-void

    .line 29
    :cond_1
    sget-object v1, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_INNER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    if-ne p2, v1, :cond_0

    .line 30
    iget v1, p0, Lmiui/maml/elements/CircleScreenElement;->mWeight:F

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    goto :goto_0
.end method
