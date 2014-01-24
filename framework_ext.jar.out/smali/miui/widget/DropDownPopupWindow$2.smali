.class Lmiui/widget/DropDownPopupWindow$2;
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
    .line 44
    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow$2;->this$0:Lmiui/widget/DropDownPopupWindow;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/DropDownPopupWindow$BaseAnimatorListener;-><init>(Lmiui/widget/DropDownPopupWindow;Lmiui/widget/DropDownPopupWindow$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lmiui/widget/DropDownPopupWindow$BaseAnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 49
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$2;->this$0:Lmiui/widget/DropDownPopupWindow;

    #calls: Landroid/widget/PopupWindow;->dismiss()V
    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->access$201(Lmiui/widget/DropDownPopupWindow;)V

    .line 50
    return-void
.end method
