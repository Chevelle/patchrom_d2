.class Lmiui/widget/DropDownPopupWindow$RootPanel;
.super Landroid/widget/FrameLayout;
.source "DropDownPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DropDownPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RootPanel"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/DropDownPopupWindow;


# direct methods
.method public constructor <init>(Lmiui/widget/DropDownPopupWindow;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 151
    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow$RootPanel;->this$0:Lmiui/widget/DropDownPopupWindow;

    .line 152
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 154
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/DropDownPopupWindow$RootPanel;->setClickable(Z)V

    .line 155
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 161
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$RootPanel;->this$0:Lmiui/widget/DropDownPopupWindow;

    #getter for: Lmiui/widget/DropDownPopupWindow;->mShowInAnimation:Z
    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->access$400(Lmiui/widget/DropDownPopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$RootPanel;->this$0:Lmiui/widget/DropDownPopupWindow;

    const/4 v1, 0x0

    #setter for: Lmiui/widget/DropDownPopupWindow;->mShowInAnimation:Z
    invoke-static {v0, v1}, Lmiui/widget/DropDownPopupWindow;->access$402(Lmiui/widget/DropDownPopupWindow;Z)Z

    .line 163
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$RootPanel;->this$0:Lmiui/widget/DropDownPopupWindow;

    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow$RootPanel;->this$0:Lmiui/widget/DropDownPopupWindow;

    #calls: Lmiui/widget/DropDownPopupWindow;->getInAnimator()Landroid/animation/Animator;
    invoke-static {v1}, Lmiui/widget/DropDownPopupWindow;->access$500(Lmiui/widget/DropDownPopupWindow;)Landroid/animation/Animator;

    move-result-object v1

    #calls: Lmiui/widget/DropDownPopupWindow;->playAnimation(Landroid/animation/Animator;)V
    invoke-static {v0, v1}, Lmiui/widget/DropDownPopupWindow;->access$600(Lmiui/widget/DropDownPopupWindow;Landroid/animation/Animator;)V

    .line 165
    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$RootPanel;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/DropDownPopupWindow;->dismiss()V

    .line 171
    const/4 v0, 0x1

    return v0
.end method
