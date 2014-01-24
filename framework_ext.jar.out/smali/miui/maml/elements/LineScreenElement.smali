.class public Lmiui/maml/elements/LineScreenElement;
.super Lmiui/maml/elements/GeometryScreenElement;
.source "LineScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Line"


# instance fields
.field private mEndXExp:Lmiui/maml/data/Expression;

.field private mEndYExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .parameter "node"
    .parameter "root"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 22
    const-string v0, "x1"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/LineScreenElement;->mEndXExp:Lmiui/maml/data/Expression;

    .line 23
    const-string v0, "y1"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/LineScreenElement;->mEndYExp:Lmiui/maml/data/Expression;

    .line 24
    return-void
.end method

.method private final getEndX()F
    .locals 4

    .prologue
    .line 33
    iget-object v2, p0, Lmiui/maml/elements/LineScreenElement;->mEndXExp:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/LineScreenElement;->mEndXExp:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/LineScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v2, v3}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    .line 34
    .local v0, x:D
    :goto_0
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/LineScreenElement;->scale(D)F

    move-result v2

    return v2

    .line 33
    .end local v0           #x:D
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private final getEndY()F
    .locals 4

    .prologue
    .line 38
    iget-object v2, p0, Lmiui/maml/elements/LineScreenElement;->mEndYExp:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/LineScreenElement;->mEndYExp:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/LineScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v2, v3}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    .line 39
    .local v0, y:D
    :goto_0
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/LineScreenElement;->scale(D)F

    move-result v2

    return v2

    .line 38
    .end local v0           #y:D
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Lmiui/maml/elements/GeometryScreenElement$DrawMode;)V
    .locals 6
    .parameter "c"
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lmiui/maml/elements/LineScreenElement;->getEndX()F

    move-result v0

    invoke-virtual {p0}, Lmiui/maml/elements/LineScreenElement;->getX()F

    move-result v2

    sub-float v3, v0, v2

    invoke-direct {p0}, Lmiui/maml/elements/LineScreenElement;->getEndY()F

    move-result v0

    invoke-virtual {p0}, Lmiui/maml/elements/LineScreenElement;->getY()F

    move-result v2

    sub-float v4, v0, v2

    iget-object v5, p0, Lmiui/maml/elements/LineScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 30
    return-void
.end method
