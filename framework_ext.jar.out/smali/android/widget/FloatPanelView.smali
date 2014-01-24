.class public Landroid/widget/FloatPanelView;
.super Landroid/widget/FrameLayout;
.source "FloatPanelView.java"


# instance fields
.field private mBottomOffset:I

.field private mIsArrowUp:Z

.field private mPos:I

.field private mRoundCornerWidth:I

.field private mTopOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/FloatPanelView;->initArrowOffset(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FloatPanelView;->initArrowOffset(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private initArrowOffset(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x60a0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/FloatPanelView;->mTopOffset:I

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x60a0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/FloatPanelView;->mBottomOffset:I

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x60a0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/FloatPanelView;->mRoundCornerWidth:I

    .line 33
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 12
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 51
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 52
    const v9, 0x60b0032

    invoke-virtual {p0, v9}, Landroid/widget/FloatPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 53
    .local v8, upArrow:Landroid/view/View;
    const v9, 0x60b002f

    invoke-virtual {p0, v9}, Landroid/widget/FloatPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 54
    .local v3, downArrow:Landroid/view/View;
    const v9, 0x60b0068

    invoke-virtual {p0, v9}, Landroid/widget/FloatPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 55
    .local v5, panel:Landroid/widget/LinearLayout;
    if-eqz v8, :cond_0

    if-eqz v3, :cond_0

    if-nez v5, :cond_1

    .line 56
    :cond_0
    const-string v9, "FloatPanelView"

    const-string v10, "couldn\'t find view"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    return-void

    .line 60
    :cond_1
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 61
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-boolean v9, p0, Landroid/widget/FloatPanelView;->mIsArrowUp:Z

    if-eqz v9, :cond_3

    move-object v0, v8

    :goto_1
    check-cast v0, Landroid/widget/ImageView;

    .line 63
    .local v0, arrow:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 64
    .local v2, arrowWidth:I
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 66
    .local v1, arrowHeight:I
    iget-boolean v9, p0, Landroid/widget/FloatPanelView;->mIsArrowUp:Z

    if-eqz v9, :cond_4

    const/4 v7, 0x0

    .line 67
    .local v7, t:I
    :goto_2
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    iget v9, p0, Landroid/widget/FloatPanelView;->mPos:I

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int v4, v9, v10

    .line 69
    .local v4, l:I
    iget v9, p0, Landroid/widget/FloatPanelView;->mRoundCornerWidth:I

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v10

    add-int/2addr v9, v10

    if-ge v4, v9, :cond_5

    .line 70
    iget v9, p0, Landroid/widget/FloatPanelView;->mRoundCornerWidth:I

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v10

    add-int v4, v9, v10

    .line 73
    :cond_2
    :goto_3
    add-int v9, v4, v2

    add-int v10, v7, v1

    invoke-virtual {v0, v4, v7, v9, v10}, Landroid/widget/ImageView;->layout(IIII)V

    .line 75
    iget-boolean v9, p0, Landroid/widget/FloatPanelView;->mIsArrowUp:Z

    if-eqz v9, :cond_6

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v9

    iget v10, p0, Landroid/widget/FloatPanelView;->mTopOffset:I

    sub-int v7, v9, v10

    .line 76
    :goto_4
    iget-boolean v9, p0, Landroid/widget/FloatPanelView;->mIsArrowUp:Z

    if-eqz v9, :cond_7

    .line 77
    iget-object v9, p0, Landroid/widget/FloatPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x6020329

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 78
    .local v6, panelBg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 83
    :goto_5
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v9

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v10

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {v5, v9, v7, v10, v11}, Landroid/widget/LinearLayout;->layout(IIII)V

    goto/16 :goto_0

    .end local v0           #arrow:Landroid/widget/ImageView;
    .end local v1           #arrowHeight:I
    .end local v2           #arrowWidth:I
    .end local v4           #l:I
    .end local v6           #panelBg:Landroid/graphics/drawable/Drawable;
    .end local v7           #t:I
    :cond_3
    move-object v0, v3

    .line 62
    goto :goto_1

    .line 66
    .restart local v0       #arrow:Landroid/widget/ImageView;
    .restart local v1       #arrowHeight:I
    .restart local v2       #arrowWidth:I
    :cond_4
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v9

    iget v10, p0, Landroid/widget/FloatPanelView;->mBottomOffset:I

    sub-int v7, v9, v10

    goto :goto_2

    .line 71
    .restart local v4       #l:I
    .restart local v7       #t:I
    :cond_5
    sub-int v9, p4, v2

    iget v10, p0, Landroid/widget/FloatPanelView;->mRoundCornerWidth:I

    sub-int/2addr v9, v10

    if-le v4, v9, :cond_2

    .line 72
    sub-int v9, p4, v2

    iget v10, p0, Landroid/widget/FloatPanelView;->mRoundCornerWidth:I

    sub-int v4, v9, v10

    goto :goto_3

    .line 75
    :cond_6
    const/4 v7, 0x0

    goto :goto_4

    .line 80
    :cond_7
    iget-object v9, p0, Landroid/widget/FloatPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x6020328

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 81
    .restart local v6       #panelBg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5
.end method

.method public setArrow(Z)V
    .locals 1
    .parameter "isUp"

    .prologue
    .line 36
    iget-boolean v0, p0, Landroid/widget/FloatPanelView;->mIsArrowUp:Z

    if-eq p1, v0, :cond_0

    .line 37
    iput-boolean p1, p0, Landroid/widget/FloatPanelView;->mIsArrowUp:Z

    .line 38
    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->requestLayout()V

    .line 40
    :cond_0
    return-void
.end method

.method public setArrowPos(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 44
    iget v0, p0, Landroid/widget/FloatPanelView;->mPos:I

    if-eq p1, v0, :cond_0

    .line 45
    iput p1, p0, Landroid/widget/FloatPanelView;->mPos:I

    .line 46
    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->requestLayout()V

    .line 48
    :cond_0
    return-void
.end method
