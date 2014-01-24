.class Landroid/widget/MiuiCursorController$SelectionEndHandleView;
.super Landroid/widget/MiuiCursorController$MiuiHandleView;
.source "MiuiCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MiuiCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionEndHandleView"
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
    .line 1511
    iput-object p1, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->this$0:Landroid/widget/MiuiCursorController;

    .line 1512
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/MiuiCursorController$MiuiHandleView;-><init>(Landroid/widget/MiuiCursorController;Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1513
    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 1537
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getHotspotLocationOnScreen([I)V
    .locals 3
    .parameter "location"

    .prologue
    .line 1542
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mContainerX:I

    iget v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mHotspotX:I

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 1543
    const/4 v0, 0x1

    iget v1, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mContainerY:I

    iget v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mLineHeight:I

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 1544
    return-void
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 2
    .parameter "drawable"
    .parameter "isRtlRun"

    .prologue
    .line 1517
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "c"

    .prologue
    const/4 v6, 0x0

    .line 1584
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mDrawableMark:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mRight:I

    iget v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mLeft:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mDrawableMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mRight:I

    iget v3, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mLeft:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mDrawableMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mBottom:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mRatio:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1587
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mDrawableMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1588
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mBottom:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mRatio:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mRight:I

    iget v3, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mBottom:I

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1589
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1590
    return-void
.end method

.method protected updateContainerSize()V
    .locals 5

    .prologue
    const/high16 v1, 0x3f80

    .line 1522
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    .line 1523
    .local v0, lineHeight:I
    iget v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mLineHeight:I

    if-eq v0, v2, :cond_1

    .line 1524
    iput v0, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mLineHeight:I

    .line 1525
    iget v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mMinHandleRatio:F

    iget v3, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mLineHeight:I

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mMarkHeightMatchHandleHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mRatio:F

    .line 1526
    iget v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mRatio:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_0

    iget v1, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mRatio:F

    :cond_0
    iput v1, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mRatio:F

    .line 1527
    iget-object v1, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1528
    iget-object v1, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mContainer:Landroid/widget/PopupWindow;

    iget v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mLineHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mRatio:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1529
    iget v1, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mLineHeight:I

    iput v1, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mHandleTypeOffset:I

    .line 1530
    const v1, -0x41666666

    iget v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mLineHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mTouchOffsetY:F

    .line 1531
    const v1, 0x3f333333

    iget v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mLineHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mIdealVerticalOffset:F

    .line 1533
    :cond_1
    return-void
.end method

.method public updatePosition(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1554
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 1557
    .local v0, offset:I
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 1558
    .local v1, selectionStart:I
    if-gt v0, v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1560
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->positionAtCursorOffset(IZ)V

    .line 1561
    return-void
.end method

.method protected updatePositionXY(IZ)V
    .locals 4
    .parameter "offset"
    .parameter "container"

    .prologue
    .line 1566
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1567
    .local v0, line:I
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    const/high16 v3, 0x3f00

    sub-float/2addr v2, v3

    iget v3, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mHotspotX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mPositionX:I

    .line 1568
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    iput v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mPositionY:I

    .line 1571
    iget v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mPositionX:I

    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mPositionX:I

    .line 1572
    iget v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mPositionY:I

    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mPositionY:I

    .line 1574
    if-eqz p2, :cond_0

    .line 1575
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 1576
    .local v1, location:[I
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 1577
    const/4 v2, 0x0

    aget v2, v1, v2

    iget v3, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mPositionX:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mContainerX:I

    .line 1578
    const/4 v2, 0x1

    aget v2, v1, v2

    iget v3, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mPositionY:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mContainerY:I

    .line 1580
    .end local v1           #location:[I
    :cond_0
    return-void
.end method

.method public updateSelection(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 1548
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mEditor:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/Editor;->setTextSelectionWrap(II)V

    .line 1549
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$SelectionEndHandleView;->updateDrawable()V

    .line 1550
    return-void
.end method
