.class public Landroid/webkit/WebInputInsertionFloatPanel;
.super Landroid/widget/FrameLayout;
.source "WebInputInsertionFloatPanel.java"


# instance fields
.field private cursorRect:Landroid/graphics/Rect;

.field private mBottomOffset:I

.field private mRoundCornerWidth:I

.field private mTopOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebInputInsertionFloatPanel;->cursorRect:Landroid/graphics/Rect;

    .line 28
    invoke-direct {p0, p1}, Landroid/webkit/WebInputInsertionFloatPanel;->initArrowOffset(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebInputInsertionFloatPanel;->cursorRect:Landroid/graphics/Rect;

    .line 33
    invoke-direct {p0, p1}, Landroid/webkit/WebInputInsertionFloatPanel;->initArrowOffset(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebInputInsertionFloatPanel;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Landroid/webkit/WebInputInsertionFloatPanel;->cursorRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/webkit/WebViewClassic;)Landroid/webkit/WebInputInsertionFloatPanel;
    .locals 8
    .parameter "context"
    .parameter "wvclassic"

    .prologue
    const/4 v5, 0x0

    .line 43
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x6030070

    invoke-virtual {v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebInputInsertionFloatPanel;

    .line 44
    .local v0, instance:Landroid/webkit/WebInputInsertionFloatPanel;
    const v6, 0x60b003a

    invoke-virtual {v0, v6}, Landroid/webkit/WebInputInsertionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 45
    .local v4, selectView:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 46
    new-instance v6, Landroid/webkit/WebInputInsertionFloatPanel$1;

    invoke-direct {v6, p1, v0}, Landroid/webkit/WebInputInsertionFloatPanel$1;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebInputInsertionFloatPanel;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v6, 0x60b003b

    invoke-virtual {v0, v6}, Landroid/webkit/WebInputInsertionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 61
    .local v3, selectAllView:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 62
    new-instance v6, Landroid/webkit/WebInputInsertionFloatPanel$2;

    invoke-direct {v6, p1, v0}, Landroid/webkit/WebInputInsertionFloatPanel$2;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebInputInsertionFloatPanel;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v6, 0x60b0038

    invoke-virtual {v0, v6}, Landroid/webkit/WebInputInsertionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, pasteView:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 78
    new-instance v5, Landroid/webkit/WebInputInsertionFloatPanel$3;

    invoke-direct {v5, p1, v0}, Landroid/webkit/WebInputInsertionFloatPanel$3;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebInputInsertionFloatPanel;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-virtual {p1}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object v2, v5

    check-cast v2, Landroid/view/ViewGroup;

    .line 91
    .local v2, rootView:Landroid/view/ViewGroup;
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 92
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/webkit/WebInputInsertionFloatPanel;->setVisibility(I)V

    .line 93
    invoke-direct {v0, p0}, Landroid/webkit/WebInputInsertionFloatPanel;->initArrowOffset(Landroid/content/Context;)V

    .line 94
    .end local v0           #instance:Landroid/webkit/WebInputInsertionFloatPanel;
    .end local v1           #pasteView:Landroid/view/View;
    .end local v2           #rootView:Landroid/view/ViewGroup;
    .end local v3           #selectAllView:Landroid/view/View;
    :goto_0
    return-object v0

    .line 56
    .restart local v0       #instance:Landroid/webkit/WebInputInsertionFloatPanel;
    :cond_0
    const-string v6, "show WebInputInsertionFloatPanel"

    const-string v7, "no select view."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 57
    goto :goto_0

    .line 72
    .restart local v3       #selectAllView:Landroid/view/View;
    :cond_1
    const-string v6, "show WebInputInsertionFloatPanel"

    const-string v7, "no selectAll view."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 73
    goto :goto_0

    .line 87
    .restart local v1       #pasteView:Landroid/view/View;
    :cond_2
    const-string v6, "show WebInputInsertionFloatPanel"

    const-string v7, "no paste view."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 88
    goto :goto_0
.end method

.method private initArrowOffset(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x60a0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/webkit/WebInputInsertionFloatPanel;->mTopOffset:I

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x60a0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/webkit/WebInputInsertionFloatPanel;->mBottomOffset:I

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x60a0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/webkit/WebInputInsertionFloatPanel;->mRoundCornerWidth:I

    .line 40
    return-void
.end method


# virtual methods
.method public setCursorRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/webkit/WebInputInsertionFloatPanel;->cursorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 99
    return-void
.end method

.method public showAt(Landroid/graphics/Point;Landroid/graphics/Point;IIIZ)V
    .locals 22
    .parameter "cursorTop"
    .parameter "cursorBottom"
    .parameter "locationLeft"
    .parameter "locationTop"
    .parameter "screenWidth"
    .parameter "hasEditText"

    .prologue
    .line 101
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebInputInsertionFloatPanel;->setVisibility(I)V

    .line 102
    const v19, 0x60b0032

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebInputInsertionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 103
    .local v14, upArrow:Landroid/view/View;
    const v19, 0x60b002f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebInputInsertionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 104
    .local v4, downArrow:Landroid/view/View;
    const v19, 0x60b003a

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebInputInsertionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 105
    .local v11, selectView:Landroid/view/View;
    const v19, 0x60b003b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebInputInsertionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 106
    .local v10, selectAllView:Landroid/view/View;
    const v19, 0x60b0038

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebInputInsertionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 107
    .local v9, pasteView:Landroid/widget/TextView;
    const v19, 0x60b0081

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebInputInsertionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 108
    .local v12, separator1:Landroid/view/View;
    const v19, 0x60b0082

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebInputInsertionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 109
    .local v13, separator2:Landroid/view/View;
    const v19, 0x60b0068

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebInputInsertionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 111
    .local v6, panel:Landroid/widget/LinearLayout;
    if-eqz v14, :cond_0

    if-eqz v4, :cond_0

    if-eqz v6, :cond_0

    if-eqz v11, :cond_0

    if-eqz v10, :cond_0

    if-eqz v12, :cond_0

    if-eqz v13, :cond_0

    if-nez v9, :cond_1

    .line 113
    :cond_0
    const-string v19, "show WebInputInsertionFloatPanel"

    const-string v20, "couldn\'t find view"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    return-void

    .line 117
    :cond_1
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    if-nez p6, :cond_6

    .line 119
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 120
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 121
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 122
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 123
    const v19, 0x6020332

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 132
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebInputInsertionFloatPanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x6020329

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 133
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->measure(II)V

    .line 134
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v8

    .line 135
    .local v8, panelWidth:I
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v7

    .line 136
    .local v7, panelHeight:I
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/view/View;->measure(II)V

    .line 137
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 138
    .local v15, upHeight:I
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    .line 139
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 141
    .local v5, downHeight:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    div-int/lit8 v20, v8, 0x2

    sub-int v17, v19, v20

    .line 142
    .local v17, x:I
    move/from16 v0, v17

    move/from16 v1, p3

    if-ge v0, v1, :cond_2

    .line 143
    move/from16 v17, p3

    .line 144
    :cond_2
    add-int v19, v17, v8

    add-int v20, p3, p5

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_3

    .line 145
    add-int v19, p3, p5

    sub-int v17, v19, v8

    .line 146
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    sub-int v19, v19, v7

    sub-int v19, v19, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebInputInsertionFloatPanel;->mBottomOffset:I

    move/from16 v20, v0

    add-int v18, v19, v20

    .line 147
    .local v18, y:I
    move/from16 v0, v18

    move/from16 v1, p4

    if-ge v0, v1, :cond_4

    .line 148
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    add-int v19, v19, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebInputInsertionFloatPanel;->mTopOffset:I

    move/from16 v20, v0

    sub-int v18, v19, v20

    .line 150
    :cond_4
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    add-int v19, v19, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebInputInsertionFloatPanel;->mTopOffset:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    const/16 v16, 0x1

    .line 151
    .local v16, upOrDown:Z
    :goto_2
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    .line 152
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 155
    if-nez v16, :cond_5

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebInputInsertionFloatPanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x6020328

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 159
    :cond_5
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setX(F)V

    .line 160
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setY(F)V

    .line 161
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 163
    if-eqz v16, :cond_8

    move-object v2, v14

    .line 164
    .local v2, arrow:Landroid/view/View;
    :goto_3
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 165
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 168
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebInputInsertionFloatPanel;->mRoundCornerWidth:I

    move/from16 v20, v0

    add-int v20, v20, v17

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    .line 169
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebInputInsertionFloatPanel;->mRoundCornerWidth:I

    move/from16 v19, v0

    add-int v3, v17, v19

    .line 176
    .local v3, arrowX:I
    :goto_4
    if-eqz v16, :cond_b

    .line 177
    int-to-float v0, v3

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/view/View;->setX(F)V

    .line 178
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    sub-int v19, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebInputInsertionFloatPanel;->mTopOffset:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/view/View;->setY(F)V

    .line 183
    :goto_5
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_0

    .line 125
    .end local v2           #arrow:Landroid/view/View;
    .end local v3           #arrowX:I
    .end local v5           #downHeight:I
    .end local v7           #panelHeight:I
    .end local v8           #panelWidth:I
    .end local v15           #upHeight:I
    .end local v16           #upOrDown:Z
    .end local v17           #x:I
    .end local v18           #y:I
    :cond_6
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 126
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 127
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 128
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 129
    const v19, 0x6020334

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 150
    .restart local v5       #downHeight:I
    .restart local v7       #panelHeight:I
    .restart local v8       #panelWidth:I
    .restart local v15       #upHeight:I
    .restart local v17       #x:I
    .restart local v18       #y:I
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_2

    .restart local v16       #upOrDown:Z
    :cond_8
    move-object v2, v4

    .line 163
    goto/16 :goto_3

    .line 170
    .restart local v2       #arrow:Landroid/view/View;
    :cond_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebInputInsertionFloatPanel;->mRoundCornerWidth:I

    move/from16 v20, v0

    sub-int v20, v17, v20

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_a

    .line 171
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v19

    add-int v19, v19, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebInputInsertionFloatPanel;->mRoundCornerWidth:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    sub-int v3, v19, v20

    .restart local v3       #arrowX:I
    goto/16 :goto_4

    .line 173
    .end local v3           #arrowX:I
    :cond_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v3, v19, v20

    .restart local v3       #arrowX:I
    goto/16 :goto_4

    .line 180
    :cond_b
    int-to-float v0, v3

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/view/View;->setX(F)V

    .line 181
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v19

    add-int v19, v19, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebInputInsertionFloatPanel;->mBottomOffset:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/view/View;->setY(F)V

    goto/16 :goto_5
.end method
