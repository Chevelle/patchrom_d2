.class public Landroid/widget/MiuiCursorController$InsertionPointCursorController;
.super Landroid/widget/MiuiCursorController;
.source "MiuiCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MiuiCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsertionPointCursorController"
.end annotation


# instance fields
.field private mClipboardPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

.field private mCoords:[I

.field private mDownCornerButtonBgId:I

.field private final mHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

.field private mMiddleCornerButtonBgId:I

.field private mMiddleVerticalNoCornerButtonBgId:I

.field private mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

.field private mPreviousDownTime:J

.field mShowOnOneShot:Z

.field private mTextOffset:I

.field private mUpCornerButtonBgId:I


# direct methods
.method constructor <init>(Landroid/widget/Editor;Landroid/content/Context;)V
    .locals 3
    .parameter "owner"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 404
    invoke-direct {p0, p1, p2}, Landroid/widget/MiuiCursorController;-><init>(Landroid/widget/Editor;Landroid/content/Context;)V

    .line 396
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mCoords:[I

    .line 464
    iput-boolean v2, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    .line 405
    iget-object v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mOwner:Landroid/widget/Editor;

    invoke-virtual {p0, v1, v2, p0}, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->initHandleView(Landroid/widget/Editor;ILandroid/widget/MiuiCursorController;)Landroid/widget/MiuiCursorController$MiuiHandleView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    .line 406
    const v1, 0x6030017

    invoke-virtual {p0, v1}, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->createFloatPanelViewController(I)Landroid/widget/MiuiCursorController$FloatPanelViewController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    .line 407
    const v1, 0x6030018

    invoke-virtual {p0, v1}, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->createFloatPanelViewController(I)Landroid/widget/MiuiCursorController$FloatPanelViewController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    .line 408
    new-instance v0, Landroid/widget/MiuiCursorController$InsertionPointCursorController$1;

    invoke-direct {v0, p0}, Landroid/widget/MiuiCursorController$InsertionPointCursorController$1;-><init>(Landroid/widget/MiuiCursorController$InsertionPointCursorController;)V

    .line 415
    .local v0, l:Landroid/view/View$OnClickListener;
    iget-object v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    const v2, 0x60b003a

    invoke-virtual {v1, v2, v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 416
    iget-object v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    const v2, 0x60b003b

    invoke-virtual {v1, v2, v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 417
    iget-object v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    const v2, 0x60b0038

    invoke-virtual {v1, v2, v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 418
    iget-object v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    const v2, 0x60b0039

    invoke-virtual {v1, v2, v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 420
    const v1, 0x6020332

    iput v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mMiddleCornerButtonBgId:I

    .line 421
    const v1, 0x6020335

    iput v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mUpCornerButtonBgId:I

    .line 422
    const v1, 0x6020337

    iput v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mDownCornerButtonBgId:I

    .line 423
    const v1, 0x6020336

    iput v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mMiddleVerticalNoCornerButtonBgId:I

    .line 424
    return-void
.end method

.method static synthetic access$100(Landroid/widget/MiuiCursorController$InsertionPointCursorController;)Landroid/widget/MiuiCursorController$FloatPanelViewController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 387
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    return-object v0
.end method

.method private showInsertionPanel()V
    .locals 2

    .prologue
    .line 609
    const-string v0, "MiuiCursorController"

    const-string v1, ">need InsertPanel, to show Panel and hide handle"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 611
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->invisible()V

    .line 612
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mOwner:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/MiuiCursorController;

    move-result-object v0

    iget v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mTextOffset:I

    invoke-virtual {v0, v1}, Landroid/widget/MiuiCursorController;->setMinMaxOffset(I)V

    .line 613
    return-void
.end method


# virtual methods
.method public computePanelPosition([I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 542
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v0, p1}, Landroid/widget/MiuiCursorController$MiuiHandleView;->getHotspotLocationOnScreen([I)V

    .line 543
    return-void
.end method

.method public computePanelPositionOnBottom()I
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    iget-object v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mCoords:[I

    invoke-virtual {v0, v1}, Landroid/widget/MiuiCursorController$MiuiHandleView;->getHotspotLocationOnScreen([I)V

    .line 554
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mCoords:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v1}, Landroid/widget/MiuiCursorController$MiuiHandleView;->getHandleNoShadowRealHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public computePanelXPosition()I
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    iget-object v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mCoords:[I

    invoke-virtual {v0, v1}, Landroid/widget/MiuiCursorController$MiuiHandleView;->getHotspotLocationOnScreen([I)V

    .line 547
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mCoords:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public computerPanePositionOnEndTop()I
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    iget-object v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mCoords:[I

    invoke-virtual {v0, v1}, Landroid/widget/MiuiCursorController$MiuiHandleView;->getHotspotLocationOnScreen([I)V

    .line 560
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mCoords:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 501
    const-string v0, "MiuiCursorController"

    const-string v1, "InsertionPointCursorController is hidden including all panels and handle"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->hide()V

    .line 503
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->hide()V

    .line 504
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->hide()V

    .line 505
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onClipBoardPancelClick()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->hide()V

    .line 428
    return-void
.end method

.method public onHandleTouchEvent(Landroid/widget/MiuiCursorController$MiuiHandleView;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "handle"
    .parameter "ev"

    .prologue
    .line 579
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 606
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 581
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPreviousDownTime:J

    goto :goto_0

    .line 585
    :pswitch_1
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPreviousDownTime:J

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 587
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->hide()V

    goto :goto_0

    .line 590
    :cond_1
    const-string v0, "MiuiCursorController"

    const-string v1, "InsertionPointCursorController onHandleTouchEvent() for ACTION_UP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mOwner:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->needInsertPanel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    invoke-direct {p0}, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->showInsertionPanel()V

    goto :goto_0

    .line 598
    :pswitch_2
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 599
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->hide()V

    .line 602
    :cond_2
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->onHandleMoved()V

    goto :goto_0

    .line 579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 567
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 574
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 569
    :pswitch_0
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->hide()V

    goto :goto_0

    .line 567
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method setupClipBoardPanel(Landroid/content/ClipData;Landroid/view/View$OnClickListener;)V
    .locals 13
    .parameter "clip_not_used"
    .parameter "l"

    .prologue
    const/4 v12, 0x3

    const/4 v11, -0x1

    const/4 v10, -0x2

    .line 431
    iget-object v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    const v9, 0x60b0068

    invoke-virtual {v8, v9}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->getElement(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 432
    .local v6, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 434
    invoke-static {}, Lmiui/content/ClipServiceManagerExtra;->getInstance()Lmiui/content/ClipServiceManagerExtra;

    move-result-object v8

    invoke-virtual {v8, v12}, Lmiui/content/ClipServiceManagerExtra;->getData(I)Ljava/util/List;

    move-result-object v0

    .line 435
    .local v0, datas:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 436
    .local v1, historyCount:I
    invoke-static {v12, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .line 437
    .local v4, lastIndex:I
    iget-object v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 438
    .local v5, layoutInflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-gt v2, v4, :cond_4

    .line 439
    const v8, 0x6030019

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 440
    .local v7, tv:Landroid/widget/TextView;
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    if-nez v4, :cond_1

    .line 442
    iget v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mMiddleCornerButtonBgId:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 452
    :goto_1
    invoke-virtual {v7, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v11, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    if-eq v2, v4, :cond_0

    .line 455
    new-instance v3, Landroid/widget/ImageView;

    iget-object v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 456
    .local v3, im:Landroid/widget/ImageView;
    const v8, 0x60200d3

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 457
    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 458
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v11, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    .end local v3           #im:Landroid/widget/ImageView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 444
    :cond_1
    if-nez v2, :cond_2

    .line 445
    iget v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mUpCornerButtonBgId:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 446
    :cond_2
    if-ne v2, v4, :cond_3

    .line 447
    iget v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mDownCornerButtonBgId:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 449
    :cond_3
    iget v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mMiddleVerticalNoCornerButtonBgId:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 461
    .end local v7           #tv:Landroid/widget/TextView;
    :cond_4
    iget-object v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v8}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 462
    return-void
.end method

.method public show()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 467
    const/4 v8, 0x4

    new-array v0, v8, [I

    fill-array-data v0, :array_0

    .line 471
    .local v0, buttons:[I
    const/4 v8, 0x3

    new-array v4, v8, [I

    fill-array-data v4, :array_1

    .line 474
    .local v4, separators:[I
    iget-object v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mOwner:Landroid/widget/Editor;

    invoke-virtual {v8, v0}, Landroid/widget/Editor;->getFloatPanelShowHides([I)Ljava/util/ArrayList;

    move-result-object v5

    .line 475
    .local v5, showHides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const-string v8, "MiuiCursorController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "InsertionPointCursorController show:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v8, v0, v4, v5}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->showHideButtons([I[ILjava/util/ArrayList;)V

    .line 478
    const-string v8, "MiuiCursorController"

    const-string v9, "InsertionPointCursorController is shown with hidden panels and shown handle"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v8}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->hide()V

    .line 480
    iget-object v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v8}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->hide()V

    .line 482
    iget-object v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 483
    .local v2, offset:I
    iget v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mTextOffset:I

    if-eq v2, v8, :cond_0

    iget-object v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->length()I

    move-result v8

    if-gtz v8, :cond_2

    :cond_0
    move v3, v7

    .line 484
    .local v3, oneShot:Z
    :goto_0
    iput v2, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mTextOffset:I

    .line 486
    iget-object v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mOwner:Landroid/widget/Editor;

    invoke-virtual {v8}, Landroid/widget/Editor;->hasMagnifierController()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mOwner:Landroid/widget/Editor;

    invoke-virtual {v8}, Landroid/widget/Editor;->getMagnifierController()Landroid/widget/MagnifierController;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/MagnifierController;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_3

    move v1, v7

    .line 487
    .local v1, isShowMag:Z
    :goto_1
    iget-object v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v8}, Landroid/widget/MiuiCursorController$MiuiHandleView;->show()V

    .line 488
    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 489
    const-string v8, "MiuiCursorController"

    const-string v9, "Show InsertionPointCursorController in one shot context"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mOwner:Landroid/widget/Editor;

    invoke-virtual {v8}, Landroid/widget/Editor;->needInsertPanel()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    if-eqz v8, :cond_4

    .line 491
    invoke-direct {p0}, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->showInsertionPanel()V

    .line 496
    :goto_2
    iget-boolean v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    if-nez v8, :cond_5

    :goto_3
    iput-boolean v7, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    .line 498
    :cond_1
    return-void

    .end local v1           #isShowMag:Z
    .end local v3           #oneShot:Z
    :cond_2
    move v3, v6

    .line 483
    goto :goto_0

    .restart local v3       #oneShot:Z
    :cond_3
    move v1, v6

    .line 486
    goto :goto_1

    .line 494
    .restart local v1       #isShowMag:Z
    :cond_4
    iget-object v8, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v8}, Landroid/widget/MiuiCursorController$MiuiHandleView;->hide()V

    goto :goto_2

    :cond_5
    move v7, v6

    .line 496
    goto :goto_3

    .line 467
    :array_0
    .array-data 0x4
        0x3at 0x0t 0xbt 0x6t
        0x3bt 0x0t 0xbt 0x6t
        0x38t 0x0t 0xbt 0x6t
        0x39t 0x0t 0xbt 0x6t
    .end array-data

    .line 471
    :array_1
    .array-data 0x4
        0x81t 0x0t 0xbt 0x6t
        0x82t 0x0t 0xbt 0x6t
        0x83t 0x0t 0xbt 0x6t
    .end array-data
.end method

.method public updatePosition()V
    .locals 3

    .prologue
    .line 512
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iput v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mTextOffset:I

    .line 514
    iget v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mTextOffset:I

    if-gez v0, :cond_1

    .line 516
    const-string v0, "MiuiCursorController"

    const-string v1, "Update cursor controller position called with no cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->hide()V

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    iget v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mTextOffset:I

    invoke-virtual {v0, v1}, Landroid/widget/MiuiCursorController$MiuiHandleView;->isOffsetVisible(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 522
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->hide()V

    .line 523
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->hide()V

    goto :goto_0

    .line 527
    :cond_2
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 528
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    iget v1, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mTextOffset:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/MiuiCursorController$MiuiHandleView;->positionAtCursorOffset(IZ)V

    .line 530
    :cond_3
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 531
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->hide()V

    .line 532
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 534
    :cond_4
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->hide()V

    .line 536
    iget-object v0, p0, Landroid/widget/MiuiCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    goto :goto_0
.end method
