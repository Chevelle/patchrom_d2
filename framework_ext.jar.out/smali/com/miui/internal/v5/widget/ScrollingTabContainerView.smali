.class public Lcom/miui/internal/v5/widget/ScrollingTabContainerView;
.super Lcom/android/internal/widget/ScrollingTabContainerView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;


# static fields
.field private static final DEFAULT_TAB_INDICATOR_ANIMATOR_DURATION:I = 0x12c

.field private static final TAB_INDICATOR_ANIMATOR_PROPERTY:Ljava/lang/String; = "TranslationX"


# instance fields
.field private mIsFragmentViewPagerMode:Z

.field private mTabIndicator:Landroid/widget/ImageView;

.field private mTabIndicatorAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->createTabIndicator()V

    .line 31
    return-void
.end method


# virtual methods
.method animateIndicatorToTab(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->getTabLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->animateIndicatorToTab(Landroid/view/View;)V

    .line 94
    return-void
.end method

.method public animateIndicatorToTab(Landroid/view/View;)V
    .locals 4
    .parameter "tabView"

    .prologue
    .line 98
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mIsFragmentViewPagerMode:Z

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicatorAnimator:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_2

    .line 103
    new-instance v1, Landroid/animation/ObjectAnimator;

    invoke-direct {v1}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicatorAnimator:Landroid/animation/ObjectAnimator;

    .line 104
    iget-object v1, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicatorAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 105
    iget-object v1, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicatorAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 106
    iget-object v1, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicatorAnimator:Landroid/animation/ObjectAnimator;

    const-string v2, "TranslationX"

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 109
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v0, v1

    .line 111
    .local v0, endTranslationX:F
    iget-object v1, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicatorAnimator:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 112
    iget-object v1, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicatorAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 113
    iget-object v1, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicatorAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public animateToTab(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->animateIndicatorToTab(I)V

    .line 38
    return-void
.end method

.method public createTabIndicator()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 140
    iget-object v2, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 152
    :goto_0
    return-void

    .line 144
    :cond_0
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const v5, 0x601009a

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    .line 145
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 147
    .local v0, lParams:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 148
    iget-object v2, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 151
    .local v1, measureSpec:I
    iget-object v2, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v1}, Landroid/widget/ImageView;->measure(II)V

    goto :goto_0
.end method

.method protected getSelectedTabIndex()I
    .locals 4

    .prologue
    .line 156
    const/4 v1, -0x1

    .line 157
    .local v1, index:I
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->getTabLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 159
    .local v2, tabLayout:Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 160
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    move v1, v0

    .line 166
    :cond_0
    return v1

    .line 159
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v5, 0x1

    .line 46
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/ScrollingTabContainerView;->onLayout(ZIIII)V

    .line 49
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->getTabLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 50
    .local v1, tabLayout:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-le v3, v5, :cond_3

    .line 51
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->getSelectedTabIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 54
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v3, p0, :cond_0

    .line 55
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v3, v5, v4}, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 57
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    const/4 v4, 0x0

    sub-int v5, p5, p3

    iget-object v6, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    sub-int v7, p5, p3

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/ImageView;->layout(IIII)V

    .line 61
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    .line 64
    .local v2, translationX:I
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicatorAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_1

    .line 65
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicatorAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 67
    :cond_1
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 74
    .end local v0           #child:Landroid/view/View;
    .end local v2           #translationX:I
    :cond_2
    :goto_0
    return-void

    .line 70
    :cond_3
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_2

    .line 71
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 137
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 5
    .parameter "position"
    .parameter "ratio"
    .parameter "fromHasActionMenu"
    .parameter "toHasActionMenu"

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->getTabLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 121
    .local v0, tabView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float v1, v2, v3

    .line 124
    .local v1, translationX:F
    iget-object v2, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 125
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->getTabLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 130
    .local v0, tabView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 131
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 133
    :cond_0
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "child"
    .parameter "event"

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->getTabLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 177
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onViewRemoved(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->onViewRemoved(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 90
    :cond_0
    return-void
.end method

.method public setFragmentViewPagerMode(Z)V
    .locals 0
    .parameter "isFragmentViewPagerMode"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mIsFragmentViewPagerMode:Z

    .line 42
    return-void
.end method
