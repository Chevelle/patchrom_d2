.class public Lmiui/widget/AnimatedImageView;
.super Landroid/widget/ImageView;
.source "AnimatedImageView.java"


# instance fields
.field private mAnimating:Z

.field private mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method private updateAnimating()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lmiui/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lmiui/widget/AnimatedImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmiui/widget/AnimatedImageView;->mAnimating:Z

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lmiui/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->start()V

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lmiui/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->stop()V

    goto :goto_0
.end method

.method private updateDrawable()V
    .locals 3

    .prologue
    .line 23
    invoke-virtual {p0}, Lmiui/widget/AnimatedImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    if-eqz v1, :cond_0

    .line 24
    iget-object v1, p0, Lmiui/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->stop()V

    .line 26
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/AnimatedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 27
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    if-eqz v1, :cond_2

    .line 28
    check-cast v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Lmiui/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 30
    iget-object v1, p0, Lmiui/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    const/16 v2, 0x38

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesCount(I)V

    .line 31
    iget-object v1, p0, Lmiui/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesDuration(I)V

    .line 32
    invoke-virtual {p0}, Lmiui/widget/AnimatedImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lmiui/widget/AnimatedImageView;->mAnimating:Z

    if-eqz v1, :cond_1

    .line 33
    iget-object v1, p0, Lmiui/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->start()V

    .line 38
    :cond_1
    :goto_0
    return-void

    .line 36
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 65
    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->updateAnimating()V

    .line 66
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 71
    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->updateAnimating()V

    .line 72
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .parameter "changedView"
    .parameter "vis"

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 82
    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->updateAnimating()V

    .line 83
    return-void
.end method

.method public setAnimating(Z)V
    .locals 0
    .parameter "animating"

    .prologue
    .line 75
    iput-boolean p1, p0, Lmiui/widget/AnimatedImageView;->mAnimating:Z

    .line 76
    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->updateAnimating()V

    .line 77
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->updateDrawable()V

    .line 54
    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .parameter "resid"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    invoke-direct {p0}, Lmiui/widget/AnimatedImageView;->updateDrawable()V

    .line 60
    return-void
.end method
