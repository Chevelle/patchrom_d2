.class public Lcom/miui/internal/v5/view/menu/ActionMenuView;
.super Lcom/android/internal/view/menu/ActionMenuView;
.source "ActionMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;,
        Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;
    }
.end annotation


# static fields
.field private static final VIEW_STATE_COLLAPSED:I = 0x0

.field private static final VIEW_STATE_COLLAPSING:I = 0x1

.field private static final VIEW_STATE_EXPANDED:I = 0x3

.field private static final VIEW_STATE_EXPANDING:I = 0x2


# instance fields
.field private mExpandCollapseAnimator:Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuPopupWindow:Landroid/widget/PopupWindow;

.field private mMoreIcon:Landroid/graphics/drawable/Drawable;

.field private mMoreIconView:Landroid/view/View;

.field private mOpenCloseAnimator:Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;

.field private mPrimaryContainer:Landroid/widget/LinearLayout;

.field private mPrimaryContainerCollapsedBackground:Landroid/graphics/drawable/Drawable;

.field private mPrimaryContainerExpanedBackground:Landroid/graphics/drawable/Drawable;

.field private mPrimaryContainerHeight:I

.field private mSecondaryContainer:Landroid/widget/LinearLayout;

.field private mSecondaryContainerLayoutResId:I

.field private mViewState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput v2, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mViewState:I

    .line 65
    sget-object v1, Lmiui/R$styleable;->ActionMenuView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    .line 69
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainerLayoutResId:I

    .line 72
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainerExpanedBackground:Landroid/graphics/drawable/Drawable;

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/v5/view/menu/ActionMenuView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/internal/v5/view/menu/ActionMenuView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainerHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/miui/internal/v5/view/menu/ActionMenuView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/internal/v5/view/menu/ActionMenuView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainerExpanedBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/internal/v5/view/menu/ActionMenuView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mMoreIconView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lcom/miui/internal/v5/view/menu/ActionMenuView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mViewState:I

    return p1
.end method

.method static synthetic access$600(Lcom/miui/internal/v5/view/menu/ActionMenuView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainerCollapsedBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private computeAlpha(FZZ)F
    .locals 3
    .parameter "percent"
    .parameter "fromHasActionMenu"
    .parameter "toHasActionMenu"

    .prologue
    const/high16 v2, 0x4120

    .line 370
    const/high16 v0, 0x3f80

    .line 371
    .local v0, alpha:F
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 379
    :cond_0
    :goto_0
    return v0

    .line 373
    :cond_1
    if-eqz p2, :cond_2

    .line 374
    const/high16 v1, 0x3f80

    sub-float/2addr v1, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    div-float v0, v1, v2

    goto :goto_0

    .line 375
    :cond_2
    if-eqz p3, :cond_0

    .line 376
    mul-float v1, p1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    div-float v0, v1, v2

    goto :goto_0
.end method

.method private computeTranslationY(FZZ)F
    .locals 8
    .parameter "percent"
    .parameter "fromHasActionMenu"
    .parameter "toHasActionMenu"

    .prologue
    const/high16 v7, 0x4000

    const/high16 v6, 0x3f80

    .line 353
    iget-object v2, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v0, v2

    .line 355
    .local v0, height:F
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 356
    float-to-double v2, p1

    const-wide/high16 v4, 0x3fe0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    .line 357
    mul-float/2addr p1, v7

    .line 365
    :cond_0
    :goto_0
    mul-float v1, p1, v0

    .line 366
    .local v1, translationY:F
    return v1

    .line 359
    .end local v1           #translationY:F
    :cond_1
    sub-float v2, v6, p1

    mul-float p1, v7, v2

    goto :goto_0

    .line 361
    :cond_2
    if-eqz p3, :cond_0

    .line 362
    sub-float p1, v6, p1

    goto :goto_0
.end method


# virtual methods
.method createMoreItemView(Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;I)Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;
    .locals 5
    .parameter "convertView"
    .parameter "primaryItemResId"

    .prologue
    const/4 v4, 0x1

    .line 190
    const/4 v0, 0x0

    .line 192
    .local v0, itemView:Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;
    if-eqz p1, :cond_0

    .line 193
    move-object v0, p1

    .line 198
    :goto_0
    iget-object v2, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 199
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x60c01fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v2, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v2}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 201
    invoke-interface {v0, v4}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;->setEnabled(Z)V

    .line 202
    invoke-interface {v0, v4}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;->setCheckable(Z)V

    move-object v2, v0

    .line 203
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    invoke-interface {v0, p0}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    move-object v2, v0

    .line 205
    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mMoreIconView:Landroid/view/View;

    .line 207
    return-object v0

    .line 195
    .end local v1           #r:Landroid/content/res/Resources;
    :cond_0
    iget-object v2, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, p2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0           #itemView:Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;
    check-cast v0, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;

    .restart local v0       #itemView:Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;
    goto :goto_0
