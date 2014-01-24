.class public Lmiui/v5/widget/menubar/IconMenuBarView;
.super Landroid/widget/FrameLayout;
.source "IconMenuBarView.java"

# interfaces
.implements Lmiui/v5/widget/menubar/MenuBar$ItemInvoker;
.implements Lmiui/v5/widget/menubar/MenuBarView;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/widget/menubar/IconMenuBarView$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_EXPAND_DURATION:I = 0x12c


# instance fields
.field private mAnimationPercent:F

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mDimContainer:Landroid/view/View;

.field private mExpandAnimator:Landroid/animation/ObjectAnimator;

.field private mExpandDuration:I

.field private mIsExpended:Z

.field private mMaxItems:I

.field private mMenu:Lmiui/v5/widget/menubar/MenuBar;

.field private mMoreIconView:Landroid/view/View;

.field private mPreLayerType:I

.field private mPrimaryContainer:Landroid/widget/LinearLayout;

.field private mPrimaryContainerCollapsedBackground:Landroid/graphics/drawable/Drawable;

.field private mPrimaryContainerExpanedBackground:Landroid/graphics/drawable/Drawable;

.field private mPrimaryContainerHeight:I

.field private mSecondaryContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const-string v0, "AnimationPercent"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mExpandAnimator:Landroid/animation/ObjectAnimator;

    .line 57
    const/16 v0, 0x12c

    iput v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mExpandDuration:I

    .line 58
    return-void
.end method

