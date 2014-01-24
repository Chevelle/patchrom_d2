.class public Lmiui/widget/SeekBar;
.super Landroid/widget/SeekBar;
.source "SeekBar.java"


# instance fields
.field private mClipRect:Landroid/graphics/Rect;

.field private mCuttedProgressBarBitmap:Landroid/graphics/Bitmap;

.field private mProgressBar:Landroid/graphics/drawable/Drawable;

.field private mProgressBarBitmap:Landroid/graphics/Bitmap;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressMask:Landroid/graphics/drawable/Drawable;

.field private mProgressMaskBitmap:Landroid/graphics/Bitmap;

.field protected mRealHeight:I

.field protected mRealWidth:I

.field protected mThumb:Landroid/graphics/drawable/Drawable;

.field protected mThumbOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    sget-object v1, Lmiui/R$styleable;->MiuiProgressBar:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/SeekBar;->mProgressBar:Landroid/graphics/drawable/Drawable;

    .line 49
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/SeekBar;->mProgressMask:Landroid/graphics/drawable/Drawable;

    .line 50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    invoke-virtual {p0}, Lmiui/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/SeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 52
    invoke-virtual {p0}, Lmiui/widget/SeekBar;->getThumbOffset()I

    move-result v1

    iput v1, p0, Lmiui/widget/SeekBar;->mThumbOffset:I

    .line 53
    invoke-virtual {p0}, Lmiui/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/SeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 54
    return-void
.end method

