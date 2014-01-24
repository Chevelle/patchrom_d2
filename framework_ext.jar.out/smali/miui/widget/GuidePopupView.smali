.class public Lmiui/widget/GuidePopupView;
.super Landroid/widget/FrameLayout;
.source "GuidePopupView.java"


# static fields
.field public static final ARROW_BOTTOM_MODE:I = 0x1

.field public static final ARROW_TOP_MODE:I


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mArrowLeft:Landroid/widget/ImageView;

.field private mArrowMode:I

.field private mArrowRight:Landroid/widget/ImageView;

.field private mContentText:Landroid/widget/TextView;

.field private mGuidePopupWindow:Lmiui/widget/GuidePopupWindow;

.field private mLayoutRunnable:Ljava/lang/Runnable;

.field private mOffsetX:I

.field private mOffsetY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lmiui/widget/GuidePopupView$1;

    invoke-direct {v0, p0}, Lmiui/widget/GuidePopupView$1;-><init>(Lmiui/widget/GuidePopupView;)V

    iput-object v0, p0, Lmiui/widget/GuidePopupView;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Lmiui/widget/GuidePopupView$1;

    invoke-direct {v0, p0}, Lmiui/widget/GuidePopupView$1;-><init>(Lmiui/widget/GuidePopupView;)V

    iput-object v0, p0, Lmiui/widget/GuidePopupView;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lmiui/widget/GuidePopupView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mContentText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/widget/GuidePopupView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/widget/GuidePopupView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lmiui/widget/GuidePopupView;->mArrowMode:I

    return v0
.end method

.method static synthetic access$300(Lmiui/widget/GuidePopupView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lmiui/widget/GuidePopupView;->mOffsetY:I

    return v0
.end method

.method static synthetic access$400(Lmiui/widget/GuidePopupView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lmiui/widget/GuidePopupView;->mOffsetX:I

    return v0
.end method

.method static synthetic access$500(Lmiui/widget/GuidePopupView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mArrowLeft:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lmiui/widget/GuidePopupView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mArrowRight:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 167
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lmiui/widget/GuidePopupView;->mGuidePopupWindow:Lmiui/widget/GuidePopupWindow;

    if-eqz v1, :cond_1

    .line 168
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 169
    iget-object v1, p0, Lmiui/widget/GuidePopupView;->mGuidePopupWindow:Lmiui/widget/GuidePopupWindow;

    invoke-virtual {v1}, Lmiui/widget/GuidePopupWindow;->dismiss()V

    .line 173
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getArrowMode()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lmiui/widget/GuidePopupView;->mArrowMode:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 180
    invoke-virtual {p0}, Lmiui/widget/GuidePopupView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 181
    .local v0, container:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 182
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 39
    const v0, 0x60b0030

    invoke-virtual {p0, v0}, Lmiui/widget/GuidePopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmiui/widget/GuidePopupView;->mArrowLeft:Landroid/widget/ImageView;

    .line 40
    const v0, 0x60b0031

    invoke-virtual {p0, v0}, Lmiui/widget/GuidePopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmiui/widget/GuidePopupView;->mArrowRight:Landroid/widget/ImageView;

    .line 41
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lmiui/widget/GuidePopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/widget/GuidePopupView;->mContentText:Landroid/widget/TextView;

    .line 42
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 117
    invoke-virtual {p0, p2, p3, p4, p5}, Lmiui/widget/GuidePopupView;->setFrame(IIII)Z

    .line 118
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/widget/GuidePopupView;->post(Ljava/lang/Runnable;)Z

    .line 119
    return-void
.end method

.method public setAnchor(Landroid/view/View;)V
    .locals 0
    .parameter "anchor"

    .prologue
    .line 153
    iput-object p1, p0, Lmiui/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    .line 154
    return-void
.end method

.method public setArrowMode(I)V
    .locals 2
    .parameter "arrowMode"

    .prologue
    .line 133
    iput p1, p0, Lmiui/widget/GuidePopupView;->mArrowMode:I

    .line 134
    packed-switch p1, :pswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 136
    :pswitch_0
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mArrowLeft:Landroid/widget/ImageView;

    const v1, 0x602005f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mArrowRight:Landroid/widget/ImageView;

    const v1, 0x6020060

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mContentText:Landroid/widget/TextView;

    const v1, 0x6020061

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 141
    :pswitch_1
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mArrowLeft:Landroid/widget/ImageView;

    const v1, 0x6020062

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mArrowRight:Landroid/widget/ImageView;

    const v1, 0x6020063

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mContentText:Landroid/widget/TextView;

    const v1, 0x6020064

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setGuidePopupWindow(Lmiui/widget/GuidePopupWindow;)V
    .locals 0
    .parameter "guidePopupWindow"

    .prologue
    .line 162
    iput-object p1, p0, Lmiui/widget/GuidePopupView;->mGuidePopupWindow:Lmiui/widget/GuidePopupWindow;

    .line 163
    return-void
.end method

.method public setGuideText(I)V
    .locals 1
    .parameter "textId"

    .prologue
    .line 126
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mContentText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 127
    return-void
.end method

.method public setGuideText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 122
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mContentText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method

.method public setOffset(II)V
    .locals 0
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 157
    iput p1, p0, Lmiui/widget/GuidePopupView;->mOffsetX:I

    .line 158
    iput p2, p0, Lmiui/widget/GuidePopupView;->mOffsetY:I

    .line 159
    return-void
.end method
