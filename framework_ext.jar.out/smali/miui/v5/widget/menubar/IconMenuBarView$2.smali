.class Lmiui/v5/widget/menubar/IconMenuBarView$2;
.super Ljava/lang/Object;
.source "IconMenuBarView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/v5/widget/menubar/IconMenuBarView;->getAnimatorListener()Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/v5/widget/menubar/IconMenuBarView;


# direct methods
.method constructor <init>(Lmiui/v5/widget/menubar/IconMenuBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lmiui/v5/widget/menubar/IconMenuBarView$2;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 262
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 251
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView$2;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView$2;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarView;->mPreLayerType:I
    invoke-static {v1}, Lmiui/v5/widget/menubar/IconMenuBarView;->access$500(Lmiui/v5/widget/menubar/IconMenuBarView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/v5/widget/menubar/IconMenuBarView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 252
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView$2;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarView;->mIsExpended:Z
    invoke-static {v0}, Lmiui/v5/widget/menubar/IconMenuBarView;->access$100(Lmiui/v5/widget/menubar/IconMenuBarView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView$2;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarView;->mDimContainer:Landroid/view/View;
    invoke-static {v0}, Lmiui/v5/widget/menubar/IconMenuBarView;->access$200(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView$2;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerExpanedBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lmiui/v5/widget/menubar/IconMenuBarView;->access$300(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView$2;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lmiui/v5/widget/menubar/IconMenuBarView;->access$000(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView$2;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerCollapsedBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lmiui/v5/widget/menubar/IconMenuBarView;->access$600(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 258
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 267
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 238
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView$2;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarView;->mIsExpended:Z
    invoke-static {v0}, Lmiui/v5/widget/menubar/IconMenuBarView;->access$100(Lmiui/v5/widget/menubar/IconMenuBarView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView$2;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarView;->mDimContainer:Landroid/view/View;
    invoke-static {v0}, Lmiui/v5/widget/menubar/IconMenuBarView;->access$200(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView$2;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarView;->mDimContainer:Landroid/view/View;
    invoke-static {v0}, Lmiui/v5/widget/menubar/IconMenuBarView;->access$200(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 242
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView$2;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerExpanedBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lmiui/v5/widget/menubar/IconMenuBarView;->access$300(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView$2;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lmiui/v5/widget/menubar/IconMenuBarView;->access$000(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView$2;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerExpanedBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lmiui/v5/widget/menubar/IconMenuBarView;->access$300(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView$2;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    #calls: Lmiui/v5/widget/menubar/IconMenuBarView;->updateMenuState()V
    invoke-static {v0}, Lmiui/v5/widget/menubar/IconMenuBarView;->access$400(Lmiui/v5/widget/menubar/IconMenuBarView;)V

    .line 247
    return-void
.end method
