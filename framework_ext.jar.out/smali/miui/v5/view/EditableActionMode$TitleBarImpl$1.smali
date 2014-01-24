.class Lmiui/v5/view/EditableActionMode$TitleBarImpl$1;
.super Ljava/lang/Object;
.source "EditableActionMode.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/view/EditableActionMode$TitleBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/v5/view/EditableActionMode$TitleBarImpl;


# direct methods
.method constructor <init>(Lmiui/v5/view/EditableActionMode$TitleBarImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl$1;->this$0:Lmiui/v5/view/EditableActionMode$TitleBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 295
    iget-object v1, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl$1;->this$0:Lmiui/v5/view/EditableActionMode$TitleBarImpl;

    #getter for: Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mActionModeRef:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->access$000(Lmiui/v5/view/EditableActionMode$TitleBarImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/v5/view/EditableActionMode;

    .line 296
    .local v0, mode:Lmiui/v5/view/EditableActionMode;
    if-eqz v0, :cond_0

    .line 297
    iget-object v1, v0, Lmiui/v5/view/EditableActionMode;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    invoke-virtual {v1}, Lmiui/v5/widget/menubar/MenuBar;->close()V

    .line 300
    :cond_0
    iget-object v1, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl$1;->this$0:Lmiui/v5/view/EditableActionMode$TitleBarImpl;

    iget-object v1, v1, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mContainer:Landroid/view/ViewGroup;

    invoke-static {v1}, Lmiui/v5/widget/Views;->detach(Landroid/view/View;)V

    .line 301
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 291
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 287
    return-void
.end method
