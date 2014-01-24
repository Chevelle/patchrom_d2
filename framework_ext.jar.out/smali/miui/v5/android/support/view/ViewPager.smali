.class public Lmiui/v5/android/support/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/android/support/view/ViewPager$LayoutParams;,
        Lmiui/v5/android/support/view/ViewPager$PagerObserver;,
        Lmiui/v5/android/support/view/ViewPager$SavedState;,
        Lmiui/v5/android/support/view/ViewPager$Decor;,
        Lmiui/v5/android/support/view/ViewPager$OnAdapterChangeListener;,
        Lmiui/v5/android/support/view/ViewPager$SimpleOnPageChangeListener;,
        Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;,
        Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lmiui/v5/android/support/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I = null

.field private static final MAX_SETTLE_DURATION:I = 0x320

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final PAGE_SETTLE_DURATION:I = 0xfa

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

.field private mAdapterChangeListener:Lmiui/v5/android/support/view/ViewPager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mIgnoreGutter:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInternalPageChangeListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/v5/android/support/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/widget/EdgeEffect;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Lmiui/v5/android/support/view/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/widget/EdgeEffect;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private final mTempItem:Lmiui/v5/android/support/view/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lmiui/v5/android/support/view/ViewPager;->LAYOUT_ATTRS:[I

    .line 62
    new-instance v0, Lmiui/v5/android/support/view/ViewPager$1;

    invoke-direct {v0}, Lmiui/v5/android/support/view/ViewPager$1;-><init>()V

    sput-object v0, Lmiui/v5/android/support/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 69
    new-instance v0, Lmiui/v5/android/support/view/ViewPager$2;

    invoke-direct {v0}, Lmiui/v5/android/support/view/ViewPager$2;-><init>()V

    sput-object v0, Lmiui/v5/android/support/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 252
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Lmiui/v5/android/support/view/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lmiui/v5/android/support/view/ViewPager;->mTempItem:Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/v5/android/support/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 83
    iput v1, p0, Lmiui/v5/android/support/view/ViewPager;->mRestoredCurItem:I

    .line 84
    iput-object v4, p0, Lmiui/v5/android/support/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 85
    iput-object v4, p0, Lmiui/v5/android/support/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 97
    const v0, -0x800001

    iput v0, p0, Lmiui/v5/android/support/view/ViewPager;->mFirstOffset:F

    .line 98
    const v0, 0x7f7fffff

    iput v0, p0, Lmiui/v5/android/support/view/ViewPager;->mLastOffset:F

    .line 107
    iput v3, p0, Lmiui/v5/android/support/view/ViewPager;->mOffscreenPageLimit:I

    .line 125
    iput v1, p0, Lmiui/v5/android/support/view/ViewPager;->mActivePointerId:I

    .line 152
    iput-boolean v3, p0, Lmiui/v5/android/support/view/ViewPager;->mFirstLayout:Z

    .line 153
    iput-boolean v2, p0, Lmiui/v5/android/support/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 177
    iput v2, p0, Lmiui/v5/android/support/view/ViewPager;->mScrollState:I

    .line 253
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->initViewPager()V

    .line 254
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 257
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Lmiui/v5/android/support/view/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lmiui/v5/android/support/view/ViewPager;->mTempItem:Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/v5/android/support/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 83
    iput v1, p0, Lmiui/v5/android/support/view/ViewPager;->mRestoredCurItem:I

    .line 84
    iput-object v4, p0, Lmiui/v5/android/support/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 85
    iput-object v4, p0, Lmiui/v5/android/support/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 97
    const v0, -0x800001

    iput v0, p0, Lmiui/v5/android/support/view/ViewPager;->mFirstOffset:F

    .line 98
    const v0, 0x7f7fffff

    iput v0, p0, Lmiui/v5/android/support/view/ViewPager;->mLastOffset:F

    .line 107
    iput v3, p0, Lmiui/v5/android/support/view/ViewPager;->mOffscreenPageLimit:I

    .line 125
    iput v1, p0, Lmiui/v5/android/support/view/ViewPager;->mActivePointerId:I

    .line 152
    iput-boolean v3, p0, Lmiui/v5/android/support/view/ViewPager;->mFirstLayout:Z

    .line 153
    iput-boolean v2, p0, Lmiui/v5/android/support/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 177
    iput v2, p0, Lmiui/v5/android/support/view/ViewPager;->mScrollState:I

    .line 258
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->initViewPager()V

    .line 259
    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lmiui/v5/android/support/view/ViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private calculatePageOffsets(Lmiui/v5/android/support/view/ViewPager$ItemInfo;ILmiui/v5/android/support/view/ViewPager$ItemInfo;)V
    .locals 14
    .parameter "curItem"
    .parameter "curIndex"
    .parameter "oldCurInfo"

    .prologue
    .line 877
    iget-object v12, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    invoke-virtual {v12}, Lmiui/v5/android/support/view/PagerAdapter;->getCount()I

    move-result v1

    .line 878
    .local v1, N:I
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getWidth()I

    move-result v11

    .line 879
    .local v11, width:I
    if-lez v11, :cond_0

    iget v12, p0, Lmiui/v5/android/support/view/ViewPager;->mPageMargin:I

    int-to-float v12, v12

    int-to-float v13, v11

    div-float v6, v12, v13

    .line 881
    .local v6, marginOffset:F
    :goto_0
    if-eqz p3, :cond_6

    .line 882
    move-object/from16 v0, p3

    iget v8, v0, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    .line 884
    .local v8, oldCurPosition:I
    iget v12, p1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    if-ge v8, v12, :cond_3

    .line 885
    const/4 v5, 0x0

    .line 886
    .local v5, itemIndex:I
    const/4 v3, 0x0

    .line 887
    .local v3, ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    move-object/from16 v0, p3

    iget v12, v0, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->offset:F

    move-object/from16 v0, p3

    iget v13, v0, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 888
    .local v7, offset:F
    add-int/lit8 v9, v8, 0x1

    .line 889
    .local v9, pos:I
    :goto_1
    iget v12, p1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    if-gt v9, v12, :cond_6

    iget-object v12, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_6

    .line 890
    iget-object v12, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    check-cast v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    .line 891
    .restart local v3       #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    :goto_2
    iget v12, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_1

    iget-object v12, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v5, v12, :cond_1

    .line 892
    add-int/lit8 v5, v5, 0x1

    .line 893
    iget-object v12, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    check-cast v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    .restart local v3       #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    goto :goto_2

    .line 879
    .end local v3           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    .end local v5           #itemIndex:I
    .end local v6           #marginOffset:F
    .end local v7           #offset:F
    .end local v8           #oldCurPosition:I
    .end local v9           #pos:I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 895
    .restart local v3       #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    .restart local v5       #itemIndex:I
    .restart local v6       #marginOffset:F
    .restart local v7       #offset:F
    .restart local v8       #oldCurPosition:I
    .restart local v9       #pos:I
    :cond_1
    :goto_3
    iget v12, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_2

    .line 898
    iget-object v12, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    invoke-virtual {v12, v9}, Lmiui/v5/android/support/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 899
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 901
    :cond_2
    iput v7, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->offset:F

    .line 902
    iget v12, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 889
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 904
    .end local v3           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    .end local v5           #itemIndex:I
    .end local v7           #offset:F
    .end local v9           #pos:I
    :cond_3
    iget v12, p1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    if-le v8, v12, :cond_6

    .line 905
    iget-object v12, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .line 906
    .restart local v5       #itemIndex:I
    const/4 v3, 0x0

    .line 907
    .restart local v3       #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    move-object/from16 v0, p3

    iget v7, v0, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->offset:F

    .line 908
    .restart local v7       #offset:F
    add-int/lit8 v9, v8, -0x1

    .line 909
    .restart local v9       #pos:I
    :goto_4
    iget v12, p1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    if-lt v9, v12, :cond_6

    if-ltz v5, :cond_6

    .line 910
    iget-object v12, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    check-cast v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    .line 911
    .restart local v3       #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    :goto_5
    iget v12, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_4

    if-lez v5, :cond_4

    .line 912
    add-int/lit8 v5, v5, -0x1

    .line 913
    iget-object v12, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    check-cast v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    .restart local v3       #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    goto :goto_5

    .line 915
    :cond_4
    :goto_6
    iget v12, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_5

    .line 918
    iget-object v12, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    invoke-virtual {v12, v9}, Lmiui/v5/android/support/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 919
    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    .line 921
    :cond_5
    iget v12, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 922
    iput v7, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->offset:F

    .line 909
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 928
    .end local v3           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    .end local v5           #itemIndex:I
    .end local v7           #offset:F
    .end local v8           #oldCurPosition:I
    .end local v9           #pos:I
    :cond_6
    iget-object v12, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 929
    .local v4, itemCount:I
    iget v7, p1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->offset:F

    .line 930
    .restart local v7       #offset:F
    iget v12, p1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v12, -0x1

    .line 931
    .restart local v9       #pos:I
    iget v12, p1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    if-nez v12, :cond_7

    iget v12, p1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->offset:F

    :goto_7
    iput v12, p0, Lmiui/v5/android/support/view/ViewPager;->mFirstOffset:F

    .line 932
    iget v12, p1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_8

    iget v12, p1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->offset:F

    iget v13, p1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    const/high16 v13, 0x3f80

    sub-float/2addr v12, v13

    :goto_8
    iput v12, p0, Lmiui/v5/android/support/view/ViewPager;->mLastOffset:F

    .line 935
    add-int/lit8 v2, p2, -0x1

    .local v2, i:I
    :goto_9
    if-ltz v2, :cond_b

    .line 936
    iget-object v12, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    .line 937
    .restart local v3       #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    :goto_a
    iget v12, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_9

    .line 938
    iget-object v12, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    add-int/lit8 v10, v9, -0x1

    .end local v9           #pos:I
    .local v10, pos:I
    invoke-virtual {v12, v9}, Lmiui/v5/android/support/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    move v9, v10

    .end local v10           #pos:I
    .restart local v9       #pos:I
    goto :goto_a

    .line 931
    .end local v2           #i:I
    .end local v3           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    :cond_7
    const v12, -0x800001

    goto :goto_7

    .line 932
    :cond_8
    const v12, 0x7f7fffff

    goto :goto_8

    .line 940
    .restart local v2       #i:I
    .restart local v3       #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    :cond_9
    iget v12, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 941
    iput v7, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->offset:F

    .line 942
    iget v12, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    if-nez v12, :cond_a

    iput v7, p0, Lmiui/v5/android/support/view/ViewPager;->mFirstOffset:F

    .line 935
    :cond_a
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_9

    .line 944
    .end local v3           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    :cond_b
    iget v12, p1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->offset:F

    iget v13, p1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 945
    iget v12, p1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v12, 0x1

    .line 947
    add-int/lit8 v2, p2, 0x1

    :goto_b
    if-ge v2, v4, :cond_e

    .line 948
    iget-object v12, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    .line 949
    .restart local v3       #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    :goto_c
    iget v12, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_c

    .line 950
    iget-object v12, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    add-int/lit8 v10, v9, 0x1

    .end local v9           #pos:I
    .restart local v10       #pos:I
    invoke-virtual {v12, v9}, Lmiui/v5/android/support/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    move v9, v10

    .end local v10           #pos:I
    .restart local v9       #pos:I
    goto :goto_c

    .line 952
    :cond_c
    iget v12, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_d

    .line 953
    iget v12, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v7

    const/high16 v13, 0x3f80

    sub-float/2addr v12, v13

    iput v12, p0, Lmiui/v5/android/support/view/ViewPager;->mLastOffset:F

    .line 955
    :cond_d
    iput v7, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->offset:F

    .line 956
    iget v12, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 947
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 959
    .end local v3           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    :cond_e
    const/4 v12, 0x0

    iput-boolean v12, p0, Lmiui/v5/android/support/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 960
    return-void
.end method

.method private completeScroll()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 1465
    iget v8, p0, Lmiui/v5/android/support/view/ViewPager;->mScrollState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    const/4 v2, 0x1

    .line 1466
    .local v2, needPopulate:Z
    :goto_0
    if-eqz v2, :cond_2

    .line 1468
    invoke-direct {p0, v7}, Lmiui/v5/android/support/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1469
    iget-object v8, p0, Lmiui/v5/android/support/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1470
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getScrollX()I

    move-result v3

    .line 1471
    .local v3, oldX:I
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getScrollY()I

    move-result v4

    .line 1472
    .local v4, oldY:I
    iget-object v8, p0, Lmiui/v5/android/support/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1473
    .local v5, x:I
    iget-object v8, p0, Lmiui/v5/android/support/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1474
    .local v6, y:I
    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    .line 1475
    :cond_0
    invoke-virtual {p0, v5, v6}, Lmiui/v5/android/support/view/ViewPager;->scrollTo(II)V

    .line 1477
    :cond_1
    invoke-direct {p0, v7}, Lmiui/v5/android/support/view/ViewPager;->setScrollState(I)V

    .line 1479
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_2
    iput-boolean v7, p0, Lmiui/v5/android/support/view/ViewPager;->mPopulatePending:Z

    .line 1480
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v8, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_5

    .line 1481
    iget-object v8, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    .line 1482
    .local v1, ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    iget-boolean v8, v1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v8, :cond_3

    .line 1483
    const/4 v2, 0x1

    .line 1484
    iput-boolean v7, v1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->scrolling:Z

    .line 1480
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    .end local v2           #needPopulate:Z
    :cond_4
    move v2, v7

    .line 1465
    goto :goto_0

    .line 1487
    .restart local v0       #i:I
    .restart local v2       #needPopulate:Z
    :cond_5
    if-eqz v2, :cond_6

    .line 1488
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->populate()V

    .line 1490
    :cond_6
    return-void
.end method

.method private determineTargetPage(IFII)I
    .locals 5
    .parameter "currentPage"
    .parameter "pageOffset"
    .parameter "velocity"
    .parameter "deltaX"

    .prologue
    .line 1855
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lmiui/v5/android/support/view/ViewPager;->mFlingDistance:I

    if-le v3, v4, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lmiui/v5/android/support/view/ViewPager;->mMinimumVelocity:I

    if-le v3, v4, :cond_2

    .line 1856
    if-lez p3, :cond_1

    move v2, p1

    .line 1861
    .local v2, targetPage:I
    :goto_0
    iget-object v3, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1862
    iget-object v3, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    .line 1863
    .local v0, firstItem:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    iget-object v3, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    .line 1866
    .local v1, lastItem:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    iget v3, v0, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    iget v4, v1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1869
    .end local v0           #firstItem:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    .end local v1           #lastItem:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    :cond_0
    return v2

    .line 1856
    .end local v2           #targetPage:I
    :cond_1
    add-int/lit8 v2, p1, 0x1

    goto :goto_0

    .line 1858
    :cond_2
    int-to-float v3, p1

    add-float/2addr v3, p2

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v2, v3

    .restart local v2       #targetPage:I
    goto :goto_0
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2101
    iput-boolean v0, p0, Lmiui/v5/android/support/view/ViewPager;->mIsBeingDragged:Z

    .line 2102
    iput-boolean v0, p0, Lmiui/v5/android/support/view/ViewPager;->mIsUnableToDrag:Z

    .line 2104
    iget-object v0, p0, Lmiui/v5/android/support/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2105
    iget-object v0, p0, Lmiui/v5/android/support/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2106
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/v5/android/support/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2108
    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .parameter "outRect"
    .parameter "child"

    .prologue
    const/4 v2, 0x0

    .line 2243
    if-nez p1, :cond_0

    .line 2244
    new-instance p1, Landroid/graphics/Rect;

    .end local p1
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2246
    .restart local p1
    :cond_0
    if-nez p2, :cond_2

    .line 2247
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2265
    :cond_1
    return-object p1

    .line 2250
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2251
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2252
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2253
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2255
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2256
    .local v1, parent:Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v1, p0, :cond_1

    move-object v0, v1

    .line 2257
    check-cast v0, Landroid/view/ViewGroup;

    .line 2258
    .local v0, group:Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2259
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2260
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2261
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2263
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2264
    goto :goto_0
.end method

.method private infoForCurrentScrollPosition()Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    .locals 15

    .prologue
    const/4 v8, 0x0

    .line 1812
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getWidth()I

    move-result v12

    .line 1813
    .local v12, width:I
    if-lez v12, :cond_5

    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getScrollX()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v11, v13, v14

    .line 1814
    .local v11, scrollOffset:F
    :goto_0
    if-lez v12, :cond_0

    iget v13, p0, Lmiui/v5/android/support/view/ViewPager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v8, v13, v14

    .line 1815
    .local v8, marginOffset:F
    :cond_0
    const/4 v5, -0x1

    .line 1816
    .local v5, lastPos:I
    const/4 v4, 0x0

    .line 1817
    .local v4, lastOffset:F
    const/4 v6, 0x0

    .line 1818
    .local v6, lastWidth:F
    const/4 v0, 0x1

    .line 1820
    .local v0, first:Z
    const/4 v3, 0x0

    .line 1821
    .local v3, lastItem:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v13, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v1, v13, :cond_4

    .line 1822
    iget-object v13, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    .line 1824
    .local v2, ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    if-nez v0, :cond_1

    iget v13, v2, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v14, v5, 0x1

    if-eq v13, v14, :cond_1

    .line 1826
    iget-object v2, p0, Lmiui/v5/android/support/view/ViewPager;->mTempItem:Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    .line 1827
    add-float v13, v4, v6

    add-float/2addr v13, v8

    iput v13, v2, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->offset:F

    .line 1828
    add-int/lit8 v13, v5, 0x1

    iput v13, v2, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    .line 1829
    iget-object v13, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    iget v14, v2, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    invoke-virtual {v13, v14}, Lmiui/v5/android/support/view/PagerAdapter;->getPageWidth(I)F

    move-result v13

    iput v13, v2, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->widthFactor:F

    .line 1830
    add-int/lit8 v1, v1, -0x1

    .line 1832
    :cond_1
    iget v9, v2, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->offset:F

    .line 1834
    .local v9, offset:F
    move v7, v9

    .line 1835
    .local v7, leftBound:F
    iget v13, v2, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v9

    add-float v10, v13, v8

    .line 1836
    .local v10, rightBound:F
    if-nez v0, :cond_2

    cmpl-float v13, v11, v7

    if-ltz v13, :cond_4

    .line 1837
    :cond_2
    cmpg-float v13, v11, v10

    if-ltz v13, :cond_3

    iget-object v13, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v1, v13, :cond_6

    :cond_3
    move-object v3, v2

    .line 1850
    .end local v2           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    .end local v3           #lastItem:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    .end local v7           #leftBound:F
    .end local v9           #offset:F
    .end local v10           #rightBound:F
    :cond_4
    return-object v3

    .end local v0           #first:Z
    .end local v1           #i:I
    .end local v4           #lastOffset:F
    .end local v5           #lastPos:I
    .end local v6           #lastWidth:F
    .end local v8           #marginOffset:F
    .end local v11           #scrollOffset:F
    :cond_5
    move v11, v8

    .line 1813
    goto :goto_0

    .line 1843
    .restart local v0       #first:Z
    .restart local v1       #i:I
    .restart local v2       #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    .restart local v3       #lastItem:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    .restart local v4       #lastOffset:F
    .restart local v5       #lastPos:I
    .restart local v6       #lastWidth:F
    .restart local v7       #leftBound:F
    .restart local v8       #marginOffset:F
    .restart local v9       #offset:F
    .restart local v10       #rightBound:F
    .restart local v11       #scrollOffset:F
    :cond_6
    const/4 v0, 0x0

    .line 1844
    iget v5, v2, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    .line 1845
    move v4, v9

    .line 1846
    iget v6, v2, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->widthFactor:F

    .line 1847
    move-object v3, v2

    .line 1821
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isGutterDrag(FF)Z
    .locals 3
    .parameter "x"
    .parameter "dx"

    .prologue
    const/4 v2, 0x0

    .line 1493
    iget v0, p0, Lmiui/v5/android/support/view/ViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Lmiui/v5/android/support/view/ViewPager;->mGutterSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    cmpg-float v0, p2, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "ev"

    .prologue
    .line 2086
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 2087
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2088
    .local v1, pointerId:I
    iget v3, p0, Lmiui/v5/android/support/view/ViewPager;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 2091
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 2092
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lmiui/v5/android/support/view/ViewPager;->mLastMotionX:F

    .line 2093
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lmiui/v5/android/support/view/ViewPager;->mActivePointerId:I

    .line 2094
    iget-object v3, p0, Lmiui/v5/android/support/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 2095
    iget-object v3, p0, Lmiui/v5/android/support/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2098
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 2091
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageScrolled(I)Z
    .locals 10
    .parameter "xpos"

    .prologue
    const/4 v7, 0x0

    .line 1375
    iget-object v8, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 1376
    iput-boolean v7, p0, Lmiui/v5/android/support/view/ViewPager;->mCalledSuper:Z

    .line 1377
    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8, v7}, Lmiui/v5/android/support/view/ViewPager;->onPageScrolled(IFI)V

    .line 1378
    iget-boolean v8, p0, Lmiui/v5/android/support/view/ViewPager;->mCalledSuper:Z

    if-nez v8, :cond_2

    .line 1379
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1384
    :cond_0
    invoke-direct {p0}, Lmiui/v5/android/support/view/ViewPager;->infoForCurrentScrollPosition()Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    move-result-object v1

    .line 1385
    .local v1, ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getWidth()I

    move-result v5

    .line 1386
    .local v5, width:I
    iget v8, p0, Lmiui/v5/android/support/view/ViewPager;->mPageMargin:I

    add-int v6, v5, v8

    .line 1387
    .local v6, widthWithMargin:I
    iget v8, p0, Lmiui/v5/android/support/view/ViewPager;->mPageMargin:I

    int-to-float v8, v8

    int-to-float v9, v5

    div-float v2, v8, v9

    .line 1388
    .local v2, marginOffset:F
    iget v0, v1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    .line 1389
    .local v0, currentPage:I
    int-to-float v8, p1

    int-to-float v9, v5

    div-float/2addr v8, v9

    iget v9, v1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v8, v9

    iget v9, v1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    div-float v4, v8, v9

    .line 1391
    .local v4, pageOffset:F
    int-to-float v8, v6

    mul-float/2addr v8, v4

    float-to-int v3, v8

    .line 1393
    .local v3, offsetPixels:I
    iput-boolean v7, p0, Lmiui/v5/android/support/view/ViewPager;->mCalledSuper:Z

    .line 1394
    invoke-virtual {p0, v0, v4, v3}, Lmiui/v5/android/support/view/ViewPager;->onPageScrolled(IFI)V

    .line 1395
    iget-boolean v7, p0, Lmiui/v5/android/support/view/ViewPager;->mCalledSuper:Z

    if-nez v7, :cond_1

    .line 1396
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1399
    :cond_1
    const/4 v7, 0x1

    .end local v0           #currentPage:I
    .end local v1           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    .end local v2           #marginOffset:F
    .end local v3           #offsetPixels:I
    .end local v4           #pageOffset:F
    .end local v5           #width:I
    .end local v6           #widthWithMargin:I
    :cond_2
    return v7
