.class public Lmiui/widget/PhotoFrameView$OutsideBoundStrategy;
.super Ljava/lang/Object;
.source "PhotoFrameView.java"

# interfaces
.implements Lmiui/widget/PhotoFrameView$BoundStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/PhotoFrameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OutsideBoundStrategy"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/PhotoFrameView;


# direct methods
.method public constructor <init>(Lmiui/widget/PhotoFrameView;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lmiui/widget/PhotoFrameView$OutsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustCropArea(Landroid/graphics/Matrix;Z)V
    .locals 7
    .parameter "matrix"
    .parameter "resetScale"

    .prologue
    const/high16 v6, 0x4000

    .line 345
    iget-object v3, p0, Lmiui/widget/PhotoFrameView$OutsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    #getter for: Lmiui/widget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lmiui/widget/PhotoFrameView;->access$000(Lmiui/widget/PhotoFrameView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v2, v3

    .line 346
    .local v2, w:F
    iget-object v3, p0, Lmiui/widget/PhotoFrameView$OutsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    #getter for: Lmiui/widget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lmiui/widget/PhotoFrameView;->access$000(Lmiui/widget/PhotoFrameView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v0, v3

    .line 347
    .local v0, h:F
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 348
    iget-object v3, p0, Lmiui/widget/PhotoFrameView$OutsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    #getter for: Lmiui/widget/PhotoFrameView;->mRotation:I
    invoke-static {v3}, Lmiui/widget/PhotoFrameView;->access$100(Lmiui/widget/PhotoFrameView;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 349
    iget-object v3, p0, Lmiui/widget/PhotoFrameView$OutsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    #getter for: Lmiui/widget/PhotoFrameView;->mRotation:I
    invoke-static {v3}, Lmiui/widget/PhotoFrameView;->access$100(Lmiui/widget/PhotoFrameView;)I

    move-result v3

    int-to-float v3, v3

    div-float v4, v2, v6

    div-float v5, v0, v6

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 353
    :cond_0
    iget-object v3, p0, Lmiui/widget/PhotoFrameView$OutsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v3}, Lmiui/widget/PhotoFrameView;->getFitCenterScale()F

    move-result v1

    .line 354
    .local v1, scale:F
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 355
    iget-object v3, p0, Lmiui/widget/PhotoFrameView$OutsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v3}, Lmiui/widget/PhotoFrameView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v4, v2, v1

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    iget-object v4, p0, Lmiui/widget/PhotoFrameView$OutsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v4}, Lmiui/widget/PhotoFrameView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v5, v0, v1

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 356
    return-void
.end method

.method public adjustDx(Landroid/graphics/RectF;F)F
    .locals 2
    .parameter "bound"
    .parameter "dx"

    .prologue
    const/4 v1, 0x0

    .line 315
    cmpg-float v0, p2, v1

    if-gez v0, :cond_1

    iget v0, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 317
    iget v0, p1, Landroid/graphics/RectF;->right:F

    neg-float p2, v0

    .line 323
    :cond_0
    :goto_0
    return p2

    .line 318
    :cond_1
    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p2

    iget-object v1, p0, Lmiui/widget/PhotoFrameView$OutsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v1}, Lmiui/widget/PhotoFrameView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 320
    iget-object v0, p0, Lmiui/widget/PhotoFrameView$OutsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v0}, Lmiui/widget/PhotoFrameView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float p2, v0, v1

    goto :goto_0
.end method

.method public adjustDy(Landroid/graphics/RectF;F)F
    .locals 2
    .parameter "bound"
    .parameter "dy"

    .prologue
    const/4 v1, 0x0

    .line 328
    cmpg-float v0, p2, v1

    if-gez v0, :cond_1

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 330
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    neg-float p2, v0

    .line 336
    :cond_0
    :goto_0
    return p2

    .line 331
    :cond_1
    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p2

    iget-object v1, p0, Lmiui/widget/PhotoFrameView$OutsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v1}, Lmiui/widget/PhotoFrameView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 333
    iget-object v0, p0, Lmiui/widget/PhotoFrameView$OutsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v0}, Lmiui/widget/PhotoFrameView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float p2, v0, v1

    goto :goto_0
.end method

.method public adjustIfNeeded(Landroid/graphics/RectF;FZ)V
    .locals 0
    .parameter "bound"
    .parameter "scale"
    .parameter "resetScale"

    .prologue
    .line 341
    return-void
.end method

.method public getCropedMatrix()Landroid/graphics/Matrix;
    .locals 4

    .prologue
    .line 370
    const/16 v2, 0x9

    new-array v0, v2, [F

    .line 371
    .local v0, matrixValues:[F
    iget-object v2, p0, Lmiui/widget/PhotoFrameView$OutsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    iget-object v2, v2, Lmiui/widget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 372
    iget-object v2, p0, Lmiui/widget/PhotoFrameView$OutsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    const/4 v3, 0x0

    #calls: Lmiui/widget/PhotoFrameView;->convertMatrixReference([FZ)Z
    invoke-static {v2, v0, v3}, Lmiui/widget/PhotoFrameView;->access$200(Lmiui/widget/PhotoFrameView;[FZ)Z

    .line 373
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 374
    .local v1, result:Landroid/graphics/Matrix;
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 375
    return-object v1
.end method

.method public getCropedPhotoHeight()I
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lmiui/widget/PhotoFrameView$OutsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v0}, Lmiui/widget/PhotoFrameView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getCropedPhotoWidth()I
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lmiui/widget/PhotoFrameView$OutsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v0}, Lmiui/widget/PhotoFrameView;->getWidth()I

    move-result v0

    return v0
.end method
