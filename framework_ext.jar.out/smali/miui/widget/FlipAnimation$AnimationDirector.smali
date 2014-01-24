.class Lmiui/widget/FlipAnimation$AnimationDirector;
.super Ljava/lang/Object;
.source "FlipAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/FlipAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimationDirector"
.end annotation


# instance fields
.field private final mDegreeDelta:F

.field private final mDegreeFrom:F

.field private final mScaleXDelta:F

.field private final mScaleXFrom:F

.field private final mScaleYDelta:F

.field private final mScaleYFrom:F

.field private final mTranslationXDelta:F

.field private final mTranslationXFrom:F

.field private final mTranslationYDelta:F

.field private final mTranslationYFrom:F

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;FFFFFFFFFF)V
    .locals 1
    .parameter "v"
    .parameter "scaleXFrom"
    .parameter "scaleXTo"
    .parameter "scaleYFrom"
    .parameter "scaleYTo"
    .parameter "translationXFrom"
    .parameter "translationXTo"
    .parameter "translationYFrom"
    .parameter "translationYTo"
    .parameter "degreeFrom"
    .parameter "degreeTo"

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lmiui/widget/FlipAnimation$AnimationDirector;->mView:Landroid/view/View;

    .line 155
    iput p2, p0, Lmiui/widget/FlipAnimation$AnimationDirector;->mScaleXFrom:F

    .line 156
    sub-float v0, p3, p2

    iput v0, p0, Lmiui/widget/FlipAnimation$AnimationDirector;->mScaleXDelta:F

    .line 157
    iput p4, p0, Lmiui/widget/FlipAnimation$AnimationDirector;->mScaleYFrom:F

    .line 158
    sub-float v0, p5, p4

    iput v0, p0, Lmiui/widget/FlipAnimation$AnimationDirector;->mScaleYDelta:F

    .line 159
    iput p6, p0, Lmiui/widget/FlipAnimation$AnimationDirector;->mTranslationXFrom:F

    .line 160
    sub-float v0, p7, p6

    iput v0, p0, Lmiui/widget/FlipAnimation$AnimationDirector;->mTranslationXDelta:F

    .line 161
    iput p8, p0, Lmiui/widget/FlipAnimation$AnimationDirector;->mTranslationYFrom:F

    .line 162
    sub-float v0, p9, p8

    iput v0, p0, Lmiui/widget/FlipAnimation$AnimationDirector;->mTranslationYDelta:F

    .line 163
    iput p10, p0, Lmiui/widget/FlipAnimation$AnimationDirector;->mDegreeFrom:F

    .line 164
    sub-float v0, p11, p10

    iput v0, p0, Lmiui/widget/FlipAnimation$AnimationDirector;->mDegreeDelta:F

    .line 165
    return-void
.end method

.method public static reset(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 182
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 183
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 184
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 185
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotationX(F)V

    .line 186
    return-void
.end method


# virtual methods
.method public applay(F)V
    .locals 3
    .parameter "fraction"

    .prologue
    .line 168
    iget-object v0, p0, Lmiui/widget/FlipAnimation$AnimationDirector;->mView:Landroid/view/View;

    .line 169
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 173
    :cond_0
    iget v1, p0, Lmiui/widget/FlipAnimation$AnimationDirector;->mScaleXFrom:F

    iget v2, p0, Lmiui/widget/FlipAnimation$AnimationDirector;->mScaleXDelta:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 174
    iget v1, p0, Lmiui/widget/FlipAnimation$AnimationDirector;->mScaleYFrom:F

    iget v2, p0, Lmiui/widget/FlipAnimation$AnimationDirector;->mScaleYDelta:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 175
    iget v1, p0, Lmiui/widget/FlipAnimation$AnimationDirector;->mTranslationXFrom:F

    iget v2, p0, Lmiui/widget/FlipAnimation$AnimationDirector;->mTranslationXDelta:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 176
    iget v1, p0, Lmiui/widget/FlipAnimation$AnimationDirector;->mTranslationYFrom:F

    iget v2, p0, Lmiui/widget/FlipAnimation$AnimationDirector;->mTranslationYDelta:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 177
    iget v1, p0, Lmiui/widget/FlipAnimation$AnimationDirector;->mDegreeFrom:F

    iget v2, p0, Lmiui/widget/FlipAnimation$AnimationDirector;->mDegreeDelta:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationX(F)V

    goto :goto_0
.end method
