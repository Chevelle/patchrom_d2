.class Lmiui/widget/NumberPicker$ScrollListener;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrollListener"
.end annotation


# instance fields
.field private mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

.field final synthetic this$0:Lmiui/widget/NumberPicker;


# direct methods
.method constructor <init>(Lmiui/widget/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lmiui/widget/NumberPicker$ScrollListener;->this$0:Lmiui/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lmiui/widget/NumberPicker$ScrollListener;Landroid/widget/NumberPicker$OnScrollListener;)Landroid/widget/NumberPicker$OnScrollListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 477
    iput-object p1, p0, Lmiui/widget/NumberPicker$ScrollListener;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    return-object p1
.end method


# virtual methods
.method public onScrollStateChange(Landroid/widget/NumberPicker;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 481
    if-nez p2, :cond_0

    .line 482
    iget-object v0, p0, Lmiui/widget/NumberPicker$ScrollListener;->this$0:Lmiui/widget/NumberPicker;

    #calls: Lmiui/widget/NumberPicker;->adjustScrollWheel()V
    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)V

    .line 484
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker$ScrollListener;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lmiui/widget/NumberPicker$ScrollListener;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Landroid/widget/NumberPicker;I)V

    .line 487
    :cond_1
    return-void
.end method
