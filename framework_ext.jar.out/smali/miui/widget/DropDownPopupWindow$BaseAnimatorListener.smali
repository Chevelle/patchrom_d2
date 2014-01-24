.class Lmiui/widget/DropDownPopupWindow$BaseAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DropDownPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DropDownPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseAnimatorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/DropDownPopupWindow;


# direct methods
.method private constructor <init>(Lmiui/widget/DropDownPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow$BaseAnimatorListener;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/DropDownPopupWindow;Lmiui/widget/DropDownPopupWindow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lmiui/widget/DropDownPopupWindow$BaseAnimatorListener;-><init>(Lmiui/widget/DropDownPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 146
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$BaseAnimatorListener;->this$0:Lmiui/widget/DropDownPopupWindow;

    const/4 v1, 0x0

    #setter for: Lmiui/widget/DropDownPopupWindow;->mPlayingAnimation:Z
    invoke-static {v0, v1}, Lmiui/widget/DropDownPopupWindow;->access$302(Lmiui/widget/DropDownPopupWindow;Z)Z

    .line 147
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 141
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$BaseAnimatorListener;->this$0:Lmiui/widget/DropDownPopupWindow;

    const/4 v1, 0x1

    #setter for: Lmiui/widget/DropDownPopupWindow;->mPlayingAnimation:Z
    invoke-static {v0, v1}, Lmiui/widget/DropDownPopupWindow;->access$302(Lmiui/widget/DropDownPopupWindow;Z)Z

    .line 142
    return-void
.end method
