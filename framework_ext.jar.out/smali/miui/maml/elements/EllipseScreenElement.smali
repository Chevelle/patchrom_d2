.class public Lmiui/maml/elements/EllipseScreenElement;
.super Lmiui/maml/elements/GeometryScreenElement;
.source "EllipseScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Ellipse"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 0
    .parameter "node"
    .parameter "root"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 17
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Lmiui/maml/elements/GeometryScreenElement$DrawMode;)V
    .locals 7
    .parameter "c"
    .parameter "mode"

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x0

    .line 21
    invoke-virtual {p0}, Lmiui/maml/elements/EllipseScreenElement;->getWidth()F

    move-result v3

    .line 22
    .local v3, width:F
    invoke-virtual {p0}, Lmiui/maml/elements/EllipseScreenElement;->getHeight()F

    move-result v0

    .line 23
    .local v0, height:F
    cmpg-float v4, v3, v5

    if-ltz v4, :cond_0

    cmpg-float v4, v0, v5

    if-gez v4, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    sget-object v4, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_OUTER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    if-ne p2, v4, :cond_3

    .line 28
    iget v4, p0, Lmiui/maml/elements/EllipseScreenElement;->mWeight:F

    add-float/2addr v3, v4

    .line 29
    iget v4, p0, Lmiui/maml/elements/EllipseScreenElement;->mWeight:F

    add-float/2addr v0, v4

    .line 37
    :cond_2
    div-float v4, v3, v6

    sub-float v1, v5, v4

    .line 38
    .local v1, left:F
    div-float v4, v0, v6

    sub-float v2, v5, v4

    .line 39
    .local v2, top:F
    new-instance v4, Landroid/graphics/RectF;

    add-float v5, v1, v3

    add-float v6, v2, v0

    invoke-direct {v4, v1, v2, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v5, p0, Lmiui/maml/elements/EllipseScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 30
    .end local v1           #left:F
    .end local v2           #top:F
    :cond_3
    sget-object v4, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_INNER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    if-ne p2, v4, :cond_2

    .line 31
    iget v4, p0, Lmiui/maml/elements/EllipseScreenElement;->mWeight:F

    sub-float/2addr v3, v4

    .line 32
    iget v4, p0, Lmiui/maml/elements/EllipseScreenElement;->mWeight:F

    sub-float/2addr v0, v4

    .line 33
    cmpg-float v4, v3, v5

    if-ltz v4, :cond_0

    cmpg-float v4, v0, v5

    if-gez v4, :cond_2

    goto :goto_0
.end method
