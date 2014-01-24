.class Landroid/widget/MiuiCursorController$InsertionHandleView;
.super Landroid/widget/MiuiCursorController$MiuiHandleView;
.source "MiuiCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MiuiCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InsertionHandleView"
.end annotation


# static fields
.field protected static final DELAY_BEFORE_HANDLE_FADES_OUT:I = 0xbb8

.field protected static final DELAY_WHEN_HANDLE_INVISIBLE:I = 0xc8


# instance fields
.field private mHider:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/widget/MiuiCursorController;


# direct methods
.method public constructor <init>(Landroid/widget/MiuiCursorController;Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "tv"
    .parameter "drawable"

    .prologue
    .line 1242
    iput-object p1, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->this$0:Landroid/widget/MiuiCursorController;

    .line 1243
    invoke-direct {p0, p1, p2, p3, p3}, Landroid/widget/MiuiCursorController$MiuiHandleView;-><init>(Landroid/widget/MiuiCursorController;Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1244
    return-void
.end method

.method private removeHiderCallback()V
    .locals 2

    .prologue
    .line 1265
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1266
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1268
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 1322
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public getHotspotLocationOnScreen([I)V
    .locals 3
    .parameter "location"

    .prologue
    .line 1272
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mContainerX:I

    iget v2, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mHotspotX:I

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 1273
    const/4 v0, 0x1

    iget v1, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mContainerY:I

    iget v2, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mLineHeight:I

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 1274
    return-void
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 2
    .parameter "drawable"
    .parameter "isRtlRun"

    .prologue
    .line 1278
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected hideAfterDelay(I)V
    .locals 4
    .parameter "delay"

    .prologue
    .line 1253
    invoke-direct {p0}, Landroid/widget/MiuiCursorController$InsertionHandleView;->removeHiderCallback()V

    .line 1254
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1255
    new-instance v0, Landroid/widget/MiuiCursorController$InsertionHandleView$1;

    invoke-direct {v0, p0}, Landroid/widget/MiuiCursorController$InsertionHandleView$1;-><init>(Landroid/widget/MiuiCursorController$InsertionHandleView;)V

    iput-object v0, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    .line 1261
    :cond_0
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1262
    return-void
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 1372
    invoke-super {p0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->onDetached()V

    .line 1373
    invoke-direct {p0}, Landroid/widget/MiuiCursorController$InsertionHandleView;->removeHiderCallback()V

    .line 1374
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "c"

    .prologue
    const/4 v6, 0x0

    .line 1356
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mDrawableMark:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mRight:I

    iget v2, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mLeft:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mDrawableMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mRight:I

    iget v3, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mLeft:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mDrawableMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mBottom:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mRatio:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1359
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mDrawableMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1360
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mBottom:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mRatio:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mRight:I

    iget v3, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mBottom:I

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1361
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1362
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 1366
    invoke-super {p0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->onHandleMoved()V

    .line 1367
    invoke-direct {p0}, Landroid/widget/MiuiCursorController$InsertionHandleView;->removeHiderCallback()V

    .line 1368
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 1298
    invoke-super {p0, p1}, Landroid/widget/MiuiCursorController$MiuiHandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1300
    .local v0, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1317
    :goto_0
    :pswitch_0
    return v0

    .line 1310
    :pswitch_1
    const/16 v1, 0xbb8

    invoke-virtual {p0, v1}, Landroid/widget/MiuiCursorController$InsertionHandleView;->hideAfterDelay(I)V

    goto :goto_0

    .line 1300
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public show()V
    .locals 1

    .prologue
    .line 1248
    invoke-super {p0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->show()V

    .line 1249
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/widget/MiuiCursorController$InsertionHandleView;->hideAfterDelay(I)V

    .line 1250
    return-void
.end method

.method protected updateContainerSize()V
    .locals 5

    .prologue
    const/high16 v1, 0x3f80

    .line 1283
    iget-object v2, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    .line 1284
    .local v0, lineHeight:I
    iget v2, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mLineHeight:I

    if-eq v0, v2, :cond_1

    .line 1285
    iput v0, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mLineHeight:I

    .line 1286
    iget v2, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mMinHandleRatio:F

    iget v3, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mLineHeight:I

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mMarkHeightMatchHandleHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mRatio:F

    .line 1287
    iget v2, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mRatio:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_0

    iget v1, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mRatio:F

    :cond_0
    iput v1, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mRatio:F

    .line 1288
    iget-object v1, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1289
    iget-object v1, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mContainer:Landroid/widget/PopupWindow;

    iget v2, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mLineHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mRatio:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1290
    iget v1, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mLineHeight:I

    iput v1, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mHandleTypeOffset:I

    .line 1291
    const v1, -0x41666666

    iget v2, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mLineHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mTouchOffsetY:F

    .line 1292
    const v1, 0x3f333333

    iget v2, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mLineHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mIdealVerticalOffset:F

    .line 1294
    :cond_1
    return-void
.end method

.method public updatePosition(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1332
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/MiuiCursorController$InsertionHandleView;->positionAtCursorOffset(IZ)V

    .line 1333
    return-void
.end method

.method protected updatePositionXY(IZ)V
    .locals 4
    .parameter "offset"
    .parameter "container"

    .prologue
    .line 1338
    iget-object v2, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1339
    .local v0, line:I
    iget-object v2, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    const/high16 v3, 0x3f00

    sub-float/2addr v2, v3

    iget v3, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mHotspotX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mPositionX:I

    .line 1340
    iget-object v2, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    iput v2, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mPositionY:I

    .line 1343
    iget v2, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mPositionX:I

    iget-object v3, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mPositionX:I

    .line 1344
    iget v2, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mPositionY:I

    iget-object v3, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mPositionY:I

    .line 1346
    if-eqz p2, :cond_0

    .line 1347
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 1348
    .local v1, location:[I
    iget-object v2, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 1349
    const/4 v2, 0x0

    aget v2, v1, v2

    iget v3, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mPositionX:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mContainerX:I

    .line 1350
    const/4 v2, 0x1

    aget v2, v1, v2

    iget v3, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mPositionY:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mContainerY:I

    .line 1352
    .end local v1           #location:[I
    :cond_0
    return-void
.end method

.method public updateSelection(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 1327
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionHandleView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p1}, Landroid/widget/Editor;->setTextSelectionWrap(II)V

    .line 1328
    return-void
.end method
