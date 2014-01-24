.class public Lmiui/v5/widget/PageChangeAdapter;
.super Ljava/lang/Object;
.source "PageChangeAdapter.java"

# interfaces
.implements Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/widget/PageChangeAdapter$OnPageScrollListener;
    }
.end annotation


# instance fields
.field private mAppearingPosition:I

.field private mChangeStartPosition:I

.field private mLastPosition:I

.field private mScrolledListener:Lmiui/v5/widget/PageChangeAdapter$OnPageScrollListener;

.field private mSrollState:I

.field private final mViewPager:Lmiui/v5/android/support/view/ViewPager;


# direct methods
.method public constructor <init>(Lmiui/v5/android/support/view/ViewPager;)V
    .locals 1
    .parameter "pager"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/v5/widget/PageChangeAdapter;-><init>(Lmiui/v5/android/support/view/ViewPager;Lmiui/v5/widget/PageChangeAdapter$OnPageScrollListener;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lmiui/v5/android/support/view/ViewPager;Lmiui/v5/widget/PageChangeAdapter$OnPageScrollListener;)V
    .locals 1
    .parameter "pager"
    .parameter "scrolledListener"

    .prologue
    const/4 v0, -0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lmiui/v5/widget/PageChangeAdapter;->mChangeStartPosition:I

    .line 20
    iput v0, p0, Lmiui/v5/widget/PageChangeAdapter;->mAppearingPosition:I

    .line 22
    iput v0, p0, Lmiui/v5/widget/PageChangeAdapter;->mLastPosition:I

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lmiui/v5/widget/PageChangeAdapter;->mSrollState:I

    .line 33
    iput-object p1, p0, Lmiui/v5/widget/PageChangeAdapter;->mViewPager:Lmiui/v5/android/support/view/ViewPager;

    .line 34
    iput-object p2, p0, Lmiui/v5/widget/PageChangeAdapter;->mScrolledListener:Lmiui/v5/widget/PageChangeAdapter$OnPageScrollListener;

    .line 35
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, -0x1

    .line 43
    iput p1, p0, Lmiui/v5/widget/PageChangeAdapter;->mSrollState:I

    .line 44
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 45
    iget-object v1, p0, Lmiui/v5/widget/PageChangeAdapter;->mViewPager:Lmiui/v5/android/support/view/ViewPager;

    invoke-virtual {v1}, Lmiui/v5/android/support/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 46
    .local v0, position:I
    iget v1, p0, Lmiui/v5/widget/PageChangeAdapter;->mChangeStartPosition:I

    if-eq v1, v0, :cond_2

    .line 47
    iget v1, p0, Lmiui/v5/widget/PageChangeAdapter;->mAppearingPosition:I

    if-eq v1, v5, :cond_1

    .line 48
    iget-object v1, p0, Lmiui/v5/widget/PageChangeAdapter;->mScrolledListener:Lmiui/v5/widget/PageChangeAdapter$OnPageScrollListener;

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lmiui/v5/widget/PageChangeAdapter;->mScrolledListener:Lmiui/v5/widget/PageChangeAdapter$OnPageScrollListener;

    iget-object v2, p0, Lmiui/v5/widget/PageChangeAdapter;->mViewPager:Lmiui/v5/android/support/view/ViewPager;

    iget v3, p0, Lmiui/v5/widget/PageChangeAdapter;->mChangeStartPosition:I

    iget v4, p0, Lmiui/v5/widget/PageChangeAdapter;->mAppearingPosition:I

    invoke-interface {v1, v2, v3, v4}, Lmiui/v5/widget/PageChangeAdapter$OnPageScrollListener;->onReset(Lmiui/v5/android/support/view/ViewPager;II)V

    .line 51
    :cond_0
    iput v5, p0, Lmiui/v5/widget/PageChangeAdapter;->mAppearingPosition:I

    .line 53
    :cond_1
    iput v0, p0, Lmiui/v5/widget/PageChangeAdapter;->mChangeStartPosition:I

    .line 63
    .end local v0           #position:I
    :cond_2
    :goto_0
    return-void

    .line 55
    :cond_3
    if-nez p1, :cond_2

    .line 56
    iget-object v1, p0, Lmiui/v5/widget/PageChangeAdapter;->mScrolledListener:Lmiui/v5/widget/PageChangeAdapter$OnPageScrollListener;

    if-eqz v1, :cond_4

    .line 57
    iget-object v1, p0, Lmiui/v5/widget/PageChangeAdapter;->mScrolledListener:Lmiui/v5/widget/PageChangeAdapter$OnPageScrollListener;

    iget-object v2, p0, Lmiui/v5/widget/PageChangeAdapter;->mViewPager:Lmiui/v5/android/support/view/ViewPager;

    iget v3, p0, Lmiui/v5/widget/PageChangeAdapter;->mChangeStartPosition:I

    iget-object v4, p0, Lmiui/v5/widget/PageChangeAdapter;->mViewPager:Lmiui/v5/android/support/view/ViewPager;

    invoke-virtual {v4}, Lmiui/v5/android/support/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lmiui/v5/widget/PageChangeAdapter$OnPageScrollListener;->onReset(Lmiui/v5/android/support/view/ViewPager;II)V

    .line 60
    :cond_4
    iput v5, p0, Lmiui/v5/widget/PageChangeAdapter;->mChangeStartPosition:I

    .line 61
    iput v5, p0, Lmiui/v5/widget/PageChangeAdapter;->mAppearingPosition:I

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 6
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 68
    iget-object v3, p0, Lmiui/v5/widget/PageChangeAdapter;->mScrolledListener:Lmiui/v5/widget/PageChangeAdapter$OnPageScrollListener;

    if-nez v3, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget v0, p0, Lmiui/v5/widget/PageChangeAdapter;->mChangeStartPosition:I

    .line 72
    .local v0, from:I
    if-ltz v0, :cond_0

    .line 76
    move v2, v0

    .line 77
    .local v2, to:I
    const/high16 v1, 0x3f80

    .line 79
    .local v1, percent:F
    if-ne v0, p1, :cond_3

    .line 81
    add-int/lit8 v2, v0, 0x1

    .line 82
    move v1, p2

    .line 94
    :cond_2
    :goto_1
    if-eq v0, v2, :cond_0

    .line 95
    iput v2, p0, Lmiui/v5/widget/PageChangeAdapter;->mAppearingPosition:I

    .line 96
    iget-object v3, p0, Lmiui/v5/widget/PageChangeAdapter;->mScrolledListener:Lmiui/v5/widget/PageChangeAdapter$OnPageScrollListener;

    iget-object v4, p0, Lmiui/v5/widget/PageChangeAdapter;->mViewPager:Lmiui/v5/android/support/view/ViewPager;

    iget v5, p0, Lmiui/v5/widget/PageChangeAdapter;->mAppearingPosition:I

    invoke-interface {v3, v4, v0, v5, v1}, Lmiui/v5/widget/PageChangeAdapter$OnPageScrollListener;->onScroll(Lmiui/v5/android/support/view/ViewPager;IIF)V

    goto :goto_0

    .line 83
    :cond_3
    add-int/lit8 v3, v0, 0x1

    if-ne v3, p1, :cond_4

    const/4 v3, 0x0

    cmpl-float v3, p2, v3

    if-nez v3, :cond_4

    .line 86
    move v2, p1

    .line 87
    const/high16 v1, 0x3f80

    goto :goto_1

    .line 88
    :cond_4
    add-int/lit8 v3, v0, -0x1

    if-ne v3, p1, :cond_2

    if-lez v0, :cond_2

    .line 90
    add-int/lit8 v2, v0, -0x1

    .line 91
    const/high16 v3, 0x3f80

    sub-float v1, v3, p2

    goto :goto_1
