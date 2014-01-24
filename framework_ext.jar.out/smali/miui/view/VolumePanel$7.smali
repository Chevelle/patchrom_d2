.class Lmiui/view/VolumePanel$7;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/VolumePanel;->startVibrateAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final TOTAL_TIMES:I

.field private mTimes:I

.field final synthetic this$0:Lmiui/view/VolumePanel;

.field final synthetic val$random:Ljava/util/Random;


# direct methods
.method constructor <init>(Lmiui/view/VolumePanel;Ljava/util/Random;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1056
    iput-object p1, p0, Lmiui/view/VolumePanel$7;->this$0:Lmiui/view/VolumePanel;

    iput-object p2, p0, Lmiui/view/VolumePanel$7;->val$random:Ljava/util/Random;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1057
    const/16 v0, 0xf

    iput v0, p0, Lmiui/view/VolumePanel$7;->TOTAL_TIMES:I

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .parameter "animation"

    .prologue
    const/4 v4, 0x0

    .line 1062
    iget-object v1, p0, Lmiui/view/VolumePanel$7;->this$0:Lmiui/view/VolumePanel;

    #getter for: Lmiui/view/VolumePanel;->mIsAnimationCancel:Z
    invoke-static {v1}, Lmiui/view/VolumePanel;->access$1200(Lmiui/view/VolumePanel;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1073
    :cond_0
    :goto_0
    return-void

    .line 1065
    :cond_1
    iget v1, p0, Lmiui/view/VolumePanel$7;->mTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiui/view/VolumePanel$7;->mTimes:I

    .line 1066
    iget v1, p0, Lmiui/view/VolumePanel$7;->mTimes:I

    const/16 v2, 0xf

    if-ge v1, v2, :cond_0

    .line 1067
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x4120

    iget-object v2, p0, Lmiui/view/VolumePanel$7;->val$random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x40a0

    iget-object v3, p0, Lmiui/view/VolumePanel$7;->val$random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-direct {v0, v4, v1, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1069
    .local v0, translateAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1070
    invoke-virtual {v0, p0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1071
    iget-object v1, p0, Lmiui/view/VolumePanel$7;->this$0:Lmiui/view/VolumePanel;

    #getter for: Lmiui/view/VolumePanel;->mView:Landroid/view/View;
    invoke-static {v1}, Lmiui/view/VolumePanel;->access$1400(Lmiui/view/VolumePanel;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1078
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1083
    return-void
.end method