.end method

.method private performDrag(F)Z
    .locals 17
    .parameter "x"

    .prologue
    .line 1759
    const/4 v7, 0x0

    .line 1761
    .local v7, needsInvalidate:Z
    move-object/from16 v0, p0

    iget v14, v0, Lmiui/v5/android/support/view/ViewPager;->mLastMotionX:F

    sub-float v2, v14, p1

    .line 1762
    .local v2, deltaX:F
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/android/support/view/ViewPager;->mLastMotionX:F

    .line 1764
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getScrollX()I

    move-result v14

    int-to-float v8, v14

    .line 1765
    .local v8, oldScrollX:F
    add-float v12, v8, v2

    .line 1766
    .local v12, scrollX:F
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getWidth()I

    move-result v13

    .line 1768
    .local v13, width:I
    int-to-float v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Lmiui/v5/android/support/view/ViewPager;->mFirstOffset:F

    mul-float v6, v14, v15

    .line 1769
    .local v6, leftBound:F
    int-to-float v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Lmiui/v5/android/support/view/ViewPager;->mLastOffset:F

    mul-float v11, v14, v15

    .line 1770
    .local v11, rightBound:F
    const/4 v5, 0x1

    .line 1771
    .local v5, leftAbsolute:Z
    const/4 v10, 0x1

    .line 1773
    .local v10, rightAbsolute:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    .line 1774
    .local v3, firstItem:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    .line 1775
    .local v4, lastItem:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    iget v14, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    if-eqz v14, :cond_0

    .line 1776
    const/4 v5, 0x0

    .line 1777
    iget v14, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->offset:F

    int-to-float v15, v13

    mul-float v6, v14, v15

    .line 1779
    :cond_0
    iget v14, v4, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    invoke-virtual {v15}, Lmiui/v5/android/support/view/PagerAdapter;->getCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-eq v14, v15, :cond_1

    .line 1780
    const/4 v10, 0x0

    .line 1781
    iget v14, v4, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->offset:F

    int-to-float v15, v13

    mul-float v11, v14, v15

    .line 1784
    :cond_1
    cmpg-float v14, v12, v6

    if-gez v14, :cond_4

    .line 1785
    if-eqz v5, :cond_2

    .line 1786
    sub-float v9, v6, v12

    .line 1787
    .local v9, over:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/v5/android/support/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 1788
    const/4 v7, 0x1

    .line 1790
    .end local v9           #over:F
    :cond_2
    move v12, v6

    .line 1800
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lmiui/v5/android/support/view/ViewPager;->mLastMotionX:F

    float-to-int v15, v12

    int-to-float v15, v15

    sub-float v15, v12, v15

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lmiui/v5/android/support/view/ViewPager;->mLastMotionX:F

    .line 1801
    float-to-int v14, v12

    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getScrollY()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lmiui/v5/android/support/view/ViewPager;->scrollTo(II)V

    .line 1802
    float-to-int v14, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lmiui/v5/android/support/view/ViewPager;->pageScrolled(I)Z

    .line 1804
    return v7

    .line 1791
    :cond_4
    cmpl-float v14, v12, v11

    if-lez v14, :cond_3

    .line 1792
    if-eqz v10, :cond_5

    .line 1793
    sub-float v9, v12, v11

    .line 1794
    .restart local v9       #over:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/v5/android/support/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 1795
    const/4 v7, 0x1

    .line 1797
    .end local v9           #over:F
    :cond_5
    move v12, v11

    goto :goto_0
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 14
    .parameter "width"
    .parameter "oldWidth"
    .parameter "margin"
    .parameter "oldMargin"

    .prologue
    .line 1215
    if-lez p2, :cond_1

    iget-object v0, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1216
    add-int v12, p1, p3

    .line 1217
    .local v12, widthWithMargin:I
    add-int v7, p2, p4

    .line 1218
    .local v7, oldWidthWithMargin:I
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getScrollX()I

    move-result v13

    .line 1219
    .local v13, xpos:I
    int-to-float v0, v13

    int-to-float v2, v7

    div-float v8, v0, v2

    .line 1220
    .local v8, pageOffset:F
    int-to-float v0, v12

    mul-float/2addr v0, v8

    float-to-int v1, v0

    .line 1222
    .local v1, newOffsetPixels:I
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lmiui/v5/android/support/view/ViewPager;->scrollTo(II)V

    .line 1223
    iget-object v0, p0, Lmiui/v5/android/support/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1225
    iget-object v0, p0, Lmiui/v5/android/support/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v2, p0, Lmiui/v5/android/support/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    sub-int v5, v0, v2

    .line 1226
    .local v5, newDuration:I
    iget v0, p0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lmiui/v5/android/support/view/ViewPager;->infoForPosition(I)Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    move-result-object v11

    .line 1227
    .local v11, targetInfo:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    iget-object v0, p0, Lmiui/v5/android/support/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    iget v3, v11, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->offset:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1239
    .end local v1           #newOffsetPixels:I
    .end local v5           #newDuration:I
    .end local v7           #oldWidthWithMargin:I
    .end local v8           #pageOffset:F
    .end local v11           #targetInfo:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    .end local v12           #widthWithMargin:I
    .end local v13           #xpos:I
    :cond_0
    :goto_0
    return-void

    .line 1231
    :cond_1
    iget v0, p0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lmiui/v5/android/support/view/ViewPager;->infoForPosition(I)Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    move-result-object v6

    .line 1232
    .local v6, ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    if-eqz v6, :cond_2

    iget v0, v6, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->offset:F

    iget v2, p0, Lmiui/v5/android/support/view/ViewPager;->mLastOffset:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 1233
    .local v9, scrollOffset:F
    :goto_1
    int-to-float v0, p1

    mul-float/2addr v0, v9

    float-to-int v10, v0

    .line 1234
    .local v10, scrollPos:I
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getScrollX()I

    move-result v0

    if-eq v10, v0, :cond_0

    .line 1235
    invoke-direct {p0}, Lmiui/v5/android/support/view/ViewPager;->completeScroll()V

    .line 1236
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v10, v0}, Lmiui/v5/android/support/view/ViewPager;->scrollTo(II)V

    goto :goto_0

    .line 1232
    .end local v9           #scrollOffset:F
    .end local v10           #scrollPos:I
    :cond_2
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private removeNonDecorViews()V
    .locals 4

    .prologue
    .line 338
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 339
    invoke-virtual {p0, v1}, Lmiui/v5/android/support/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 340
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lmiui/v5/android/support/view/ViewPager$LayoutParams;

    .line 341
    .local v2, lp:Lmiui/v5/android/support/view/ViewPager$LayoutParams;
    iget-boolean v3, v2, Lmiui/v5/android/support/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_0

    .line 342
    invoke-virtual {p0, v1}, Lmiui/v5/android/support/view/ViewPager;->removeViewAt(I)V

    .line 343
    add-int/lit8 v1, v1, -0x1

    .line 338
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 346
    .end local v0           #child:Landroid/view/View;
    .end local v2           #lp:Lmiui/v5/android/support/view/ViewPager$LayoutParams;
    :cond_1
    return-void
