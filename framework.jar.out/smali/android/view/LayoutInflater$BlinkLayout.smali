.class Landroid/view/LayoutInflater$BlinkLayout;
.super Landroid/widget/FrameLayout;
.source "LayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/LayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlinkLayout"
.end annotation


# static fields
.field private static final BLINK_DELAY:I = 0x1f4

.field private static final MESSAGE_BLINK:I = 0x42


# instance fields
.field private mBlink:Z

.field private mBlinkState:Z

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 892
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 893
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Landroid/view/LayoutInflater$BlinkLayout$1;

    invoke-direct {v1, p0}, Landroid/view/LayoutInflater$BlinkLayout$1;-><init>(Landroid/view/LayoutInflater$BlinkLayout;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mHandler:Landroid/os/Handler;

    .line 907
    return-void
.end method

.method static synthetic access$000(Landroid/view/LayoutInflater$BlinkLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 883
    iget-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlink:Z

    return v0
.end method

.method static synthetic access$100(Landroid/view/LayoutInflater$BlinkLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 883
    iget-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlinkState:Z

    return v0
.end method

.method static synthetic access$102(Landroid/view/LayoutInflater$BlinkLayout;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 883
    iput-boolean p1, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlinkState:Z

    return p1
.end method

.method static synthetic access$200(Landroid/view/LayoutInflater$BlinkLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 883
    invoke-direct {p0}, Landroid/view/LayoutInflater$BlinkLayout;->makeBlink()V

    return-void
.end method

.method private makeBlink()V
    .locals 4

    .prologue
    .line 910
    iget-object v1, p0, Landroid/view/LayoutInflater$BlinkLayout;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x42

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 911
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Landroid/view/LayoutInflater$BlinkLayout;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 912
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 936
    iget-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlinkState:Z

    if-eqz v0, :cond_0

    .line 937
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 939
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 916
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 918
    iput-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlink:Z

    .line 919
    iput-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlinkState:Z

    .line 921
    invoke-direct {p0}, Landroid/view/LayoutInflater$BlinkLayout;->makeBlink()V

    .line 922
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 926
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 928
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlink:Z

    .line 929
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlinkState:Z

    .line 931
    iget-object v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 932
    return-void
.end method
