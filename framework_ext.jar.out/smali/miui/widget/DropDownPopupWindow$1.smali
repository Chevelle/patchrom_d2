.class Lmiui/widget/DropDownPopupWindow$1;
.super Lmiui/widget/DropDownPopupWindow$BaseAnimatorListener;
.source "DropDownPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DropDownPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/DropDownPopupWindow;


# direct methods
.method constructor <init>(Lmiui/widget/DropDownPopupWindow;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow$1;->this$0:Lmiui/widget/DropDownPopupWindow;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/DropDownPopupWindow$BaseAnimatorListener;-><init>(Lmiui/widget/DropDownPopupWindow;Lmiui/widget/DropDownPopupWindow$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lmiui/widget/DropDownPopupWindow$BaseAnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 39
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$1;->this$0:Lmiui/widget/DropDownPopupWindow;

    #getter for: Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->access$100(Lmiui/widget/DropDownPopupWindow;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$1;->this$0:Lmiui/widget/DropDownPopupWindow;

    #getter for: Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->access$100(Lmiui/widget/DropDownPopupWindow;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow$1;->this$0:Lmiui/widget/DropDownPopupWindow;

    #getter for: Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v1}, Lmiui/widget/DropDownPopupWindow;->access$100(Lmiui/widget/DropDownPopupWindow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 41
    return-void
.end method