.end method

.method private setScrollState(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 281
    iget v0, p0, Lmiui/v5/android/support/view/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iput p1, p0, Lmiui/v5/android/support/view/ViewPager;->mScrollState:I

    .line 286
    iget-object v0, p0, Lmiui/v5/android/support/view/ViewPager;->mOnPageChangeListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lmiui/v5/android/support/view/ViewPager;->mOnPageChangeListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2111
    iget-boolean v0, p0, Lmiui/v5/android/support/view/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2112
    iput-boolean p1, p0, Lmiui/v5/android/support/view/ViewPager;->mScrollingCacheEnabled:Z

    .line 2123
    :cond_0
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2289
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2291
    .local v2, focusableCount:I
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getDescendantFocusability()I

    move-result v1

    .line 2293
    .local v1, descendantFocusability:I
    const/high16 v5, 0x6

    if-eq v1, v5, :cond_1

    .line 2294
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 2295
    invoke-virtual {p0, v3}, Lmiui/v5/android/support/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2296
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 2297
    invoke-virtual {p0, v0}, Lmiui/v5/android/support/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 2298
    .local v4, ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    iget v6, p0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    if-ne v5, v6, :cond_0

    .line 2299
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2294
    .end local v4           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2309
    .end local v0           #child:Landroid/view/View;
    .end local v3           #i:I
    :cond_1
    const/high16 v5, 0x4

    if-ne v1, v5, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 2315
    :cond_2
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2326
    :cond_3
    :goto_1
    return-void

    .line 2318
    :cond_4
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2322
    :cond_5
    if-eqz p1, :cond_3

    .line 2323
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method addNewItem(II)Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    .locals 2
    .parameter "position"
    .parameter "index"

    .prologue
    .line 638
    new-instance v0, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Lmiui/v5/android/support/view/ViewPager$ItemInfo;-><init>()V

    .line 639
    .local v0, ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    iput p1, v0, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    .line 640
    iget-object v1, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Lmiui/v5/android/support/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 641
    iget-object v1, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    invoke-virtual {v1, p1}, Lmiui/v5/android/support/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->widthFactor:F

    .line 642
    if-ltz p2, :cond_0

    iget-object v1, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 643
    :cond_0
    iget-object v1, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    :goto_0
    return-object v0

    .line 645
    :cond_1
    iget-object v1, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2336
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2337
    invoke-virtual {p0, v1}, Lmiui/v5/android/support/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2338
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 2339
    invoke-virtual {p0, v0}, Lmiui/v5/android/support/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    move-result-object v2

    .line 2340
    .local v2, ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    iget v4, p0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    if-ne v3, v4, :cond_0

    .line 2341
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2336
    .end local v2           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2345
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 1048
    invoke-virtual {p0, p3}, Lmiui/v5/android/support/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1049
    invoke-virtual {p0, p3}, Lmiui/v5/android/support/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    .line 1051
    check-cast v0, Lmiui/v5/android/support/view/ViewPager$LayoutParams;

    .line 1052
    .local v0, lp:Lmiui/v5/android/support/view/ViewPager$LayoutParams;
    iget-boolean v1, v0, Lmiui/v5/android/support/view/ViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Lmiui/v5/android/support/view/ViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lmiui/v5/android/support/view/ViewPager$LayoutParams;->isDecor:Z

    .line 1053
    iget-boolean v1, p0, Lmiui/v5/android/support/view/ViewPager;->mInLayout:Z

    if-eqz v1, :cond_2

    .line 1054
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lmiui/v5/android/support/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_1

    .line 1055
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1057
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmiui/v5/android/support/view/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1058
    invoke-virtual {p0, p1, p2, p3}, Lmiui/v5/android/support/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1070
    :goto_0
    return-void

    .line 1060
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 8
    .parameter "direction"

    .prologue
    const/16 v7, 0x42

    const/16 v6, 0x11

    .line 2200
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2201
    .local v1, currentFocused:Landroid/view/View;
    if-ne v1, p0, :cond_0

    const/4 v1, 0x0

    .line 2203
    :cond_0
    const/4 v2, 0x0

    .line 2205
    .local v2, handled:Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    invoke-virtual {v5, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 2207
    .local v3, nextFocused:Landroid/view/View;
    if-eqz v3, :cond_6

    if-eq v3, v1, :cond_6

    .line 2208
    if-ne p1, v6, :cond_4

    .line 2211
    iget-object v5, p0, Lmiui/v5/android/support/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v5, v3}, Lmiui/v5/android/support/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    iget v4, v5, Landroid/graphics/Rect;->left:I

    .line 2212
    .local v4, nextLeft:I
    iget-object v5, p0, Lmiui/v5/android/support/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v5, v1}, Lmiui/v5/android/support/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 2213
    .local v0, currLeft:I
    if-eqz v1, :cond_3

    if-lt v4, v0, :cond_3

    .line 2214
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->pageLeft()Z

    move-result v2

    .line 2236
    .end local v0           #currLeft:I
    .end local v4           #nextLeft:I
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 2237
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lmiui/v5/android/support/view/ViewPager;->playSoundEffect(I)V

    .line 2239
    :cond_2
    return v2

    .line 2216
    .restart local v0       #currLeft:I
    .restart local v4       #nextLeft:I
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto :goto_0

    .line 2218
    .end local v0           #currLeft:I
    .end local v4           #nextLeft:I
    :cond_4
    if-ne p1, v7, :cond_1

    .line 2221
    iget-object v5, p0, Lmiui/v5/android/support/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v5, v3}, Lmiui/v5/android/support/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    iget v4, v5, Landroid/graphics/Rect;->left:I

    .line 2222
    .restart local v4       #nextLeft:I
    iget-object v5, p0, Lmiui/v5/android/support/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v5, v1}, Lmiui/v5/android/support/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 2223
    .restart local v0       #currLeft:I
    if-eqz v1, :cond_5

    if-gt v4, v0, :cond_5

    .line 2224
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->pageRight()Z

    move-result v2

    goto :goto_0

    .line 2226
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto :goto_0

    .line 2229
    .end local v0           #currLeft:I
    .end local v4           #nextLeft:I
    :cond_6
    if-eq p1, v6, :cond_7

    const/4 v5, 0x1

    if-ne p1, v5, :cond_8

    .line 2231
    :cond_7
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->pageLeft()Z

    move-result v2

    goto :goto_0

    .line 2232
    :cond_8
    if-eq p1, v7, :cond_9

    const/4 v5, 0x2

    if-ne p1, v5, :cond_1

    .line 2234
    :cond_9
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->pageRight()Z

    move-result v2

    goto :goto_0
.end method

