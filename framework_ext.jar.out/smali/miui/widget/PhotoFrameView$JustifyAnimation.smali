.class Lmiui/widget/PhotoFrameView$JustifyAnimation;
.super Landroid/view/animation/Animation;
.source "PhotoFrameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/PhotoFrameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JustifyAnimation"
.end annotation


# instance fields
.field private final mOffsets:[F

.field private final mResetScale:Z

.field private final mScaleDelta:F

.field private final mStartScale:F

.field private final mStarts:[F

.field private final mTemps:[F

.field final synthetic this$0:Lmiui/widget/PhotoFrameView;


# direct methods
.method constructor <init>(Lmiui/widget/PhotoFrameView;Z)V
    .locals 6
    .parameter
    .parameter "resetScale"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x2

    .line 257
    iput-object p1, p0, Lmiui/widget/PhotoFrameView$JustifyAnimation;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 252
    new-array v1, v2, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lmiui/widget/PhotoFrameView$JustifyAnimation;->mStarts:[F

    .line 253
    new-array v1, v2, [F

    fill-array-data v1, :array_1

    iput-object v1, p0, Lmiui/widget/PhotoFrameView$JustifyAnimation;->mOffsets:[F

    .line 254
    new-array v1, v2, [F

    fill-array-data v1, :array_2

    iput-object v1, p0, Lmiui/widget/PhotoFrameView$JustifyAnimation;->mTemps:[F

    .line 258
    iput-boolean p2, p0, Lmiui/widget/PhotoFrameView$JustifyAnimation;->mResetScale:Z

    .line 259
    invoke-virtual {p1}, Lmiui/widget/PhotoFrameView;->getScale()F

    move-result v1

    iput v1, p0, Lmiui/widget/PhotoFrameView$JustifyAnimation;->mStartScale:F

    .line 260
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 261
    .local v0, matrix:Landroid/graphics/Matrix;
    invoke-virtual {p1, v0, p2}, Lmiui/widget/PhotoFrameView;->fitCenter(Landroid/graphics/Matrix;Z)V

    .line 262
    if-eqz p2, :cond_0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v1

    iget v2, p0, Lmiui/widget/PhotoFrameView$JustifyAnimation;->mStartScale:F

    sub-float/2addr v1, v2

    :goto_0
    iput v1, p0, Lmiui/widget/PhotoFrameView$JustifyAnimation;->mScaleDelta:F

    .line 263
    iget-object v1, p1, Lmiui/widget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lmiui/widget/PhotoFrameView$JustifyAnimation;->mStarts:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 264
    iget-object v1, p0, Lmiui/widget/PhotoFrameView$JustifyAnimation;->mOffsets:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 265
    iget-object v1, p0, Lmiui/widget/PhotoFrameView$JustifyAnimation;->mOffsets:[F

    aget v2, v1, v4

    iget-object v3, p0, Lmiui/widget/PhotoFrameView$JustifyAnimation;->mStarts:[F

    aget v3, v3, v4

    sub-float/2addr v2, v3

    aput v2, v1, v4

    .line 266
    iget-object v1, p0, Lmiui/widget/PhotoFrameView$JustifyAnimation;->mOffsets:[F

    aget v2, v1, v5

    iget-object v3, p0, Lmiui/widget/PhotoFrameView$JustifyAnimation;->mStarts:[F

    aget v3, v3, v5

    sub-float/2addr v2, v3

    aput v2, v1, v5

    .line 267
    return-void

    .line 262
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 252
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 253
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 254
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 10
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 275
    iget v5, p0, Lmiui/widget/PhotoFrameView$JustifyAnimation;->mStartScale:F

    iget v6, p0, Lmiui/widget/PhotoFrameView$JustifyAnimation;->mScaleDelta:F

    mul-float/2addr v6, p1

    add-float v2, v5, v6

    .line 276
    .local v2, scale:F
    iget-object v5, p0, Lmiui/widget/PhotoFrameView$JustifyAnimation;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v5}, Lmiui/widget/PhotoFrameView;->getScale()F

    move-result v5

    div-float v0, v2, v5

    .line 277
    .local v0, deltaS:F
    iget-object v5, p0, Lmiui/widget/PhotoFrameView$JustifyAnimation;->this$0:Lmiui/widget/PhotoFrameView;

    iget-object v5, v5, Lmiui/widget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 279
    iget-object v5, p0, Lmiui/widget/PhotoFrameView$JustifyAnimation;->mStarts:[F

    aget v5, v5, v7

    iget-object v6, p0, Lmiui/widget/PhotoFrameView$JustifyAnimation;->mOffsets:[F

    aget v6, v6, v7

    mul-float/2addr v6, p1

    add-float v3, v5, v6

    .line 280
    .local v3, tx:F
    iget-object v5, p0, Lmiui/widget/PhotoFrameView$JustifyAnimation;->mStarts:[F

    aget v5, v5, v8

    iget-object v6, p0, Lmiui/widget/PhotoFrameView$JustifyAnimation;->mOffsets:[F

    aget v6, v6, v8

    mul-float/2addr v6, p1

    add-float v4, v5, v6

    .line 281
    .local v4, ty:F
    iget-object v1, p0, Lmiui/widget/PhotoFrameView$JustifyAnimation;->mTemps:[F

    .line 282
    .local v1, deltaT:[F
    aput v9, v1, v7

    .line 283
    aput v9, v1, v8

    .line 284
    iget-object v5, p0, Lmiui/widget/PhotoFrameView$JustifyAnimation;->this$0:Lmiui/widget/PhotoFrameView;

    iget-object v5, v5, Lmiui/widget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 285
    iget-object v5, p0, Lmiui/widget/PhotoFrameView$JustifyAnimation;->this$0:Lmiui/widget/PhotoFrameView;

    iget-object v5, v5, Lmiui/widget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    aget v6, v1, v7

    sub-float v6, v3, v6

    aget v7, v1, v8

    sub-float v7, v4, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 286
    iget-object v5, p0, Lmiui/widget/PhotoFrameView$JustifyAnimation;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v5}, Lmiui/widget/PhotoFrameView;->invalidate()V

    .line 287
    return-void
.end method

.method public getResetScale()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lmiui/widget/PhotoFrameView$JustifyAnimation;->mResetScale:Z

    return v0
.end method
