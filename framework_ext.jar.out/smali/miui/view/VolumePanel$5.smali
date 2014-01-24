.class Lmiui/view/VolumePanel$5;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/VolumePanel;->startMaxVolumeAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/VolumePanel;

.field final synthetic val$scaleAnimation2:Landroid/view/animation/ScaleAnimation;


# direct methods
.method constructor <init>(Lmiui/view/VolumePanel;Landroid/view/animation/ScaleAnimation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 962
    iput-object p1, p0, Lmiui/view/VolumePanel$5;->this$0:Lmiui/view/VolumePanel;

    iput-object p2, p0, Lmiui/view/VolumePanel$5;->val$scaleAnimation2:Landroid/view/animation/ScaleAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 966
    iget-object v0, p0, Lmiui/view/VolumePanel$5;->val$scaleAnimation2:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0}, Landroid/view/animation/ScaleAnimation;->start()V

    .line 967
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 972
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 977
    return-void
.end method