.method public beginFakeDrag()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1976
    iget-boolean v2, p0, Lmiui/v5/android/support/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 1992
    :goto_0
    return v4

    .line 1979
    :cond_0
    iput-boolean v9, p0, Lmiui/v5/android/support/view/ViewPager;->mFakeDragging:Z

    .line 1980
    invoke-direct {p0, v9}, Lmiui/v5/android/support/view/ViewPager;->setScrollState(I)V

    .line 1981
    iput v5, p0, Lmiui/v5/android/support/view/ViewPager;->mLastMotionX:F

    iput v5, p0, Lmiui/v5/android/support/view/ViewPager;->mInitialMotionX:F

    .line 1982
    iget-object v2, p0, Lmiui/v5/android/support/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 1983
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lmiui/v5/android/support/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1987
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, time:J
    move-wide v2, v0

    move v6, v5

    move v7, v4

    .line 1988
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1989
    .local v8, ev:Landroid/view/MotionEvent;
    iget-object v2, p0, Lmiui/v5/android/support/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1990
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1991
    iput-wide v0, p0, Lmiui/v5/android/support/view/ViewPager;->mFakeDragBeginTime:J

    move v4, v9

    .line 1992
    goto :goto_0

    .line 1985
    .end local v0           #time:J
    .end local v8           #ev:Landroid/view/MotionEvent;
    :cond_1
    iget-object v2, p0, Lmiui/v5/android/support/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .parameter "v"
    .parameter "checkV"
    .parameter "dx"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2137
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 2138
    check-cast v7, Landroid/view/ViewGroup;

    .line 2139
    .local v7, group:Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 2140
    .local v9, scrollX:I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 2141
    .local v10, scrollY:I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 2143
    .local v6, count:I
    add-int/lit8 v8, v6, -0x1

    .local v8, i:I
    :goto_0
    if-ltz v8, :cond_1

    .line 2146
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2147
    .local v1, child:Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lmiui/v5/android/support/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2151
    const/4 v0, 0x1

    .line 2156
    .end local v1           #child:Landroid/view/View;
    .end local v6           #count:I
    .end local v7           #group:Landroid/view/ViewGroup;
    .end local v8           #i:I
    .end local v9           #scrollX:I
    .end local v10           #scrollY:I
    :goto_1
    return v0

    .line 2143
    .restart local v1       #child:Landroid/view/View;
    .restart local v6       #count:I
    .restart local v7       #group:Landroid/view/ViewGroup;
    .restart local v8       #i:I
    .restart local v9       #scrollX:I
    .restart local v10       #scrollY:I
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 2156
    .end local v1           #child:Landroid/view/View;
    .end local v6           #count:I
    .end local v7           #group:Landroid/view/ViewGroup;
    .end local v8           #i:I
    .end local v9           #scrollX:I
    .end local v10           #scrollY:I
    :cond_1
    if-eqz p2, :cond_2

    neg-int v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 2414
    instance-of v0, p1, Lmiui/v5/android/support/view/ViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    .line 1351
    iget-object v4, p0, Lmiui/v5/android/support/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lmiui/v5/android/support/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1352
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getScrollX()I

    move-result v0

    .line 1353
    .local v0, oldX:I
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getScrollY()I

    move-result v1

    .line 1354
    .local v1, oldY:I
    iget-object v4, p0, Lmiui/v5/android/support/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1355
    .local v2, x:I
    iget-object v4, p0, Lmiui/v5/android/support/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1357
    .local v3, y:I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1358
    :cond_0
    invoke-virtual {p0, v2, v3}, Lmiui/v5/android/support/view/ViewPager;->scrollTo(II)V

    .line 1359
    invoke-direct {p0, v2}, Lmiui/v5/android/support/view/ViewPager;->pageScrolled(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1360
    iget-object v4, p0, Lmiui/v5/android/support/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1361
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lmiui/v5/android/support/view/ViewPager;->scrollTo(II)V

    .line 1366
    :cond_1
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->postInvalidateOnAnimation()V

    .line 1372
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    .end local v2           #x:I
    .end local v3           #y:I
    :goto_0
    return-void

    .line 1371
    :cond_2
    invoke-direct {p0}, Lmiui/v5/android/support/view/ViewPager;->completeScroll()V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 653
    iget-object v11, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget v12, p0, Lmiui/v5/android/support/view/ViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, 0x1

    if-ge v11, v12, :cond_1

    iget-object v11, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget-object v12, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    invoke-virtual {v12}, Lmiui/v5/android/support/view/PagerAdapter;->getCount()I

    move-result v12

    if-ge v11, v12, :cond_1

    move v6, v9

    .line 655
    .local v6, needPopulate:Z
    :goto_0
    iget v7, p0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    .line 657
    .local v7, newCurrItem:I
    const/4 v4, 0x0

    .line 658
    .local v4, isUpdating:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v11, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_6

    .line 659
    iget-object v11, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    .line 660
    .local v3, ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    iget-object v11, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    iget-object v12, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Lmiui/v5/android/support/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    .line 662
    .local v8, newPos:I
    const/4 v11, -0x1

    if-ne v8, v11, :cond_2

    .line 658
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2           #i:I
    .end local v3           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    .end local v4           #isUpdating:Z
    .end local v6           #needPopulate:Z
    .end local v7           #newCurrItem:I
    .end local v8           #newPos:I
    :cond_1
    move v6, v10

    .line 653
    goto :goto_0

    .line 666
    .restart local v2       #i:I
    .restart local v3       #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    .restart local v4       #isUpdating:Z
    .restart local v6       #needPopulate:Z
    .restart local v7       #newCurrItem:I
    .restart local v8       #newPos:I
    :cond_2
    const/4 v11, -0x2

    if-ne v8, v11, :cond_4

    .line 667
    iget-object v11, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 668
    add-int/lit8 v2, v2, -0x1

    .line 670
    if-nez v4, :cond_3

    .line 671
    iget-object v11, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    invoke-virtual {v11, p0}, Lmiui/v5/android/support/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 672
    const/4 v4, 0x1

    .line 675
    :cond_3
    iget-object v11, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    iget v12, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    iget-object v13, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v11, p0, v12, v13}, Lmiui/v5/android/support/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 676
    const/4 v6, 0x1

    .line 678
    iget v11, p0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    iget v12, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    if-ne v11, v12, :cond_0

    .line 680
    iget v11, p0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    iget-object v12, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    invoke-virtual {v12}, Lmiui/v5/android/support/view/PagerAdapter;->getCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 681
    const/4 v6, 0x1

    goto :goto_2

    .line 686
    :cond_4
    iget v11, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    if-eq v11, v8, :cond_0

    .line 687
    iget v11, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    iget v12, p0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    if-ne v11, v12, :cond_5

    .line 689
    move v7, v8

    .line 692
    :cond_5
    iput v8, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    .line 693
    const/4 v6, 0x1

    goto :goto_2

    .line 697
    .end local v3           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    .end local v8           #newPos:I
    :cond_6
    if-eqz v4, :cond_7

    .line 698
    iget-object v11, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    invoke-virtual {v11, p0}, Lmiui/v5/android/support/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 701
    :cond_7
    iget-object v11, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v12, Lmiui/v5/android/support/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 703
    if-eqz v6, :cond_a

    .line 705
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getChildCount()I

    move-result v1

    .line 706
    .local v1, childCount:I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_9

    .line 707
    invoke-virtual {p0, v2}, Lmiui/v5/android/support/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 708
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lmiui/v5/android/support/view/ViewPager$LayoutParams;

    .line 709
    .local v5, lp:Lmiui/v5/android/support/view/ViewPager$LayoutParams;
    iget-boolean v11, v5, Lmiui/v5/android/support/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v11, :cond_8

    .line 710
    const/4 v11, 0x0

    iput v11, v5, Lmiui/v5/android/support/view/ViewPager$LayoutParams;->widthFactor:F

    .line 706
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 714
    .end local v0           #child:Landroid/view/View;
    .end local v5           #lp:Lmiui/v5/android/support/view/ViewPager$LayoutParams;
    :cond_9
    invoke-virtual {p0, v7, v10, v9}, Lmiui/v5/android/support/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 715
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->requestLayout()V

    .line 717
    .end local v1           #childCount:I
    :cond_a
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2162
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lmiui/v5/android/support/view/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 2387
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getChildCount()I

    move-result v1

    .line 2388
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2389
    invoke-virtual {p0, v2}, Lmiui/v5/android/support/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2390
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2391
    invoke-virtual {p0, v0}, Lmiui/v5/android/support/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    move-result-object v3

    .line 2392
    .local v3, ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    if-eqz v3, :cond_0

    iget v4, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    iget v5, p0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2394
    const/4 v4, 0x1

    .line 2399
    .end local v0           #child:Landroid/view/View;
    .end local v3           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    :goto_1
    return v4

    .line 2388
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2399
    .end local v0           #child:Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .parameter "f"

    .prologue
    .line 574
    const/high16 v0, 0x3f00

    sub-float/2addr p1, v0

    .line 575
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 576
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v6, 0x1

    .line 1874
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1875
    const/4 v1, 0x0

    .line 1877
    .local v1, needsInvalidate:Z
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getOverScrollMode()I

    move-result v2

    .line 1878
    .local v2, overScrollMode:I
    if-eqz v2, :cond_0

    if-ne v2, v6, :cond_4

    iget-object v5, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    invoke-virtual {v5}, Lmiui/v5/android/support/view/PagerAdapter;->getCount()I

    move-result v5

    if-le v5, v6, :cond_4

    .line 1881
    :cond_0
    iget-object v5, p0, Lmiui/v5/android/support/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1882
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 1883
    .local v3, restoreCount:I
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 1884
    .local v0, height:I
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getWidth()I

    move-result v4

    .line 1886
    .local v4, width:I
    const/high16 v5, 0x4387

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1887
    neg-int v5, v0

    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lmiui/v5/android/support/view/ViewPager;->mFirstOffset:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1888
    iget-object v5, p0, Lmiui/v5/android/support/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v0, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1889
    iget-object v5, p0, Lmiui/v5/android/support/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 1890
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1892
    .end local v0           #height:I
    .end local v3           #restoreCount:I
    .end local v4           #width:I
    :cond_1
    iget-object v5, p0, Lmiui/v5/android/support/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1893
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 1894
    .restart local v3       #restoreCount:I
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getWidth()I

    move-result v4

    .line 1895
    .restart local v4       #width:I
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 1897
    .restart local v0       #height:I
    const/high16 v5, 0x42b4

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1898
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Lmiui/v5/android/support/view/ViewPager;->mLastOffset:F

    const/high16 v7, 0x3f80

    add-float/2addr v6, v7

    neg-float v6, v6

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1899
    iget-object v5, p0, Lmiui/v5/android/support/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v0, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1900
    iget-object v5, p0, Lmiui/v5/android/support/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 1901
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1908
    .end local v0           #height:I
    .end local v3           #restoreCount:I
    .end local v4           #width:I
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 1910
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->postInvalidateOnAnimation()V

    .line 1912
    :cond_3
    return-void

    .line 1904
    :cond_4
    iget-object v5, p0, Lmiui/v5/android/support/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->finish()V

    .line 1905
    iget-object v5, p0, Lmiui/v5/android/support/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 562
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 563
    iget-object v0, p0, Lmiui/v5/android/support/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 564
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 567
    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 2002
    iget-boolean v9, p0, Lmiui/v5/android/support/view/ViewPager;->mFakeDragging:Z

    if-nez v9, :cond_0

    .line 2003
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2006
    :cond_0
    iget-object v7, p0, Lmiui/v5/android/support/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2007
    .local v7, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v9, 0x3e8

    iget v10, p0, Lmiui/v5/android/support/view/ViewPager;->mMaximumVelocity:I

    int-to-float v10, v10

    invoke-virtual {v7, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2008
    iget v9, p0, Lmiui/v5/android/support/view/ViewPager;->mActivePointerId:I

    invoke-virtual {v7, v9}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v9

    float-to-int v2, v9

    .line 2009
    .local v2, initialVelocity:I
    iput-boolean v11, p0, Lmiui/v5/android/support/view/ViewPager;->mPopulatePending:Z

    .line 2010
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getWidth()I

    move-result v8

    .line 2011
    .local v8, width:I
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getScrollX()I

    move-result v5

    .line 2012
    .local v5, scrollX:I
    invoke-direct {p0}, Lmiui/v5/android/support/view/ViewPager;->infoForCurrentScrollPosition()Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    move-result-object v1

    .line 2013
    .local v1, ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    iget v0, v1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    .line 2014
    .local v0, currentPage:I
    int-to-float v9, v5

    int-to-float v10, v8

    div-float/2addr v9, v10

    iget v10, v1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v9, v10

    iget v10, v1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->widthFactor:F

    div-float v4, v9, v10

    .line 2015
    .local v4, pageOffset:F
    iget v9, p0, Lmiui/v5/android/support/view/ViewPager;->mLastMotionX:F

    iget v10, p0, Lmiui/v5/android/support/view/ViewPager;->mInitialMotionX:F

    sub-float/2addr v9, v10

    float-to-int v6, v9

    .line 2016
    .local v6, totalDelta:I
    invoke-direct {p0, v0, v4, v2, v6}, Lmiui/v5/android/support/view/ViewPager;->determineTargetPage(IFII)I

    move-result v3

    .line 2018
    .local v3, nextPage:I
    invoke-virtual {p0, v3, v11, v11, v2}, Lmiui/v5/android/support/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 2019
    invoke-direct {p0}, Lmiui/v5/android/support/view/ViewPager;->endDrag()V

    .line 2021
    const/4 v9, 0x0

    iput-boolean v9, p0, Lmiui/v5/android/support/view/ViewPager;->mFakeDragging:Z

    .line 2022
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 2174
    const/4 v0, 0x0

    .line 2175
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2176
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2196
    :cond_0
    :goto_0
    return v0

    .line 2178
    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lmiui/v5/android/support/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2179
    goto :goto_0

    .line 2181
    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lmiui/v5/android/support/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2182
    goto :goto_0

    .line 2184
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 2187
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2188
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lmiui/v5/android/support/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2189
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2190
    invoke-virtual {p0, v3}, Lmiui/v5/android/support/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2176
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public fakeDragBy(F)V
    .locals 17
    .parameter "xOffset"

    .prologue
    .line 2032
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lmiui/v5/android/support/view/ViewPager;->mFakeDragging:Z

    if-nez v1, :cond_0

    .line 2033
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2036
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lmiui/v5/android/support/view/ViewPager;->mLastMotionX:F

    add-float v1, v1, p1

    move-object/from16 v0, p0

    iput v1, v0, Lmiui/v5/android/support/view/ViewPager;->mLastMotionX:F

    .line 2038
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getScrollX()I

    move-result v1

    int-to-float v13, v1

    .line 2039
    .local v13, oldScrollX:F
    sub-float v15, v13, p1

    .line 2040
    .local v15, scrollX:F
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getWidth()I

    move-result v16

    .line 2042
    .local v16, width:I
    move/from16 v0, v16

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lmiui/v5/android/support/view/ViewPager;->mFirstOffset:F

    mul-float v12, v1, v2

    .line 2043
    .local v12, leftBound:F
    move/from16 v0, v16

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lmiui/v5/android/support/view/ViewPager;->mLastOffset:F

    mul-float v14, v1, v2

    .line 2045
    .local v14, rightBound:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    .line 2046
    .local v10, firstItem:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    .line 2047
    .local v11, lastItem:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    iget v1, v10, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    if-eqz v1, :cond_1

    .line 2048
    iget v1, v10, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->offset:F

    move/from16 v0, v16

    int-to-float v2, v0

    mul-float v12, v1, v2

    .line 2050
    :cond_1
    iget v1, v11, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    invoke-virtual {v2}, Lmiui/v5/android/support/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2

    .line 2051
    iget v1, v11, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->offset:F

    move/from16 v0, v16

    int-to-float v2, v0

    mul-float v14, v1, v2

    .line 2054
    :cond_2
    cmpg-float v1, v15, v12

    if-gez v1, :cond_4

    .line 2055
    move v15, v12

    .line 2060
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lmiui/v5/android/support/view/ViewPager;->mLastMotionX:F

    float-to-int v2, v15

    int-to-float v2, v2

    sub-float v2, v15, v2

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lmiui/v5/android/support/view/ViewPager;->mLastMotionX:F

    .line 2061
    float-to-int v1, v15

    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getScrollY()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lmiui/v5/android/support/view/ViewPager;->scrollTo(II)V

    .line 2062
    float-to-int v1, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lmiui/v5/android/support/view/ViewPager;->pageScrolled(I)Z

    .line 2065
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 2066
    .local v3, time:J
    move-object/from16 v0, p0

    iget-wide v1, v0, Lmiui/v5/android/support/view/ViewPager;->mFakeDragBeginTime:J

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lmiui/v5/android/support/view/ViewPager;->mLastMotionX:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 2068
    .local v9, ev:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/v5/android/support/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v9}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2069
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 2070
    return-void

    .line 2056
    .end local v3           #time:J
    .end local v9           #ev:Landroid/view/MotionEvent;
    :cond_4
    cmpl-float v1, v15, v14

    if-lez v1, :cond_3

    .line 2057
    move v15, v14

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2404
    new-instance v0, Lmiui/v5/android/support/view/ViewPager$LayoutParams;

    invoke-direct {v0}, Lmiui/v5/android/support/view/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 2419
    new-instance v0, Lmiui/v5/android/support/view/ViewPager$LayoutParams;

    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiui/v5/android/support/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 2409
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lmiui/v5/android/support/view/PagerAdapter;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lmiui/v5/android/support/view/ViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Lmiui/v5/android/support/view/ViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    .locals 2
    .parameter "child"

    .prologue
    .line 1084
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, parent:Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2

    .line 1085
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 1086
    :cond_0
    const/4 v1, 0x0

    .line 1090
    :goto_1
    return-object v1

    :cond_1
    move-object p1, v0

    .line 1088
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1090
    :cond_2
    invoke-virtual {p0, p1}, Lmiui/v5/android/support/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    move-result-object v1

    goto :goto_1
.end method

.method infoForChild(Landroid/view/View;)Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    .locals 4
    .parameter "child"

    .prologue
    .line 1073
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1074
    iget-object v2, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    .line 1075
    .local v1, ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    iget-object v2, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    iget-object v3, v1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lmiui/v5/android/support/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1079
    .end local v1           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    :goto_1
    return-object v1

    .line 1073
    .restart local v1       #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1079
    .end local v1           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method infoForPosition(I)Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    .locals 3
    .parameter "position"

    .prologue
    .line 1094
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1095
    iget-object v2, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    .line 1096
    .local v1, ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    iget v2, v1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    .line 1100
    .end local v1           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    :goto_1
    return-object v1

    .line 1094
    .restart local v1       #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1100
    .end local v1           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method initViewPager()V
    .locals 5

    .prologue
    .line 262
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lmiui/v5/android/support/view/ViewPager;->setWillNotDraw(Z)V

    .line 263
    const/high16 v3, 0x4

    invoke-virtual {p0, v3}, Lmiui/v5/android/support/view/ViewPager;->setDescendantFocusability(I)V

    .line 264
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lmiui/v5/android/support/view/ViewPager;->setFocusable(Z)V

    .line 265
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 266
    .local v1, context:Landroid/content/Context;
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Lmiui/v5/android/support/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lmiui/v5/android/support/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 267
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 268
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Lmiui/v5/android/support/view/ViewPager;->mTouchSlop:I

    .line 269
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lmiui/v5/android/support/view/ViewPager;->mMinimumVelocity:I

    .line 270
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lmiui/v5/android/support/view/ViewPager;->mMaximumVelocity:I

    .line 271
    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lmiui/v5/android/support/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 272
    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lmiui/v5/android/support/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 274
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 275
    .local v2, density:F
    const/high16 v3, 0x41c8

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lmiui/v5/android/support/view/ViewPager;->mFlingDistance:I

    .line 276
    const/high16 v3, 0x4000

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lmiui/v5/android/support/view/ViewPager;->mCloseEnough:I

    .line 277
    const/high16 v3, 0x4180

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lmiui/v5/android/support/view/ViewPager;->mDefaultGutterSize:I

    .line 278
    return-void
.end method