.method static synthetic access$000(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/v5/widget/menubar/IconMenuBarView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mIsExpended:Z

    return v0
.end method

.method static synthetic access$200(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mDimContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerExpanedBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/v5/widget/menubar/IconMenuBarView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lmiui/v5/widget/menubar/IconMenuBarView;->updateMenuState()V

    return-void
.end method

.method static synthetic access$500(Lmiui/v5/widget/menubar/IconMenuBarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPreLayerType:I

    return v0
.end method

.method static synthetic access$600(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerCollapsedBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getAnimatorListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Lmiui/v5/widget/menubar/IconMenuBarView$2;

    invoke-direct {v0, p0}, Lmiui/v5/widget/menubar/IconMenuBarView$2;-><init>(Lmiui/v5/widget/menubar/IconMenuBarView;)V

    iput-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 270
    :cond_0
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method private updateMenuState()V
    .locals 2

    .prologue
    .line 293
    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mMenu:Lmiui/v5/widget/menubar/MenuBar;

    iget-boolean v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mIsExpended:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lmiui/v5/widget/menubar/MenuBar;->dispatchMenuModeChange(I)V

    .line 296
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mMoreIconView:Landroid/view/View;

    iget-boolean v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mIsExpended:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 297
    return-void

    .line 293
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected computeAlpha(FZZ)F
    .locals 3
    .parameter "percent"
    .parameter "fromHasMenuBar"
    .parameter "toHasMenuBar"

    .prologue
    const/high16 v2, 0x4120

    .line 343
    const/high16 v0, 0x3f80

    .line 344
    .local v0, alpha:F
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 352
    :cond_0
    :goto_0
    return v0

    .line 346
    :cond_1
    if-eqz p2, :cond_2

    .line 347
    const/high16 v1, 0x3f80

    sub-float/2addr v1, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    div-float v0, v1, v2

    goto :goto_0

    .line 348
    :cond_2
    if-eqz p3, :cond_0

    .line 349
    mul-float v1, p1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    div-float v0, v1, v2

    goto :goto_0
.end method

.method protected computeTranslationY(FZZ)F
    .locals 8
    .parameter "percent"
    .parameter "fromHasMenuBar"
    .parameter "toHasMenubar"

    .prologue
    const/high16 v7, 0x4000

    const/high16 v6, 0x3f80

    .line 326
    iget v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerHeight:I

    int-to-float v0, v2

    .line 328
    .local v0, height:F
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 329
    float-to-double v2, p1

    const-wide/high16 v4, 0x3fe0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    .line 330
    mul-float/2addr p1, v7

    .line 338
    :cond_0
    :goto_0
    mul-float v1, p1, v0

    .line 339
    .local v1, translationY:F
    return v1

    .line 332
    .end local v1           #translationY:F
    :cond_1
    sub-float v2, v6, p1

    mul-float p1, v7, v2

    goto :goto_0

    .line 334
    :cond_2
    if-eqz p3, :cond_0

    .line 335
    sub-float p1, v6, p1

    goto :goto_0
.end method

.method protected createMoreItemView(Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;
    .locals 5
    .parameter "convertView"
    .parameter "iconMenuBarPrimaryItemResId"
    .parameter "moreIconDrawable"
    .parameter "moreIconBackgroundDrawable"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, itemView:Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;
    if-eqz p1, :cond_1

    .line 156
    move-object v0, p1

    .line 162
    :goto_0
    iget-object v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 163
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x60c01fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {v0, v3, p3, v3, v3}, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 165
    invoke-virtual {v0, v4}, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->setEnabled(Z)V

    .line 166
    invoke-virtual {v0, v4}, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->setCheckable(Z)V

    .line 167
    invoke-virtual {v0, p0}, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    invoke-virtual {v0, p0}, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->setItemInvoker(Lmiui/v5/widget/menubar/MenuBar$ItemInvoker;)V

    .line 169
    iput-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mMoreIconView:Landroid/view/View;

    .line 171
    if-eqz p4, :cond_0

    .line 172
    invoke-virtual {v0, p4}, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 175
    :cond_0
    return-object v0

    .line 158
    .end local v1           #r:Landroid/content/res/Resources;
    :cond_1
    iget-object v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mContext:Landroid/content/Context;

    invoke-static {v2, p2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0           #itemView:Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;
    check-cast v0, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;

    .restart local v0       #itemView:Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;
    goto :goto_0
.end method

.method protected ensureVisibility()V
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/IconMenuBarView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/menubar/IconMenuBarView;->setVisibility(I)V

    .line 113
    :cond_0
    return-void
.end method

.method getAnimationPercent()F
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mAnimationPercent:F

    return v0
.end method

.method public getMaxItems()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mMaxItems:I

    return v0
.end method

.method public getPrimaryContainer()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method getPrimaryContainerHeight()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerHeight:I

    return v0
.end method

.method public getPrimaryContainerLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryContainer()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getSecondaryContainerLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    return-object v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Lmiui/v5/widget/menubar/MenuBar;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 61
    iput-object p1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mMenu:Lmiui/v5/widget/menubar/MenuBar;

    .line 62
    return-void
.end method

.method public invokeItem(Lmiui/v5/widget/menubar/MenuBarItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mMenu:Lmiui/v5/widget/menubar/MenuBar;

    invoke-virtual {v1, p1, v2}, Lmiui/v5/widget/menubar/MenuBar;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    .line 75
    .local v0, invoked:Z
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0, v2}, Lmiui/v5/widget/menubar/IconMenuBarView;->requestExpand(Z)Z

    .line 79
    :cond_0
    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mIsExpended:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 317
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 323
    :goto_0
    return-void

    .line 320
    :pswitch_0
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/IconMenuBarView;->onMoreItemClick()V

    goto :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0x60b00a2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 117
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 119
    const v1, 0x60b00a2

    invoke-virtual {p0, v1}, Lmiui/v5/widget/menubar/IconMenuBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mDimContainer:Landroid/view/View;

    .line 120
    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mDimContainer:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v1, 0x60b00a4

    invoke-virtual {p0, v1}, Lmiui/v5/widget/menubar/IconMenuBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    .line 123
    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    new-instance v2, Lmiui/v5/widget/menubar/IconMenuBarView$1;

    invoke-direct {v2, p0}, Lmiui/v5/widget/menubar/IconMenuBarView$1;-><init>(Lmiui/v5/widget/menubar/IconMenuBarView;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 131
    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 133
    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerCollapsedBackground:Landroid/graphics/drawable/Drawable;

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 135
    .local v0, padding:Landroid/graphics/Rect;
    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerCollapsedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerCollapsedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 137
    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerCollapsedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerHeight:I

    .line 141
    :cond_0
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/IconMenuBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x601007e

    invoke-static {v1, v2}, Lmiui/util/UiUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerExpanedBackground:Landroid/graphics/drawable/Drawable;

    .line 143
    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerExpanedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 144
    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerExpanedBackground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 147
    :cond_1
    const v1, 0x60b00a5

    invoke-virtual {p0, v1}, Lmiui/v5/widget/menubar/IconMenuBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    .line 148
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 192
    sub-int v0, p5, p3

    .line 194
    .local v0, height:I
    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mDimContainer:Landroid/view/View;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 196
    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1, p2, v2, p4, p5}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 199
    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p5

    invoke-virtual {v1, p2, p5, p4, v2}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 200
    return-void
.end method

.method onMoreItemClick()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mMoreIconView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mMoreIconView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lmiui/v5/widget/menubar/IconMenuBarView;->requestExpand(Z)Z

    .line 303
    :cond_0
    return-void

    .line 301
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScroll(FZZ)V
    .locals 4
    .parameter "percent"
    .parameter "fromHasMenuBar"
    .parameter "toHasMenuBar"

    .prologue
    .line 356
    if-eqz p3, :cond_0

    .line 357
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/IconMenuBarView;->ensureVisibility()V

    .line 360
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lmiui/v5/widget/menubar/IconMenuBarView;->computeAlpha(FZZ)F

    move-result v3

    invoke-virtual {p0, v3}, Lmiui/v5/widget/menubar/IconMenuBarView;->setAlpha(F)V

    .line 361
    invoke-virtual {p0, p1, p2, p3}, Lmiui/v5/widget/menubar/IconMenuBarView;->computeTranslationY(FZZ)F

    move-result v2

    .line 362
    .local v2, translationY:F
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 363
    :cond_1
    iget-object v3, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 366
    :cond_2
    iget-object v3, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 367
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 368
    iget-object v3, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 367
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    :cond_3
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 373
    return-void
.end method

.method requestExpand(Z)Z
    .locals 6
    .parameter "expand"

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 208
    iget-object v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mExpandAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mExpandAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mIsExpended:Z

    if-eqz v2, :cond_2

    .line 210
    iget-boolean v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mIsExpended:Z

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mIsExpended:Z

    .line 211
    invoke-direct {p0}, Lmiui/v5/widget/menubar/IconMenuBarView;->updateMenuState()V

    .line 212
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mExpandAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    :goto_0
    move v0, v1

    .line 230
    :cond_1
    return v0

    .line 214
    :cond_2
    iget-boolean v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mIsExpended:Z

    if-eq v2, p1, :cond_1

    .line 217
    iput-boolean p1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mIsExpended:Z

    .line 218
    if-eqz p1, :cond_3

    .line 219
    iget-object v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mExpandAnimator:Landroid/animation/ObjectAnimator;

    new-array v3, v1, [F

    const/high16 v4, 0x3f80

    aput v4, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 223
    :goto_1
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/IconMenuBarView;->getLayerType()I

    move-result v0

    iput v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPreLayerType:I

    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, v5, v0}, Lmiui/v5/widget/menubar/IconMenuBarView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 225
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mExpandAnimator:Landroid/animation/ObjectAnimator;

    iget v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mExpandDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 226
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mExpandAnimator:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Lmiui/v5/widget/menubar/IconMenuBarView;->getAnimatorListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 227
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mExpandAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 221
    :cond_3
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mExpandAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v5, [F

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    goto :goto_1

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method setAnimationPercent(F)V
    .locals 3
    .parameter "percent"

    .prologue
    .line 275
    iput p1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mAnimationPercent:F

    .line 279
    iget-object v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    mul-float v1, v2, p1

    .line 280
    .local v1, transition:F
    move v0, p1

    .line 282
    .local v0, alpha:F
    iget-object v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 283
    iget-object v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 285
    iget-object v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mDimContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 286
    return-void
.end method

.method public setPrimaryContainerLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 87
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 88
    return-void
.end method

.method public setPrimaryMaskDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    .line 103
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerExpanedBackground:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 106
    :cond_0
    iput-object p1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerExpanedBackground:Landroid/graphics/drawable/Drawable;

    .line 107
    return-void
.end method

.method public setSecondaryContainerLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 95
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 96
    return-void
.end method