.end method

.method public getMenuItems()I
    .locals 2

    .prologue
    .line 229
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 231
    .local v0, retval:I
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 235
    :cond_0
    return v0
.end method

.method getPrimaryContainer()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getPrimaryContainerHeight()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainerHeight:I

    return v0
.end method

.method getSecondaryContainer(Z)Landroid/widget/LinearLayout;
    .locals 4
    .parameter "create"

    .prologue
    .line 243
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 244
    iget v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainerLayoutResId:I

    if-lez v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainerLayoutResId:I

    const/4 v3, 0x0

    invoke-static {v1, v2, p0, v3}, Lmiui/v5/widget/Views;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 251
    invoke-virtual {p0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->isSplitActionBar()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 253
    .local v0, oldParent:Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2

    .line 254
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 255
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #oldParent:Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->addView(Landroid/view/View;)V

    .line 262
    :cond_2
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    return-object v1
.end method

.method public getSecondryContainerHeight()I
    .locals 2

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 217
    .local v0, retval:I
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 221
    :cond_0
    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 94
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    .line 105
    .local v0, invoked:Z
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0, v2}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->requestExpand(Z)Z

    .line 109
    :cond_0
    return v0
.end method

.method isExpanded()Z
    .locals 2

    .prologue
    .line 266
    iget v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mViewState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSplitActionBar()Z
    .locals 2

    .prologue
    .line 465
    const/4 v1, 0x0

    .line 467
    .local v1, retval:Z
    invoke-static {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->findActionBarViewByView(Landroid/view/View;)Lcom/miui/internal/v5/widget/ActionBarView;

    move-result-object v0

    .line 468
    .local v0, actionBarView:Lcom/miui/internal/v5/widget/ActionBarView;
    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0}, Lcom/miui/internal/v5/widget/ActionBarView;->isSplitActionBar()Z

    move-result v1

    .line 472
    :cond_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 313
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 316
    :pswitch_0
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mMoreIconView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mMoreIconView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->requestExpand(Z)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x60b00a2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 114
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 117
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 118
    .local v0, parent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 119
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 121
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    .line 123
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 124
    return-void
.end method