.method public isFakeDragging()Z
    .locals 1

    .prologue
    .line 2082
    iget-boolean v0, p0, Lmiui/v5/android/support/view/ViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1105
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/v5/android/support/view/ViewPager;->mFirstLayout:Z

    .line 1107
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    .line 1916
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1919
    move-object/from16 v0, p0

    iget v13, v0, Lmiui/v5/android/support/view/ViewPager;->mPageMargin:I

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/v5/android/support/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    if-eqz v13, :cond_2

    .line 1920
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getScrollX()I

    move-result v10

    .line 1921
    .local v10, scrollX:I
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getWidth()I

    move-result v11

    .line 1923
    .local v11, width:I
    move-object/from16 v0, p0

    iget v13, v0, Lmiui/v5/android/support/view/ViewPager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v11

    div-float v7, v13, v14

    .line 1924
    .local v7, marginOffset:F
    const/4 v5, 0x0

    .line 1925
    .local v5, itemIndex:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    .line 1926
    .local v3, ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    iget v8, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->offset:F

    .line 1927
    .local v8, offset:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1928
    .local v4, itemCount:I
    iget v2, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    .line 1929
    .local v2, firstPos:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    iget v6, v13, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    .line 1930
    .local v6, lastPos:I
    move v9, v2

    .local v9, pos:I
    :goto_0
    if-ge v9, v6, :cond_2

    .line 1931
    :goto_1
    iget v13, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    if-le v9, v13, :cond_0

    if-ge v5, v4, :cond_0

    .line 1932
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    check-cast v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    .restart local v3       #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    goto :goto_1

    .line 1936
    :cond_0
    iget v13, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    if-ne v9, v13, :cond_3

    .line 1937
    iget v13, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->offset:F

    iget v14, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    int-to-float v14, v11

    mul-float v1, v13, v14

    .line 1938
    .local v1, drawAt:F
    iget v13, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->offset:F

    iget v14, v3, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    add-float v8, v13, v7

    .line 1945
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lmiui/v5/android/support/view/ViewPager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v1

    int-to-float v14, v10

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    .line 1946
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/v5/android/support/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v14, v1

    move-object/from16 v0, p0

    iget v15, v0, Lmiui/v5/android/support/view/ViewPager;->mTopPageBounds:I

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mPageMargin:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v16, v16, v1

    const/high16 v17, 0x3f00

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mBottomPageBounds:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1948
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/v5/android/support/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1951
    :cond_1
    add-int v13, v10, v11

    int-to-float v13, v13

    cmpl-float v13, v1, v13

    if-lez v13, :cond_4

    .line 1956
    .end local v1           #drawAt:F
    .end local v2           #firstPos:I
    .end local v3           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    .end local v4           #itemCount:I
    .end local v5           #itemIndex:I
    .end local v6           #lastPos:I
    .end local v7           #marginOffset:F
    .end local v8           #offset:F
    .end local v9           #pos:I
    .end local v10           #scrollX:I
    .end local v11           #width:I
    :cond_2
    return-void

    .line 1940
    .restart local v2       #firstPos:I
    .restart local v3       #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    .restart local v4       #itemCount:I
    .restart local v5       #itemIndex:I
    .restart local v6       #lastPos:I
    .restart local v7       #marginOffset:F
    .restart local v8       #offset:F
    .restart local v9       #pos:I
    .restart local v10       #scrollX:I
    .restart local v11       #width:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    invoke-virtual {v13, v9}, Lmiui/v5/android/support/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    .line 1941
    .local v12, widthFactor:F
    add-float v13, v8, v12

    int-to-float v14, v11

    mul-float v1, v13, v14

    .line 1942
    .restart local v1       #drawAt:F
    add-float v13, v12, v7

    add-float/2addr v8, v13

    goto :goto_2

    .line 1930
    .end local v12           #widthFactor:F
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    .line 1504
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 1507
    .local v6, action:I
    const/4 v0, 0x3

    if-eq v6, v0, :cond_0

    const/4 v0, 0x1

    if-ne v6, v0, :cond_2

    .line 1510
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/v5/android/support/view/ViewPager;->mIsBeingDragged:Z

    .line 1511
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/v5/android/support/view/ViewPager;->mIsUnableToDrag:Z

    .line 1512
    const/4 v0, -0x1

    iput v0, p0, Lmiui/v5/android/support/view/ViewPager;->mActivePointerId:I

    .line 1513
    iget-object v0, p0, Lmiui/v5/android/support/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 1514
    iget-object v0, p0, Lmiui/v5/android/support/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1515
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/v5/android/support/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1517
    :cond_1
    const/4 v0, 0x0

    .line 1636
    :goto_0
    return v0

    .line 1522
    :cond_2
    if-eqz v6, :cond_4

    .line 1523
    iget-boolean v0, p0, Lmiui/v5/android/support/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_3

    .line 1525
    const/4 v0, 0x1

    goto :goto_0

    .line 1527
    :cond_3
    iget-boolean v0, p0, Lmiui/v5/android/support/view/ViewPager;->mIsUnableToDrag:Z

    if-eqz v0, :cond_4

    .line 1529
    const/4 v0, 0x0

    goto :goto_0

    .line 1533
    :cond_4
    sparse-switch v6, :sswitch_data_0

    .line 1627
    :cond_5
    :goto_1
    iget-object v0, p0, Lmiui/v5/android/support/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    .line 1628
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/v5/android/support/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1630
    :cond_6
    iget-object v0, p0, Lmiui/v5/android/support/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1636
    iget-boolean v0, p0, Lmiui/v5/android/support/view/ViewPager;->mIsBeingDragged:Z

    goto :goto_0

    .line 1544
    :sswitch_0
    iget v7, p0, Lmiui/v5/android/support/view/ViewPager;->mActivePointerId:I

    .line 1545
    .local v7, activePointerId:I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_5

    .line 1550
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 1551
    .local v9, pointerIndex:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 1552
    .local v10, x:F
    iget v0, p0, Lmiui/v5/android/support/view/ViewPager;->mLastMotionX:F

    sub-float v8, v10, v0

    .line 1553
    .local v8, dx:F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1554
    .local v11, xDiff:F
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 1555
    .local v12, y:F
    iget v0, p0, Lmiui/v5/android/support/view/ViewPager;->mLastMotionY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 1558
    .local v13, yDiff:F
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_7

    iget v0, p0, Lmiui/v5/android/support/view/ViewPager;->mLastMotionX:F

    invoke-direct {p0, v0, v8}, Lmiui/v5/android/support/view/ViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v2, 0x0

    float-to-int v3, v8

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lmiui/v5/android/support/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1561
    iput v10, p0, Lmiui/v5/android/support/view/ViewPager;->mLastMotionX:F

    iput v10, p0, Lmiui/v5/android/support/view/ViewPager;->mInitialMotionX:F

    .line 1562
    iput v12, p0, Lmiui/v5/android/support/view/ViewPager;->mLastMotionY:F

    .line 1563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/v5/android/support/view/ViewPager;->mIsUnableToDrag:Z

    .line 1564
    const/4 v0, 0x0

    goto :goto_0

    .line 1566
    :cond_7
    iget v0, p0, Lmiui/v5/android/support/view/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_a

    cmpl-float v0, v11, v13

    if-lez v0, :cond_a

    .line 1568
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/v5/android/support/view/ViewPager;->mIsBeingDragged:Z

    .line 1569
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/v5/android/support/view/ViewPager;->setScrollState(I)V

    .line 1570
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_9

    iget v0, p0, Lmiui/v5/android/support/view/ViewPager;->mInitialMotionX:F

    iget v1, p0, Lmiui/v5/android/support/view/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Lmiui/v5/android/support/view/ViewPager;->mLastMotionX:F

    .line 1572
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/v5/android/support/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1583
    :cond_8
    :goto_3
    iget-boolean v0, p0, Lmiui/v5/android/support/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_5

    .line 1585
    invoke-direct {p0, v10}, Lmiui/v5/android/support/view/ViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1586
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->postInvalidateOnAnimation()V

    goto/16 :goto_1

    .line 1570
    :cond_9
    iget v0, p0, Lmiui/v5/android/support/view/ViewPager;->mInitialMotionX:F

    iget v1, p0, Lmiui/v5/android/support/view/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    .line 1574
    :cond_a
    iget v0, p0, Lmiui/v5/android/support/view/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_8

    .line 1580
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/v5/android/support/view/ViewPager;->mIsUnableToDrag:Z

    goto :goto_3

    .line 1597
    .end local v7           #activePointerId:I
    .end local v8           #dx:F
    .end local v9           #pointerIndex:I
    .end local v10           #x:F
    .end local v11           #xDiff:F
    .end local v12           #y:F
    .end local v13           #yDiff:F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lmiui/v5/android/support/view/ViewPager;->mInitialMotionX:F

    iput v0, p0, Lmiui/v5/android/support/view/ViewPager;->mLastMotionX:F

    .line 1598
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lmiui/v5/android/support/view/ViewPager;->mLastMotionY:F

    .line 1599
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiui/v5/android/support/view/ViewPager;->mActivePointerId:I

    .line 1600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/v5/android/support/view/ViewPager;->mIsUnableToDrag:Z

    .line 1602
    iget-object v0, p0, Lmiui/v5/android/support/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1603
    iget v0, p0, Lmiui/v5/android/support/view/ViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lmiui/v5/android/support/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Lmiui/v5/android/support/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lmiui/v5/android/support/view/ViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_b

    .line 1606
    iget-object v0, p0, Lmiui/v5/android/support/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1607
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/v5/android/support/view/ViewPager;->mPopulatePending:Z

    .line 1608
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->populate()V

    .line 1609
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/v5/android/support/view/ViewPager;->mIsBeingDragged:Z

    .line 1610
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/v5/android/support/view/ViewPager;->setScrollState(I)V

    goto/16 :goto_1

    .line 1612
    :cond_b
    invoke-direct {p0}, Lmiui/v5/android/support/view/ViewPager;->completeScroll()V

    .line 1613
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/v5/android/support/view/ViewPager;->mIsBeingDragged:Z

    goto/16 :goto_1

    .line 1623
    :sswitch_2
    invoke-direct {p0, p1}, Lmiui/v5/android/support/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1533
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 24
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1243
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmiui/v5/android/support/view/ViewPager;->mInLayout:Z

    .line 1244
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->populate()V

    .line 1245
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmiui/v5/android/support/view/ViewPager;->mInLayout:Z

    .line 1247
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getChildCount()I

    move-result v5

    .line 1248
    .local v5, count:I
    sub-int v20, p4, p2

    .line 1249
    .local v20, width:I
    sub-int v7, p5, p3

    .line 1250
    .local v7, height:I
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getPaddingLeft()I

    move-result v15

    .line 1251
    .local v15, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getPaddingTop()I

    move-result v17

    .line 1252
    .local v17, paddingTop:I
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getPaddingRight()I

    move-result v16

    .line 1253
    .local v16, paddingRight:I
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getPaddingBottom()I

    move-result v14

    .line 1254
    .local v14, paddingBottom:I
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getScrollX()I

    move-result v18

    .line 1256
    .local v18, scrollX:I
    const/4 v6, 0x0

    .line 1260
    .local v6, decorCount:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v5, :cond_1

    .line 1261
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lmiui/v5/android/support/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1262
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 1263
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lmiui/v5/android/support/view/ViewPager$LayoutParams;

    .line 1264
    .local v13, lp:Lmiui/v5/android/support/view/ViewPager$LayoutParams;
    const/4 v3, 0x0

    .line 1265
    .local v3, childLeft:I
    const/4 v4, 0x0

    .line 1266
    .local v4, childTop:I
    iget-boolean v0, v13, Lmiui/v5/android/support/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 1267
    iget v0, v13, Lmiui/v5/android/support/view/ViewPager$LayoutParams;->gravity:I

    move/from16 v22, v0

    and-int/lit8 v9, v22, 0x7

    .line 1268
    .local v9, hgrav:I
    iget v0, v13, Lmiui/v5/android/support/view/ViewPager$LayoutParams;->gravity:I

    move/from16 v22, v0

    and-int/lit8 v19, v22, 0x70

    .line 1269
    .local v19, vgrav:I
    packed-switch v9, :pswitch_data_0

    .line 1271
    :pswitch_0
    move v3, v15

    .line 1286
    :goto_1
    sparse-switch v19, :sswitch_data_0

    .line 1288
    move/from16 v4, v17

    .line 1303
    :goto_2
    add-int v3, v3, v18

    .line 1304
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    add-int v22, v22, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    add-int v23, v23, v4

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1307
    add-int/lit8 v6, v6, 0x1

    .line 1260
    .end local v3           #childLeft:I
    .end local v4           #childTop:I
    .end local v9           #hgrav:I
    .end local v13           #lp:Lmiui/v5/android/support/view/ViewPager$LayoutParams;
    .end local v19           #vgrav:I
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1274
    .restart local v3       #childLeft:I
    .restart local v4       #childTop:I
    .restart local v9       #hgrav:I
    .restart local v13       #lp:Lmiui/v5/android/support/view/ViewPager$LayoutParams;
    .restart local v19       #vgrav:I
    :pswitch_1
    move v3, v15

    .line 1275
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    add-int v15, v15, v22

    .line 1276
    goto :goto_1

    .line 1278
    :pswitch_2
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    sub-int v22, v20, v22

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1280
    goto :goto_1

    .line 1282
    :pswitch_3
    sub-int v22, v20, v16

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    sub-int v3, v22, v23

    .line 1283
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    add-int v16, v16, v22

    goto :goto_1

    .line 1291
    :sswitch_0
    move/from16 v4, v17

    .line 1292
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v17, v17, v22

    .line 1293
    goto :goto_2

    .line 1295
    :sswitch_1
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    sub-int v22, v7, v22

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1297
    goto :goto_2

    .line 1299
    :sswitch_2
    sub-int v22, v7, v14

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    sub-int v4, v22, v23

    .line 1300
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v14, v14, v22

    goto :goto_2

    .line 1313
    .end local v2           #child:Landroid/view/View;
    .end local v3           #childLeft:I
    .end local v4           #childTop:I
    .end local v9           #hgrav:I
    .end local v13           #lp:Lmiui/v5/android/support/view/ViewPager$LayoutParams;
    .end local v19           #vgrav:I
    :cond_1
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v5, :cond_4

    .line 1314
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lmiui/v5/android/support/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1315
    .restart local v2       #child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_3

    .line 1316
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lmiui/v5/android/support/view/ViewPager$LayoutParams;

    .line 1318
    .restart local v13       #lp:Lmiui/v5/android/support/view/ViewPager$LayoutParams;
    iget-boolean v0, v13, Lmiui/v5/android/support/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v22, v0

    if-nez v22, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmiui/v5/android/support/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    move-result-object v11

    .local v11, ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    if-eqz v11, :cond_3

    .line 1319
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v11, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->offset:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v12, v0

    .line 1320
    .local v12, loff:I
    add-int v3, v15, v12

    .line 1321
    .restart local v3       #childLeft:I
    move/from16 v4, v17

    .line 1322
    .restart local v4       #childTop:I
    iget-boolean v0, v13, Lmiui/v5/android/support/view/ViewPager$LayoutParams;->needsMeasure:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 1325
    const/16 v22, 0x0

    move/from16 v0, v22

    iput-boolean v0, v13, Lmiui/v5/android/support/view/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1326
    sub-int v22, v20, v15

    sub-int v22, v22, v16

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v13, Lmiui/v5/android/support/view/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    .line 1329
    .local v21, widthSpec:I
    sub-int v22, v7, v17

    sub-int v22, v22, v14

    const/high16 v23, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1332
    .local v8, heightSpec:I
    move/from16 v0, v21

    invoke-virtual {v2, v0, v8}, Landroid/view/View;->measure(II)V

    .line 1337
    .end local v8           #heightSpec:I
    .end local v21           #widthSpec:I
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    add-int v22, v22, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    add-int v23, v23, v4

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1313
    .end local v3           #childLeft:I
    .end local v4           #childTop:I
    .end local v11           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    .end local v12           #loff:I
    .end local v13           #lp:Lmiui/v5/android/support/view/ViewPager$LayoutParams;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 1343
    .end local v2           #child:Landroid/view/View;
    :cond_4
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/android/support/view/ViewPager;->mTopPageBounds:I

    .line 1344
    sub-int v22, v7, v14

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/android/support/view/ViewPager;->mBottomPageBounds:I

    .line 1345
    move-object/from16 v0, p0

    iput v6, v0, Lmiui/v5/android/support/view/ViewPager;->mDecorChildCount:I

    .line 1346
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmiui/v5/android/support/view/ViewPager;->mFirstLayout:Z

    .line 1347
    return-void

    .line 1269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1286
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 23
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1116
    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, Lmiui/v5/android/support/view/ViewPager;->getDefaultSize(II)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Lmiui/v5/android/support/view/ViewPager;->getDefaultSize(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lmiui/v5/android/support/view/ViewPager;->setMeasuredDimension(II)V

    .line 1119
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getMeasuredWidth()I

    move-result v15

    .line 1120
    .local v15, measuredWidth:I
    div-int/lit8 v14, v15, 0xa

    .line 1121
    .local v14, maxGutterSize:I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mDefaultGutterSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/android/support/view/ViewPager;->mGutterSize:I

    .line 1124
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getPaddingLeft()I

    move-result v21

    sub-int v21, v15, v21

    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getPaddingRight()I

    move-result v22

    sub-int v5, v21, v22

    .line 1125
    .local v5, childWidthSize:I
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getMeasuredHeight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getPaddingTop()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getPaddingBottom()I

    move-result v22

    sub-int v4, v21, v22

    .line 1132
    .local v4, childHeightSize:I
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getChildCount()I

    move-result v16

    .line 1133
    .local v16, size:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_a

    .line 1134
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lmiui/v5/android/support/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1135
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 1136
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lmiui/v5/android/support/view/ViewPager$LayoutParams;

    .line 1137
    .local v13, lp:Lmiui/v5/android/support/view/ViewPager$LayoutParams;
    if-eqz v13, :cond_5

    iget-boolean v0, v13, Lmiui/v5/android/support/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 1138
    iget v0, v13, Lmiui/v5/android/support/view/ViewPager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v11, v21, 0x7

    .line 1139
    .local v11, hgrav:I
    iget v0, v13, Lmiui/v5/android/support/view/ViewPager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v17, v21, 0x70

    .line 1140
    .local v17, vgrav:I
    const/high16 v18, -0x8000

    .line 1141
    .local v18, widthMode:I
    const/high16 v8, -0x8000

    .line 1142
    .local v8, heightMode:I
    const/16 v21, 0x30

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, 0x50

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    :cond_0
    const/4 v7, 0x1

    .line 1143
    .local v7, consumeVertical:Z
    :goto_1
    const/16 v21, 0x3

    move/from16 v0, v21

    if-eq v11, v0, :cond_1

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v11, v0, :cond_7

    :cond_1
    const/4 v6, 0x1

    .line 1145
    .local v6, consumeHorizontal:Z
    :goto_2
    if-eqz v7, :cond_8

    .line 1146
    const/high16 v18, 0x4000

    .line 1151
    :cond_2
    :goto_3
    move/from16 v19, v5

    .line 1152
    .local v19, widthSize:I
    move v9, v4

    .line 1153
    .local v9, heightSize:I
    iget v0, v13, Lmiui/v5/android/support/view/ViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1154
    const/high16 v18, 0x4000

    .line 1155
    iget v0, v13, Lmiui/v5/android/support/view/ViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1156
    iget v0, v13, Lmiui/v5/android/support/view/ViewPager$LayoutParams;->width:I

    move/from16 v19, v0

    .line 1159
    :cond_3
    iget v0, v13, Lmiui/v5/android/support/view/ViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1160
    const/high16 v8, 0x4000

    .line 1161
    iget v0, v13, Lmiui/v5/android/support/view/ViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1162
    iget v9, v13, Lmiui/v5/android/support/view/ViewPager$LayoutParams;->height:I

    .line 1165
    :cond_4
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1166
    .local v20, widthSpec:I
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1167
    .local v10, heightSpec:I
    move/from16 v0, v20

    invoke-virtual {v3, v0, v10}, Landroid/view/View;->measure(II)V

    .line 1169
    if-eqz v7, :cond_9

    .line 1170
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v4, v4, v21

    .line 1133
    .end local v6           #consumeHorizontal:Z
    .end local v7           #consumeVertical:Z
    .end local v8           #heightMode:I
    .end local v9           #heightSize:I
    .end local v10           #heightSpec:I
    .end local v11           #hgrav:I
    .end local v13           #lp:Lmiui/v5/android/support/view/ViewPager$LayoutParams;
    .end local v17           #vgrav:I
    .end local v18           #widthMode:I
    .end local v19           #widthSize:I
    .end local v20           #widthSpec:I
    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1142
    .restart local v8       #heightMode:I
    .restart local v11       #hgrav:I
    .restart local v13       #lp:Lmiui/v5/android/support/view/ViewPager$LayoutParams;
    .restart local v17       #vgrav:I
    .restart local v18       #widthMode:I
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 1143
    .restart local v7       #consumeVertical:Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 1147
    .restart local v6       #consumeHorizontal:Z
    :cond_8
    if-eqz v6, :cond_2

    .line 1148
    const/high16 v8, 0x4000

    goto :goto_3

    .line 1171
    .restart local v9       #heightSize:I
    .restart local v10       #heightSpec:I
    .restart local v19       #widthSize:I
    .restart local v20       #widthSpec:I
    :cond_9
    if-eqz v6, :cond_5

    .line 1172
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    sub-int v5, v5, v21

    goto :goto_4

    .line 1178
    .end local v3           #child:Landroid/view/View;
    .end local v6           #consumeHorizontal:Z
    .end local v7           #consumeVertical:Z
    .end local v8           #heightMode:I
    .end local v9           #heightSize:I
    .end local v10           #heightSpec:I
    .end local v11           #hgrav:I
    .end local v13           #lp:Lmiui/v5/android/support/view/ViewPager$LayoutParams;
    .end local v17           #vgrav:I
    .end local v18           #widthMode:I
    .end local v19           #widthSize:I
    .end local v20           #widthSpec:I
    :cond_a
    const/high16 v21, 0x4000

    move/from16 v0, v21

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/android/support/view/ViewPager;->mChildWidthMeasureSpec:I

    .line 1179
    const/high16 v21, 0x4000

    move/from16 v0, v21

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/android/support/view/ViewPager;->mChildHeightMeasureSpec:I

    .line 1182
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmiui/v5/android/support/view/ViewPager;->mInLayout:Z

    .line 1183
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->populate()V

    .line 1184
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmiui/v5/android/support/view/ViewPager;->mInLayout:Z

    .line 1187
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getChildCount()I

    move-result v16

    .line 1188
    const/4 v12, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v12, v0, :cond_d

    .line 1189
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lmiui/v5/android/support/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1190
    .restart local v3       #child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_c

    .line 1194
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lmiui/v5/android/support/view/ViewPager$LayoutParams;

    .line 1195
    .restart local v13       #lp:Lmiui/v5/android/support/view/ViewPager$LayoutParams;
    if-eqz v13, :cond_b

    iget-boolean v0, v13, Lmiui/v5/android/support/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-nez v21, :cond_c

    .line 1196
    :cond_b
    int-to-float v0, v5

    move/from16 v21, v0

    iget v0, v13, Lmiui/v5/android/support/view/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x4000

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1198
    .restart local v20       #widthSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mChildHeightMeasureSpec:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1188
    .end local v13           #lp:Lmiui/v5/android/support/view/ViewPager$LayoutParams;
    .end local v20           #widthSpec:I
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1202
    .end local v3           #child:Landroid/view/View;
    :cond_d
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 16
    .parameter "position"
    .parameter "offset"
    .parameter "offsetPixels"

    .prologue
    .line 1416
    move-object/from16 v0, p0

    iget v14, v0, Lmiui/v5/android/support/view/ViewPager;->mDecorChildCount:I

    if-lez v14, :cond_2

    .line 1417
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getScrollX()I

    move-result v12

    .line 1418
    .local v12, scrollX:I
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getPaddingLeft()I

    move-result v10

    .line 1419
    .local v10, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getPaddingRight()I

    move-result v11

    .line 1420
    .local v11, paddingRight:I
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getWidth()I

    move-result v13

    .line 1421
    .local v13, width:I
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getChildCount()I

    move-result v4

    .line 1422
    .local v4, childCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v4, :cond_2

    .line 1423
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmiui/v5/android/support/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1424
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lmiui/v5/android/support/view/ViewPager$LayoutParams;

    .line 1425
    .local v9, lp:Lmiui/v5/android/support/view/ViewPager$LayoutParams;
    iget-boolean v14, v9, Lmiui/v5/android/support/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v14, :cond_1

    .line 1422
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1427
    :cond_1
    iget v14, v9, Lmiui/v5/android/support/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v7, v14, 0x7

    .line 1428
    .local v7, hgrav:I
    const/4 v5, 0x0

    .line 1429
    .local v5, childLeft:I
    packed-switch v7, :pswitch_data_0

    .line 1431
    :pswitch_0
    move v5, v10

    .line 1446
    :goto_2
    add-int/2addr v5, v12

    .line 1448
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int v6, v5, v14

    .line 1449
    .local v6, childOffset:I
    if-eqz v6, :cond_0

    .line 1450
    invoke-virtual {v3, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 1434
    .end local v6           #childOffset:I
    :pswitch_1
    move v5, v10

    .line 1435
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v10, v14

    .line 1436
    goto :goto_2

    .line 1438
    :pswitch_2
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v13, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1440
    goto :goto_2

    .line 1442
    :pswitch_3
    sub-int v14, v13, v11

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int v5, v14, v15

    .line 1443
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v11, v14

    goto :goto_2

    .line 1455
    .end local v3           #child:Landroid/view/View;
    .end local v4           #childCount:I
    .end local v5           #childLeft:I
    .end local v7           #hgrav:I
    .end local v8           #i:I
    .end local v9           #lp:Lmiui/v5/android/support/view/ViewPager$LayoutParams;
    .end local v10           #paddingLeft:I
    .end local v11           #paddingRight:I
    .end local v12           #scrollX:I
    .end local v13           #width:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/v5/android/support/view/ViewPager;->mOnPageChangeListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    if-eqz v14, :cond_3

    .line 1456
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/v5/android/support/view/ViewPager;->mOnPageChangeListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v14, v0, v1, v2}, Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1458
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/v5/android/support/view/ViewPager;->mInternalPageChangeListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    if-eqz v14, :cond_4

    .line 1459
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/v5/android/support/view/ViewPager;->mInternalPageChangeListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v14, v0, v1, v2}, Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1461
    :cond_4
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lmiui/v5/android/support/view/ViewPager;->mCalledSuper:Z

    .line 1462
    return-void

    .line 1429
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2356
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getChildCount()I

    move-result v1

    .line 2357
    .local v1, count:I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 2358
    const/4 v6, 0x0

    .line 2359
    .local v6, index:I
    const/4 v5, 0x1

    .line 2360
    .local v5, increment:I
    move v2, v1

    .line 2366
    .local v2, end:I
    :goto_0
    move v3, v6

    .local v3, i:I
    :goto_1
    if-eq v3, v2, :cond_2

    .line 2367
    invoke-virtual {p0, v3}, Lmiui/v5/android/support/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2368
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 2369
    invoke-virtual {p0, v0}, Lmiui/v5/android/support/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 2370
    .local v4, ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    if-eqz v4, :cond_1

    iget v7, v4, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    iget v8, p0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    if-ne v7, v8, :cond_1

    .line 2371
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2372
    const/4 v7, 0x1

    .line 2377
    .end local v0           #child:Landroid/view/View;
    .end local v4           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    :goto_2
    return v7

    .line 2362
    .end local v2           #end:I
    .end local v3           #i:I
    .end local v5           #increment:I
    .end local v6           #index:I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .line 2363
    .restart local v6       #index:I
    const/4 v5, -0x1

    .line 2364
    .restart local v5       #increment:I
    const/4 v2, -0x1

    .restart local v2       #end:I
    goto :goto_0

    .line 2366
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #i:I
    :cond_1
    add-int/2addr v3, v5

    goto :goto_1

    .line 2377
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1028
    instance-of v1, p1, Lmiui/v5/android/support/view/ViewPager$SavedState;

    if-nez v1, :cond_0

    .line 1029
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1044
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 1033
    check-cast v0, Lmiui/v5/android/support/view/ViewPager$SavedState;

    .line 1034
    .local v0, ss:Lmiui/v5/android/support/view/ViewPager$SavedState;
    invoke-virtual {v0}, Lmiui/v5/android/support/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1036
    iget-object v1, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    if-eqz v1, :cond_1

    .line 1037
    iget-object v1, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    iget-object v2, v0, Lmiui/v5/android/support/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Lmiui/v5/android/support/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Lmiui/v5/android/support/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1038
    iget v1, v0, Lmiui/v5/android/support/view/ViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lmiui/v5/android/support/view/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 1040
    :cond_1
    iget v1, v0, Lmiui/v5/android/support/view/ViewPager$SavedState;->position:I

    iput v1, p0, Lmiui/v5/android/support/view/ViewPager;->mRestoredCurItem:I

    .line 1041
    iget-object v1, v0, Lmiui/v5/android/support/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Lmiui/v5/android/support/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1042
    iget-object v1, v0, Lmiui/v5/android/support/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Lmiui/v5/android/support/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1017
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1018
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lmiui/v5/android/support/view/ViewPager$SavedState;

    invoke-direct {v0, v1}, Lmiui/v5/android/support/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1019
    .local v0, ss:Lmiui/v5/android/support/view/ViewPager$SavedState;
    iget v2, p0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    iput v2, v0, Lmiui/v5/android/support/view/ViewPager$SavedState;->position:I

    .line 1020
    iget-object v2, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    if-eqz v2, :cond_0

    .line 1021
    iget-object v2, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    invoke-virtual {v2}, Lmiui/v5/android/support/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Lmiui/v5/android/support/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1023
    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1206
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1209
    if-eq p1, p3, :cond_0

    .line 1210
    iget v0, p0, Lmiui/v5/android/support/view/ViewPager;->mPageMargin:I

    iget v1, p0, Lmiui/v5/android/support/view/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Lmiui/v5/android/support/view/ViewPager;->recomputeScrollPosition(IIII)V

    .line 1212
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .parameter "ev"

    .prologue
    .line 1641
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/v5/android/support/view/ViewPager;->mFakeDragging:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 1645
    const/16 v22, 0x1

    .line 1755
    :goto_0
    return v22

    .line 1648
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v22

    if-nez v22, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v22

    if-eqz v22, :cond_1

    .line 1651
    const/16 v22, 0x0

    goto :goto_0

    .line 1654
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lmiui/v5/android/support/view/PagerAdapter;->getCount()I

    move-result v22

    if-nez v22, :cond_3

    .line 1656
    :cond_2
    const/16 v22, 0x0

    goto :goto_0

    .line 1659
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    if-nez v22, :cond_4

    .line 1660
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/v5/android/support/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1662
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1664
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1665
    .local v4, action:I
    const/4 v10, 0x0

    .line 1667
    .local v10, needsInvalidate:Z
    and-int/lit16 v0, v4, 0xff

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 1752
    :cond_5
    :goto_1
    :pswitch_0
    if-eqz v10, :cond_6

    .line 1753
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->postInvalidateOnAnimation()V

    .line 1755
    :cond_6
    const/16 v22, 0x1

    goto :goto_0

    .line 1669
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1670
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmiui/v5/android/support/view/ViewPager;->mPopulatePending:Z

    .line 1671
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->populate()V

    .line 1672
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmiui/v5/android/support/view/ViewPager;->mIsBeingDragged:Z

    .line 1673
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lmiui/v5/android/support/view/ViewPager;->setScrollState(I)V

    .line 1676
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/android/support/view/ViewPager;->mInitialMotionX:F

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/android/support/view/ViewPager;->mLastMotionX:F

    .line 1677
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/android/support/view/ViewPager;->mActivePointerId:I

    goto :goto_1

    .line 1681
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/v5/android/support/view/ViewPager;->mIsBeingDragged:Z

    move/from16 v22, v0

    if-nez v22, :cond_7

    .line 1682
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 1683
    .local v13, pointerIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    .line 1684
    .local v18, x:F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mLastMotionX:F

    move/from16 v22, v0

    sub-float v22, v18, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v19

    .line 1685
    .local v19, xDiff:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v20

    .line 1686
    .local v20, y:F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mLastMotionY:F

    move/from16 v22, v0

    sub-float v22, v20, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .line 1688
    .local v21, yDiff:F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mTouchSlop:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v22, v19, v22

    if-lez v22, :cond_7

    cmpl-float v22, v19, v21

    if-lez v22, :cond_7

    .line 1690
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmiui/v5/android/support/view/ViewPager;->mIsBeingDragged:Z

    .line 1691
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mInitialMotionX:F

    move/from16 v22, v0

    sub-float v22, v18, v22

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mInitialMotionX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mTouchSlop:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    :goto_2
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/android/support/view/ViewPager;->mLastMotionX:F

    .line 1693
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lmiui/v5/android/support/view/ViewPager;->setScrollState(I)V

    .line 1694
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lmiui/v5/android/support/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1698
    .end local v13           #pointerIndex:I
    .end local v18           #x:F
    .end local v19           #xDiff:F
    .end local v20           #y:F
    .end local v21           #yDiff:F
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/v5/android/support/view/ViewPager;->mIsBeingDragged:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 1700
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 1701
    .local v5, activePointerIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    .line 1702
    .restart local v18       #x:F
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lmiui/v5/android/support/view/ViewPager;->performDrag(F)Z

    move-result v22

    or-int v10, v10, v22

    .line 1703
    goto/16 :goto_1

    .line 1691
    .end local v5           #activePointerIndex:I
    .restart local v13       #pointerIndex:I
    .restart local v19       #xDiff:F
    .restart local v20       #y:F
    .restart local v21       #yDiff:F
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mInitialMotionX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mTouchSlop:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    goto :goto_2

    .line 1706
    .end local v13           #pointerIndex:I
    .end local v18           #x:F
    .end local v19           #xDiff:F
    .end local v20           #y:F
    .end local v21           #yDiff:F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/v5/android/support/view/ViewPager;->mIsBeingDragged:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 1707
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    .line 1708
    .local v16, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v22, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mMaximumVelocity:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1709
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v9, v0

    .line 1710
    .local v9, initialVelocity:I
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmiui/v5/android/support/view/ViewPager;->mPopulatePending:Z

    .line 1711
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getWidth()I

    move-result v17

    .line 1712
    .local v17, width:I
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getScrollX()I

    move-result v14

    .line 1713
    .local v14, scrollX:I
    invoke-direct/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->infoForCurrentScrollPosition()Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    move-result-object v7

    .line 1714
    .local v7, ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    iget v6, v7, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    .line 1715
    .local v6, currentPage:I
    int-to-float v0, v14

    move/from16 v22, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    iget v0, v7, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->offset:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    iget v0, v7, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v23, v0

    div-float v12, v22, v23

    .line 1716
    .local v12, pageOffset:F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 1717
    .restart local v5       #activePointerIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    .line 1718
    .restart local v18       #x:F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mInitialMotionX:F

    move/from16 v22, v0

    sub-float v22, v18, v22

    move/from16 v0, v22

    float-to-int v15, v0

    .line 1719
    .local v15, totalDelta:I
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v12, v9, v15}, Lmiui/v5/android/support/view/ViewPager;->determineTargetPage(IFII)I

    move-result v11

    .line 1721
    .local v11, nextPage:I
    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v11, v1, v2, v9}, Lmiui/v5/android/support/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 1723
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/android/support/view/ViewPager;->mActivePointerId:I

    .line 1724
    invoke-direct/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->endDrag()V

    .line 1725
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1726
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1727
    const/4 v10, 0x1

    .line 1728
    goto/16 :goto_1

    .line 1731
    .end local v5           #activePointerIndex:I
    .end local v6           #currentPage:I
    .end local v7           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    .end local v9           #initialVelocity:I
    .end local v11           #nextPage:I
    .end local v12           #pageOffset:F
    .end local v14           #scrollX:I
    .end local v15           #totalDelta:I
    .end local v16           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v17           #width:I
    .end local v18           #x:F
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/v5/android/support/view/ViewPager;->mIsBeingDragged:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 1732
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    move/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lmiui/v5/android/support/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 1733
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/android/support/view/ViewPager;->mActivePointerId:I

    .line 1734
    invoke-direct/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->endDrag()V

    .line 1735
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1736
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1737
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1741
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    .line 1742
    .local v8, index:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    .line 1743
    .restart local v18       #x:F
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/android/support/view/ViewPager;->mLastMotionX:F

    .line 1744
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/android/support/view/ViewPager;->mActivePointerId:I

    goto/16 :goto_1

    .line 1748
    .end local v8           #index:I
    .end local v18           #x:F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lmiui/v5/android/support/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1749
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/android/support/view/ViewPager;->mLastMotionX:F

    goto/16 :goto_1

    .line 1667
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2269
    iget v1, p0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    if-lez v1, :cond_0

    .line 2270
    iget v1, p0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lmiui/v5/android/support/view/ViewPager;->setCurrentItem(IZ)V

    .line 2273
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pageRight()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2277
    iget-object v1, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    iget-object v2, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    invoke-virtual {v2}, Lmiui/v5/android/support/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2278
    iget v1, p0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lmiui/v5/android/support/view/ViewPager;->setCurrentItem(IZ)V

    .line 2281
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method populate()V
    .locals 1

    .prologue
    .line 720
    iget v0, p0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lmiui/v5/android/support/view/ViewPager;->populate(I)V

    .line 721
    return-void
