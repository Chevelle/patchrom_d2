.class public Lmiui/v5/widget/AbsTranslationController$TranslateAnimationListener;
.super Ljava/lang/Object;
.source "AbsTranslationController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/widget/AbsTranslationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TranslateAnimationListener"
.end annotation


# instance fields
.field private final mDelta:I

.field private final mFrom:I

.field private final mSpringBack:Z

.field private final mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmiui/v5/widget/AbsTranslationController;


# direct methods
.method public constructor <init>(Lmiui/v5/widget/AbsTranslationController;Landroid/view/View;IIZ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "from"
    .parameter "delta"
    .parameter "springBack"

    .prologue
    .line 212
    iput-object p1, p0, Lmiui/v5/widget/AbsTranslationController$TranslateAnimationListener;->this$0:Lmiui/v5/widget/AbsTranslationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/v5/widget/AbsTranslationController$TranslateAnimationListener;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 214
    iput p3, p0, Lmiui/v5/widget/AbsTranslationController$TranslateAnimationListener;->mFrom:I

    .line 215
    iput p4, p0, Lmiui/v5/widget/AbsTranslationController$TranslateAnimationListener;->mDelta:I

    .line 216
    iput-boolean p5, p0, Lmiui/v5/widget/AbsTranslationController$TranslateAnimationListener;->mSpringBack:Z

    .line 217
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lmiui/v5/widget/AbsTranslationController$TranslateAnimationListener;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public needSpringBack()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lmiui/v5/widget/AbsTranslationController$TranslateAnimationListener;->mSpringBack:Z

    return v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .parameter "animation"

    .prologue
    .line 221
    iget-object v2, p0, Lmiui/v5/widget/AbsTranslationController$TranslateAnimationListener;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 222
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 224
    .local v0, percent:F
    iget-object v2, p0, Lmiui/v5/widget/AbsTranslationController$TranslateAnimationListener;->this$0:Lmiui/v5/widget/AbsTranslationController;

    iget v3, p0, Lmiui/v5/widget/AbsTranslationController$TranslateAnimationListener;->mFrom:I

    int-to-float v3, v3

    iget v4, p0, Lmiui/v5/widget/AbsTranslationController$TranslateAnimationListener;->mDelta:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    invoke-virtual {v2, v1, v3}, Lmiui/v5/widget/AbsTranslationController;->onTranslate(Landroid/view/View;F)V

    .line 226
    .end local v0           #percent:F
    :cond_0
    return-void
.end method
