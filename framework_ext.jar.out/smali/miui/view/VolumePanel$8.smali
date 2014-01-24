.class Lmiui/view/VolumePanel$8;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/VolumePanel;->startSilentAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/VolumePanel;

.field final synthetic val$alphaAnimation2:Landroid/view/animation/AlphaAnimation;


# direct methods
.method constructor <init>(Lmiui/view/VolumePanel;Landroid/view/animation/AlphaAnimation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1097
    iput-object p1, p0, Lmiui/view/VolumePanel$8;->this$0:Lmiui/view/VolumePanel;

    iput-object p2, p0, Lmiui/view/VolumePanel$8;->val$alphaAnimation2:Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1101
    iget-object v0, p0, Lmiui/view/VolumePanel$8;->this$0:Lmiui/view/VolumePanel;

    #getter for: Lmiui/view/VolumePanel;->mView:Landroid/view/View;
    invoke-static {v0}, Lmiui/view/VolumePanel;->access$1400(Lmiui/view/VolumePanel;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiui/view/VolumePanel$8;->val$alphaAnimation2:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1102
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1107
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1112
    return-void
.end method