.end method

.method populate(I)V
    .locals 25
    .parameter "newCurrentItem"

    .prologue
    .line 724
    const/16 v18, 0x0

    .line 725
    .local v18, oldCurInfo:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 726
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lmiui/v5/android/support/view/ViewPager;->infoForPosition(I)Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    move-result-object v18

    .line 727
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    .line 730
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    move-object/from16 v22, v0

    if-nez v22, :cond_2

    .line 874
    :cond_1
    return-void

    .line 738
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/v5/android/support/view/ViewPager;->mPopulatePending:Z

    move/from16 v22, v0

    if-nez v22, :cond_1

    .line 746
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v22

    if-eqz v22, :cond_1

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lmiui/v5/android/support/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 752
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mOffscreenPageLimit:I

    move/from16 v19, v0

    .line 753
    .local v19, pageLimit:I
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    move/from16 v23, v0

    sub-int v23, v23, v19

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 754
    .local v21, startPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lmiui/v5/android/support/view/PagerAdapter;->getCount()I

    move-result v4

    .line 755
    .local v4, N:I
    add-int/lit8 v22, v4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    move/from16 v23, v0

    add-int v23, v23, v19

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 758
    .local v10, endPos:I
    const/4 v7, -0x1

    .line 759
    .local v7, curIndex:I
    const/4 v8, 0x0

    .line 760
    .local v8, curItem:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    const/4 v7, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_3

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    .line 762
    .local v14, ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    iget v0, v14, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_9

    .line 763
    iget v0, v14, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    move-object v8, v14

    .line 768
    .end local v14           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    :cond_3
    if-nez v8, :cond_4

    if-lez v4, :cond_4

    .line 769
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Lmiui/v5/android/support/view/ViewPager;->addNewItem(II)Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    move-result-object v8

    .line 775
    :cond_4
    if-eqz v8, :cond_7

    .line 776
    const/4 v11, 0x0

    .line 777
    .local v11, extraWidthLeft:F
    add-int/lit8 v15, v7, -0x1

    .line 778
    .local v15, itemIndex:I
    if-ltz v15, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    move-object/from16 v14, v22

    .line 779
    .restart local v14       #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    :goto_1
    const/high16 v22, 0x4000

    iget v0, v8, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v23, v0

    sub-float v16, v22, v23

    .line 780
    .local v16, leftWidthNeeded:F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    move/from16 v22, v0

    add-int/lit8 v20, v22, -0x1

    .local v20, pos:I
    :goto_2
    if-ltz v20, :cond_5

    .line 781
    cmpl-float v22, v11, v16

    if-ltz v22, :cond_e

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_e

    .line 782
    if-nez v14, :cond_b

    .line 804
    :cond_5
    iget v12, v8, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->widthFactor:F

    .line 805
    .local v12, extraWidthRight:F
    add-int/lit8 v15, v7, 0x1

    .line 806
    const/high16 v22, 0x4000

    cmpg-float v22, v12, v22

    if-gez v22, :cond_6

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    move-object/from16 v14, v22

    .line 808
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    move/from16 v22, v0

    add-int/lit8 v20, v22, 0x1

    :goto_4
    move/from16 v0, v20

    if-ge v0, v4, :cond_6

    .line 809
    const/high16 v22, 0x4000

    cmpl-float v22, v12, v22

    if-ltz v22, :cond_16

    move/from16 v0, v20

    if-le v0, v10, :cond_16

    .line 810
    if-nez v14, :cond_13

    .line 831
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v8, v7, v1}, Lmiui/v5/android/support/view/ViewPager;->calculatePageOffsets(Lmiui/v5/android/support/view/ViewPager$ItemInfo;ILmiui/v5/android/support/view/ViewPager$ItemInfo;)V

    .line 841
    .end local v11           #extraWidthLeft:F
    .end local v12           #extraWidthRight:F
    .end local v14           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    .end local v15           #itemIndex:I
    .end local v16           #leftWidthNeeded:F
    .end local v20           #pos:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    move/from16 v24, v0

    if-eqz v8, :cond_1a

    iget-object v0, v8, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v22, v0

    :goto_5
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lmiui/v5/android/support/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lmiui/v5/android/support/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 846
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getChildCount()I

    move-result v6

    .line 847
    .local v6, childCount:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_6
    if-ge v13, v6, :cond_1b

    .line 848
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lmiui/v5/android/support/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 849
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lmiui/v5/android/support/view/ViewPager$LayoutParams;

    .line 850
    .local v17, lp:Lmiui/v5/android/support/view/ViewPager$LayoutParams;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lmiui/v5/android/support/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v22, v0

    if-nez v22, :cond_8

    move-object/from16 v0, v17

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v22, v0

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-nez v22, :cond_8

    .line 852
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lmiui/v5/android/support/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    move-result-object v14

    .line 853
    .restart local v14       #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    if-eqz v14, :cond_8

    .line 854
    iget v0, v14, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lmiui/v5/android/support/view/ViewPager$LayoutParams;->widthFactor:F

    .line 847
    .end local v14           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 760
    .end local v5           #child:Landroid/view/View;
    .end local v6           #childCount:I
    .end local v13           #i:I
    .end local v17           #lp:Lmiui/v5/android/support/view/ViewPager$LayoutParams;
    .restart local v14       #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 778
    .end local v14           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    .restart local v11       #extraWidthLeft:F
    .restart local v15       #itemIndex:I
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 785
    .restart local v14       #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    .restart local v16       #leftWidthNeeded:F
    .restart local v20       #pos:I
    :cond_b
    iget v0, v14, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    iget-boolean v0, v14, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->scrolling:Z

    move/from16 v22, v0

    if-nez v22, :cond_c

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    move-object/from16 v22, v0

    iget-object v0, v14, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v20

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lmiui/v5/android/support/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 788
    add-int/lit8 v15, v15, -0x1

    .line 789
    add-int/lit8 v7, v7, -0x1

    .line 790
    if-ltz v15, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    move-object/from16 v14, v22

    .line 780
    :cond_c
    :goto_7
    add-int/lit8 v20, v20, -0x1

    goto/16 :goto_2

    .line 790
    :cond_d
    const/4 v14, 0x0

    goto :goto_7

    .line 792
    :cond_e
    if-eqz v14, :cond_10

    iget v0, v14, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    .line 793
    iget v0, v14, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v22, v0

    add-float v11, v11, v22

    .line 794
    add-int/lit8 v15, v15, -0x1

    .line 795
    if-ltz v15, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    move-object/from16 v14, v22

    :goto_8
    goto :goto_7

    :cond_f
    const/4 v14, 0x0

    goto :goto_8

    .line 797
    :cond_10
    add-int/lit8 v22, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lmiui/v5/android/support/view/ViewPager;->addNewItem(II)Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    move-result-object v14

    .line 798
    iget v0, v14, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v22, v0

    add-float v11, v11, v22

    .line 799
    add-int/lit8 v7, v7, 0x1

    .line 800
    if-ltz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    move-object/from16 v14, v22

    :goto_9
    goto :goto_7

    :cond_11
    const/4 v14, 0x0

    goto :goto_9

    .line 807
    .restart local v12       #extraWidthRight:F
    :cond_12
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 813
    :cond_13
    iget v0, v14, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    iget-boolean v0, v14, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->scrolling:Z

    move/from16 v22, v0

    if-nez v22, :cond_14

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    move-object/from16 v22, v0

    iget-object v0, v14, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v20

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lmiui/v5/android/support/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    move-object/from16 v14, v22

    .line 808
    :cond_14
    :goto_a
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_4

    .line 816
    :cond_15
    const/4 v14, 0x0

    goto :goto_a

    .line 818
    :cond_16
    if-eqz v14, :cond_18

    iget v0, v14, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_18

    .line 819
    iget v0, v14, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v22, v0

    add-float v12, v12, v22

    .line 820
    add-int/lit8 v15, v15, 0x1

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    move-object/from16 v14, v22

    :goto_b
    goto :goto_a

    :cond_17
    const/4 v14, 0x0

    goto :goto_b

    .line 823
    :cond_18
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lmiui/v5/android/support/view/ViewPager;->addNewItem(II)Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    move-result-object v14

    .line 824
    add-int/lit8 v15, v15, 0x1

    .line 825
    iget v0, v14, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v22, v0

    add-float v12, v12, v22

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    move-object/from16 v14, v22

    :goto_c
    goto :goto_a

    :cond_19
    const/4 v14, 0x0

    goto :goto_c

    .line 841
    .end local v11           #extraWidthLeft:F
    .end local v12           #extraWidthRight:F
    .end local v14           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    .end local v15           #itemIndex:I
    .end local v16           #leftWidthNeeded:F
    .end local v20           #pos:I
    :cond_1a
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 859
    .restart local v6       #childCount:I
    .restart local v13       #i:I
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->hasFocus()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 860
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v9

    .line 861
    .local v9, currentFocused:Landroid/view/View;
    if-eqz v9, :cond_1e

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lmiui/v5/android/support/view/ViewPager;->infoForAnyChild(Landroid/view/View;)Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    move-result-object v14

    .line 862
    .restart local v14       #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    :goto_d
    if-eqz v14, :cond_1c

    iget v0, v14, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 863
    :cond_1c
    const/4 v13, 0x0

    :goto_e
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/android/support/view/ViewPager;->getChildCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v13, v0, :cond_1

    .line 864
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lmiui/v5/android/support/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 865
    .restart local v5       #child:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lmiui/v5/android/support/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    move-result-object v14

    .line 866
    if-eqz v14, :cond_1d

    iget v0, v14, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1d

    .line 867
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v22

    if-nez v22, :cond_1

    .line 863
    :cond_1d
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    .line 861
    .end local v5           #child:Landroid/view/View;
    .end local v14           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    :cond_1e
    const/4 v14, 0x0

    goto :goto_d
