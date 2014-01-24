.class Lmiui/widget/SlidingButton$1;
.super Ljava/lang/Object;
.source "SlidingButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/SlidingButton;->doAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/SlidingButton;


# direct methods
.method constructor <init>(Lmiui/widget/SlidingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lmiui/widget/SlidingButton$1;->this$0:Lmiui/widget/SlidingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lmiui/widget/SlidingButton$1;->this$0:Lmiui/widget/SlidingButton;

    #getter for: Lmiui/widget/SlidingButton;->mOnCheckedChangedListener:Lmiui/widget/SlidingButton$OnCheckedChangedListener;
    invoke-static {v0}, Lmiui/widget/SlidingButton;->access$100(Lmiui/widget/SlidingButton;)Lmiui/widget/SlidingButton$OnCheckedChangedListener;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/SlidingButton$1;->this$0:Lmiui/widget/SlidingButton;

    invoke-virtual {v1}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Lmiui/widget/SlidingButton$OnCheckedChangedListener;->onCheckedChanged(Z)V

    .line 332
    return-void
.end method
