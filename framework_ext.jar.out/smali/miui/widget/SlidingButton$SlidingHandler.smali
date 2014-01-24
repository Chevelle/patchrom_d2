.class Lmiui/widget/SlidingButton$SlidingHandler;
.super Landroid/os/Handler;
.source "SlidingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/SlidingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/SlidingButton;


# direct methods
.method private constructor <init>(Lmiui/widget/SlidingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lmiui/widget/SlidingButton$SlidingHandler;->this$0:Lmiui/widget/SlidingButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/SlidingButton;Lmiui/widget/SlidingButton$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 438
    invoke-direct {p0, p1}, Lmiui/widget/SlidingButton$SlidingHandler;-><init>(Lmiui/widget/SlidingButton;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 440
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 448
    :goto_0
    return-void

    .line 442
    :pswitch_0
    iget-object v0, p0, Lmiui/widget/SlidingButton$SlidingHandler;->this$0:Lmiui/widget/SlidingButton;

    #calls: Lmiui/widget/SlidingButton;->doAnimation()V
    invoke-static {v0}, Lmiui/widget/SlidingButton;->access$200(Lmiui/widget/SlidingButton;)V

    goto :goto_0

    .line 445
    :pswitch_1
    iget-object v0, p0, Lmiui/widget/SlidingButton$SlidingHandler;->this$0:Lmiui/widget/SlidingButton;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lmiui/widget/SlidingButton;->doTogglingAnimation(I)V
    invoke-static {v0, v1}, Lmiui/widget/SlidingButton;->access$300(Lmiui/widget/SlidingButton;I)V

    goto :goto_0

    .line 440
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
