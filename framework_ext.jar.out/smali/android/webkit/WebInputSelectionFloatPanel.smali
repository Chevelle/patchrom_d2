.class public Landroid/webkit/WebInputSelectionFloatPanel;
.super Landroid/widget/FrameLayout;
.source "WebInputSelectionFloatPanel.java"


# instance fields
.field private mBottomOffset:I

.field private mRoundCornerWidth:I

.field private mTopOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0, p1}, Landroid/webkit/WebInputSelectionFloatPanel;->initArrowOffset(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p1}, Landroid/webkit/WebInputSelectionFloatPanel;->initArrowOffset(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/webkit/WebViewClassic;)Landroid/webkit/WebInputSelectionFloatPanel;
    .locals 8
    .parameter "context"
    .parameter "wvclassic"

    .prologue
    const/4 v5, 0x0

    .line 41
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x6030071

    invoke-virtual {v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebInputSelectionFloatPanel;

    .line 42
    .local v2, instance:Landroid/webkit/WebInputSelectionFloatPanel;
    const v6, 0x60b0036

    invoke-virtual {v2, v6}, Landroid/webkit/WebInputSelectionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, copyView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 44
    new-instance v6, Landroid/webkit/WebInputSelectionFloatPanel$1;

    invoke-direct {v6, p1, v2}, Landroid/webkit/WebInputSelectionFloatPanel$1;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebInputSelectionFloatPanel;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v6, 0x60b0037

    invoke-virtual {v2, v6}, Landroid/webkit/WebInputSelectionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 58
    .local v1, cutView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 59
    new-instance v6, Landroid/webkit/WebInputSelectionFloatPanel$2;

    invoke-direct {v6, p1, v2}, Landroid/webkit/WebInputSelectionFloatPanel$2;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebInputSelectionFloatPanel;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v6, 0x60b0038

    invoke-virtual {v2, v6}, Landroid/webkit/WebInputSelectionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 73
    .local v3, pasteView:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 74
    new-instance v5, Landroid/webkit/WebInputSelectionFloatPanel$3;

    invoke-direct {v5, p1, v2}, Landroid/webkit/WebInputSelectionFloatPanel$3;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebInputSelectionFloatPanel;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {p1}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object v4, v5

    check-cast v4, Landroid/view/ViewGroup;

    .line 87
    .local v4, rootView:Landroid/view/ViewGroup;
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/webkit/WebInputSelectionFloatPanel;->setVisibility(I)V

    .line 89
    invoke-direct {v2, p0}, Landroid/webkit/WebInputSelectionFloatPanel;->initArrowOffset(Landroid/content/Context;)V

    .line 90
    .end local v1           #cutView:Landroid/view/View;
    .end local v2           #instance:Landroid/webkit/WebInputSelectionFloatPanel;
    .end local v3           #pasteView:Landroid/view/View;
    .end local v4           #rootView:Landroid/view/ViewGroup;
    :goto_0
    return-object v2

    .line 53
    .restart local v2       #instance:Landroid/webkit/WebInputSelectionFloatPanel;
    :cond_0
    const-string v6, "show WebInputSelectionFloatPanel"

    const-string v7, "no copy view."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 54
    goto :goto_0

    .line 68
    .restart local v1       #cutView:Landroid/view/View;
    :cond_1
    const-string v6, "show WebInputSelectionFloatPanel"

    const-string v7, "no cut view."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 69
    goto :goto_0

    .line 83
    .restart local v3       #pasteView:Landroid/view/View;
    :cond_2
    const-string v6, "show WebInputSelectionFloatPanel"

    const-string v7, "no paste view."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 84
    goto :goto_0
.end method

.method private initArrowOffset(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x60a0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/webkit/WebInputSelectionFloatPanel;->mTopOffset:I

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x60a0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/webkit/WebInputSelectionFloatPanel;->mBottomOffset:I

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x60a0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/webkit/WebInputSelectionFloatPanel;->mRoundCornerWidth:I

    .line 38
    return-void
.end method


# virtual methods
.method public showAt(IIZLandroid/graphics/Rect;I)V
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "upOrDown"
    .parameter "handleRect"
    .parameter "scrollX"

    .prologue
    const/16 v8, 0x8

    const/4 v9, 0x0

    .line 94
    invoke-virtual {p0, v9}, Landroid/webkit/WebInputSelectionFloatPanel;->setVisibility(I)V

    .line 95
    const v7, 0x60b0032

    invoke-virtual {p0, v7}, Landroid/webkit/WebInputSelectionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 96
    .local v6, upArrow:Landroid/view/View;
    const v7, 0x60b002f

    invoke-virtual {p0, v7}, Landroid/webkit/WebInputSelectionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 97
    .local v2, downArrow:Landroid/view/View;
    const v7, 0x60b0068

    invoke-virtual {p0, v7}, Landroid/webkit/WebInputSelectionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 98
    .local v4, panel:Landroid/widget/LinearLayout;
    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    if-nez v4, :cond_1

    .line 99
    :cond_0
    const-string v7, "show WebInputSelectionFloatPanel"

    const-string v8, "couldn\'t find view"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 104
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 105
    if-eqz p3, :cond_2

    move-object v0, v6

    .line 108
    .local v0, arrow:Landroid/view/View;
    :goto_1
    if-eqz p3, :cond_3

    .line 109
    iget-object v7, p0, Landroid/webkit/WebInputSelectionFloatPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x6020329

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 110
    .local v5, panelBg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 116
    :goto_2
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 117
    int-to-float v7, p1

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setX(F)V

    .line 118
    int-to-float v7, p2

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setY(F)V

    .line 119
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 121
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 122
    invoke-virtual {v0, v9, v9}, Landroid/view/View;->measure(II)V

    .line 124
    invoke-virtual {v4, v9, v9}, Landroid/widget/LinearLayout;->measure(II)V

    .line 125
    iget v7, p4, Landroid/graphics/Rect;->left:I

    iget v8, p4, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    sub-int v3, v7, p5

    .line 127
    .local v3, middleHandle:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v3, v7

    iget v8, p0, Landroid/webkit/WebInputSelectionFloatPanel;->mRoundCornerWidth:I

    add-int/2addr v8, p1

    if-ge v7, v8, :cond_4

    .line 128
    iget v7, p0, Landroid/webkit/WebInputSelectionFloatPanel;->mRoundCornerWidth:I

    add-int v1, p1, v7

    .line 135
    .local v1, arrowX:I
    :goto_3
    if-eqz p3, :cond_6

    .line 136
    int-to-float v7, v1

    invoke-virtual {v0, v7}, Landroid/view/View;->setX(F)V

    .line 137
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, p2, v7

    iget v8, p0, Landroid/webkit/WebInputSelectionFloatPanel;->mTopOffset:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setY(F)V

    .line 142
    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .end local v0           #arrow:Landroid/view/View;
    .end local v1           #arrowX:I
    .end local v3           #middleHandle:I
    .end local v5           #panelBg:Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object v0, v2

    .line 105
    goto :goto_1

    .line 112
    .restart local v0       #arrow:Landroid/view/View;
    :cond_3
    iget-object v7, p0, Landroid/webkit/WebInputSelectionFloatPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x6020328

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 113
    .restart local v5       #panelBg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 129
    .restart local v3       #middleHandle:I
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v3

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, p1

    iget v9, p0, Landroid/webkit/WebInputSelectionFloatPanel;->mRoundCornerWidth:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_5

    .line 130
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, p1

    iget v8, p0, Landroid/webkit/WebInputSelectionFloatPanel;->mRoundCornerWidth:I

    sub-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int v1, v7, v8

    .restart local v1       #arrowX:I
    goto :goto_3

    .line 132
    .end local v1           #arrowX:I
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v1, v3, v7

    .restart local v1       #arrowX:I
    goto :goto_3

    .line 139
    :cond_6
    int-to-float v7, v1

    invoke-virtual {v0, v7}, Landroid/view/View;->setX(F)V

    .line 140
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, p2

    iget v8, p0, Landroid/webkit/WebInputSelectionFloatPanel;->mBottomOffset:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setY(F)V

    goto :goto_4
.end method