.method public onDismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 602
    iput v2, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mViewState:I

    .line 603
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mMoreIconView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 606
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 607
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 608
    .local v0, parent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 609
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 612
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/android/internal/view/menu/ActionMenuView;->onFinishInflate()V

    .line 82
    invoke-virtual {p0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/UiUtils;->getSplitActionMenuHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainerHeight:I

    .line 84
    const v0, 0x60b00a4

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    .line 85
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainerCollapsedBackground:Landroid/graphics/drawable/Drawable;

    .line 87
    new-instance v0, Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;

    invoke-direct {v0, p0}, Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;-><init>(Lcom/miui/internal/v5/view/menu/ActionMenuView;)V

    iput-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mOpenCloseAnimator:Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;

    .line 88
    new-instance v0, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;

    invoke-direct {v0, p0}, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;-><init>(Lcom/miui/internal/v5/view/menu/ActionMenuView;)V

    iput-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mExpandCollapseAnimator:Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;

    .line 89
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v5, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->isSplitActionBar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getSecondryContainerHeight()I

    move-result v0

    .line 130
    .local v0, secondaryContainerHeight:I
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 132
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    sub-int v2, p5, p3

    sub-int/2addr v2, v0

    sub-int v3, p4, p2

    sub-int v4, p5, p3

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 138
    .end local v0           #secondaryContainerHeight:I
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 142
    invoke-virtual {p0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getMenuItems()I

    move-result v3

    if-nez v3, :cond_0

    .line 143
    invoke-virtual {p0, v4, v4}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 172
    :goto_0
    return-void

    .line 147
    :cond_0
    const/16 v0, 0x51

    .line 148
    .local v0, gravity:I
    invoke-virtual {p0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->isSplitActionBar()Z

    move-result v3

    if-nez v3, :cond_1

    .line 149
    const/4 v0, 0x5

    .line 151
    :cond_1
    iget-object v3, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 152
    iget-object v3, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1, p2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 154
    iget-object v3, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    .line 155
    .local v2, measuredWidth:I
    iget-object v3, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    .line 157
    .local v1, measuredHeight:I
    invoke-virtual {p0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->isSplitActionBar()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3

    .line 158
    iget-object v3, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/widget/LinearLayout;->measure(II)V

    .line 160
    iget-object v3, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    .line 162
    invoke-virtual {p0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 163
    invoke-virtual {p0, v5}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->setTranslationY(F)V

    .line 171
    :goto_1
    invoke-virtual {p0, v2, v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 165
    :cond_2
    iget-object v3, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->setTranslationY(F)V

    goto :goto_1

    .line 168
    :cond_3
    invoke-virtual {p0, v5}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->setTranslationY(F)V

    goto :goto_1
.end method

.method public onPageScrolled(IFZZ)V
    .locals 3
    .parameter "position"
    .parameter "ratio"
    .parameter "fromHasActionMenu"
    .parameter "toHasActionMenu"

    .prologue
    .line 384
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->computeAlpha(FZZ)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->setAlpha(F)V

    .line 386
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->computeTranslationY(FZZ)F

    move-result v0

    .line 389
    .local v0, translationY:F
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 392
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mOpenCloseAnimator:Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;

    invoke-virtual {v1, v0}, Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;->setTranslationY(F)V

    .line 393
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 334
    const/4 v0, 0x1

    .line 337
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 325
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenuView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 326
    if-ne p1, p0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->playOpenAnimator()V

    .line 329
    :cond_0
    return-void
.end method

.method public playCloseAnimator()V
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->requestExpand(Z)Z

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mOpenCloseAnimator:Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;

    invoke-virtual {v0}, Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;->close()V

    .line 349
    return-void
.end method

.method public playOpenAnimator()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mOpenCloseAnimator:Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;

    invoke-virtual {v0}, Lcom/miui/internal/v5/view/menu/ActionMenuView$OpenCloseAnimator;->open()V

    .line 342
    return-void
.end method

.method requestExpand(Z)Z
    .locals 3
    .parameter "expand"

    .prologue
    const/4 v2, 0x1

    .line 270
    const/4 v0, 0x0

    .line 272
    .local v0, handled:Z
    iget v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mViewState:I

    packed-switch v1, :pswitch_data_0

    .line 292
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_1

    .line 293
    if-eqz p1, :cond_3

    .line 294
    invoke-virtual {p0}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->isSplitActionBar()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 295
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mExpandCollapseAnimator:Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;

    invoke-virtual {v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->expand()V

    .line 308
    :cond_1
    :goto_1
    return v0

    .line 278
    :pswitch_1
    if-eqz p1, :cond_0

    .line 279
    const/4 v1, 0x2

    iput v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mViewState:I

    .line 280
    const/4 v0, 0x1

    goto :goto_0

    .line 285
    :pswitch_2
    if-nez p1, :cond_0

    .line 286
    iput v2, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mViewState:I

    .line 287
    const/4 v0, 0x1

    goto :goto_0

    .line 297
    :cond_2
    invoke-virtual {p0, v2}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->showOrHideMenuPopupWindow(Z)V

    goto :goto_1

    .line 300
    :cond_3
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    if-nez v1, :cond_4

    .line 301
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mExpandCollapseAnimator:Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;

    invoke-virtual {v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView$ExpandCollapseAnimator;->collapse()V

    goto :goto_1

    .line 303
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->showOrHideMenuPopupWindow(Z)V

    goto :goto_1

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setPrimaryContainerCollapsedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainerCollapsedBackground:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 185
    :cond_0
    iput-object p1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainerCollapsedBackground:Landroid/graphics/drawable/Drawable;

    .line 186
    return-void
.end method

.method public setPrimaryContainerExpanedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainerExpanedBackground:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 178
    :cond_0
    iput-object p1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainerExpanedBackground:Landroid/graphics/drawable/Drawable;

    .line 179
    return-void
.end method

.method protected showOrHideMenuPopupWindow(Z)V
    .locals 6
    .parameter "show"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 476
    if-eqz p1, :cond_2

    .line 477
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    .line 478
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 481
    :cond_0
    iput-object v5, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    .line 484
    :cond_1
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    .line 485
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 487
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 489
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 490
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 491
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    const v2, 0x60d0007

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 492
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0, v4, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 494
    const/4 v1, 0x3

    iput v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mViewState:I

    .line 495
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mMoreIconView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 498
    invoke-static {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->getActionBarByView(Landroid/view/View;)Lcom/miui/internal/v5/app/ActionBarImpl;

    move-result-object v1

    invoke-virtual {v1, v4, p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->getDimAnimator(ZLandroid/view/View$OnClickListener;)Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;

    move-result-object v0

    .line 500
    .local v0, dimAnimator:Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;
    invoke-virtual {v0}, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->getDimShowingAnimator()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 514
    :goto_0
    return-void

    .line 502
    .end local v0           #dimAnimator:Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;
    :cond_2
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_4

    .line 503
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 504
    iget-object v1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 506
    :cond_3
    iput-object v5, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    .line 510
    :cond_4
    invoke-static {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->getActionBarByView(Landroid/view/View;)Lcom/miui/internal/v5/app/ActionBarImpl;

    move-result-object v1

    invoke-virtual {v1, v4, p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->getDimAnimator(ZLandroid/view/View$OnClickListener;)Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;

    move-result-object v0

    .line 512
    .restart local v0       #dimAnimator:Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;
    invoke-virtual {v0}, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;->getDimHidingAnimator()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public startPrimaryContainerLayoutAnimation()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->startLayoutAnimation()V

    .line 226
    return-void
.end method
