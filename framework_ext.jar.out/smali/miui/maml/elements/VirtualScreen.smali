.class public Lmiui/maml/elements/VirtualScreen;
.super Lmiui/maml/elements/ElementGroup;
.source "VirtualScreen.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VirtualScreen"


# instance fields
.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenCanvas:Landroid/graphics/Canvas;

.field private mTicked:Z


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 0
    .parameter "node"
    .parameter "root"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 48
    iget-boolean v0, p0, Lmiui/maml/elements/VirtualScreen;->mTicked:Z

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lmiui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 50
    iget-object v0, p0, Lmiui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lmiui/maml/elements/VirtualScreen;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 51
    iget-object v0, p0, Lmiui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 52
    iget-object v0, p0, Lmiui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Lmiui/maml/elements/ElementGroup;->doRender(Landroid/graphics/Canvas;)V

    .line 53
    iget-object v0, p0, Lmiui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 54
    iput-boolean v2, p0, Lmiui/maml/elements/VirtualScreen;->mTicked:Z

    .line 56
    :cond_0
    return-void
.end method

.method protected doTick(J)V
    .locals 1
    .parameter "currentTime"

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;->doTick(J)V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/VirtualScreen;->mTicked:Z

    .line 62
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->finish()V

    .line 41
    iget-object v0, p0, Lmiui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 42
    iput-object v1, p0, Lmiui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 43
    iput-object v1, p0, Lmiui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    .line 44
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lmiui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 26
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->init()V

    .line 27
    invoke-virtual {p0}, Lmiui/maml/elements/VirtualScreen;->getWidth()F

    move-result v1

    .line 28
    .local v1, width:F
    cmpg-float v2, v1, v4

    if-gez v2, :cond_0

    .line 29
    const-string v2, "screen_width"

    invoke-virtual {p0}, Lmiui/maml/elements/VirtualScreen;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/util/Utils;->getVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/VirtualScreen;->scale(D)F

    move-result v1

    .line 30
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/VirtualScreen;->getHeight()F

    move-result v0

    .line 31
    .local v0, height:F
    cmpg-float v2, v0, v4

    if-gez v2, :cond_1

    .line 32
    const-string v2, "screen_height"

    invoke-virtual {p0}, Lmiui/maml/elements/VirtualScreen;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/util/Utils;->getVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/VirtualScreen;->scale(D)F

    move-result v0

    .line 33
    :cond_1
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 34
    iget-object v2, p0, Lmiui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lmiui/maml/elements/VirtualScreen;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3}, Lmiui/maml/ScreenElementRoot;->getTargetDensity()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 35
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lmiui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lmiui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    .line 36
    return-void
.end method