.end method

.method public setAdapter(Lmiui/v5/android/support/view/PagerAdapter;)V
    .locals 9
    .parameter "adapter"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 297
    iget-object v3, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    if-eqz v3, :cond_1

    .line 298
    iget-object v3, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    iget-object v4, p0, Lmiui/v5/android/support/view/ViewPager;->mObserver:Lmiui/v5/android/support/view/ViewPager$PagerObserver;

    invoke-virtual {v3, v4}, Lmiui/v5/android/support/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 299
    iget-object v3, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    invoke-virtual {v3, p0}, Lmiui/v5/android/support/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 300
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 301
    iget-object v3, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    .line 302
    .local v1, ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    iget-object v3, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    iget v4, v1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    iget-object v5, v1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v5}, Lmiui/v5/android/support/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    .end local v1           #ii:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    :cond_0
    iget-object v3, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    invoke-virtual {v3, p0}, Lmiui/v5/android/support/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 305
    iget-object v3, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 306
    invoke-direct {p0}, Lmiui/v5/android/support/view/ViewPager;->removeNonDecorViews()V

    .line 307
    iput v6, p0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    .line 308
    invoke-virtual {p0, v6, v6}, Lmiui/v5/android/support/view/ViewPager;->scrollTo(II)V

    .line 311
    .end local v0           #i:I
    :cond_1
    iget-object v2, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    .line 312
    .local v2, oldAdapter:Lmiui/v5/android/support/view/PagerAdapter;
    iput-object p1, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    .line 314
    iget-object v3, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    if-eqz v3, :cond_3

    .line 315
    iget-object v3, p0, Lmiui/v5/android/support/view/ViewPager;->mObserver:Lmiui/v5/android/support/view/ViewPager$PagerObserver;

    if-nez v3, :cond_2

    .line 316
    new-instance v3, Lmiui/v5/android/support/view/ViewPager$PagerObserver;

    invoke-direct {v3, p0, v7}, Lmiui/v5/android/support/view/ViewPager$PagerObserver;-><init>(Lmiui/v5/android/support/view/ViewPager;Lmiui/v5/android/support/view/ViewPager$1;)V

    iput-object v3, p0, Lmiui/v5/android/support/view/ViewPager;->mObserver:Lmiui/v5/android/support/view/ViewPager$PagerObserver;

    .line 318
    :cond_2
    iget-object v3, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    iget-object v4, p0, Lmiui/v5/android/support/view/ViewPager;->mObserver:Lmiui/v5/android/support/view/ViewPager$PagerObserver;

    invoke-virtual {v3, v4}, Lmiui/v5/android/support/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 319
    iput-boolean v6, p0, Lmiui/v5/android/support/view/ViewPager;->mPopulatePending:Z

    .line 320
    iput-boolean v8, p0, Lmiui/v5/android/support/view/ViewPager;->mFirstLayout:Z

    .line 321
    iget v3, p0, Lmiui/v5/android/support/view/ViewPager;->mRestoredCurItem:I

    if-ltz v3, :cond_5

    .line 322
    iget-object v3, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    iget-object v4, p0, Lmiui/v5/android/support/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v5, p0, Lmiui/v5/android/support/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v4, v5}, Lmiui/v5/android/support/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 323
    iget v3, p0, Lmiui/v5/android/support/view/ViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v3, v6, v8}, Lmiui/v5/android/support/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 324
    const/4 v3, -0x1

    iput v3, p0, Lmiui/v5/android/support/view/ViewPager;->mRestoredCurItem:I

    .line 325
    iput-object v7, p0, Lmiui/v5/android/support/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 326
    iput-object v7, p0, Lmiui/v5/android/support/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 332
    :cond_3
    :goto_1
    iget-object v3, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapterChangeListener:Lmiui/v5/android/support/view/ViewPager$OnAdapterChangeListener;

    if-eqz v3, :cond_4

    if-eq v2, p1, :cond_4

    .line 333
    iget-object v3, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapterChangeListener:Lmiui/v5/android/support/view/ViewPager$OnAdapterChangeListener;

    invoke-interface {v3, v2, p1}, Lmiui/v5/android/support/view/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Lmiui/v5/android/support/view/PagerAdapter;Lmiui/v5/android/support/view/PagerAdapter;)V

    .line 335
    :cond_4
    return-void

    .line 328
    :cond_5
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->populate()V

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 369
    iput-boolean v1, p0, Lmiui/v5/android/support/view/ViewPager;->mPopulatePending:Z

    .line 370
    iget-boolean v0, p0, Lmiui/v5/android/support/view/ViewPager;->mFirstLayout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lmiui/v5/android/support/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 371
    return-void

    :cond_0
    move v0, v1

    .line 370
    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .parameter "item"
    .parameter "smoothScroll"

    .prologue
    const/4 v0, 0x0

    .line 380
    iput-boolean v0, p0, Lmiui/v5/android/support/view/ViewPager;->mPopulatePending:Z

    .line 381
    invoke-virtual {p0, p1, p2, v0}, Lmiui/v5/android/support/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 382
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .parameter "item"
    .parameter "smoothScroll"
    .parameter "always"

    .prologue
    .line 389
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/v5/android/support/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 390
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 11
    .parameter "item"
    .parameter "smoothScroll"
    .parameter "always"
    .parameter "velocity"

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 393
    iget-object v6, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    invoke-virtual {v6}, Lmiui/v5/android/support/view/PagerAdapter;->getCount()I

    move-result v6

    if-gtz v6, :cond_2

    .line 394
    :cond_0
    invoke-direct {p0, v7}, Lmiui/v5/android/support/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 443
    :cond_1
    :goto_0
    return-void

    .line 397
    :cond_2
    if-nez p3, :cond_3

    iget v6, p0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    if-ne v6, p1, :cond_3

    iget-object v6, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_3

    .line 398
    invoke-direct {p0, v7}, Lmiui/v5/android/support/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 402
    :cond_3
    if-gez p1, :cond_6

    .line 403
    const/4 p1, 0x0

    .line 407
    :cond_4
    :goto_1
    iget v4, p0, Lmiui/v5/android/support/view/ViewPager;->mOffscreenPageLimit:I

    .line 408
    .local v4, pageLimit:I
    iget v6, p0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    add-int/2addr v6, v4

    if-gt p1, v6, :cond_5

    iget v6, p0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    sub-int/2addr v6, v4

    if-ge p1, v6, :cond_7

    .line 412
    :cond_5
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget-object v6, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_7

    .line 413
    iget-object v6, p0, Lmiui/v5/android/support/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    iput-boolean v2, v6, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->scrolling:Z

    .line 412
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 404
    .end local v3           #i:I
    .end local v4           #pageLimit:I
    :cond_6
    iget-object v6, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    invoke-virtual {v6}, Lmiui/v5/android/support/view/PagerAdapter;->getCount()I

    move-result v6

    if-lt p1, v6, :cond_4

    .line 405
    iget-object v6, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    invoke-virtual {v6}, Lmiui/v5/android/support/view/PagerAdapter;->getCount()I

    move-result v6

    add-int/lit8 p1, v6, -0x1

    goto :goto_1

    .line 416
    .restart local v4       #pageLimit:I
    :cond_7
    iget v6, p0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    if-eq v6, p1, :cond_a

    .line 417
    .local v2, dispatchSelected:Z
    :goto_3
    invoke-virtual {p0, p1}, Lmiui/v5/android/support/view/ViewPager;->populate(I)V

    .line 418
    invoke-virtual {p0, p1}, Lmiui/v5/android/support/view/ViewPager;->infoForPosition(I)Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    move-result-object v0

    .line 419
    .local v0, curInfo:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    const/4 v1, 0x0

    .line 420
    .local v1, destX:I
    if-eqz v0, :cond_8

    .line 421
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getWidth()I

    move-result v5

    .line 422
    .local v5, width:I
    int-to-float v6, v5

    iget v8, p0, Lmiui/v5/android/support/view/ViewPager;->mFirstOffset:F

    iget v9, v0, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->offset:F

    iget v10, p0, Lmiui/v5/android/support/view/ViewPager;->mLastOffset:F

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    mul-float/2addr v6, v8

    float-to-int v1, v6

    .line 425
    .end local v5           #width:I
    :cond_8
    if-eqz p2, :cond_b

    .line 426
    invoke-virtual {p0, v1, v7, p4}, Lmiui/v5/android/support/view/ViewPager;->smoothScrollTo(III)V

    .line 427
    if-eqz v2, :cond_9

    iget-object v6, p0, Lmiui/v5/android/support/view/ViewPager;->mOnPageChangeListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    if-eqz v6, :cond_9

    .line 428
    iget-object v6, p0, Lmiui/v5/android/support/view/ViewPager;->mOnPageChangeListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    invoke-interface {v6, p1}, Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 430
    :cond_9
    if-eqz v2, :cond_1

    iget-object v6, p0, Lmiui/v5/android/support/view/ViewPager;->mInternalPageChangeListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    if-eqz v6, :cond_1

    .line 431
    iget-object v6, p0, Lmiui/v5/android/support/view/ViewPager;->mInternalPageChangeListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    invoke-interface {v6, p1}, Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto/16 :goto_0

    .end local v0           #curInfo:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    .end local v1           #destX:I
    .end local v2           #dispatchSelected:Z
    :cond_a
    move v2, v7

    .line 416
    goto :goto_3

    .line 434
    .restart local v0       #curInfo:Lmiui/v5/android/support/view/ViewPager$ItemInfo;
    .restart local v1       #destX:I
    .restart local v2       #dispatchSelected:Z
    :cond_b
    if-eqz v2, :cond_c

    iget-object v6, p0, Lmiui/v5/android/support/view/ViewPager;->mOnPageChangeListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    if-eqz v6, :cond_c

    .line 435
    iget-object v6, p0, Lmiui/v5/android/support/view/ViewPager;->mOnPageChangeListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    invoke-interface {v6, p1}, Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 437
    :cond_c
    if-eqz v2, :cond_d

    iget-object v6, p0, Lmiui/v5/android/support/view/ViewPager;->mInternalPageChangeListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    if-eqz v6, :cond_d

    .line 438
    iget-object v6, p0, Lmiui/v5/android/support/view/ViewPager;->mInternalPageChangeListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    invoke-interface {v6, p1}, Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 440
    :cond_d
    invoke-direct {p0}, Lmiui/v5/android/support/view/ViewPager;->completeScroll()V

    .line 441
    invoke-virtual {p0, v1, v7}, Lmiui/v5/android/support/view/ViewPager;->scrollTo(II)V

    goto/16 :goto_0
