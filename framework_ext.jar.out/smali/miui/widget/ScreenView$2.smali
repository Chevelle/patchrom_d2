.class Lmiui/widget/ScreenView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/ScreenView;->startHideSlideBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/ScreenView;


# direct methods
.method constructor <init>(Lmiui/widget/ScreenView;)V
    .locals 0
    .parameter

    .prologue
    .line 692
    iput-object p1, p0, Lmiui/widget/ScreenView$2;->this$0:Lmiui/widget/ScreenView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 694
    iget-object v0, p0, Lmiui/widget/ScreenView$2;->this$0:Lmiui/widget/ScreenView;

    iget-object v0, v0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$SlideBar;->setVisibility(I)V

    .line 695
    return-void
.end method
