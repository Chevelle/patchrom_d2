.class Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;
.super Ljava/lang/Object;
.source "ScreenView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenViewOvershootInterpolator"
.end annotation


# instance fields
.field private mTension:F

.field final synthetic this$0:Lmiui/widget/ScreenView;


# direct methods
.method public constructor <init>(Lmiui/widget/ScreenView;)V
    .locals 1
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->this$0:Lmiui/widget/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    #getter for: Lmiui/widget/ScreenView;->mOvershootTension:F
    invoke-static {p1}, Lmiui/widget/ScreenView;->access$500(Lmiui/widget/ScreenView;)F

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->mTension:F

    .line 375
    return-void
.end method

.method static synthetic access$102(Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 370
    iput p1, p0, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->mTension:F

    return p1
.end method


# virtual methods
.method public disableSettle()V
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->mTension:F

    .line 385
    return-void
.end method

.method public getInterpolation(F)F
    .locals 4
    .parameter "t"

    .prologue
    const/high16 v3, 0x3f80

    .line 388
    sub-float/2addr p1, v3

    .line 389
    mul-float v0, p1, p1

    iget v1, p0, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->mTension:F

    add-float/2addr v1, v3

    mul-float/2addr v1, p1

    iget v2, p0, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->mTension:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    return v0
.end method

.method public setDistance(II)V
    .locals 2
    .parameter "distance"
    .parameter "velocity"

    .prologue
    .line 378
    if-lez p1, :cond_0

    iget-object v0, p0, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->this$0:Lmiui/widget/ScreenView;

    #getter for: Lmiui/widget/ScreenView;->mOvershootTension:F
    invoke-static {v0}, Lmiui/widget/ScreenView;->access$500(Lmiui/widget/ScreenView;)F

    move-result v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->mTension:F

    .line 381
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->this$0:Lmiui/widget/ScreenView;

    #getter for: Lmiui/widget/ScreenView;->mOvershootTension:F
    invoke-static {v0}, Lmiui/widget/ScreenView;->access$500(Lmiui/widget/ScreenView;)F

    move-result v0

    goto :goto_0
.end method