.end method

.method setInternalPageChangeListener(Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;)Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;
    .locals 1
    .parameter "listener"

    .prologue
    .line 462
    iget-object v0, p0, Lmiui/v5/android/support/view/ViewPager;->mInternalPageChangeListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    .line 463
    .local v0, oldListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;
    iput-object p1, p0, Lmiui/v5/android/support/view/ViewPager;->mInternalPageChangeListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    .line 464
    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4
    .parameter "limit"

    .prologue
    const/4 v3, 0x1

    .line 496
    if-ge p1, v3, :cond_0

    .line 497
    const-string v0, "ViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/4 p1, 0x1

    .line 501
    :cond_0
    iget v0, p0, Lmiui/v5/android/support/view/ViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 502
    iput p1, p0, Lmiui/v5/android/support/view/ViewPager;->mOffscreenPageLimit:I

    .line 503
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->populate()V

    .line 505
    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Lmiui/v5/android/support/view/ViewPager$OnAdapterChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 358
    iput-object p1, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapterChangeListener:Lmiui/v5/android/support/view/ViewPager$OnAdapterChangeListener;

    .line 359
    return-void
.end method

.method public setOnPageChangeListener(Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 452
    iput-object p1, p0, Lmiui/v5/android/support/view/ViewPager;->mOnPageChangeListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    .line 453
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .parameter "marginPixels"

    .prologue
    .line 516
    iget v0, p0, Lmiui/v5/android/support/view/ViewPager;->mPageMargin:I

    .line 517
    .local v0, oldMargin:I
    iput p1, p0, Lmiui/v5/android/support/view/ViewPager;->mPageMargin:I

    .line 519
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getWidth()I

    move-result v1

    .line 520
    .local v1, width:I
    invoke-direct {p0, v1, v1, p1, v0}, Lmiui/v5/android/support/view/ViewPager;->recomputeScrollPosition(IIII)V

    .line 522
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->requestLayout()V

    .line 523
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 552
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/v5/android/support/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 553
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 540
    iput-object p1, p0, Lmiui/v5/android/support/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 541
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->refreshDrawableState()V

    .line 542
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lmiui/v5/android/support/view/ViewPager;->setWillNotDraw(Z)V

    .line 543
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->invalidate()V

    .line 544
    return-void

    .line 542
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method smoothScrollTo(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 586
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmiui/v5/android/support/view/ViewPager;->smoothScrollTo(III)V

    .line 587
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 15
    .parameter "x"
    .parameter "y"
    .parameter "velocity"

    .prologue
    .line 597
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 599
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lmiui/v5/android/support/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 635
    :goto_0
    return-void

    .line 602
    :cond_0
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getScrollX()I

    move-result v2

    .line 603
    .local v2, sx:I
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getScrollY()I

    move-result v3

    .line 604
    .local v3, sy:I
    sub-int v4, p1, v2

    .line 605
    .local v4, dx:I
    sub-int v5, p2, v3

    .line 606
    .local v5, dy:I
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 607
    invoke-direct {p0}, Lmiui/v5/android/support/view/ViewPager;->completeScroll()V

    .line 608
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->populate()V

    .line 609
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lmiui/v5/android/support/view/ViewPager;->setScrollState(I)V

    goto :goto_0

    .line 613
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lmiui/v5/android/support/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 614
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lmiui/v5/android/support/view/ViewPager;->setScrollState(I)V

    .line 616
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->getWidth()I

    move-result v12

    .line 617
    .local v12, width:I
    div-int/lit8 v9, v12, 0x2

    .line 618
    .local v9, halfWidth:I
    const/high16 v1, 0x3f80

    const/high16 v13, 0x3f80

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    int-to-float v14, v12

    div-float/2addr v13, v14

    invoke-static {v1, v13}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 619
    .local v8, distanceRatio:F
    int-to-float v1, v9

    int-to-float v13, v9

    invoke-virtual {p0, v8}, Lmiui/v5/android/support/view/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v14

    mul-float/2addr v13, v14

    add-float v7, v1, v13

    .line 622
    .local v7, distance:F
    const/4 v6, 0x0

    .line 623
    .local v6, duration:I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 624
    if-lez p3, :cond_2

    .line 625
    const/high16 v1, 0x447a

    move/from16 v0, p3

    int-to-float v13, v0

    div-float v13, v7, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    mul-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    .line 631
    :goto_1
    const/16 v1, 0x320

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 633
    iget-object v1, p0, Lmiui/v5/android/support/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 634
    invoke-virtual {p0}, Lmiui/v5/android/support/view/ViewPager;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 627
    :cond_2
    int-to-float v1, v12

    iget-object v13, p0, Lmiui/v5/android/support/view/ViewPager;->mAdapter:Lmiui/v5/android/support/view/PagerAdapter;

    iget v14, p0, Lmiui/v5/android/support/view/ViewPager;->mCurItem:I

    invoke-virtual {v13, v14}, Lmiui/v5/android/support/view/PagerAdapter;->getPageWidth(I)F

    move-result v13

    mul-float v11, v1, v13

    .line 628
    .local v11, pageWidth:F
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v13, p0, Lmiui/v5/android/support/view/ViewPager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v11

    div-float v10, v1, v13

    .line 629
    .local v10, pageDelta:F
    const/high16 v1, 0x3f80

    add-float/2addr v1, v10

    const/high16 v13, 0x437a

    mul-float/2addr v1, v13

    float-to-int v6, v1

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 557
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/v5/android/support/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
