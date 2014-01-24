.class public Lmiui/maml/elements/RectangleScreenElement;
.super Lmiui/maml/elements/GeometryScreenElement;
.source "RectangleScreenElement.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RectangleScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Rectangle"


# instance fields
.field private mCornerRadiusX:F

.field private mCornerRadiusY:F


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 0
    .parameter "node"
    .parameter "root"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 24
    invoke-direct {p0, p1}, Lmiui/maml/elements/RectangleScreenElement;->resolveCornerRadius(Lorg/w3c/dom/Element;)V

    .line 25
    return-void
.end method

.method private resolveCornerRadius(Lorg/w3c/dom/Element;)V
    .locals 5
    .parameter "node"

    .prologue
    const/4 v4, 0x1

    .line 28
    const-string v3, "cornerRadius"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, strRadius:Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, rs:[Ljava/lang/String;
    :try_start_0
    array-length v3, v1

    if-ge v3, v4, :cond_0

    .line 42
    :goto_0
    return-void

    .line 33
    :cond_0
    array-length v3, v1

    if-ne v3, v4, :cond_1

    .line 34
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {p0, v3, v4}, Lmiui/maml/elements/RectangleScreenElement;->scale(D)F

    move-result v3

    iput v3, p0, Lmiui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F

    iput v3, p0, Lmiui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "RectangleScreenElement"

    const-string v4, "illegal number format of cornerRadius."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 36
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {p0, v3, v4}, Lmiui/maml/elements/RectangleScreenElement;->scale(D)F

    move-result v3

    iput v3, p0, Lmiui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    .line 37
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {p0, v3, v4}, Lmiui/maml/elements/RectangleScreenElement;->scale(D)F

    move-result v3

    iput v3, p0, Lmiui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Lmiui/maml/elements/GeometryScreenElement$DrawMode;)V
    .locals 10
    .parameter "c"
    .parameter "mode"

    .prologue
    const/high16 v8, 0x4000

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0}, Lmiui/maml/elements/RectangleScreenElement;->getWidth()F

    move-result v7

    .line 47
    .local v7, width:F
    invoke-virtual {p0}, Lmiui/maml/elements/RectangleScreenElement;->getHeight()F

    move-result v6

    .line 48
    .local v6, height:F
    invoke-virtual {p0, v0, v7}, Lmiui/maml/elements/RectangleScreenElement;->getLeft(FF)F

    move-result v1

    .line 49
    .local v1, left:F
    invoke-virtual {p0, v0, v6}, Lmiui/maml/elements/RectangleScreenElement;->getTop(FF)F

    move-result v2

    .line 50
    .local v2, top:F
    cmpl-float v5, v7, v0

    if-lez v5, :cond_2

    .end local v7           #width:F
    :goto_0
    add-float v3, v1, v7

    .line 51
    .local v3, right:F
    cmpl-float v5, v6, v0

    if-lez v5, :cond_3

    .end local v6           #height:F
    :goto_1
    add-float v4, v2, v6

    .line 52
    .local v4, bottom:F
    sget-object v5, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_OUTER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    if-ne p2, v5, :cond_4

    .line 53
    iget v5, p0, Lmiui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr v5, v8

    sub-float/2addr v1, v5

    .line 54
    iget v5, p0, Lmiui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr v5, v8

    sub-float/2addr v2, v5

    .line 55
    iget v5, p0, Lmiui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr v5, v8

    add-float/2addr v3, v5

    .line 56
    iget v5, p0, Lmiui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    .line 64
    :cond_0
    :goto_2
    iget v5, p0, Lmiui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    cmpg-float v5, v5, v0

    if-lez v5, :cond_1

    iget v5, p0, Lmiui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F

    cmpg-float v0, v5, v0

    if-gtz v0, :cond_5

    .line 65
    :cond_1
    iget-object v5, p0, Lmiui/maml/elements/RectangleScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 69
    :goto_3
    return-void

    .end local v3           #right:F
    .end local v4           #bottom:F
    .restart local v6       #height:F
    .restart local v7       #width:F
    :cond_2
    move v7, v0

    .line 50
    goto :goto_0

    .end local v7           #width:F
    .restart local v3       #right:F
    :cond_3
    move v6, v0

    .line 51
    goto :goto_1

    .line 57
    .end local v6           #height:F
    .restart local v4       #bottom:F
    :cond_4
    sget-object v5, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_INNER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    if-ne p2, v5, :cond_0

    .line 58
    iget v5, p0, Lmiui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr v5, v8

    add-float/2addr v1, v5

    .line 59
    iget v5, p0, Lmiui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr v5, v8

    add-float/2addr v2, v5

    .line 60
    iget v5, p0, Lmiui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr v5, v8

    sub-float/2addr v3, v5

    .line 61
    iget v5, p0, Lmiui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    goto :goto_2

    .line 67
    :cond_5
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v5, p0, Lmiui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    iget v8, p0, Lmiui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F

    iget-object v9, p0, Lmiui/maml/elements/RectangleScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_3
.end method
