.class public Landroid/webkit/SelectionFloatPanel;
.super Landroid/widget/FrameLayout;
.source "SelectionFloatPanel.java"


# static fields
.field private static sHeight:I

.field private static sWidth:I


# instance fields
.field private mBottomOffset:I

.field private mRoundCornerWidth:I

.field private mTopOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    sput v0, Landroid/webkit/SelectionFloatPanel;->sHeight:I

    .line 20
    sput v0, Landroid/webkit/SelectionFloatPanel;->sWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0, p1}, Landroid/webkit/SelectionFloatPanel;->initArrowOffset(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0, p1}, Landroid/webkit/SelectionFloatPanel;->initArrowOffset(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/webkit/WebViewClassic;)Landroid/webkit/SelectionFloatPanel;
    .locals 11
    .parameter "context"
    .parameter "wvclassic"

    .prologue
    const/4 v8, 0x0

    .line 42
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x6030016

    invoke-virtual {v9, v10, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/SelectionFloatPanel;

    .line 43
    .local v0, instance:Landroid/webkit/SelectionFloatPanel;
    new-instance v1, Landroid/webkit/SelectionFloatPanel$1;

    invoke-direct {v1, p1, v0}, Landroid/webkit/SelectionFloatPanel$1;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/SelectionFloatPanel;)V

    .line 52
    .local v1, l:Landroid/view/View$OnClickListener;
    const v9, 0x60b0036

    invoke-virtual {v0, v9}, Landroid/webkit/SelectionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 53
    .local v4, vCopy:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 54
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    new-instance v3, Landroid/webkit/SelectionFloatPanel$2;

    invoke-direct {v3, p1, v0}, Landroid/webkit/SelectionFloatPanel$2;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/SelectionFloatPanel;)V

    .line 68
    .local v3, selectAllListener:Landroid/view/View$OnClickListener;
    const v9, 0x60b003b

    invoke-virtual {v0, v9}, Landroid/webkit/SelectionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 69
    .local v5, vSelectAll:Landroid/view/View;
    if-eqz v5, :cond_1

    .line 70
    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    new-instance v7, Landroid/webkit/SelectionFloatPanel$3;

    invoke-direct {v7, p1, v0}, Landroid/webkit/SelectionFloatPanel$3;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/SelectionFloatPanel;)V

    .line 84
    .local v7, webSearchListener:Landroid/view/View$OnClickListener;
    const v9, 0x60b003c

    invoke-virtual {v0, v9}, Landroid/webkit/SelectionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 85
    .local v6, vWebSearch:Landroid/view/View;
    if-eqz v6, :cond_2

    .line 86
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {p1}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    move-object v2, v8

    check-cast v2, Landroid/view/ViewGroup;

    .line 93
    .local v2, rootView:Landroid/view/ViewGroup;
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 94
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/webkit/SelectionFloatPanel;->setVisibility(I)V

    .line 95
    invoke-direct {v0, p0}, Landroid/webkit/SelectionFloatPanel;->initArrowOffset(Landroid/content/Context;)V

    .line 96
    .end local v0           #instance:Landroid/webkit/SelectionFloatPanel;
    .end local v2           #rootView:Landroid/view/ViewGroup;
    .end local v3           #selectAllListener:Landroid/view/View$OnClickListener;
    .end local v5           #vSelectAll:Landroid/view/View;
    .end local v6           #vWebSearch:Landroid/view/View;
    .end local v7           #webSearchListener:Landroid/view/View$OnClickListener;
    :goto_0
    return-object v0

    .line 56
    .restart local v0       #instance:Landroid/webkit/SelectionFloatPanel;
    :cond_0
    const-string v9, "showFloat"

    const-string v10, "no copy view."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 57
    goto :goto_0

    .line 72
    .restart local v3       #selectAllListener:Landroid/view/View$OnClickListener;
    .restart local v5       #vSelectAll:Landroid/view/View;
    :cond_1
    const-string v9, "showFloat"

    const-string v10, "no selectAll view."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 73
    goto :goto_0

    .line 88
    .restart local v6       #vWebSearch:Landroid/view/View;
    .restart local v7       #webSearchListener:Landroid/view/View$OnClickListener;
    :cond_2
    const-string v9, "showFloat"

    const-string v10, "no webSearch view."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 89
    goto :goto_0
.end method

