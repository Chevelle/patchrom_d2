.class Lmiui/view/VolumePanel$10;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/VolumePanel;->startVolumeSettingsAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/VolumePanel;

.field final synthetic val$set1:Landroid/view/animation/AnimationSet;

.field final synthetic val$volumePanel:Landroid/view/View;


# direct methods
.method constructor <init>(Lmiui/view/VolumePanel;Landroid/view/View;Landroid/view/animation/AnimationSet;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1152
    iput-object p1, p0, Lmiui/view/VolumePanel$10;->this$0:Lmiui/view/VolumePanel;

    iput-object p2, p0, Lmiui/view/VolumePanel$10;->val$volumePanel:Landroid/view/View;

    iput-object p3, p0, Lmiui/view/VolumePanel$10;->val$set1:Landroid/view/animation/AnimationSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/16 v1, 0x8

    .line 1166
    iget-object v0, p0, Lmiui/view/VolumePanel$10;->this$0:Lmiui/view/VolumePanel;

    #getter for: Lmiui/view/VolumePanel;->mVolumePanel:Landroid/view/View;
    invoke-static {v0}, Lmiui/view/VolumePanel;->access$1500(Lmiui/view/VolumePanel;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1167
    iget-object v0, p0, Lmiui/view/VolumePanel$10;->this$0:Lmiui/view/VolumePanel;

    #getter for: Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;
    invoke-static {v0}, Lmiui/view/VolumePanel;->access$1600(Lmiui/view/VolumePanel;)Lmiui/v5/widget/CircleProgressView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/v5/widget/CircleProgressView;->setVisibility(I)V

    .line 1168
    iget-object v0, p0, Lmiui/view/VolumePanel$10;->this$0:Lmiui/view/VolumePanel;

    #getter for: Lmiui/view/VolumePanel;->mVolumeSettings:Landroid/view/View;
    invoke-static {v0}, Lmiui/view/VolumePanel;->access$1700(Lmiui/view/VolumePanel;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1169
    iget-object v0, p0, Lmiui/view/VolumePanel$10;->this$0:Lmiui/view/VolumePanel;

    #getter for: Lmiui/view/VolumePanel;->mView:Landroid/view/View;
    invoke-static {v0}, Lmiui/view/VolumePanel;->access$1400(Lmiui/view/VolumePanel;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1170
    iget-object v0, p0, Lmiui/view/VolumePanel$10;->val$volumePanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1171
    iget-object v0, p0, Lmiui/view/VolumePanel$10;->this$0:Lmiui/view/VolumePanel;

    #getter for: Lmiui/view/VolumePanel;->mVolumeSettings:Landroid/view/View;
    invoke-static {v0}, Lmiui/view/VolumePanel;->access$1700(Lmiui/view/VolumePanel;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiui/view/VolumePanel$10;->val$set1:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1172
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1162
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1157
    return-void
.end method