.end method

.method public onPageSelected(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 102
    iget-object v0, p0, Lmiui/v5/widget/PageChangeAdapter;->mScrolledListener:Lmiui/v5/widget/PageChangeAdapter$OnPageScrollListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lmiui/v5/widget/PageChangeAdapter;->mSrollState:I

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lmiui/v5/widget/PageChangeAdapter;->mScrolledListener:Lmiui/v5/widget/PageChangeAdapter$OnPageScrollListener;

    iget-object v1, p0, Lmiui/v5/widget/PageChangeAdapter;->mViewPager:Lmiui/v5/android/support/view/ViewPager;

    iget v2, p0, Lmiui/v5/widget/PageChangeAdapter;->mLastPosition:I

    invoke-interface {v0, v1, v2, p1}, Lmiui/v5/widget/PageChangeAdapter$OnPageScrollListener;->onReset(Lmiui/v5/android/support/view/ViewPager;II)V

    .line 106
    :cond_0
    iput p1, p0, Lmiui/v5/widget/PageChangeAdapter;->mLastPosition:I

    .line 107
    return-void
.end method

.method public setScrolledListener(Lmiui/v5/widget/PageChangeAdapter$OnPageScrollListener;)V
    .locals 0
    .parameter "scrolledListener"

    .prologue
    .line 38
    iput-object p1, p0, Lmiui/v5/widget/PageChangeAdapter;->mScrolledListener:Lmiui/v5/widget/PageChangeAdapter$OnPageScrollListener;

    .line 39
    return-void
.end method