.method private initArrowOffset(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x60a0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/webkit/SelectionFloatPanel;->mTopOffset:I

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x60a0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/webkit/SelectionFloatPanel;->mBottomOffset:I

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x60a0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/webkit/SelectionFloatPanel;->mRoundCornerWidth:I

    .line 39
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 102
    invoke-virtual {p0}, Landroid/webkit/SelectionFloatPanel;->getMeasuredHeight()I

    move-result v0

    sput v0, Landroid/webkit/SelectionFloatPanel;->sHeight:I

    .line 103
    invoke-virtual {p0}, Landroid/webkit/SelectionFloatPanel;->getMeasuredWidth()I

    move-result v0

    sput v0, Landroid/webkit/SelectionFloatPanel;->sWidth:I

    .line 104
    return-void
.end method

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

    .line 115
    invoke-virtual {p0, v9}, Landroid/webkit/SelectionFloatPanel;->setVisibility(I)V

    .line 116
    const v7, 0x60b0032

    invoke-virtual {p0, v7}, Landroid/webkit/SelectionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 117
    .local v6, upArrow:Landroid/view/View;
    const v7, 0x60b002f

    invoke-virtual {p0, v7}, Landroid/webkit/SelectionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 118
    .local v2, downArrow:Landroid/view/View;
    const v7, 0x60b0068

    invoke-virtual {p0, v7}, Landroid/webkit/SelectionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 119
    .local v4, panel:Landroid/widget/LinearLayout;
    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    if-nez v4, :cond_1

    .line 120
    :cond_0
    const-string v7, "FloatPanelView"

    const-string v8, "couldn\'t find view"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 125
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 126
    if-eqz p3, :cond_2

    move-object v0, v6

    .line 129
    .local v0, arrow:Landroid/view/View;
    :goto_1
    if-eqz p3, :cond_3

    .line 130
    iget-object v7, p0, Landroid/webkit/SelectionFloatPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x6020329

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 131
    .local v5, panelBg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 137
    :goto_2
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    int-to-float v7, p1

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setX(F)V

    .line 139
    int-to-float v7, p2

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setY(F)V

    .line 140
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 142
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 143
    invoke-virtual {v0, v9, v9}, Landroid/view/View;->measure(II)V

    .line 145
    iget v7, p4, Landroid/graphics/Rect;->left:I

    iget v8, p4, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    sub-int v3, v7, p5

    .line 147
    .local v3, middleHandle:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v3, v7

    iget v8, p0, Landroid/webkit/SelectionFloatPanel;->mRoundCornerWidth:I

    add-int/2addr v8, p1

    if-ge v7, v8, :cond_4

    .line 148
    iget v7, p0, Landroid/webkit/SelectionFloatPanel;->mRoundCornerWidth:I

    add-int v1, p1, v7

    .line 155
    .local v1, arrowX:I
    :goto_3
    if-eqz p3, :cond_6

    .line 156
    int-to-float v7, v1

    invoke-virtual {v0, v7}, Landroid/view/View;->setX(F)V

    .line 157
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, p2, v7

    iget v8, p0, Landroid/webkit/SelectionFloatPanel;->mTopOffset:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setY(F)V

    .line 162
    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .end local v0           #arrow:Landroid/view/View;
    .end local v1           #arrowX:I
    .end local v3           #middleHandle:I
    .end local v5           #panelBg:Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object v0, v2

    .line 126
    goto :goto_1

    .line 133
    .restart local v0       #arrow:Landroid/view/View;
    :cond_3
    iget-object v7, p0, Landroid/webkit/SelectionFloatPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x6020328

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 134
    .restart local v5       #panelBg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 149
    .restart local v3       #middleHandle:I
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v3

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, p1

    iget v9, p0, Landroid/webkit/SelectionFloatPanel;->mRoundCornerWidth:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_5

    .line 150
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, p1

    iget v8, p0, Landroid/webkit/SelectionFloatPanel;->mRoundCornerWidth:I

    sub-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int v1, v7, v8

    .restart local v1       #arrowX:I
    goto :goto_3

    .line 152
    .end local v1           #arrowX:I
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v1, v3, v7

    .restart local v1       #arrowX:I
    goto :goto_3

    .line 159
    :cond_6
    int-to-float v7, v1

    invoke-virtual {v0, v7}, Landroid/view/View;->setX(F)V

    .line 160
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, p2

    iget v8, p0, Landroid/webkit/SelectionFloatPanel;->mBottomOffset:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setY(F)V

    goto :goto_4
.end method

.method public viewHeight()I
    .locals 1

    .prologue
    .line 107
    sget v0, Landroid/webkit/SelectionFloatPanel;->sHeight:I

    return v0
.end method

.method public viewWidth()I
    .locals 1

    .prologue
    .line 111
    sget v0, Landroid/webkit/SelectionFloatPanel;->sWidth:I

    return v0
.end method
