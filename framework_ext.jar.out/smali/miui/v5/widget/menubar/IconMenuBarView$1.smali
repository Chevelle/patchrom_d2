.class Lmiui/v5/widget/menubar/IconMenuBarView$1;
.super Ljava/lang/Object;
.source "IconMenuBarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/v5/widget/menubar/IconMenuBarView;->onFinishInflate()V
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
    .line 123
    iput-object p1, p0, Lmiui/v5/widget/menubar/IconMenuBarView$1;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 127
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView$1;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lmiui/v5/widget/menubar/IconMenuBarView;->access$000(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
