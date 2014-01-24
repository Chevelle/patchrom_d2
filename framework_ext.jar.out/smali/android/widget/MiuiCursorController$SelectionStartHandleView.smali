.class Landroid/widget/MiuiCursorController$SelectionStartHandleView;
.super Landroid/widget/MiuiCursorController$MiuiHandleView;
.source "MiuiCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MiuiCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionStartHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MiuiCursorController;


# direct methods
.method public constructor <init>(Landroid/widget/MiuiCursorController;Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "tv"
    .parameter "drawableLtr"
    .parameter "drawableRtl"

    .prologue
    .line 1412
    iput-object p1, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->this$0:Landroid/widget/MiuiCursorController;

    .line 1413
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/MiuiCursorController$MiuiHandleView;-><init>(Landroid/widget/MiuiCursorController;Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1414
    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 1439
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public getHotspotLocationOnScreen([I)V
    .locals 4
    .parameter "location"

    .prologue
    .line 1444
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mContainerX:I

    iget v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mHotspotX:I

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 1445
    const/4 v0, 0x1

    iget v1, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mContainerY:I

    iget v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mRatio:F

    iget v3, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mHandleNoShadowHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mLineHeight:I

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 1446
    return-void
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 2
    .parameter "drawable"
    .parameter "isRtlRun"

    .prologue
    .line 1418
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected isVisible()Z
    .locals 5

    .prologue
    .line 1451
    iget-boolean v0, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 1452
    const/4 v0, 0x1

    .line 1459
    :goto_0
    return v0

    .line 1455
    :cond_0
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1456
    const/4 v0, 0x0

    goto :goto_0

    .line 1459
    :cond_1
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mEditor:Landroid/widget/Editor;

    iget v1, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mHotspotX:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mPositionY:I

    iget v3, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mHandleNoShadowHeight:I

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mRatio:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor;->isPositionVisibleWrap(II)Z

    move-result v0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 1500
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mDrawableMark:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mRight:I

    iget v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mLeft:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mDrawableMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mRight:I

    iget v3, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mLeft:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mDrawableMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mBottom:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1503
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mDrawableMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1504
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mRight:I

    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1505
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1506
    return-void
.end method

.method protected updateContainerSize()V
    .locals 6

    .prologue
    const/high16 v2, 0x3f80

    .line 1423
    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    .line 1424
    .local v1, lineHeight:I
    iget v3, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mLineHeight:I

    if-eq v1, v3, :cond_1

    .line 1425
    iput v1, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mLineHeight:I

    .line 1426
    iget v3, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mMinHandleRatio:F

    iget v4, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mLineHeight:I

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mMarkHeightMatchHandleHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mRatio:F

    .line 1427
    iget v3, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mRatio:F

    cmpg-float v3, v3, v2

    if-gez v3, :cond_0

    iget v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mRatio:F

    :cond_0
    iput v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mRatio:F

    .line 1428
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mRatio:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1429
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mContainer:Landroid/widget/PopupWindow;

    iget v3, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mLineHeight:I

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mHandleNoShadowHeight:I

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mRatio:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1430
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mHandleTypeOffset:I

    .line 1431
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 1432
    .local v0, handleHeight:I
    int-to-float v2, v0

    iget v3, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mRatio:F

    mul-float/2addr v2, v3

    const v3, 0x3e99999a

    iget v4, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mLineHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mTouchOffsetY:F

    .line 1433
    const v2, 0x3f333333

    iget v3, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mLineHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mIdealVerticalOffset:F

    .line 1435
    .end local v0           #handleHeight:I
    :cond_1
    return-void
.end method

.method public updatePosition(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 1470
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 1473
    .local v0, offset:I
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1474
    .local v1, selectionEnd:I
    if-lt v0, v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1476
    :cond_0
    invoke-virtual {p0, v0, v3}, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->positionAtCursorOffset(IZ)V

    .line 1477
    return-void
.end method

.method protected updatePositionXY(IZ)V
    .locals 5
    .parameter "offset"
    .parameter "container"

    .prologue
    .line 1482
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1483
    .local v0, line:I
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    const/high16 v3, 0x3f00

    sub-float/2addr v2, v3

    iget v3, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mHotspotX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mPositionX:I

    .line 1484
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    iget v3, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mHandleNoShadowHeight:I

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mRatio:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mPositionY:I

    .line 1487
    iget v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mPositionX:I

    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mPositionX:I

    .line 1488
    iget v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mPositionY:I

    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mPositionY:I

    .line 1490
    if-eqz p2, :cond_0

    .line 1491
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 1492
    .local v1, location:[I
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 1493
    const/4 v2, 0x0

    aget v2, v1, v2

    iget v3, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mPositionX:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mContainerX:I

    .line 1494
    const/4 v2, 0x1

    aget v2, v1, v2

    iget v3, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mPositionY:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mContainerY:I

    .line 1496
    .end local v1           #location:[I
    :cond_0
    return-void
.end method

.method public updateSelection(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 1464
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mEditor:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/Editor;->setTextSelectionWrap(II)V

    .line 1465
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$SelectionStartHandleView;->updateDrawable()V

    .line 1466
    return-void
.end method
