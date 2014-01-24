.class Lmiui/view/VolumePanel$6;
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


# static fields
.field private static final TOTAL_ANIMATION_TIMES:I = 0x4


# instance fields
.field private mAnimationTimes:I

.field private mCurrentFrame:I

.field final synthetic this$0:Lmiui/view/VolumePanel;

.field final synthetic val$rotationAnimation:[Landroid/view/animation/RotateAnimation;


# direct methods
.method constructor <init>(Lmiui/view/VolumePanel;[Landroid/view/animation/RotateAnimation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1010
    iput-object p1, p0, Lmiui/view/VolumePanel$6;->this$0:Lmiui/view/VolumePanel;

    iput-object p2, p0, Lmiui/view/VolumePanel$6;->val$rotationAnimation:[Landroid/view/animation/RotateAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    .line 1017
    iget v0, p0, Lmiui/view/VolumePanel$6;->mCurrentFrame:I

    .line 1018
    .local v0, frame:I
    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_4

    .line 1019
    :cond_0
    iget v1, p0, Lmiui/view/VolumePanel$6;->mAnimationTimes:I

    const/4 v2, 0x4

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Lmiui/view/VolumePanel$6;->this$0:Lmiui/view/VolumePanel;

    #getter for: Lmiui/view/VolumePanel;->mIsAnimationCancel:Z
    invoke-static {v1}, Lmiui/view/VolumePanel;->access$1200(Lmiui/view/VolumePanel;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1020
    :cond_1
    const/4 v1, 0x3

    iput v1, p0, Lmiui/view/VolumePanel$6;->mCurrentFrame:I

    .line 1028
    :cond_2
    :goto_0
    iget-object v1, p0, Lmiui/view/VolumePanel$6;->this$0:Lmiui/view/VolumePanel;

    #getter for: Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;
    invoke-static {v1}, Lmiui/view/VolumePanel;->access$1300(Lmiui/view/VolumePanel;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lmiui/view/VolumePanel$6;->val$rotationAnimation:[Landroid/view/animation/RotateAnimation;

    iget v3, p0, Lmiui/view/VolumePanel$6;->mCurrentFrame:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1029
    return-void

    .line 1022
    :cond_3
    iput v3, p0, Lmiui/view/VolumePanel$6;->mCurrentFrame:I

    .line 1023
    iget v1, p0, Lmiui/view/VolumePanel$6;->mAnimationTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiui/view/VolumePanel$6;->mAnimationTimes:I

    goto :goto_0

    .line 1025
    :cond_4
    if-ne v0, v3, :cond_2

    .line 1026
    iput v1, p0, Lmiui/view/VolumePanel$6;->mCurrentFrame:I

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1034
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1039
    return-void
.end method