.method private cutBitmapWithMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmap"
    .parameter "mask"

    .prologue
    const/4 v6, 0x0

    .line 139
    iget v3, p0, Lmiui/widget/SeekBar;->mRealWidth:I

    iget v4, p0, Lmiui/widget/SeekBar;->mRealHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 140
    .local v2, result:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 141
    .local v0, dest:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 144
    if-eqz p1, :cond_0

    .line 145
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 148
    :cond_0
    if-eqz p2, :cond_1

    .line 149
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 150
    .local v1, maskPaint:Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 151
    invoke-virtual {v0, p2, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 154
    .end local v1           #maskPaint:Landroid/graphics/Paint;
    :cond_1
    return-object v2
.end method

.method private drawProgress(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 104
    iget v0, p0, Lmiui/widget/SeekBar;->mRealWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lmiui/widget/SeekBar;->mRealHeight:I

    if-gtz v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 109
    invoke-direct {p0}, Lmiui/widget/SeekBar;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 110
    iget-object v0, p0, Lmiui/widget/SeekBar;->mCuttedProgressBarBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lmiui/widget/SeekBar;->mPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Lmiui/widget/SeekBar;->mPaddingTop:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private getClipRect()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 158
    iget-object v2, p0, Lmiui/widget/SeekBar;->mClipRect:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 159
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lmiui/widget/SeekBar;->mClipRect:Landroid/graphics/Rect;

    .line 160
    iget-object v2, p0, Lmiui/widget/SeekBar;->mClipRect:Landroid/graphics/Rect;

    iget v3, p0, Lmiui/widget/SeekBar;->mPaddingLeft:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 161
    iget-object v2, p0, Lmiui/widget/SeekBar;->mClipRect:Landroid/graphics/Rect;

    iget v3, p0, Lmiui/widget/SeekBar;->mPaddingTop:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 162
    iget-object v2, p0, Lmiui/widget/SeekBar;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lmiui/widget/SeekBar;->getHeight()I

    move-result v3

    iget v4, p0, Lmiui/widget/SeekBar;->mPaddingTop:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 165
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/SeekBar;->getMax()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lmiui/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-long v2, v2

    iget v4, p0, Lmiui/widget/SeekBar;->mRealWidth:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    invoke-virtual {p0}, Lmiui/widget/SeekBar;->getMax()I

    move-result v4

    int-to-long v4, v4

    div-long v0, v2, v4

    .line 166
    .local v0, offset:J
    :goto_0
    iget-object v2, p0, Lmiui/widget/SeekBar;->mClipRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lmiui/widget/SeekBar;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    long-to-int v4, v0

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 168
    iget-object v2, p0, Lmiui/widget/SeekBar;->mClipRect:Landroid/graphics/Rect;

    return-object v2

    .line 165
    .end local v0           #offset:J
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected drawThumb(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 82
    iget-object v0, p0, Lmiui/widget/SeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 86
    iget v0, p0, Lmiui/widget/SeekBar;->mPaddingLeft:I

    iget v1, p0, Lmiui/widget/SeekBar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lmiui/widget/SeekBar;->mPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 87
    iget-object v0, p0, Lmiui/widget/SeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 90
    :cond_0
    return-void
.end method

.method protected drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "drawable"

    .prologue
    const/4 v5, 0x0

    .line 115
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 116
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    .line 117
    .restart local p1
    :cond_0
    instance-of v2, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v2, :cond_1

    .line 118
    iget v2, p0, Lmiui/widget/SeekBar;->mRealWidth:I

    iget v3, p0, Lmiui/widget/SeekBar;->mRealHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 120
    .local v1, canvas:Landroid/graphics/Canvas;
    iget v2, p0, Lmiui/widget/SeekBar;->mRealWidth:I

    iget v3, p0, Lmiui/widget/SeekBar;->mRealHeight:I

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 121
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 124
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/widget/SeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 73
    iget v0, p0, Lmiui/widget/SeekBar;->mPaddingLeft:I

    int-to-float v0, v0

    iget v1, p0, Lmiui/widget/SeekBar;->mPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 74
    iget-object v0, p0, Lmiui/widget/SeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 77
    :cond_0
    invoke-direct {p0, p1}, Lmiui/widget/SeekBar;->drawProgress(Landroid/graphics/Canvas;)V

    .line 78
    invoke-virtual {p0, p1}, Lmiui/widget/SeekBar;->drawThumb(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 94
    invoke-super/range {p0 .. p5}, Landroid/widget/SeekBar;->onLayout(ZIIII)V

    .line 96
    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p0}, Lmiui/widget/SeekBar;->getWidth()I

    move-result v0

    iget v1, p0, Lmiui/widget/SeekBar;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/SeekBar;->mPaddingRight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/SeekBar;->mRealWidth:I

    .line 98
    invoke-virtual {p0}, Lmiui/widget/SeekBar;->getHeight()I

    move-result v0

    iget v1, p0, Lmiui/widget/SeekBar;->mPaddingTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/SeekBar;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/SeekBar;->mRealHeight:I

    .line 99
    invoke-virtual {p0}, Lmiui/widget/SeekBar;->updateProgressDrawables()V

    .line 101
    :cond_0
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 59
    invoke-virtual {p0}, Lmiui/widget/SeekBar;->postInvalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressMaskDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 132
    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiui/widget/SeekBar;->mProgressMask:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 133
    iput-object p1, p0, Lmiui/widget/SeekBar;->mProgressMask:Landroid/graphics/drawable/Drawable;

    .line 134
    invoke-virtual {p0}, Lmiui/widget/SeekBar;->postInvalidate()V

    .line 136
    :cond_0
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "thumb"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-virtual {p0}, Lmiui/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/SeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 66
    invoke-virtual {p0}, Lmiui/widget/SeekBar;->getThumbOffset()I

    move-result v0

    iput v0, p0, Lmiui/widget/SeekBar;->mThumbOffset:I

    .line 67
    return-void
.end method

.method protected updateProgressDrawables()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 172
    iget v0, p0, Lmiui/widget/SeekBar;->mRealWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lmiui/widget/SeekBar;->mRealHeight:I

    if-gtz v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lmiui/widget/SeekBar;->mProgressBarBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lmiui/widget/SeekBar;->mProgressBarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 179
    :cond_2
    iget-object v0, p0, Lmiui/widget/SeekBar;->mProgressBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lmiui/widget/SeekBar;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/SeekBar;->mProgressBarBitmap:Landroid/graphics/Bitmap;

    .line 181
    iget-object v0, p0, Lmiui/widget/SeekBar;->mProgressMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 182
    iget-object v0, p0, Lmiui/widget/SeekBar;->mProgressMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 184
    :cond_3
    iget-object v0, p0, Lmiui/widget/SeekBar;->mProgressMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lmiui/widget/SeekBar;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/SeekBar;->mProgressMaskBitmap:Landroid/graphics/Bitmap;

    .line 186
    iget-object v0, p0, Lmiui/widget/SeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_4

    .line 187
    iget-object v0, p0, Lmiui/widget/SeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lmiui/widget/SeekBar;->mRealWidth:I

    iget v2, p0, Lmiui/widget/SeekBar;->mRealHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 190
    :cond_4
    iget-object v0, p0, Lmiui/widget/SeekBar;->mCuttedProgressBarBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 191
    iget-object v0, p0, Lmiui/widget/SeekBar;->mCuttedProgressBarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 193
    :cond_5
    iget-object v0, p0, Lmiui/widget/SeekBar;->mProgressBarBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lmiui/widget/SeekBar;->mProgressMaskBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1}, Lmiui/widget/SeekBar;->cutBitmapWithMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/SeekBar;->mCuttedProgressBarBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
