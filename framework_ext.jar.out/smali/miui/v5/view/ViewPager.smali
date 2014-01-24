.class public Lmiui/v5/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/view/ViewPager$LayoutParams;,
        Lmiui/v5/view/ViewPager$PagerObserver;,
        Lmiui/v5/view/ViewPager$SavedState;,
        Lmiui/v5/view/ViewPager$Decor;,
        Lmiui/v5/view/ViewPager$OnAdapterChangeListener;,
        Lmiui/v5/view/ViewPager$SimpleOnPageChangeListener;,
        Lmiui/v5/view/ViewPager$OnPageChangeListener;,
        Lmiui/v5/view/ViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lmiui/v5/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final CURRENT_PAGE_DETERMIN_FACTOR:F = 0.05f

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x3

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

.field private mAdapter:Lmiui/v5/view/PagerAdapter;

.field private mAdapterChangeListener:Lmiui/v5/view/ViewPager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field mDragEnabled:Z

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mIgnoreGutter:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInternalPageChangeListener:Lmiui/v5/view/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/v5/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field mLastPageOffset:F

.field private mLeftEdge:Landroid/widget/EdgeEffect;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Lmiui/v5/view/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lmiui/v5/view/ViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/widget/EdgeEffect;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private final mTempItem:Lmiui/v5/view/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 96
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lmiui/v5/view/ViewPager;->LAYOUT_ATTRS:[I

    .line 109
    new-instance v0, Lmiui/v5/view/ViewPager$1;

    invoke-direct {v0}, Lmiui/v5/view/ViewPager$1;-><init>()V

    sput-object v0, Lmiui/v5/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 116
    new-instance v0, Lmiui/v5/view/ViewPager$2;

    invoke-direct {v0}, Lmiui/v5/view/ViewPager$2;-><init>()V

    sput-object v0, Lmiui/v5/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 305
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 124
    new-instance v0, Lmiui/v5/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Lmiui/v5/view/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lmiui/v5/view/ViewPager;->mTempItem:Lmiui/v5/view/ViewPager$ItemInfo;

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/v5/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 130
    iput v1, p0, Lmiui/v5/view/ViewPager;->mRestoredCurItem:I

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/v5/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 143
    const v0, -0x800001

    iput v0, p0, Lmiui/v5/view/ViewPager;->mFirstOffset:F

    .line 144
    const v0, 0x7f7fffff

    iput v0, p0, Lmiui/v5/view/ViewPager;->mLastOffset:F

    .line 153
    const/4 v0, 0x3

    iput v0, p0, Lmiui/v5/view/ViewPager;->mOffscreenPageLimit:I

    .line 171
    iput v1, p0, Lmiui/v5/view/ViewPager;->mActivePointerId:I

    .line 198
    iput-boolean v3, p0, Lmiui/v5/view/ViewPager;->mFirstLayout:Z

    .line 199
    iput-boolean v2, p0, Lmiui/v5/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 208
    iput-boolean v3, p0, Lmiui/v5/view/ViewPager;->mDragEnabled:Z

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lmiui/v5/view/ViewPager;->mLastPageOffset:F

    .line 230
    iput v2, p0, Lmiui/v5/view/ViewPager;->mScrollState:I

    .line 306
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->initViewPager()V

    .line 307
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 310
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 124
    new-instance v0, Lmiui/v5/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Lmiui/v5/view/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lmiui/v5/view/ViewPager;->mTempItem:Lmiui/v5/view/ViewPager$ItemInfo;

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/v5/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 130
    iput v1, p0, Lmiui/v5/view/ViewPager;->mRestoredCurItem:I

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/v5/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 143
    const v0, -0x800001

    iput v0, p0, Lmiui/v5/view/ViewPager;->mFirstOffset:F

    .line 144
    const v0, 0x7f7fffff

    iput v0, p0, Lmiui/v5/view/ViewPager;->mLastOffset:F

    .line 153
    const/4 v0, 0x3

    iput v0, p0, Lmiui/v5/view/ViewPager;->mOffscreenPageLimit:I

    .line 171
    iput v1, p0, Lmiui/v5/view/ViewPager;->mActivePointerId:I

    .line 198
    iput-boolean v3, p0, Lmiui/v5/view/ViewPager;->mFirstLayout:Z

    .line 199
    iput-boolean v2, p0, Lmiui/v5/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 208
    iput-boolean v3, p0, Lmiui/v5/view/ViewPager;->mDragEnabled:Z

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lmiui/v5/view/ViewPager;->mLastPageOffset:F

    .line 230
    iput v2, p0, Lmiui/v5/view/ViewPager;->mScrollState:I

    .line 311
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->initViewPager()V

    .line 312
    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lmiui/v5/view/ViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private calculatePageOffsets(Lmiui/v5/view/ViewPager$ItemInfo;ILmiui/v5/view/ViewPager$ItemInfo;)V
    .locals 14
    .parameter "curItem"
    .parameter "curIndex"
    .parameter "oldCurInfo"

    .prologue
    .line 958
    iget-object v12, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    invoke-virtual {v12}, Lmiui/v5/view/PagerAdapter;->getCount()I

    move-result v1

    .line 959
    .local v1, N:I
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getWidth()I

    move-result v11

    .line 960
    .local v11, width:I
    if-lez v11, :cond_0

    iget v12, p0, Lmiui/v5/view/ViewPager;->mPageMargin:I

    int-to-float v12, v12

    int-to-float v13, v11

    div-float v6, v12, v13

    .line 962
    .local v6, marginOffset:F
    :goto_0
    if-eqz p3, :cond_6

    .line 963
    move-object/from16 v0, p3

    iget v8, v0, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    .line 965
    .local v8, oldCurPosition:I
    iget v12, p1, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    if-ge v8, v12, :cond_3

    .line 966
    const/4 v5, 0x0

    .line 967
    .local v5, itemIndex:I
    const/4 v3, 0x0

    .line 968
    .local v3, ii:Lmiui/v5/view/ViewPager$ItemInfo;
    move-object/from16 v0, p3

    iget v12, v0, Lmiui/v5/view/ViewPager$ItemInfo;->offset:F

    move-object/from16 v0, p3

    iget v13, v0, Lmiui/v5/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 969
    .local v7, offset:F
    add-int/lit8 v9, v8, 0x1

    .line 970
    .local v9, pos:I
    :goto_1
    iget v12, p1, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    if-gt v9, v12, :cond_6

    iget-object v12, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_6

    .line 971
    iget-object v12, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    check-cast v3, Lmiui/v5/view/ViewPager$ItemInfo;

    .line 972
    .restart local v3       #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    :goto_2
    iget v12, v3, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_1

    iget-object v12, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v5, v12, :cond_1

    .line 973
    add-int/lit8 v5, v5, 0x1

    .line 974
    iget-object v12, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    check-cast v3, Lmiui/v5/view/ViewPager$ItemInfo;

    .restart local v3       #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    goto :goto_2

    .line 960
    .end local v3           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    .end local v5           #itemIndex:I
    .end local v6           #marginOffset:F
    .end local v7           #offset:F
    .end local v8           #oldCurPosition:I
    .end local v9           #pos:I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 976
    .restart local v3       #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    .restart local v5       #itemIndex:I
    .restart local v6       #marginOffset:F
    .restart local v7       #offset:F
    .restart local v8       #oldCurPosition:I
    .restart local v9       #pos:I
    :cond_1
    :goto_3
    iget v12, v3, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_2

    .line 979
    iget-object v12, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    invoke-virtual {v12, v9}, Lmiui/v5/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 980
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 982
    :cond_2
    iput v7, v3, Lmiui/v5/view/ViewPager$ItemInfo;->offset:F

    .line 983
    iget v12, v3, Lmiui/v5/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 970
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 985
    .end local v3           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    .end local v5           #itemIndex:I
    .end local v7           #offset:F
    .end local v9           #pos:I
    :cond_3
    iget v12, p1, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    if-le v8, v12, :cond_6

    .line 986
    iget-object v12, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .line 987
    .restart local v5       #itemIndex:I
    const/4 v3, 0x0

    .line 988
    .restart local v3       #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    move-object/from16 v0, p3

    iget v7, v0, Lmiui/v5/view/ViewPager$ItemInfo;->offset:F

    .line 989
    .restart local v7       #offset:F
    add-int/lit8 v9, v8, -0x1

    .line 990
    .restart local v9       #pos:I
    :goto_4
    iget v12, p1, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    if-lt v9, v12, :cond_6

    if-ltz v5, :cond_6

    .line 991
    iget-object v12, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    check-cast v3, Lmiui/v5/view/ViewPager$ItemInfo;

    .line 992
    .restart local v3       #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    :goto_5
    iget v12, v3, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_4

    if-lez v5, :cond_4

    .line 993
    add-int/lit8 v5, v5, -0x1

    .line 994
    iget-object v12, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    check-cast v3, Lmiui/v5/view/ViewPager$ItemInfo;

    .restart local v3       #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    goto :goto_5

    .line 996
    :cond_4
    :goto_6
    iget v12, v3, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_5

    .line 999
    iget-object v12, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    invoke-virtual {v12, v9}, Lmiui/v5/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1000
    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    .line 1002
    :cond_5
    iget v12, v3, Lmiui/v5/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1003
    iput v7, v3, Lmiui/v5/view/ViewPager$ItemInfo;->offset:F

    .line 990
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 1009
    .end local v3           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    .end local v5           #itemIndex:I
    .end local v7           #offset:F
    .end local v8           #oldCurPosition:I
    .end local v9           #pos:I
    :cond_6
    iget-object v12, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1010
    .local v4, itemCount:I
    iget v7, p1, Lmiui/v5/view/ViewPager$ItemInfo;->offset:F

    .line 1011
    .restart local v7       #offset:F
    iget v12, p1, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v12, -0x1

    .line 1012
    .restart local v9       #pos:I
    iget v12, p1, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    if-nez v12, :cond_7

    iget v12, p1, Lmiui/v5/view/ViewPager$ItemInfo;->offset:F

    :goto_7
    iput v12, p0, Lmiui/v5/view/ViewPager;->mFirstOffset:F

    .line 1013
    iget v12, p1, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_8

    iget v12, p1, Lmiui/v5/view/ViewPager$ItemInfo;->offset:F

    iget v13, p1, Lmiui/v5/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    const/high16 v13, 0x3f80

    sub-float/2addr v12, v13

    :goto_8
    iput v12, p0, Lmiui/v5/view/ViewPager;->mLastOffset:F

    .line 1016
    add-int/lit8 v2, p2, -0x1

    .local v2, i:I
    :goto_9
    if-ltz v2, :cond_b

    .line 1017
    iget-object v12, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/v5/view/ViewPager$ItemInfo;

    .line 1018
    .restart local v3       #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    :goto_a
    iget v12, v3, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_9

    .line 1019
    iget-object v12, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    add-int/lit8 v10, v9, -0x1

    .end local v9           #pos:I
    .local v10, pos:I
    invoke-virtual {v12, v9}, Lmiui/v5/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    move v9, v10

    .end local v10           #pos:I
    .restart local v9       #pos:I
    goto :goto_a

    .line 1012
    .end local v2           #i:I
    .end local v3           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    :cond_7
    const v12, -0x800001

    goto :goto_7

    .line 1013
    :cond_8
    const v12, 0x7f7fffff

    goto :goto_8

    .line 1021
    .restart local v2       #i:I
    .restart local v3       #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    :cond_9
    iget v12, v3, Lmiui/v5/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1022
    iput v7, v3, Lmiui/v5/view/ViewPager$ItemInfo;->offset:F

    .line 1023
    iget v12, v3, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    if-nez v12, :cond_a

    iput v7, p0, Lmiui/v5/view/ViewPager;->mFirstOffset:F

    .line 1016
    :cond_a
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_9

    .line 1025
    .end local v3           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    :cond_b
    iget v12, p1, Lmiui/v5/view/ViewPager$ItemInfo;->offset:F

    iget v13, p1, Lmiui/v5/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 1026
    iget v12, p1, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v12, 0x1

    .line 1028
    add-int/lit8 v2, p2, 0x1

    :goto_b
    if-ge v2, v4, :cond_e

    .line 1029
    iget-object v12, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/v5/view/ViewPager$ItemInfo;

    .line 1030
    .restart local v3       #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    :goto_c
    iget v12, v3, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_c

    .line 1031
    iget-object v12, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    add-int/lit8 v10, v9, 0x1

    .end local v9           #pos:I
    .restart local v10       #pos:I
    invoke-virtual {v12, v9}, Lmiui/v5/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    move v9, v10

    .end local v10           #pos:I
    .restart local v9       #pos:I
    goto :goto_c

    .line 1033
    :cond_c
    iget v12, v3, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_d

    .line 1034
    iget v12, v3, Lmiui/v5/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v7

    const/high16 v13, 0x3f80

    sub-float/2addr v12, v13

    iput v12, p0, Lmiui/v5/view/ViewPager;->mLastOffset:F

    .line 1036
    :cond_d
    iput v7, v3, Lmiui/v5/view/ViewPager$ItemInfo;->offset:F

    .line 1037
    iget v12, v3, Lmiui/v5/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1028
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 1040
    .end local v3           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    :cond_e
    const/4 v12, 0x0

    iput-boolean v12, p0, Lmiui/v5/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 1041
    return-void
.end method

.method private completeScroll()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 1592
    iget v8, p0, Lmiui/v5/view/ViewPager;->mScrollState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    const/4 v2, 0x1

    .line 1593
    .local v2, needPopulate:Z
    :goto_0
    if-eqz v2, :cond_2

    .line 1595
    invoke-direct {p0, v7}, Lmiui/v5/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1596
    iget-object v8, p0, Lmiui/v5/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1597
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getScrollX()I

    move-result v3

    .line 1598
    .local v3, oldX:I
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getScrollY()I

    move-result v4

    .line 1599
    .local v4, oldY:I
    iget-object v8, p0, Lmiui/v5/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1600
    .local v5, x:I
    iget-object v8, p0, Lmiui/v5/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1601
    .local v6, y:I
    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    .line 1602
    :cond_0
    invoke-virtual {p0, v5, v6}, Lmiui/v5/view/ViewPager;->scrollTo(II)V

    .line 1604
    :cond_1
    invoke-direct {p0, v7}, Lmiui/v5/view/ViewPager;->setScrollState(I)V

    .line 1606
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_2
    iput-boolean v7, p0, Lmiui/v5/view/ViewPager;->mPopulatePending:Z

    .line 1607
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v8, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_5

    .line 1608
    iget-object v8, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/view/ViewPager$ItemInfo;

    .line 1609
    .local v1, ii:Lmiui/v5/view/ViewPager$ItemInfo;
    iget-boolean v8, v1, Lmiui/v5/view/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v8, :cond_3

    .line 1610
    const/4 v2, 0x1

    .line 1611
    iput-boolean v7, v1, Lmiui/v5/view/ViewPager$ItemInfo;->scrolling:Z

    .line 1607
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    .end local v2           #needPopulate:Z
    :cond_4
    move v2, v7

    .line 1592
    goto :goto_0

    .line 1614
    .restart local v0       #i:I
    .restart local v2       #needPopulate:Z
    :cond_5
    if-eqz v2, :cond_6

    .line 1615
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->populate()V

    .line 1617
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
    .line 2001
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lmiui/v5/view/ViewPager;->mFlingDistance:I

    if-le v3, v4, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lmiui/v5/view/ViewPager;->mMinimumVelocity:I

    if-le v3, v4, :cond_2

    .line 2002
    if-lez p3, :cond_1

    move v2, p1

    .line 2007
    .local v2, targetPage:I
    :goto_0
    iget-object v3, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 2008
    iget-object v3, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/v5/view/ViewPager$ItemInfo;

    .line 2009
    .local v0, firstItem:Lmiui/v5/view/ViewPager$ItemInfo;
    iget-object v3, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/view/ViewPager$ItemInfo;

    .line 2012
    .local v1, lastItem:Lmiui/v5/view/ViewPager$ItemInfo;
    iget v3, v0, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    iget v4, v1, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2015
    .end local v0           #firstItem:Lmiui/v5/view/ViewPager$ItemInfo;
    .end local v1           #lastItem:Lmiui/v5/view/ViewPager$ItemInfo;
    :cond_0
    return v2

    .line 2002
    .end local v2           #targetPage:I
    :cond_1
    add-int/lit8 v2, p1, 0x1

    goto :goto_0

    .line 2004
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

    .line 2250
    iput-boolean v0, p0, Lmiui/v5/view/ViewPager;->mIsBeingDragged:Z

    .line 2251
    iput-boolean v0, p0, Lmiui/v5/view/ViewPager;->mIsUnableToDrag:Z

    .line 2253
    iget-object v0, p0, Lmiui/v5/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2254
    iget-object v0, p0, Lmiui/v5/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2255
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/v5/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2257
    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .parameter "outRect"
    .parameter "child"

    .prologue
    const/4 v2, 0x0

    .line 2392
    if-nez p1, :cond_0

    .line 2393
    new-instance p1, Landroid/graphics/Rect;

    .end local p1
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2395
    .restart local p1
    :cond_0
    if-nez p2, :cond_2

    .line 2396
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2414
    :cond_1
    return-object p1

    .line 2399
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2400
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2401
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2402
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2404
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2405
    .local v1, parent:Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v1, p0, :cond_1

    move-object v0, v1

    .line 2406
    check-cast v0, Landroid/view/ViewGroup;

    .line 2407
    .local v0, group:Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2408
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2409
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2410
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2412
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2413
    goto :goto_0
.end method

.method private infoForCurrentScrollPosition()Lmiui/v5/view/ViewPager$ItemInfo;
    .locals 15

    .prologue
    const/4 v8, 0x0

    .line 1958
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getWidth()I

    move-result v12

    .line 1959
    .local v12, width:I
    if-lez v12, :cond_5

    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getScrollX()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v11, v13, v14

    .line 1960
    .local v11, scrollOffset:F
    :goto_0
    if-lez v12, :cond_0

    iget v13, p0, Lmiui/v5/view/ViewPager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v8, v13, v14

    .line 1961
    .local v8, marginOffset:F
    :cond_0
    const/4 v5, -0x1

    .line 1962
    .local v5, lastPos:I
    const/4 v4, 0x0

    .line 1963
    .local v4, lastOffset:F
    const/4 v6, 0x0

    .line 1964
    .local v6, lastWidth:F
    const/4 v0, 0x1

    .line 1966
    .local v0, first:Z
    const/4 v3, 0x0

    .line 1967
    .local v3, lastItem:Lmiui/v5/view/ViewPager$ItemInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v13, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v1, v13, :cond_4

    .line 1968
    iget-object v13, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/v5/view/ViewPager$ItemInfo;

    .line 1970
    .local v2, ii:Lmiui/v5/view/ViewPager$ItemInfo;
    if-nez v0, :cond_1

    iget v13, v2, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v14, v5, 0x1

    if-eq v13, v14, :cond_1

    .line 1972
    iget-object v2, p0, Lmiui/v5/view/ViewPager;->mTempItem:Lmiui/v5/view/ViewPager$ItemInfo;

    .line 1973
    add-float v13, v4, v6

    add-float/2addr v13, v8

    iput v13, v2, Lmiui/v5/view/ViewPager$ItemInfo;->offset:F

    .line 1974
    add-int/lit8 v13, v5, 0x1

    iput v13, v2, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    .line 1975
    iget-object v13, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    iget v14, v2, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    invoke-virtual {v13, v14}, Lmiui/v5/view/PagerAdapter;->getPageWidth(I)F

    move-result v13

    iput v13, v2, Lmiui/v5/view/ViewPager$ItemInfo;->widthFactor:F

    .line 1976
    add-int/lit8 v1, v1, -0x1

    .line 1978
    :cond_1
    iget v9, v2, Lmiui/v5/view/ViewPager$ItemInfo;->offset:F

    .line 1980
    .local v9, offset:F
    move v7, v9

    .line 1981
    .local v7, leftBound:F
    iget v13, v2, Lmiui/v5/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v9

    add-float v10, v13, v8

    .line 1982
    .local v10, rightBound:F
    if-nez v0, :cond_2

    cmpl-float v13, v11, v7

    if-ltz v13, :cond_4

    .line 1983
    :cond_2
    cmpg-float v13, v11, v10

    if-ltz v13, :cond_3

    iget-object v13, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v1, v13, :cond_6

    :cond_3
    move-object v3, v2

    .line 1996
    .end local v2           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    .end local v3           #lastItem:Lmiui/v5/view/ViewPager$ItemInfo;
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

    .line 1959
    goto :goto_0

    .line 1989
    .restart local v0       #first:Z
    .restart local v1       #i:I
    .restart local v2       #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    .restart local v3       #lastItem:Lmiui/v5/view/ViewPager$ItemInfo;
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

    .line 1990
    iget v5, v2, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    .line 1991
    move v4, v9

    .line 1992
    iget v6, v2, Lmiui/v5/view/ViewPager$ItemInfo;->widthFactor:F

    .line 1993
    move-object v3, v2

    .line 1967
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isGutterDrag(FF)Z
    .locals 3
    .parameter "x"
    .parameter "dx"

    .prologue
    const/4 v2, 0x0

    .line 1620
    iget v0, p0, Lmiui/v5/view/ViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Lmiui/v5/view/ViewPager;->mGutterSize:I

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
    .line 2235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 2236
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2237
    .local v1, pointerId:I
    iget v3, p0, Lmiui/v5/view/ViewPager;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 2240
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 2241
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lmiui/v5/view/ViewPager;->mLastMotionX:F

    .line 2242
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lmiui/v5/view/ViewPager;->mActivePointerId:I

    .line 2243
    iget-object v3, p0, Lmiui/v5/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 2244
    iget-object v3, p0, Lmiui/v5/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2247
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 2240
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageScrolled(IZ)Z
    .locals 12
    .parameter "xpos"
    .parameter "updateCurrentItem"

    .prologue
    const/4 v9, 0x0

    .line 1469
    iget-object v10, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_0

    .line 1470
    iput-boolean v9, p0, Lmiui/v5/view/ViewPager;->mCalledSuper:Z

    .line 1471
    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10, v9}, Lmiui/v5/view/ViewPager;->onPageScrolled(IFI)V

    .line 1472
    iget-boolean v10, p0, Lmiui/v5/view/ViewPager;->mCalledSuper:Z

    if-nez v10, :cond_6

    .line 1473
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "onPageScrolled did not call superclass implementation"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1478
    :cond_0
    invoke-direct {p0}, Lmiui/v5/view/ViewPager;->infoForCurrentScrollPosition()Lmiui/v5/view/ViewPager$ItemInfo;

    move-result-object v1

    .line 1479
    .local v1, ii:Lmiui/v5/view/ViewPager$ItemInfo;
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getWidth()I

    move-result v7

    .line 1480
    .local v7, width:I
    iget v10, p0, Lmiui/v5/view/ViewPager;->mPageMargin:I

    add-int v8, v7, v10

    .line 1481
    .local v8, widthWithMargin:I
    iget v10, p0, Lmiui/v5/view/ViewPager;->mPageMargin:I

    int-to-float v10, v10

    int-to-float v11, v7

    div-float v2, v10, v11

    .line 1482
    .local v2, marginOffset:F
    iget v0, v1, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    .line 1483
    .local v0, currentPage:I
    int-to-float v10, p1

    int-to-float v11, v7

    div-float/2addr v10, v11

    iget v11, v1, Lmiui/v5/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v10, v11

    iget v11, v1, Lmiui/v5/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v11, v2

    div-float v5, v10, v11

    .line 1485
    .local v5, pageOffset:F
    int-to-float v10, v8

    mul-float/2addr v10, v5

    float-to-int v4, v10

    .line 1487
    .local v4, offsetPixels:I
    iput-boolean v9, p0, Lmiui/v5/view/ViewPager;->mCalledSuper:Z

    .line 1488
    invoke-virtual {p0, v0, v5, v4}, Lmiui/v5/view/ViewPager;->onPageScrolled(IFI)V

    .line 1489
    iget-boolean v9, p0, Lmiui/v5/view/ViewPager;->mCalledSuper:Z

    if-nez v9, :cond_1

    .line 1490
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "onPageScrolled did not call superclass implementation"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1495
    :cond_1
    if-eqz p2, :cond_5

    .line 1496
    const/4 v6, 0x0

    .line 1497
    .local v6, updateNeeded:Z
    move v3, v0

    .line 1498
    .local v3, newCurrentPage:I
    iget v9, p0, Lmiui/v5/view/ViewPager;->mLastPageOffset:F

    cmpg-float v9, v9, v5

    if-gez v9, :cond_7

    const v9, 0x3f0ccccd

    cmpl-float v9, v5, v9

    if-lez v9, :cond_7

    .line 1499
    const/4 v6, 0x1

    .line 1500
    add-int/lit8 v3, v0, 0x1

    .line 1505
    :cond_2
    :goto_0
    iput v5, p0, Lmiui/v5/view/ViewPager;->mLastPageOffset:F

    .line 1507
    if-eqz v6, :cond_5

    .line 1508
    if-gez v3, :cond_8

    .line 1509
    const/4 v3, 0x0

    .line 1514
    :cond_3
    :goto_1
    iget v9, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    if-eq v3, v9, :cond_5

    .line 1515
    invoke-virtual {p0, v3}, Lmiui/v5/view/ViewPager;->populate(I)V

    .line 1516
    iget-object v9, p0, Lmiui/v5/view/ViewPager;->mOnPageChangeListener:Lmiui/v5/view/ViewPager$OnPageChangeListener;

    if-eqz v9, :cond_4

    .line 1517
    iget-object v9, p0, Lmiui/v5/view/ViewPager;->mOnPageChangeListener:Lmiui/v5/view/ViewPager$OnPageChangeListener;

    invoke-interface {v9, v3}, Lmiui/v5/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1519
    :cond_4
    iget-object v9, p0, Lmiui/v5/view/ViewPager;->mInternalPageChangeListener:Lmiui/v5/view/ViewPager$OnPageChangeListener;

    if-eqz v9, :cond_5

    .line 1520
    iget-object v9, p0, Lmiui/v5/view/ViewPager;->mInternalPageChangeListener:Lmiui/v5/view/ViewPager$OnPageChangeListener;

    invoke-interface {v9, v3}, Lmiui/v5/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1526
    .end local v3           #newCurrentPage:I
    .end local v6           #updateNeeded:Z
    :cond_5
    const/4 v9, 0x1

    .end local v0           #currentPage:I
    .end local v1           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    .end local v2           #marginOffset:F
    .end local v4           #offsetPixels:I
    .end local v5           #pageOffset:F
    .end local v7           #width:I
    .end local v8           #widthWithMargin:I
    :cond_6
    return v9

    .line 1501
    .restart local v0       #currentPage:I
    .restart local v1       #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    .restart local v2       #marginOffset:F
    .restart local v3       #newCurrentPage:I
    .restart local v4       #offsetPixels:I
    .restart local v5       #pageOffset:F
    .restart local v6       #updateNeeded:Z
    .restart local v7       #width:I
    .restart local v8       #widthWithMargin:I
    :cond_7
    iget v9, p0, Lmiui/v5/view/ViewPager;->mLastPageOffset:F

    cmpl-float v9, v9, v5

    if-lez v9, :cond_2

    const v9, 0x3ee66666

    cmpg-float v9, v5, v9

    if-gez v9, :cond_2

    .line 1502
    const/4 v6, 0x1

    .line 1503
    move v3, v0

    goto :goto_0

    .line 1510
    :cond_8
    iget-object v9, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    invoke-virtual {v9}, Lmiui/v5/view/PagerAdapter;->getCount()I

    move-result v9

    if-lt v3, v9, :cond_3

    .line 1511
    iget-object v9, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    invoke-virtual {v9}, Lmiui/v5/view/PagerAdapter;->getCount()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    goto :goto_1
.end method

.method private performDrag(F)Z
    .locals 17
    .parameter "x"

    .prologue
    .line 1905
    const/4 v7, 0x0

    .line 1907
    .local v7, needsInvalidate:Z
    move-object/from16 v0, p0

    iget v14, v0, Lmiui/v5/view/ViewPager;->mLastMotionX:F

    sub-float v2, v14, p1

    .line 1908
    .local v2, deltaX:F
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/view/ViewPager;->mLastMotionX:F

    .line 1910
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getScrollX()I

    move-result v14

    int-to-float v8, v14

    .line 1911
    .local v8, oldScrollX:F
    add-float v12, v8, v2

    .line 1912
    .local v12, scrollX:F
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getWidth()I

    move-result v13

    .line 1914
    .local v13, width:I
    int-to-float v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Lmiui/v5/view/ViewPager;->mFirstOffset:F

    mul-float v6, v14, v15

    .line 1915
    .local v6, leftBound:F
    int-to-float v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Lmiui/v5/view/ViewPager;->mLastOffset:F

    mul-float v11, v14, v15

    .line 1916
    .local v11, rightBound:F
    const/4 v5, 0x1

    .line 1917
    .local v5, leftAbsolute:Z
    const/4 v10, 0x1

    .line 1919
    .local v10, rightAbsolute:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/v5/view/ViewPager$ItemInfo;

    .line 1920
    .local v3, firstItem:Lmiui/v5/view/ViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/v5/view/ViewPager$ItemInfo;

    .line 1921
    .local v4, lastItem:Lmiui/v5/view/ViewPager$ItemInfo;
    iget v14, v3, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    if-eqz v14, :cond_0

    .line 1922
    const/4 v5, 0x0

    .line 1923
    iget v14, v3, Lmiui/v5/view/ViewPager$ItemInfo;->offset:F

    int-to-float v15, v13

    mul-float v6, v14, v15

    .line 1925
    :cond_0
    iget v14, v4, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    invoke-virtual {v15}, Lmiui/v5/view/PagerAdapter;->getCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-eq v14, v15, :cond_1

    .line 1926
    const/4 v10, 0x0

    .line 1927
    iget v14, v4, Lmiui/v5/view/ViewPager$ItemInfo;->offset:F

    int-to-float v15, v13

    mul-float v11, v14, v15

    .line 1930
    :cond_1
    cmpg-float v14, v12, v6

    if-gez v14, :cond_4

    .line 1931
    if-eqz v5, :cond_2

    .line 1932
    sub-float v9, v6, v12

    .line 1933
    .local v9, over:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/v5/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 1934
    const/4 v7, 0x1

    .line 1936
    .end local v9           #over:F
    :cond_2
    move v12, v6

    .line 1946
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lmiui/v5/view/ViewPager;->mLastMotionX:F

    float-to-int v15, v12

    int-to-float v15, v15

    sub-float v15, v12, v15

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lmiui/v5/view/ViewPager;->mLastMotionX:F

    .line 1947
    float-to-int v14, v12

    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getScrollY()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lmiui/v5/view/ViewPager;->scrollTo(II)V

    .line 1948
    float-to-int v14, v12

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lmiui/v5/view/ViewPager;->pageScrolled(IZ)Z

    .line 1950
    return v7

    .line 1937
    :cond_4
    cmpl-float v14, v12, v11

    if-lez v14, :cond_3

    .line 1938
    if-eqz v10, :cond_5

    .line 1939
    sub-float v9, v12, v11

    .line 1940
    .restart local v9       #over:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/v5/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 1941
    const/4 v7, 0x1

    .line 1943
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
    .line 1300
    if-lez p2, :cond_1

    iget-object v0, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1301
    add-int v12, p1, p3

    .line 1302
    .local v12, widthWithMargin:I
    add-int v7, p2, p4

    .line 1303
    .local v7, oldWidthWithMargin:I
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getScrollX()I

    move-result v13

    .line 1304
    .local v13, xpos:I
    int-to-float v0, v13

    int-to-float v2, v7

    div-float v8, v0, v2

    .line 1305
    .local v8, pageOffset:F
    int-to-float v0, v12

    mul-float/2addr v0, v8

    float-to-int v1, v0

    .line 1307
    .local v1, newOffsetPixels:I
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lmiui/v5/view/ViewPager;->scrollTo(II)V

    .line 1308
    iget-object v0, p0, Lmiui/v5/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1310
    iget-object v0, p0, Lmiui/v5/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v2, p0, Lmiui/v5/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    sub-int v5, v0, v2

    .line 1311
    .local v5, newDuration:I
    iget v0, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lmiui/v5/view/ViewPager;->infoForPosition(I)Lmiui/v5/view/ViewPager$ItemInfo;

    move-result-object v11

    .line 1312
    .local v11, targetInfo:Lmiui/v5/view/ViewPager$ItemInfo;
    iget-object v0, p0, Lmiui/v5/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    iget v3, v11, Lmiui/v5/view/ViewPager$ItemInfo;->offset:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1324
    .end local v1           #newOffsetPixels:I
    .end local v5           #newDuration:I
    .end local v7           #oldWidthWithMargin:I
    .end local v8           #pageOffset:F
    .end local v11           #targetInfo:Lmiui/v5/view/ViewPager$ItemInfo;
    .end local v12           #widthWithMargin:I
    .end local v13           #xpos:I
    :cond_0
    :goto_0
    return-void

    .line 1316
    :cond_1
    iget v0, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lmiui/v5/view/ViewPager;->infoForPosition(I)Lmiui/v5/view/ViewPager$ItemInfo;

    move-result-object v6

    .line 1317
    .local v6, ii:Lmiui/v5/view/ViewPager$ItemInfo;
    if-eqz v6, :cond_2

    iget v0, v6, Lmiui/v5/view/ViewPager$ItemInfo;->offset:F

    iget v2, p0, Lmiui/v5/view/ViewPager;->mLastOffset:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 1318
    .local v9, scrollOffset:F
    :goto_1
    int-to-float v0, p1

    mul-float/2addr v0, v9

    float-to-int v10, v0

    .line 1319
    .local v10, scrollPos:I
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getScrollX()I

    move-result v0

    if-eq v10, v0, :cond_0

    .line 1320
    invoke-direct {p0}, Lmiui/v5/view/ViewPager;->completeScroll()V

    .line 1321
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v10, v0}, Lmiui/v5/view/ViewPager;->scrollTo(II)V

    goto :goto_0

    .line 1317
    .end local v9           #scrollOffset:F
    .end local v10           #scrollPos:I
    :cond_2
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private removeNonDecorViews()V
    .locals 4

    .prologue
    .line 398
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 399
    invoke-virtual {p0, v1}, Lmiui/v5/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 400
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lmiui/v5/view/ViewPager$LayoutParams;

    .line 401
    .local v2, lp:Lmiui/v5/view/ViewPager$LayoutParams;
    iget-boolean v3, v2, Lmiui/v5/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_0

    .line 402
    invoke-virtual {p0, v1}, Lmiui/v5/view/ViewPager;->removeViewAt(I)V

    .line 403
    add-int/lit8 v1, v1, -0x1

    .line 398
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    .end local v0           #child:Landroid/view/View;
    .end local v2           #lp:Lmiui/v5/view/ViewPager$LayoutParams;
    :cond_1
    return-void
.end method

.method private setScrollState(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 338
    iget v0, p0, Lmiui/v5/view/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iput p1, p0, Lmiui/v5/view/ViewPager;->mScrollState:I

    .line 343
    iget-object v0, p0, Lmiui/v5/view/ViewPager;->mOnPageChangeListener:Lmiui/v5/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 344
    iget-object v0, p0, Lmiui/v5/view/ViewPager;->mOnPageChangeListener:Lmiui/v5/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lmiui/v5/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 347
    :cond_2
    iget-object v0, p0, Lmiui/v5/view/ViewPager;->mInternalPageChangeListener:Lmiui/v5/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lmiui/v5/view/ViewPager;->mInternalPageChangeListener:Lmiui/v5/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lmiui/v5/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2260
    iget-boolean v0, p0, Lmiui/v5/view/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2261
    iput-boolean p1, p0, Lmiui/v5/view/ViewPager;->mScrollingCacheEnabled:Z

    .line 2272
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
    .line 2438
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2440
    .local v2, focusableCount:I
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getDescendantFocusability()I

    move-result v1

    .line 2442
    .local v1, descendantFocusability:I
    const/high16 v5, 0x6

    if-eq v1, v5, :cond_1

    .line 2443
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 2444
    invoke-virtual {p0, v3}, Lmiui/v5/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2445
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 2446
    invoke-virtual {p0, v0}, Lmiui/v5/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/v5/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 2447
    .local v4, ii:Lmiui/v5/view/ViewPager$ItemInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    iget v6, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    if-ne v5, v6, :cond_0

    .line 2448
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2443
    .end local v4           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2458
    .end local v0           #child:Landroid/view/View;
    .end local v3           #i:I
    :cond_1
    const/high16 v5, 0x4

    if-ne v1, v5, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 2464
    :cond_2
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2475
    :cond_3
    :goto_1
    return-void

    .line 2467
    :cond_4
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2471
    :cond_5
    if-eqz p1, :cond_3

    .line 2472
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method addNewItem(II)Lmiui/v5/view/ViewPager$ItemInfo;
    .locals 2
    .parameter "position"
    .parameter "index"

    .prologue
    .line 699
    new-instance v0, Lmiui/v5/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Lmiui/v5/view/ViewPager$ItemInfo;-><init>()V

    .line 700
    .local v0, ii:Lmiui/v5/view/ViewPager$ItemInfo;
    iput p1, v0, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    .line 701
    iget-object v1, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Lmiui/v5/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lmiui/v5/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 702
    iget-object v1, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    invoke-virtual {v1, p1}, Lmiui/v5/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Lmiui/v5/view/ViewPager$ItemInfo;->widthFactor:F

    .line 703
    iget-object v1, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    invoke-virtual {v1, p1}, Lmiui/v5/view/PagerAdapter;->hasActionMenu(I)Z

    move-result v1

    iput-boolean v1, v0, Lmiui/v5/view/ViewPager$ItemInfo;->hasActionMenu:Z

    .line 704
    if-ltz p2, :cond_0

    iget-object v1, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 705
    :cond_0
    iget-object v1, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    :goto_0
    return-object v0

    .line 707
    :cond_1
    iget-object v1, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

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
    .line 2485
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2486
    invoke-virtual {p0, v1}, Lmiui/v5/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2487
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 2488
    invoke-virtual {p0, v0}, Lmiui/v5/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/v5/view/ViewPager$ItemInfo;

    move-result-object v2

    .line 2489
    .local v2, ii:Lmiui/v5/view/ViewPager$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    iget v4, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    if-ne v3, v4, :cond_0

    .line 2490
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2485
    .end local v2           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2494
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
    .line 1122
    invoke-virtual {p0, p3}, Lmiui/v5/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1123
    invoke-virtual {p0, p3}, Lmiui/v5/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    .line 1125
    check-cast v0, Lmiui/v5/view/ViewPager$LayoutParams;

    .line 1126
    .local v0, lp:Lmiui/v5/view/ViewPager$LayoutParams;
    iget-boolean v1, v0, Lmiui/v5/view/ViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Lmiui/v5/view/ViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lmiui/v5/view/ViewPager$LayoutParams;->isDecor:Z

    .line 1127
    iget-boolean v1, p0, Lmiui/v5/view/ViewPager;->mInLayout:Z

    if-eqz v1, :cond_2

    .line 1128
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lmiui/v5/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_1

    .line 1129
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1131
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmiui/v5/view/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1132
    invoke-virtual {p0, p1, p2, p3}, Lmiui/v5/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1144
    :goto_0
    return-void

    .line 1134
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

    .line 2349
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2350
    .local v1, currentFocused:Landroid/view/View;
    if-ne v1, p0, :cond_0

    const/4 v1, 0x0

    .line 2352
    :cond_0
    const/4 v2, 0x0

    .line 2354
    .local v2, handled:Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    invoke-virtual {v5, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 2356
    .local v3, nextFocused:Landroid/view/View;
    if-eqz v3, :cond_6

    if-eq v3, v1, :cond_6

    .line 2357
    if-ne p1, v6, :cond_4

    .line 2360
    iget-object v5, p0, Lmiui/v5/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v5, v3}, Lmiui/v5/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    iget v4, v5, Landroid/graphics/Rect;->left:I

    .line 2361
    .local v4, nextLeft:I
    iget-object v5, p0, Lmiui/v5/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v5, v1}, Lmiui/v5/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 2362
    .local v0, currLeft:I
    if-eqz v1, :cond_3

    if-lt v4, v0, :cond_3

    .line 2363
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->pageLeft()Z

    move-result v2

    .line 2385
    .end local v0           #currLeft:I
    .end local v4           #nextLeft:I
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 2386
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lmiui/v5/view/ViewPager;->playSoundEffect(I)V

    .line 2388
    :cond_2
    return v2

    .line 2365
    .restart local v0       #currLeft:I
    .restart local v4       #nextLeft:I
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto :goto_0

    .line 2367
    .end local v0           #currLeft:I
    .end local v4           #nextLeft:I
    :cond_4
    if-ne p1, v7, :cond_1

    .line 2370
    iget-object v5, p0, Lmiui/v5/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v5, v3}, Lmiui/v5/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    iget v4, v5, Landroid/graphics/Rect;->left:I

    .line 2371
    .restart local v4       #nextLeft:I
    iget-object v5, p0, Lmiui/v5/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v5, v1}, Lmiui/v5/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 2372
    .restart local v0       #currLeft:I
    if-eqz v1, :cond_5

    if-gt v4, v0, :cond_5

    .line 2373
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->pageRight()Z

    move-result v2

    goto :goto_0

    .line 2375
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto :goto_0

    .line 2378
    .end local v0           #currLeft:I
    .end local v4           #nextLeft:I
    :cond_6
    if-eq p1, v6, :cond_7

    const/4 v5, 0x1

    if-ne p1, v5, :cond_8

    .line 2380
    :cond_7
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->pageLeft()Z

    move-result v2

    goto :goto_0

    .line 2381
    :cond_8
    if-eq p1, v7, :cond_9

    const/4 v5, 0x2

    if-ne p1, v5, :cond_1

    .line 2383
    :cond_9
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->pageRight()Z

    move-result v2

    goto :goto_0
.end method

.method public beginFakeDrag()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2125
    iget-boolean v2, p0, Lmiui/v5/view/ViewPager;->mIsBeingDragged:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lmiui/v5/view/ViewPager;->mDragEnabled:Z

    if-nez v2, :cond_1

    .line 2141
    :cond_0
    :goto_0
    return v4

    .line 2128
    :cond_1
    iput-boolean v9, p0, Lmiui/v5/view/ViewPager;->mFakeDragging:Z

    .line 2129
    invoke-direct {p0, v9}, Lmiui/v5/view/ViewPager;->setScrollState(I)V

    .line 2130
    iput v5, p0, Lmiui/v5/view/ViewPager;->mLastMotionX:F

    iput v5, p0, Lmiui/v5/view/ViewPager;->mInitialMotionX:F

    .line 2131
    iget-object v2, p0, Lmiui/v5/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_2

    .line 2132
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lmiui/v5/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2136
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, time:J
    move-wide v2, v0

    move v6, v5

    move v7, v4

    .line 2137
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 2138
    .local v8, ev:Landroid/view/MotionEvent;
    iget-object v2, p0, Lmiui/v5/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2139
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 2140
    iput-wide v0, p0, Lmiui/v5/view/ViewPager;->mFakeDragBeginTime:J

    move v4, v9

    .line 2141
    goto :goto_0

    .line 2134
    .end local v0           #time:J
    .end local v8           #ev:Landroid/view/MotionEvent;
    :cond_2
    iget-object v2, p0, Lmiui/v5/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

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
    .line 2286
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 2287
    check-cast v7, Landroid/view/ViewGroup;

    .line 2288
    .local v7, group:Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 2289
    .local v9, scrollX:I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 2290
    .local v10, scrollY:I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 2292
    .local v6, count:I
    add-int/lit8 v8, v6, -0x1

    .local v8, i:I
    :goto_0
    if-ltz v8, :cond_1

    .line 2295
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2296
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

    invoke-virtual/range {v0 .. v5}, Lmiui/v5/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2300
    const/4 v0, 0x1

    .line 2305
    .end local v1           #child:Landroid/view/View;
    .end local v6           #count:I
    .end local v7           #group:Landroid/view/ViewGroup;
    .end local v8           #i:I
    .end local v9           #scrollX:I
    .end local v10           #scrollY:I
    :goto_1
    return v0

    .line 2292
    .restart local v1       #child:Landroid/view/View;
    .restart local v6       #count:I
    .restart local v7       #group:Landroid/view/ViewGroup;
    .restart local v8       #i:I
    .restart local v9       #scrollX:I
    .restart local v10       #scrollY:I
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 2305
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
    .line 2563
    instance-of v0, p1, Lmiui/v5/view/ViewPager$LayoutParams;

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
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1444
    iget-object v4, p0, Lmiui/v5/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lmiui/v5/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1445
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getScrollX()I

    move-result v0

    .line 1446
    .local v0, oldX:I
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getScrollY()I

    move-result v1

    .line 1447
    .local v1, oldY:I
    iget-object v4, p0, Lmiui/v5/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1448
    .local v2, x:I
    iget-object v4, p0, Lmiui/v5/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1450
    .local v3, y:I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1451
    :cond_0
    invoke-virtual {p0, v2, v3}, Lmiui/v5/view/ViewPager;->scrollTo(II)V

    .line 1452
    invoke-direct {p0, v2, v5}, Lmiui/v5/view/ViewPager;->pageScrolled(IZ)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1453
    iget-object v4, p0, Lmiui/v5/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1454
    invoke-virtual {p0, v5, v3}, Lmiui/v5/view/ViewPager;->scrollTo(II)V

    .line 1459
    :cond_1
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->postInvalidateOnAnimation()V

    .line 1465
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    .end local v2           #x:I
    .end local v3           #y:I
    :goto_0
    return-void

    .line 1464
    :cond_2
    invoke-direct {p0}, Lmiui/v5/view/ViewPager;->completeScroll()V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 15

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 715
    iget-object v12, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget v13, p0, Lmiui/v5/view/ViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    if-ge v12, v13, :cond_1

    iget-object v12, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget-object v13, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    invoke-virtual {v13}, Lmiui/v5/view/PagerAdapter;->getCount()I

    move-result v13

    if-ge v12, v13, :cond_1

    move v6, v10

    .line 717
    .local v6, needPopulate:Z
    :goto_0
    iget v8, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    .line 718
    .local v8, newCurrItem:I
    const/4 v7, 0x0

    .line 720
    .local v7, needRequestLayout:Z
    const/4 v4, 0x0

    .line 721
    .local v4, isUpdating:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v12, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_9

    .line 722
    iget-object v12, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/v5/view/ViewPager$ItemInfo;

    .line 723
    .local v3, ii:Lmiui/v5/view/ViewPager$ItemInfo;
    iget-object v12, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    iget-object v13, v3, Lmiui/v5/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Lmiui/v5/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v9

    .line 725
    .local v9, newPos:I
    const/4 v12, -0x1

    if-ne v9, v12, :cond_3

    .line 727
    iget-boolean v12, v3, Lmiui/v5/view/ViewPager$ItemInfo;->hasActionMenu:Z

    iget-object v13, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    iget v14, v3, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    invoke-virtual {v13, v14}, Lmiui/v5/view/PagerAdapter;->hasActionMenu(I)Z

    move-result v13

    if-eq v12, v13, :cond_0

    .line 728
    iget-boolean v12, v3, Lmiui/v5/view/ViewPager$ItemInfo;->hasActionMenu:Z

    if-nez v12, :cond_2

    move v12, v10

    :goto_2
    iput-boolean v12, v3, Lmiui/v5/view/ViewPager$ItemInfo;->hasActionMenu:Z

    .line 729
    const/4 v7, 0x1

    .line 721
    :cond_0
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2           #i:I
    .end local v3           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    .end local v4           #isUpdating:Z
    .end local v6           #needPopulate:Z
    .end local v7           #needRequestLayout:Z
    .end local v8           #newCurrItem:I
    .end local v9           #newPos:I
    :cond_1
    move v6, v11

    .line 715
    goto :goto_0

    .restart local v2       #i:I
    .restart local v3       #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    .restart local v4       #isUpdating:Z
    .restart local v6       #needPopulate:Z
    .restart local v7       #needRequestLayout:Z
    .restart local v8       #newCurrItem:I
    .restart local v9       #newPos:I
    :cond_2
    move v12, v11

    .line 728
    goto :goto_2

    .line 735
    :cond_3
    const/4 v12, -0x2

    if-ne v9, v12, :cond_5

    .line 736
    iget-object v12, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 737
    add-int/lit8 v2, v2, -0x1

    .line 739
    if-nez v4, :cond_4

    .line 740
    iget-object v12, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    invoke-virtual {v12, p0}, Lmiui/v5/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 741
    const/4 v4, 0x1

    .line 744
    :cond_4
    iget-object v12, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    iget v13, v3, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    iget-object v14, v3, Lmiui/v5/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, p0, v13, v14}, Lmiui/v5/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 745
    const/4 v6, 0x1

    .line 747
    iget v12, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    iget v13, v3, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    if-ne v12, v13, :cond_0

    .line 749
    iget v12, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    iget-object v13, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    invoke-virtual {v13}, Lmiui/v5/view/PagerAdapter;->getCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 750
    const/4 v6, 0x1

    goto :goto_3

    .line 755
    :cond_5
    iget v12, v3, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    if-eq v12, v9, :cond_7

    .line 756
    iget v12, v3, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    iget v13, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    if-ne v12, v13, :cond_6

    .line 758
    move v8, v9

    .line 761
    :cond_6
    iput v9, v3, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    .line 762
    const/4 v6, 0x1

    .line 766
    :cond_7
    iget-boolean v12, v3, Lmiui/v5/view/ViewPager$ItemInfo;->hasActionMenu:Z

    iget-object v13, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    iget v14, v3, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    invoke-virtual {v13, v14}, Lmiui/v5/view/PagerAdapter;->hasActionMenu(I)Z

    move-result v13

    if-eq v12, v13, :cond_0

    .line 767
    iget-boolean v12, v3, Lmiui/v5/view/ViewPager$ItemInfo;->hasActionMenu:Z

    if-nez v12, :cond_8

    move v12, v10

    :goto_4
    iput-boolean v12, v3, Lmiui/v5/view/ViewPager$ItemInfo;->hasActionMenu:Z

    .line 768
    const/4 v7, 0x1

    goto :goto_3

    :cond_8
    move v12, v11

    .line 767
    goto :goto_4

    .line 772
    .end local v3           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    .end local v9           #newPos:I
    :cond_9
    if-eqz v4, :cond_a

    .line 773
    iget-object v12, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    invoke-virtual {v12, p0}, Lmiui/v5/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 776
    :cond_a
    iget-object v12, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v13, Lmiui/v5/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 778
    if-eqz v6, :cond_d

    .line 780
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getChildCount()I

    move-result v1

    .line 781
    .local v1, childCount:I
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_c

    .line 782
    invoke-virtual {p0, v2}, Lmiui/v5/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 783
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lmiui/v5/view/ViewPager$LayoutParams;

    .line 784
    .local v5, lp:Lmiui/v5/view/ViewPager$LayoutParams;
    iget-boolean v12, v5, Lmiui/v5/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v12, :cond_b

    .line 785
    const/4 v12, 0x0

    iput v12, v5, Lmiui/v5/view/ViewPager$LayoutParams;->widthFactor:F

    .line 781
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 789
    .end local v0           #child:Landroid/view/View;
    .end local v5           #lp:Lmiui/v5/view/ViewPager$LayoutParams;
    :cond_c
    invoke-virtual {p0, v8, v11, v10}, Lmiui/v5/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 790
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->requestLayout()V

    .line 791
    const/4 v7, 0x0

    .line 795
    .end local v1           #childCount:I
    :cond_d
    if-eqz v7, :cond_e

    .line 796
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->requestLayout()V

    .line 798
    :cond_e
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2311
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lmiui/v5/view/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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
    .line 2536
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getChildCount()I

    move-result v1

    .line 2537
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2538
    invoke-virtual {p0, v2}, Lmiui/v5/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2539
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2540
    invoke-virtual {p0, v0}, Lmiui/v5/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/v5/view/ViewPager$ItemInfo;

    move-result-object v3

    .line 2541
    .local v3, ii:Lmiui/v5/view/ViewPager$ItemInfo;
    if-eqz v3, :cond_0

    iget v4, v3, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    iget v5, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2543
    const/4 v4, 0x1

    .line 2548
    .end local v0           #child:Landroid/view/View;
    .end local v3           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    :goto_1
    return v4

    .line 2537
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2548
    .end local v0           #child:Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .parameter "f"

    .prologue
    .line 635
    const/high16 v0, 0x3f00

    sub-float/2addr p1, v0

    .line 636
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 637
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

    .line 2020
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2021
    const/4 v1, 0x0

    .line 2023
    .local v1, needsInvalidate:Z
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getOverScrollMode()I

    move-result v2

    .line 2024
    .local v2, overScrollMode:I
    if-eqz v2, :cond_0

    if-ne v2, v6, :cond_4

    iget-object v5, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    invoke-virtual {v5}, Lmiui/v5/view/PagerAdapter;->getCount()I

    move-result v5

    if-le v5, v6, :cond_4

    .line 2027
    :cond_0
    iget-object v5, p0, Lmiui/v5/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2028
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2029
    .local v3, restoreCount:I
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 2030
    .local v0, height:I
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getWidth()I

    move-result v4

    .line 2032
    .local v4, width:I
    const/high16 v5, 0x4387

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2033
    neg-int v5, v0

    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lmiui/v5/view/ViewPager;->mFirstOffset:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2034
    iget-object v5, p0, Lmiui/v5/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v0, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2035
    iget-object v5, p0, Lmiui/v5/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 2036
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2038
    .end local v0           #height:I
    .end local v3           #restoreCount:I
    .end local v4           #width:I
    :cond_1
    iget-object v5, p0, Lmiui/v5/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2039
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2040
    .restart local v3       #restoreCount:I
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getWidth()I

    move-result v4

    .line 2041
    .restart local v4       #width:I
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 2043
    .restart local v0       #height:I
    const/high16 v5, 0x42b4

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2044
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Lmiui/v5/view/ViewPager;->mLastOffset:F

    const/high16 v7, 0x3f80

    add-float/2addr v6, v7

    neg-float v6, v6

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2045
    iget-object v5, p0, Lmiui/v5/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v0, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2046
    iget-object v5, p0, Lmiui/v5/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 2047
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2054
    .end local v0           #height:I
    .end local v3           #restoreCount:I
    .end local v4           #width:I
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 2056
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->postInvalidateOnAnimation()V

    .line 2058
    :cond_3
    return-void

    .line 2050
    :cond_4
    iget-object v5, p0, Lmiui/v5/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->finish()V

    .line 2051
    iget-object v5, p0, Lmiui/v5/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 623
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 624
    iget-object v0, p0, Lmiui/v5/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 625
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 628
    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 2151
    iget-boolean v9, p0, Lmiui/v5/view/ViewPager;->mFakeDragging:Z

    if-nez v9, :cond_0

    .line 2152
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2155
    :cond_0
    iget-object v7, p0, Lmiui/v5/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2156
    .local v7, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v9, 0x3e8

    iget v10, p0, Lmiui/v5/view/ViewPager;->mMaximumVelocity:I

    int-to-float v10, v10

    invoke-virtual {v7, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2157
    iget v9, p0, Lmiui/v5/view/ViewPager;->mActivePointerId:I

    invoke-virtual {v7, v9}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v9

    float-to-int v2, v9

    .line 2158
    .local v2, initialVelocity:I
    iput-boolean v11, p0, Lmiui/v5/view/ViewPager;->mPopulatePending:Z

    .line 2159
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getWidth()I

    move-result v8

    .line 2160
    .local v8, width:I
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getScrollX()I

    move-result v5

    .line 2161
    .local v5, scrollX:I
    invoke-direct {p0}, Lmiui/v5/view/ViewPager;->infoForCurrentScrollPosition()Lmiui/v5/view/ViewPager$ItemInfo;

    move-result-object v1

    .line 2162
    .local v1, ii:Lmiui/v5/view/ViewPager$ItemInfo;
    iget v0, v1, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    .line 2163
    .local v0, currentPage:I
    int-to-float v9, v5

    int-to-float v10, v8

    div-float/2addr v9, v10

    iget v10, v1, Lmiui/v5/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v9, v10

    iget v10, v1, Lmiui/v5/view/ViewPager$ItemInfo;->widthFactor:F

    div-float v4, v9, v10

    .line 2164
    .local v4, pageOffset:F
    iget v9, p0, Lmiui/v5/view/ViewPager;->mLastMotionX:F

    iget v10, p0, Lmiui/v5/view/ViewPager;->mInitialMotionX:F

    sub-float/2addr v9, v10

    float-to-int v6, v9

    .line 2165
    .local v6, totalDelta:I
    invoke-direct {p0, v0, v4, v2, v6}, Lmiui/v5/view/ViewPager;->determineTargetPage(IFII)I

    move-result v3

    .line 2167
    .local v3, nextPage:I
    invoke-virtual {p0, v3, v11, v11, v2}, Lmiui/v5/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 2168
    invoke-direct {p0}, Lmiui/v5/view/ViewPager;->endDrag()V

    .line 2170
    const/4 v9, 0x0

    iput-boolean v9, p0, Lmiui/v5/view/ViewPager;->mFakeDragging:Z

    .line 2171
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 2323
    const/4 v0, 0x0

    .line 2324
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2325
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2345
    :cond_0
    :goto_0
    return v0

    .line 2327
    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lmiui/v5/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2328
    goto :goto_0

    .line 2330
    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lmiui/v5/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2331
    goto :goto_0

    .line 2333
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 2336
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2337
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lmiui/v5/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2338
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2339
    invoke-virtual {p0, v3}, Lmiui/v5/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2325
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
    .line 2181
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lmiui/v5/view/ViewPager;->mFakeDragging:Z

    if-nez v1, :cond_0

    .line 2182
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2185
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lmiui/v5/view/ViewPager;->mLastMotionX:F

    add-float v1, v1, p1

    move-object/from16 v0, p0

    iput v1, v0, Lmiui/v5/view/ViewPager;->mLastMotionX:F

    .line 2187
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getScrollX()I

    move-result v1

    int-to-float v13, v1

    .line 2188
    .local v13, oldScrollX:F
    sub-float v15, v13, p1

    .line 2189
    .local v15, scrollX:F
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getWidth()I

    move-result v16

    .line 2191
    .local v16, width:I
    move/from16 v0, v16

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lmiui/v5/view/ViewPager;->mFirstOffset:F

    mul-float v12, v1, v2

    .line 2192
    .local v12, leftBound:F
    move/from16 v0, v16

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lmiui/v5/view/ViewPager;->mLastOffset:F

    mul-float v14, v1, v2

    .line 2194
    .local v14, rightBound:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/v5/view/ViewPager$ItemInfo;

    .line 2195
    .local v10, firstItem:Lmiui/v5/view/ViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmiui/v5/view/ViewPager$ItemInfo;

    .line 2196
    .local v11, lastItem:Lmiui/v5/view/ViewPager$ItemInfo;
    iget v1, v10, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    if-eqz v1, :cond_1

    .line 2197
    iget v1, v10, Lmiui/v5/view/ViewPager$ItemInfo;->offset:F

    move/from16 v0, v16

    int-to-float v2, v0

    mul-float v12, v1, v2

    .line 2199
    :cond_1
    iget v1, v11, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    invoke-virtual {v2}, Lmiui/v5/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2

    .line 2200
    iget v1, v11, Lmiui/v5/view/ViewPager$ItemInfo;->offset:F

    move/from16 v0, v16

    int-to-float v2, v0

    mul-float v14, v1, v2

    .line 2203
    :cond_2
    cmpg-float v1, v15, v12

    if-gez v1, :cond_4

    .line 2204
    move v15, v12

    .line 2209
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lmiui/v5/view/ViewPager;->mLastMotionX:F

    float-to-int v2, v15

    int-to-float v2, v2

    sub-float v2, v15, v2

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lmiui/v5/view/ViewPager;->mLastMotionX:F

    .line 2210
    float-to-int v1, v15

    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getScrollY()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lmiui/v5/view/ViewPager;->scrollTo(II)V

    .line 2211
    float-to-int v1, v15

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lmiui/v5/view/ViewPager;->pageScrolled(IZ)Z

    .line 2214
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 2215
    .local v3, time:J
    move-object/from16 v0, p0

    iget-wide v1, v0, Lmiui/v5/view/ViewPager;->mFakeDragBeginTime:J

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lmiui/v5/view/ViewPager;->mLastMotionX:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 2217
    .local v9, ev:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/v5/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v9}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2218
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 2219
    return-void

    .line 2205
    .end local v3           #time:J
    .end local v9           #ev:Landroid/view/MotionEvent;
    :cond_4
    cmpl-float v1, v15, v14

    if-lez v1, :cond_3

    .line 2206
    move v15, v14

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2553
    new-instance v0, Lmiui/v5/view/ViewPager$LayoutParams;

    invoke-direct {v0}, Lmiui/v5/view/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 2568
    new-instance v0, Lmiui/v5/view/ViewPager$LayoutParams;

    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiui/v5/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 2558
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lmiui/v5/view/PagerAdapter;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 536
    iget v0, p0, Lmiui/v5/view/ViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    .line 592
    iget v0, p0, Lmiui/v5/view/ViewPager;->mPageMargin:I

    return v0
.end method

.method hasSplitActionBar()Z
    .locals 1

    .prologue
    .line 2619
    invoke-static {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->findActionBarViewByView(Landroid/view/View;)Lcom/miui/internal/v5/widget/ActionBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/v5/widget/ActionBarView;->isSplitActionBar()Z

    move-result v0

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lmiui/v5/view/ViewPager$ItemInfo;
    .locals 2
    .parameter "child"

    .prologue
    .line 1158
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, parent:Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2

    .line 1159
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 1160
    :cond_0
    const/4 v1, 0x0

    .line 1164
    :goto_1
    return-object v1

    :cond_1
    move-object p1, v0

    .line 1162
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1164
    :cond_2
    invoke-virtual {p0, p1}, Lmiui/v5/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/v5/view/ViewPager$ItemInfo;

    move-result-object v1

    goto :goto_1
.end method

.method infoForChild(Landroid/view/View;)Lmiui/v5/view/ViewPager$ItemInfo;
    .locals 4
    .parameter "child"

    .prologue
    .line 1147
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1148
    iget-object v2, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/view/ViewPager$ItemInfo;

    .line 1149
    .local v1, ii:Lmiui/v5/view/ViewPager$ItemInfo;
    iget-object v2, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    iget-object v3, v1, Lmiui/v5/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lmiui/v5/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1153
    .end local v1           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    :goto_1
    return-object v1

    .line 1147
    .restart local v1       #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1153
    .end local v1           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method infoForPosition(I)Lmiui/v5/view/ViewPager$ItemInfo;
    .locals 3
    .parameter "position"

    .prologue
    .line 1168
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1169
    iget-object v2, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/view/ViewPager$ItemInfo;

    .line 1170
    .local v1, ii:Lmiui/v5/view/ViewPager$ItemInfo;
    iget v2, v1, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    .line 1174
    .end local v1           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    :goto_1
    return-object v1

    .line 1168
    .restart local v1       #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1174
    .end local v1           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method initViewPager()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 315
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lmiui/v5/view/ViewPager;->setWillNotDraw(Z)V

    .line 316
    const/high16 v3, 0x4

    invoke-virtual {p0, v3}, Lmiui/v5/view/ViewPager;->setDescendantFocusability(I)V

    .line 317
    invoke-virtual {p0, v5}, Lmiui/v5/view/ViewPager;->setFocusable(Z)V

    .line 318
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 319
    .local v1, context:Landroid/content/Context;
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Lmiui/v5/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lmiui/v5/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 320
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 321
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Lmiui/v5/view/ViewPager;->mTouchSlop:I

    .line 322
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lmiui/v5/view/ViewPager;->mMinimumVelocity:I

    .line 323
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lmiui/v5/view/ViewPager;->mMaximumVelocity:I

    .line 324
    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lmiui/v5/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 325
    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lmiui/v5/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 327
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 328
    .local v2, density:F
    const/high16 v3, 0x41c8

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lmiui/v5/view/ViewPager;->mFlingDistance:I

    .line 329
    const/high16 v3, 0x4000

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lmiui/v5/view/ViewPager;->mCloseEnough:I

    .line 330
    const/high16 v3, 0x4180

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lmiui/v5/view/ViewPager;->mDefaultGutterSize:I

    .line 332
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getImportantForAccessibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 333
    invoke-virtual {p0, v5}, Lmiui/v5/view/ViewPager;->setImportantForAccessibility(I)V

    .line 335
    :cond_0
    return-void
.end method

.method public isFakeDragging()Z
    .locals 1

    .prologue
    .line 2231
    iget-boolean v0, p0, Lmiui/v5/view/ViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1179
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/v5/view/ViewPager;->mFirstLayout:Z

    .line 1181
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    .line 2062
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2065
    move-object/from16 v0, p0

    iget v13, v0, Lmiui/v5/view/ViewPager;->mPageMargin:I

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/v5/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    if-eqz v13, :cond_2

    .line 2066
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getScrollX()I

    move-result v10

    .line 2067
    .local v10, scrollX:I
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getWidth()I

    move-result v11

    .line 2069
    .local v11, width:I
    move-object/from16 v0, p0

    iget v13, v0, Lmiui/v5/view/ViewPager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v11

    div-float v7, v13, v14

    .line 2070
    .local v7, marginOffset:F
    const/4 v5, 0x0

    .line 2071
    .local v5, itemIndex:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/v5/view/ViewPager$ItemInfo;

    .line 2072
    .local v3, ii:Lmiui/v5/view/ViewPager$ItemInfo;
    iget v8, v3, Lmiui/v5/view/ViewPager$ItemInfo;->offset:F

    .line 2073
    .local v8, offset:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2074
    .local v4, itemCount:I
    iget v2, v3, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    .line 2075
    .local v2, firstPos:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmiui/v5/view/ViewPager$ItemInfo;

    iget v6, v13, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    .line 2076
    .local v6, lastPos:I
    move v9, v2

    .local v9, pos:I
    :goto_0
    if-ge v9, v6, :cond_2

    .line 2077
    :goto_1
    iget v13, v3, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    if-le v9, v13, :cond_0

    if-ge v5, v4, :cond_0

    .line 2078
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    check-cast v3, Lmiui/v5/view/ViewPager$ItemInfo;

    .restart local v3       #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    goto :goto_1

    .line 2082
    :cond_0
    iget v13, v3, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    if-ne v9, v13, :cond_3

    .line 2083
    iget v13, v3, Lmiui/v5/view/ViewPager$ItemInfo;->offset:F

    iget v14, v3, Lmiui/v5/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    int-to-float v14, v11

    mul-float v1, v13, v14

    .line 2084
    .local v1, drawAt:F
    iget v13, v3, Lmiui/v5/view/ViewPager$ItemInfo;->offset:F

    iget v14, v3, Lmiui/v5/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    add-float v8, v13, v7

    .line 2091
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lmiui/v5/view/ViewPager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v1

    int-to-float v14, v10

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    .line 2092
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/v5/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v14, v1

    move-object/from16 v0, p0

    iget v15, v0, Lmiui/v5/view/ViewPager;->mTopPageBounds:I

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mPageMargin:I

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

    iget v0, v0, Lmiui/v5/view/ViewPager;->mBottomPageBounds:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2094
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/v5/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2097
    :cond_1
    add-int v13, v10, v11

    int-to-float v13, v13

    cmpl-float v13, v1, v13

    if-lez v13, :cond_4

    .line 2102
    .end local v1           #drawAt:F
    .end local v2           #firstPos:I
    .end local v3           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
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

    .line 2086
    .restart local v2       #firstPos:I
    .restart local v3       #ii:Lmiui/v5/view/ViewPager$ItemInfo;
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

    iget-object v13, v0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    invoke-virtual {v13, v9}, Lmiui/v5/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    .line 2087
    .local v12, widthFactor:F
    add-float v13, v8, v12

    int-to-float v14, v11

    mul-float v1, v13, v14

    .line 2088
    .restart local v1       #drawAt:F
    add-float v13, v12, v7

    add-float/2addr v8, v13

    goto :goto_2

    .line 2076
    .end local v12           #widthFactor:F
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 2573
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2574
    const-class v0, Lmiui/v5/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2575
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    const/4 v0, 0x1

    .line 2579
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2580
    const-class v1, Lmiui/v5/view/ViewPager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2581
    iget-object v1, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    invoke-virtual {v1}, Lmiui/v5/view/PagerAdapter;->getCount()I

    move-result v1

    if-le v1, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2582
    iget-object v0, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    if-eqz v0, :cond_0

    iget v0, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    if-ltz v0, :cond_0

    iget v0, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    iget-object v1, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    invoke-virtual {v1}, Lmiui/v5/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2583
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2585
    :cond_0
    iget-object v0, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    if-eqz v0, :cond_1

    iget v0, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    if-lez v0, :cond_1

    iget v0, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    iget-object v1, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    invoke-virtual {v1}, Lmiui/v5/view/PagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2586
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2588
    :cond_1
    return-void

    .line 2581
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    .line 1626
    iget-boolean v0, p0, Lmiui/v5/view/ViewPager;->mDragEnabled:Z

    if-nez v0, :cond_0

    .line 1627
    const/4 v0, 0x0

    .line 1774
    :goto_0
    return v0

    .line 1636
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 1639
    .local v6, action:I
    const/4 v0, 0x3

    if-eq v6, v0, :cond_1

    const/4 v0, 0x1

    if-ne v6, v0, :cond_3

    .line 1642
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/v5/view/ViewPager;->mIsBeingDragged:Z

    .line 1643
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/v5/view/ViewPager;->mIsUnableToDrag:Z

    .line 1644
    const/4 v0, -0x1

    iput v0, p0, Lmiui/v5/view/ViewPager;->mActivePointerId:I

    .line 1645
    iget-object v0, p0, Lmiui/v5/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    .line 1646
    iget-object v0, p0, Lmiui/v5/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1647
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/v5/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1649
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1654
    :cond_3
    if-eqz v6, :cond_5

    .line 1655
    iget-boolean v0, p0, Lmiui/v5/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_4

    .line 1657
    const/4 v0, 0x1

    goto :goto_0

    .line 1659
    :cond_4
    iget-boolean v0, p0, Lmiui/v5/view/ViewPager;->mIsUnableToDrag:Z

    if-eqz v0, :cond_5

    .line 1661
    const/4 v0, 0x0

    goto :goto_0

    .line 1665
    :cond_5
    sparse-switch v6, :sswitch_data_0

    .line 1765
    :cond_6
    :goto_1
    iget-object v0, p0, Lmiui/v5/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_7

    .line 1766
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/v5/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1768
    :cond_7
    iget-object v0, p0, Lmiui/v5/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1774
    iget-boolean v0, p0, Lmiui/v5/view/ViewPager;->mIsBeingDragged:Z

    goto :goto_0

    .line 1676
    :sswitch_0
    iget v7, p0, Lmiui/v5/view/ViewPager;->mActivePointerId:I

    .line 1677
    .local v7, activePointerId:I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_6

    .line 1682
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 1685
    .local v9, pointerIndex:I
    if-ltz v9, :cond_6

    .line 1689
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 1690
    .local v10, x:F
    iget v0, p0, Lmiui/v5/view/ViewPager;->mLastMotionX:F

    sub-float v8, v10, v0

    .line 1691
    .local v8, dx:F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1692
    .local v11, xDiff:F
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 1693
    .local v12, y:F
    iget v0, p0, Lmiui/v5/view/ViewPager;->mLastMotionY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 1696
    .local v13, yDiff:F
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_8

    iget v0, p0, Lmiui/v5/view/ViewPager;->mLastMotionX:F

    invoke-direct {p0, v0, v8}, Lmiui/v5/view/ViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v2, 0x0

    float-to-int v3, v8

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lmiui/v5/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1699
    iput v10, p0, Lmiui/v5/view/ViewPager;->mLastMotionX:F

    iput v10, p0, Lmiui/v5/view/ViewPager;->mInitialMotionX:F

    .line 1700
    iput v12, p0, Lmiui/v5/view/ViewPager;->mLastMotionY:F

    .line 1701
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/v5/view/ViewPager;->mIsUnableToDrag:Z

    .line 1702
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1704
    :cond_8
    iget v0, p0, Lmiui/v5/view/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_b

    cmpl-float v0, v11, v13

    if-lez v0, :cond_b

    .line 1706
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/v5/view/ViewPager;->mIsBeingDragged:Z

    .line 1707
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/v5/view/ViewPager;->setScrollState(I)V

    .line 1708
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_a

    iget v0, p0, Lmiui/v5/view/ViewPager;->mInitialMotionX:F

    iget v1, p0, Lmiui/v5/view/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Lmiui/v5/view/ViewPager;->mLastMotionX:F

    .line 1710
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/v5/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1721
    :cond_9
    :goto_3
    iget-boolean v0, p0, Lmiui/v5/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_6

    .line 1723
    invoke-direct {p0, v10}, Lmiui/v5/view/ViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1724
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->postInvalidateOnAnimation()V

    goto/16 :goto_1

    .line 1708
    :cond_a
    iget v0, p0, Lmiui/v5/view/ViewPager;->mInitialMotionX:F

    iget v1, p0, Lmiui/v5/view/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    .line 1712
    :cond_b
    iget v0, p0, Lmiui/v5/view/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_9

    .line 1718
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/v5/view/ViewPager;->mIsUnableToDrag:Z

    goto :goto_3

    .line 1735
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

    iput v0, p0, Lmiui/v5/view/ViewPager;->mInitialMotionX:F

    iput v0, p0, Lmiui/v5/view/ViewPager;->mLastMotionX:F

    .line 1736
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lmiui/v5/view/ViewPager;->mLastMotionY:F

    .line 1737
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiui/v5/view/ViewPager;->mActivePointerId:I

    .line 1738
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/v5/view/ViewPager;->mIsUnableToDrag:Z

    .line 1740
    iget-object v0, p0, Lmiui/v5/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1741
    iget v0, p0, Lmiui/v5/view/ViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lmiui/v5/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Lmiui/v5/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lmiui/v5/view/ViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_c

    .line 1744
    iget-object v0, p0, Lmiui/v5/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1745
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/v5/view/ViewPager;->mPopulatePending:Z

    .line 1746
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->populate()V

    .line 1747
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/v5/view/ViewPager;->mIsBeingDragged:Z

    .line 1748
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/v5/view/ViewPager;->setScrollState(I)V

    goto/16 :goto_1

    .line 1750
    :cond_c
    invoke-direct {p0}, Lmiui/v5/view/ViewPager;->completeScroll()V

    .line 1751
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/v5/view/ViewPager;->mIsBeingDragged:Z

    goto/16 :goto_1

    .line 1761
    :sswitch_2
    invoke-direct {p0, p1}, Lmiui/v5/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1665
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 25
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1328
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmiui/v5/view/ViewPager;->mInLayout:Z

    .line 1329
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->populate()V

    .line 1330
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmiui/v5/view/ViewPager;->mInLayout:Z

    .line 1332
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getChildCount()I

    move-result v6

    .line 1333
    .local v6, count:I
    sub-int v21, p4, p2

    .line 1334
    .local v21, width:I
    sub-int v8, p5, p3

    .line 1335
    .local v8, height:I
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getPaddingLeft()I

    move-result v16

    .line 1336
    .local v16, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getPaddingTop()I

    move-result v18

    .line 1337
    .local v18, paddingTop:I
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getPaddingRight()I

    move-result v17

    .line 1338
    .local v17, paddingRight:I
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getPaddingBottom()I

    move-result v15

    .line 1339
    .local v15, paddingBottom:I
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getScrollX()I

    move-result v19

    .line 1341
    .local v19, scrollX:I
    const/4 v7, 0x0

    .line 1345
    .local v7, decorCount:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v6, :cond_1

    .line 1346
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lmiui/v5/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1347
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 1348
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lmiui/v5/view/ViewPager$LayoutParams;

    .line 1349
    .local v14, lp:Lmiui/v5/view/ViewPager$LayoutParams;
    const/4 v4, 0x0

    .line 1350
    .local v4, childLeft:I
    const/4 v5, 0x0

    .line 1351
    .local v5, childTop:I
    iget-boolean v0, v14, Lmiui/v5/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 1352
    iget v0, v14, Lmiui/v5/view/ViewPager$LayoutParams;->gravity:I

    move/from16 v23, v0

    and-int/lit8 v10, v23, 0x7

    .line 1353
    .local v10, hgrav:I
    iget v0, v14, Lmiui/v5/view/ViewPager$LayoutParams;->gravity:I

    move/from16 v23, v0

    and-int/lit8 v20, v23, 0x70

    .line 1354
    .local v20, vgrav:I
    packed-switch v10, :pswitch_data_0

    .line 1356
    :pswitch_0
    move/from16 v4, v16

    .line 1371
    :goto_1
    sparse-switch v20, :sswitch_data_0

    .line 1373
    move/from16 v5, v18

    .line 1388
    :goto_2
    add-int v4, v4, v19

    .line 1389
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    add-int v23, v23, v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v24, v24, v5

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1392
    add-int/lit8 v7, v7, 0x1

    .line 1345
    .end local v4           #childLeft:I
    .end local v5           #childTop:I
    .end local v10           #hgrav:I
    .end local v14           #lp:Lmiui/v5/view/ViewPager$LayoutParams;
    .end local v20           #vgrav:I
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1359
    .restart local v4       #childLeft:I
    .restart local v5       #childTop:I
    .restart local v10       #hgrav:I
    .restart local v14       #lp:Lmiui/v5/view/ViewPager$LayoutParams;
    .restart local v20       #vgrav:I
    :pswitch_1
    move/from16 v4, v16

    .line 1360
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    add-int v16, v16, v23

    .line 1361
    goto :goto_1

    .line 1363
    :pswitch_2
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    sub-int v23, v21, v23

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1365
    goto :goto_1

    .line 1367
    :pswitch_3
    sub-int v23, v21, v17

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    sub-int v4, v23, v24

    .line 1368
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    add-int v17, v17, v23

    goto :goto_1

    .line 1376
    :sswitch_0
    move/from16 v5, v18

    .line 1377
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    add-int v18, v18, v23

    .line 1378
    goto :goto_2

    .line 1380
    :sswitch_1
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    sub-int v23, v8, v23

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1382
    goto :goto_2

    .line 1384
    :sswitch_2
    sub-int v23, v8, v15

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    sub-int v5, v23, v24

    .line 1385
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    add-int v15, v15, v23

    goto :goto_2

    .line 1398
    .end local v3           #child:Landroid/view/View;
    .end local v4           #childLeft:I
    .end local v5           #childTop:I
    .end local v10           #hgrav:I
    .end local v14           #lp:Lmiui/v5/view/ViewPager$LayoutParams;
    .end local v20           #vgrav:I
    :cond_1
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v6, :cond_5

    .line 1399
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lmiui/v5/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1400
    .restart local v3       #child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    .line 1401
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lmiui/v5/view/ViewPager$LayoutParams;

    .line 1403
    .restart local v14       #lp:Lmiui/v5/view/ViewPager$LayoutParams;
    iget-boolean v0, v14, Lmiui/v5/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v23, v0

    if-nez v23, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lmiui/v5/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/v5/view/ViewPager$ItemInfo;

    move-result-object v12

    .local v12, ii:Lmiui/v5/view/ViewPager$ItemInfo;
    if-eqz v12, :cond_4

    .line 1404
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    iget v0, v12, Lmiui/v5/view/ViewPager$ItemInfo;->offset:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v13, v0

    .line 1405
    .local v13, loff:I
    add-int v4, v16, v13

    .line 1406
    .restart local v4       #childLeft:I
    move/from16 v5, v18

    .line 1407
    .restart local v5       #childTop:I
    iget-boolean v0, v14, Lmiui/v5/view/ViewPager$LayoutParams;->needsMeasure:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 1410
    const/16 v23, 0x0

    move/from16 v0, v23

    iput-boolean v0, v14, Lmiui/v5/view/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1411
    sub-int v23, v21, v16

    sub-int v23, v23, v17

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    iget v0, v14, Lmiui/v5/view/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4000

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    .line 1416
    .local v22, widthSpec:I
    const/4 v2, 0x0

    .line 1417
    .local v2, actionMenuHeight:I
    iget-boolean v0, v12, Lmiui/v5/view/ViewPager$ItemInfo;->hasActionMenu:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->hasSplitActionBar()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 1418
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lmiui/util/UiUtils;->getSplitActionMenuHeight(Landroid/content/Context;)I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lmiui/util/UiUtils;->getSplitActionBarOverlayHeight(Landroid/content/Context;)I

    move-result v24

    sub-int v2, v23, v24

    .line 1422
    :cond_2
    sub-int v23, v8, v18

    sub-int v23, v23, v15

    sub-int v23, v23, v2

    const/high16 v24, 0x4000

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1425
    .local v9, heightSpec:I
    move/from16 v0, v22

    invoke-virtual {v3, v0, v9}, Landroid/view/View;->measure(II)V

    .line 1430
    .end local v2           #actionMenuHeight:I
    .end local v9           #heightSpec:I
    .end local v22           #widthSpec:I
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    add-int v23, v23, v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v24, v24, v5

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1398
    .end local v4           #childLeft:I
    .end local v5           #childTop:I
    .end local v12           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    .end local v13           #loff:I
    .end local v14           #lp:Lmiui/v5/view/ViewPager$LayoutParams;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 1436
    .end local v3           #child:Landroid/view/View;
    :cond_5
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/view/ViewPager;->mTopPageBounds:I

    .line 1437
    sub-int v23, v8, v15

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/view/ViewPager;->mBottomPageBounds:I

    .line 1438
    move-object/from16 v0, p0

    iput v7, v0, Lmiui/v5/view/ViewPager;->mDecorChildCount:I

    .line 1439
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmiui/v5/view/ViewPager;->mFirstLayout:Z

    .line 1440
    return-void

    .line 1354
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1371
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 24
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1190
    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, p1

    invoke-static {v0, v1}, Lmiui/v5/view/ViewPager;->getDefaultSize(II)I

    move-result v22

    const/16 v23, 0x0

    move/from16 v0, v23

    move/from16 v1, p2

    invoke-static {v0, v1}, Lmiui/v5/view/ViewPager;->getDefaultSize(II)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lmiui/v5/view/ViewPager;->setMeasuredDimension(II)V

    .line 1193
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getMeasuredWidth()I

    move-result v16

    .line 1194
    .local v16, measuredWidth:I
    div-int/lit8 v15, v16, 0xa

    .line 1195
    .local v15, maxGutterSize:I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mDefaultGutterSize:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/view/ViewPager;->mGutterSize:I

    .line 1198
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getPaddingLeft()I

    move-result v22

    sub-int v22, v16, v22

    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getPaddingRight()I

    move-result v23

    sub-int v5, v22, v23

    .line 1199
    .local v5, childWidthSize:I
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getMeasuredHeight()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getPaddingTop()I

    move-result v23

    sub-int v22, v22, v23

    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getPaddingBottom()I

    move-result v23

    sub-int v4, v22, v23

    .line 1206
    .local v4, childHeightSize:I
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getChildCount()I

    move-result v17

    .line 1207
    .local v17, size:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move/from16 v0, v17

    if-ge v12, v0, :cond_a

    .line 1208
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lmiui/v5/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1209
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    .line 1210
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lmiui/v5/view/ViewPager$LayoutParams;

    .line 1211
    .local v14, lp:Lmiui/v5/view/ViewPager$LayoutParams;
    if-eqz v14, :cond_5

    iget-boolean v0, v14, Lmiui/v5/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 1212
    iget v0, v14, Lmiui/v5/view/ViewPager$LayoutParams;->gravity:I

    move/from16 v22, v0

    and-int/lit8 v11, v22, 0x7

    .line 1213
    .local v11, hgrav:I
    iget v0, v14, Lmiui/v5/view/ViewPager$LayoutParams;->gravity:I

    move/from16 v22, v0

    and-int/lit8 v18, v22, 0x70

    .line 1214
    .local v18, vgrav:I
    const/high16 v19, -0x8000

    .line 1215
    .local v19, widthMode:I
    const/high16 v8, -0x8000

    .line 1216
    .local v8, heightMode:I
    const/16 v22, 0x30

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    const/16 v22, 0x50

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    :cond_0
    const/4 v7, 0x1

    .line 1217
    .local v7, consumeVertical:Z
    :goto_1
    const/16 v22, 0x3

    move/from16 v0, v22

    if-eq v11, v0, :cond_1

    const/16 v22, 0x5

    move/from16 v0, v22

    if-ne v11, v0, :cond_7

    :cond_1
    const/4 v6, 0x1

    .line 1219
    .local v6, consumeHorizontal:Z
    :goto_2
    if-eqz v7, :cond_8

    .line 1220
    const/high16 v19, 0x4000

    .line 1225
    :cond_2
    :goto_3
    move/from16 v20, v5

    .line 1226
    .local v20, widthSize:I
    move v9, v4

    .line 1228
    .local v9, heightSize:I
    iget v0, v14, Lmiui/v5/view/ViewPager$LayoutParams;->width:I

    move/from16 v22, v0

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_3

    .line 1229
    const/high16 v19, 0x4000

    .line 1230
    iget v0, v14, Lmiui/v5/view/ViewPager$LayoutParams;->width:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_3

    .line 1231
    iget v0, v14, Lmiui/v5/view/ViewPager$LayoutParams;->width:I

    move/from16 v20, v0

    .line 1234
    :cond_3
    iget v0, v14, Lmiui/v5/view/ViewPager$LayoutParams;->height:I

    move/from16 v22, v0

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    .line 1235
    const/high16 v8, 0x4000

    .line 1236
    iget v0, v14, Lmiui/v5/view/ViewPager$LayoutParams;->height:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    .line 1237
    iget v9, v14, Lmiui/v5/view/ViewPager$LayoutParams;->height:I

    .line 1240
    :cond_4
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    .line 1241
    .local v21, widthSpec:I
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1242
    .local v10, heightSpec:I
    move/from16 v0, v21

    invoke-virtual {v3, v0, v10}, Landroid/view/View;->measure(II)V

    .line 1244
    if-eqz v7, :cond_9

    .line 1245
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    sub-int v4, v4, v22

    .line 1207
    .end local v6           #consumeHorizontal:Z
    .end local v7           #consumeVertical:Z
    .end local v8           #heightMode:I
    .end local v9           #heightSize:I
    .end local v10           #heightSpec:I
    .end local v11           #hgrav:I
    .end local v14           #lp:Lmiui/v5/view/ViewPager$LayoutParams;
    .end local v18           #vgrav:I
    .end local v19           #widthMode:I
    .end local v20           #widthSize:I
    .end local v21           #widthSpec:I
    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1216
    .restart local v8       #heightMode:I
    .restart local v11       #hgrav:I
    .restart local v14       #lp:Lmiui/v5/view/ViewPager$LayoutParams;
    .restart local v18       #vgrav:I
    .restart local v19       #widthMode:I
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 1217
    .restart local v7       #consumeVertical:Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 1221
    .restart local v6       #consumeHorizontal:Z
    :cond_8
    if-eqz v6, :cond_2

    .line 1222
    const/high16 v8, 0x4000

    goto :goto_3

    .line 1246
    .restart local v9       #heightSize:I
    .restart local v10       #heightSpec:I
    .restart local v20       #widthSize:I
    .restart local v21       #widthSpec:I
    :cond_9
    if-eqz v6, :cond_5

    .line 1247
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    sub-int v5, v5, v22

    goto :goto_4

    .line 1253
    .end local v3           #child:Landroid/view/View;
    .end local v6           #consumeHorizontal:Z
    .end local v7           #consumeVertical:Z
    .end local v8           #heightMode:I
    .end local v9           #heightSize:I
    .end local v10           #heightSpec:I
    .end local v11           #hgrav:I
    .end local v14           #lp:Lmiui/v5/view/ViewPager$LayoutParams;
    .end local v18           #vgrav:I
    .end local v19           #widthMode:I
    .end local v20           #widthSize:I
    .end local v21           #widthSpec:I
    :cond_a
    const/high16 v22, 0x4000

    move/from16 v0, v22

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/view/ViewPager;->mChildWidthMeasureSpec:I

    .line 1254
    const/high16 v22, 0x4000

    move/from16 v0, v22

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/view/ViewPager;->mChildHeightMeasureSpec:I

    .line 1257
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmiui/v5/view/ViewPager;->mInLayout:Z

    .line 1258
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->populate()V

    .line 1259
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmiui/v5/view/ViewPager;->mInLayout:Z

    .line 1262
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getChildCount()I

    move-result v17

    .line 1263
    const/4 v12, 0x0

    :goto_5
    move/from16 v0, v17

    if-ge v12, v0, :cond_e

    .line 1264
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lmiui/v5/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1265
    .restart local v3       #child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_d

    .line 1269
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lmiui/v5/view/ViewPager$LayoutParams;

    .line 1270
    .restart local v14       #lp:Lmiui/v5/view/ViewPager$LayoutParams;
    if-eqz v14, :cond_b

    iget-boolean v0, v14, Lmiui/v5/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v22, v0

    if-nez v22, :cond_d

    .line 1271
    :cond_b
    int-to-float v0, v5

    move/from16 v22, v0

    iget v0, v14, Lmiui/v5/view/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    .line 1275
    .restart local v21       #widthSpec:I
    move v9, v4

    .line 1276
    .restart local v9       #heightSize:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lmiui/v5/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/v5/view/ViewPager$ItemInfo;

    move-result-object v13

    .line 1277
    .local v13, ii:Lmiui/v5/view/ViewPager$ItemInfo;
    iget-boolean v0, v13, Lmiui/v5/view/ViewPager$ItemInfo;->hasActionMenu:Z

    move/from16 v22, v0

    if-eqz v22, :cond_c

    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->hasSplitActionBar()Z

    move-result v22

    if-eqz v22, :cond_c

    .line 1278
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lmiui/util/UiUtils;->getSplitActionMenuHeight(Landroid/content/Context;)I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lmiui/util/UiUtils;->getSplitActionBarOverlayHeight(Landroid/content/Context;)I

    move-result v23

    sub-int v22, v22, v23

    sub-int v9, v9, v22

    .line 1281
    :cond_c
    const/high16 v22, 0x4000

    move/from16 v0, v22

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1283
    .restart local v10       #heightSpec:I
    move/from16 v0, v21

    invoke-virtual {v3, v0, v10}, Landroid/view/View;->measure(II)V

    .line 1263
    .end local v9           #heightSize:I
    .end local v10           #heightSpec:I
    .end local v13           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    .end local v14           #lp:Lmiui/v5/view/ViewPager$LayoutParams;
    .end local v21           #widthSpec:I
    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1287
    .end local v3           #child:Landroid/view/View;
    :cond_e
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 16
    .parameter "position"
    .parameter "offset"
    .parameter "offsetPixels"

    .prologue
    .line 1543
    move-object/from16 v0, p0

    iget v14, v0, Lmiui/v5/view/ViewPager;->mDecorChildCount:I

    if-lez v14, :cond_2

    .line 1544
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getScrollX()I

    move-result v12

    .line 1545
    .local v12, scrollX:I
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getPaddingLeft()I

    move-result v10

    .line 1546
    .local v10, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getPaddingRight()I

    move-result v11

    .line 1547
    .local v11, paddingRight:I
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getWidth()I

    move-result v13

    .line 1548
    .local v13, width:I
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getChildCount()I

    move-result v4

    .line 1549
    .local v4, childCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v4, :cond_2

    .line 1550
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmiui/v5/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1551
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lmiui/v5/view/ViewPager$LayoutParams;

    .line 1552
    .local v9, lp:Lmiui/v5/view/ViewPager$LayoutParams;
    iget-boolean v14, v9, Lmiui/v5/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v14, :cond_1

    .line 1549
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1554
    :cond_1
    iget v14, v9, Lmiui/v5/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v7, v14, 0x7

    .line 1555
    .local v7, hgrav:I
    const/4 v5, 0x0

    .line 1556
    .local v5, childLeft:I
    packed-switch v7, :pswitch_data_0

    .line 1558
    :pswitch_0
    move v5, v10

    .line 1573
    :goto_2
    add-int/2addr v5, v12

    .line 1575
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int v6, v5, v14

    .line 1576
    .local v6, childOffset:I
    if-eqz v6, :cond_0

    .line 1577
    invoke-virtual {v3, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 1561
    .end local v6           #childOffset:I
    :pswitch_1
    move v5, v10

    .line 1562
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v10, v14

    .line 1563
    goto :goto_2

    .line 1565
    :pswitch_2
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v13, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1567
    goto :goto_2

    .line 1569
    :pswitch_3
    sub-int v14, v13, v11

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int v5, v14, v15

    .line 1570
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v11, v14

    goto :goto_2

    .line 1582
    .end local v3           #child:Landroid/view/View;
    .end local v4           #childCount:I
    .end local v5           #childLeft:I
    .end local v7           #hgrav:I
    .end local v8           #i:I
    .end local v9           #lp:Lmiui/v5/view/ViewPager$LayoutParams;
    .end local v10           #paddingLeft:I
    .end local v11           #paddingRight:I
    .end local v12           #scrollX:I
    .end local v13           #width:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/v5/view/ViewPager;->mOnPageChangeListener:Lmiui/v5/view/ViewPager$OnPageChangeListener;

    if-eqz v14, :cond_3

    .line 1583
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/v5/view/ViewPager;->mOnPageChangeListener:Lmiui/v5/view/ViewPager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v14, v0, v1, v2}, Lmiui/v5/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1585
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/v5/view/ViewPager;->mInternalPageChangeListener:Lmiui/v5/view/ViewPager$OnPageChangeListener;

    if-eqz v14, :cond_4

    .line 1586
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/v5/view/ViewPager;->mInternalPageChangeListener:Lmiui/v5/view/ViewPager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v14, v0, v1, v2}, Lmiui/v5/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1588
    :cond_4
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lmiui/v5/view/ViewPager;->mCalledSuper:Z

    .line 1589
    return-void

    .line 1556
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
    .line 2505
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getChildCount()I

    move-result v1

    .line 2506
    .local v1, count:I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 2507
    const/4 v6, 0x0

    .line 2508
    .local v6, index:I
    const/4 v5, 0x1

    .line 2509
    .local v5, increment:I
    move v2, v1

    .line 2515
    .local v2, end:I
    :goto_0
    move v3, v6

    .local v3, i:I
    :goto_1
    if-eq v3, v2, :cond_2

    .line 2516
    invoke-virtual {p0, v3}, Lmiui/v5/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2517
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 2518
    invoke-virtual {p0, v0}, Lmiui/v5/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/v5/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 2519
    .local v4, ii:Lmiui/v5/view/ViewPager$ItemInfo;
    if-eqz v4, :cond_1

    iget v7, v4, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    iget v8, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    if-ne v7, v8, :cond_1

    .line 2520
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2521
    const/4 v7, 0x1

    .line 2526
    .end local v0           #child:Landroid/view/View;
    .end local v4           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    :goto_2
    return v7

    .line 2511
    .end local v2           #end:I
    .end local v3           #i:I
    .end local v5           #increment:I
    .end local v6           #index:I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .line 2512
    .restart local v6       #index:I
    const/4 v5, -0x1

    .line 2513
    .restart local v5       #increment:I
    const/4 v2, -0x1

    .restart local v2       #end:I
    goto :goto_0

    .line 2515
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #i:I
    :cond_1
    add-int/2addr v3, v5

    goto :goto_1

    .line 2526
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1103
    instance-of v1, p1, Lmiui/v5/view/ViewPager$SavedState;

    if-nez v1, :cond_0

    .line 1104
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1118
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 1108
    check-cast v0, Lmiui/v5/view/ViewPager$SavedState;

    .line 1109
    .local v0, ss:Lmiui/v5/view/ViewPager$SavedState;
    invoke-virtual {v0}, Lmiui/v5/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1111
    iget-object v1, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    if-eqz v1, :cond_1

    .line 1112
    iget-object v1, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    iget-object v2, v0, Lmiui/v5/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmiui/v5/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1113
    iget v1, v0, Lmiui/v5/view/ViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lmiui/v5/view/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 1115
    :cond_1
    iget v1, v0, Lmiui/v5/view/ViewPager$SavedState;->position:I

    iput v1, p0, Lmiui/v5/view/ViewPager;->mRestoredCurItem:I

    .line 1116
    iget-object v1, v0, Lmiui/v5/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Lmiui/v5/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1092
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1093
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lmiui/v5/view/ViewPager$SavedState;

    invoke-direct {v0, v1}, Lmiui/v5/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1094
    .local v0, ss:Lmiui/v5/view/ViewPager$SavedState;
    iget v2, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    iput v2, v0, Lmiui/v5/view/ViewPager$SavedState;->position:I

    .line 1095
    iget-object v2, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    if-eqz v2, :cond_0

    .line 1096
    iget-object v2, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    invoke-virtual {v2}, Lmiui/v5/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Lmiui/v5/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1098
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
    .line 1291
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1294
    if-eq p1, p3, :cond_0

    .line 1295
    iget v0, p0, Lmiui/v5/view/ViewPager;->mPageMargin:I

    iget v1, p0, Lmiui/v5/view/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Lmiui/v5/view/ViewPager;->recomputeScrollPosition(IIII)V

    .line 1297
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .parameter "ev"

    .prologue
    .line 1782
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/v5/view/ViewPager;->mDragEnabled:Z

    move/from16 v22, v0

    if-nez v22, :cond_0

    .line 1783
    const/16 v22, 0x1

    .line 1901
    :goto_0
    return v22

    .line 1787
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/v5/view/ViewPager;->mFakeDragging:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 1791
    const/16 v22, 0x1

    goto :goto_0

    .line 1794
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v22

    if-nez v22, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v22

    if-eqz v22, :cond_2

    .line 1797
    const/16 v22, 0x0

    goto :goto_0

    .line 1800
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lmiui/v5/view/PagerAdapter;->getCount()I

    move-result v22

    if-nez v22, :cond_4

    .line 1802
    :cond_3
    const/16 v22, 0x0

    goto :goto_0

    .line 1805
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    if-nez v22, :cond_5

    .line 1806
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/v5/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1808
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1810
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1811
    .local v4, action:I
    const/4 v10, 0x0

    .line 1813
    .local v10, needsInvalidate:Z
    and-int/lit16 v0, v4, 0xff

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 1898
    :cond_6
    :goto_1
    :pswitch_0
    if-eqz v10, :cond_7

    .line 1899
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->postInvalidateOnAnimation()V

    .line 1901
    :cond_7
    const/16 v22, 0x1

    goto :goto_0

    .line 1815
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1816
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmiui/v5/view/ViewPager;->mPopulatePending:Z

    .line 1817
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->populate()V

    .line 1818
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmiui/v5/view/ViewPager;->mIsBeingDragged:Z

    .line 1819
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lmiui/v5/view/ViewPager;->setScrollState(I)V

    .line 1822
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/view/ViewPager;->mInitialMotionX:F

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/view/ViewPager;->mLastMotionX:F

    .line 1823
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/view/ViewPager;->mActivePointerId:I

    goto :goto_1

    .line 1827
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/v5/view/ViewPager;->mIsBeingDragged:Z

    move/from16 v22, v0

    if-nez v22, :cond_8

    .line 1828
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 1829
    .local v13, pointerIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    .line 1830
    .local v18, x:F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mLastMotionX:F

    move/from16 v22, v0

    sub-float v22, v18, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v19

    .line 1831
    .local v19, xDiff:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v20

    .line 1832
    .local v20, y:F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mLastMotionY:F

    move/from16 v22, v0

    sub-float v22, v20, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .line 1834
    .local v21, yDiff:F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mTouchSlop:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v22, v19, v22

    if-lez v22, :cond_8

    cmpl-float v22, v19, v21

    if-lez v22, :cond_8

    .line 1836
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmiui/v5/view/ViewPager;->mIsBeingDragged:Z

    .line 1837
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mInitialMotionX:F

    move/from16 v22, v0

    sub-float v22, v18, v22

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mInitialMotionX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mTouchSlop:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    :goto_2
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/view/ViewPager;->mLastMotionX:F

    .line 1839
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lmiui/v5/view/ViewPager;->setScrollState(I)V

    .line 1840
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lmiui/v5/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1844
    .end local v13           #pointerIndex:I
    .end local v18           #x:F
    .end local v19           #xDiff:F
    .end local v20           #y:F
    .end local v21           #yDiff:F
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/v5/view/ViewPager;->mIsBeingDragged:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 1846
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 1847
    .local v5, activePointerIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    .line 1848
    .restart local v18       #x:F
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lmiui/v5/view/ViewPager;->performDrag(F)Z

    move-result v22

    or-int v10, v10, v22

    .line 1849
    goto/16 :goto_1

    .line 1837
    .end local v5           #activePointerIndex:I
    .restart local v13       #pointerIndex:I
    .restart local v19       #xDiff:F
    .restart local v20       #y:F
    .restart local v21       #yDiff:F
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mInitialMotionX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mTouchSlop:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    goto :goto_2

    .line 1852
    .end local v13           #pointerIndex:I
    .end local v18           #x:F
    .end local v19           #xDiff:F
    .end local v20           #y:F
    .end local v21           #yDiff:F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/v5/view/ViewPager;->mIsBeingDragged:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 1853
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    .line 1854
    .local v16, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v22, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mMaximumVelocity:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1855
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v9, v0

    .line 1856
    .local v9, initialVelocity:I
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmiui/v5/view/ViewPager;->mPopulatePending:Z

    .line 1857
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getWidth()I

    move-result v17

    .line 1858
    .local v17, width:I
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getScrollX()I

    move-result v14

    .line 1859
    .local v14, scrollX:I
    invoke-direct/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->infoForCurrentScrollPosition()Lmiui/v5/view/ViewPager$ItemInfo;

    move-result-object v7

    .line 1860
    .local v7, ii:Lmiui/v5/view/ViewPager$ItemInfo;
    iget v6, v7, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    .line 1861
    .local v6, currentPage:I
    int-to-float v0, v14

    move/from16 v22, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    iget v0, v7, Lmiui/v5/view/ViewPager$ItemInfo;->offset:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    iget v0, v7, Lmiui/v5/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v23, v0

    div-float v12, v22, v23

    .line 1862
    .local v12, pageOffset:F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 1863
    .restart local v5       #activePointerIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    .line 1864
    .restart local v18       #x:F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mInitialMotionX:F

    move/from16 v22, v0

    sub-float v22, v18, v22

    move/from16 v0, v22

    float-to-int v15, v0

    .line 1865
    .local v15, totalDelta:I
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v12, v9, v15}, Lmiui/v5/view/ViewPager;->determineTargetPage(IFII)I

    move-result v11

    .line 1867
    .local v11, nextPage:I
    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v11, v1, v2, v9}, Lmiui/v5/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 1869
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/view/ViewPager;->mActivePointerId:I

    .line 1870
    invoke-direct/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->endDrag()V

    .line 1871
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1872
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1873
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v23

    or-int v10, v22, v23

    .line 1874
    goto/16 :goto_1

    .line 1877
    .end local v5           #activePointerIndex:I
    .end local v6           #currentPage:I
    .end local v7           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
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

    iget-boolean v0, v0, Lmiui/v5/view/ViewPager;->mIsBeingDragged:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 1878
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mCurItem:I

    move/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lmiui/v5/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 1879
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/view/ViewPager;->mActivePointerId:I

    .line 1880
    invoke-direct/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->endDrag()V

    .line 1881
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1882
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1883
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v23

    or-int v10, v22, v23

    goto/16 :goto_1

    .line 1887
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    .line 1888
    .local v8, index:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    .line 1889
    .restart local v18       #x:F
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/view/ViewPager;->mLastMotionX:F

    .line 1890
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/view/ViewPager;->mActivePointerId:I

    goto/16 :goto_1

    .line 1894
    .end local v8           #index:I
    .end local v18           #x:F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lmiui/v5/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1895
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mActivePointerId:I

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

    iput v0, v1, Lmiui/v5/view/ViewPager;->mLastMotionX:F

    goto/16 :goto_1

    .line 1813
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

    .line 2418
    iget v1, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    if-lez v1, :cond_0

    .line 2419
    iget v1, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lmiui/v5/view/ViewPager;->setCurrentItem(IZ)V

    .line 2422
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

    .line 2426
    iget-object v1, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    iget-object v2, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    invoke-virtual {v2}, Lmiui/v5/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2427
    iget v1, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lmiui/v5/view/ViewPager;->setCurrentItem(IZ)V

    .line 2430
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4
    .parameter "action"
    .parameter "args"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2592
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2609
    :goto_0
    return v0

    .line 2595
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 2609
    goto :goto_0

    .line 2597
    :sswitch_0
    iget-object v2, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    if-eqz v2, :cond_1

    iget v2, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    if-ltz v2, :cond_1

    iget v2, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    iget-object v3, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    invoke-virtual {v3}, Lmiui/v5/view/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 2598
    iget v1, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lmiui/v5/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2601
    goto :goto_0

    .line 2603
    :sswitch_1
    iget-object v2, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    if-eqz v2, :cond_2

    iget v2, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    if-lez v2, :cond_2

    iget v2, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    iget-object v3, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    invoke-virtual {v3}, Lmiui/v5/view/PagerAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2604
    iget v1, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lmiui/v5/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2607
    goto :goto_0

    .line 2595
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method populate()V
    .locals 1

    .prologue
    .line 801
    iget v0, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lmiui/v5/view/ViewPager;->populate(I)V

    .line 802
    return-void
.end method

.method populate(I)V
    .locals 25
    .parameter "newCurrentItem"

    .prologue
    .line 805
    const/16 v18, 0x0

    .line 806
    .local v18, oldCurInfo:Lmiui/v5/view/ViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mCurItem:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 807
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mCurItem:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lmiui/v5/view/ViewPager;->infoForPosition(I)Lmiui/v5/view/ViewPager$ItemInfo;

    move-result-object v18

    .line 808
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/view/ViewPager;->mCurItem:I

    .line 811
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    move-object/from16 v22, v0

    if-nez v22, :cond_2

    .line 955
    :cond_1
    return-void

    .line 819
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/v5/view/ViewPager;->mPopulatePending:Z

    move/from16 v22, v0

    if-nez v22, :cond_1

    .line 827
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v22

    if-eqz v22, :cond_1

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lmiui/v5/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 833
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mOffscreenPageLimit:I

    move/from16 v19, v0

    .line 834
    .local v19, pageLimit:I
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mCurItem:I

    move/from16 v23, v0

    sub-int v23, v23, v19

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 835
    .local v21, startPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lmiui/v5/view/PagerAdapter;->getCount()I

    move-result v4

    .line 836
    .local v4, N:I
    add-int/lit8 v22, v4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mCurItem:I

    move/from16 v23, v0

    add-int v23, v23, v19

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 839
    .local v10, endPos:I
    const/4 v7, -0x1

    .line 840
    .local v7, curIndex:I
    const/4 v8, 0x0

    .line 841
    .local v8, curItem:Lmiui/v5/view/ViewPager$ItemInfo;
    const/4 v7, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_3

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lmiui/v5/view/ViewPager$ItemInfo;

    .line 843
    .local v14, ii:Lmiui/v5/view/ViewPager$ItemInfo;
    iget v0, v14, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mCurItem:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_9

    .line 844
    iget v0, v14, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mCurItem:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    move-object v8, v14

    .line 849
    .end local v14           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    :cond_3
    if-nez v8, :cond_4

    if-lez v4, :cond_4

    .line 850
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mCurItem:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Lmiui/v5/view/ViewPager;->addNewItem(II)Lmiui/v5/view/ViewPager$ItemInfo;

    move-result-object v8

    .line 856
    :cond_4
    if-eqz v8, :cond_7

    .line 857
    const/4 v11, 0x0

    .line 858
    .local v11, extraWidthLeft:F
    add-int/lit8 v15, v7, -0x1

    .line 859
    .local v15, itemIndex:I
    if-ltz v15, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lmiui/v5/view/ViewPager$ItemInfo;

    move-object/from16 v14, v22

    .line 860
    .restart local v14       #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    :goto_1
    const/high16 v22, 0x4000

    iget v0, v8, Lmiui/v5/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v23, v0

    sub-float v16, v22, v23

    .line 861
    .local v16, leftWidthNeeded:F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mCurItem:I

    move/from16 v22, v0

    add-int/lit8 v20, v22, -0x1

    .local v20, pos:I
    :goto_2
    if-ltz v20, :cond_5

    .line 862
    cmpl-float v22, v11, v16

    if-ltz v22, :cond_e

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_e

    .line 863
    if-nez v14, :cond_b

    .line 885
    :cond_5
    iget v12, v8, Lmiui/v5/view/ViewPager$ItemInfo;->widthFactor:F

    .line 886
    .local v12, extraWidthRight:F
    add-int/lit8 v15, v7, 0x1

    .line 887
    const/high16 v22, 0x4000

    cmpg-float v22, v12, v22

    if-gez v22, :cond_6

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lmiui/v5/view/ViewPager$ItemInfo;

    move-object/from16 v14, v22

    .line 889
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mCurItem:I

    move/from16 v22, v0

    add-int/lit8 v20, v22, 0x1

    :goto_4
    move/from16 v0, v20

    if-ge v0, v4, :cond_6

    .line 890
    const/high16 v22, 0x4000

    cmpl-float v22, v12, v22

    if-ltz v22, :cond_16

    move/from16 v0, v20

    if-le v0, v10, :cond_16

    .line 891
    if-nez v14, :cond_13

    .line 912
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v8, v7, v1}, Lmiui/v5/view/ViewPager;->calculatePageOffsets(Lmiui/v5/view/ViewPager$ItemInfo;ILmiui/v5/view/ViewPager$ItemInfo;)V

    .line 922
    .end local v11           #extraWidthLeft:F
    .end local v12           #extraWidthRight:F
    .end local v14           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    .end local v15           #itemIndex:I
    .end local v16           #leftWidthNeeded:F
    .end local v20           #pos:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mCurItem:I

    move/from16 v24, v0

    if-eqz v8, :cond_1a

    iget-object v0, v8, Lmiui/v5/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v22, v0

    :goto_5
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lmiui/v5/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lmiui/v5/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 927
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getChildCount()I

    move-result v6

    .line 928
    .local v6, childCount:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_6
    if-ge v13, v6, :cond_1b

    .line 929
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lmiui/v5/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 930
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lmiui/v5/view/ViewPager$LayoutParams;

    .line 931
    .local v17, lp:Lmiui/v5/view/ViewPager$LayoutParams;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lmiui/v5/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v22, v0

    if-nez v22, :cond_8

    move-object/from16 v0, v17

    iget v0, v0, Lmiui/v5/view/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v22, v0

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-nez v22, :cond_8

    .line 933
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lmiui/v5/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/v5/view/ViewPager$ItemInfo;

    move-result-object v14

    .line 934
    .restart local v14       #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    if-eqz v14, :cond_8

    .line 935
    iget v0, v14, Lmiui/v5/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lmiui/v5/view/ViewPager$LayoutParams;->widthFactor:F

    .line 928
    .end local v14           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 841
    .end local v5           #child:Landroid/view/View;
    .end local v6           #childCount:I
    .end local v13           #i:I
    .end local v17           #lp:Lmiui/v5/view/ViewPager$LayoutParams;
    .restart local v14       #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 859
    .end local v14           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    .restart local v11       #extraWidthLeft:F
    .restart local v15       #itemIndex:I
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 866
    .restart local v14       #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    .restart local v16       #leftWidthNeeded:F
    .restart local v20       #pos:I
    :cond_b
    iget v0, v14, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    iget-boolean v0, v14, Lmiui/v5/view/ViewPager$ItemInfo;->scrolling:Z

    move/from16 v22, v0

    if-nez v22, :cond_c

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    move-object/from16 v22, v0

    iget-object v0, v14, Lmiui/v5/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v20

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lmiui/v5/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 869
    add-int/lit8 v15, v15, -0x1

    .line 870
    add-int/lit8 v7, v7, -0x1

    .line 871
    if-ltz v15, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lmiui/v5/view/ViewPager$ItemInfo;

    move-object/from16 v14, v22

    .line 861
    :cond_c
    :goto_7
    add-int/lit8 v20, v20, -0x1

    goto/16 :goto_2

    .line 871
    :cond_d
    const/4 v14, 0x0

    goto :goto_7

    .line 873
    :cond_e
    if-eqz v14, :cond_10

    iget v0, v14, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    .line 874
    iget v0, v14, Lmiui/v5/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v22, v0

    add-float v11, v11, v22

    .line 875
    add-int/lit8 v15, v15, -0x1

    .line 876
    if-ltz v15, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lmiui/v5/view/ViewPager$ItemInfo;

    move-object/from16 v14, v22

    :goto_8
    goto :goto_7

    :cond_f
    const/4 v14, 0x0

    goto :goto_8

    .line 878
    :cond_10
    add-int/lit8 v22, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lmiui/v5/view/ViewPager;->addNewItem(II)Lmiui/v5/view/ViewPager$ItemInfo;

    move-result-object v14

    .line 879
    iget v0, v14, Lmiui/v5/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v22, v0

    add-float v11, v11, v22

    .line 880
    add-int/lit8 v7, v7, 0x1

    .line 881
    if-ltz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lmiui/v5/view/ViewPager$ItemInfo;

    move-object/from16 v14, v22

    :goto_9
    goto :goto_7

    :cond_11
    const/4 v14, 0x0

    goto :goto_9

    .line 888
    .restart local v12       #extraWidthRight:F
    :cond_12
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 894
    :cond_13
    iget v0, v14, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    iget-boolean v0, v14, Lmiui/v5/view/ViewPager$ItemInfo;->scrolling:Z

    move/from16 v22, v0

    if-nez v22, :cond_14

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    move-object/from16 v22, v0

    iget-object v0, v14, Lmiui/v5/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v20

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lmiui/v5/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lmiui/v5/view/ViewPager$ItemInfo;

    move-object/from16 v14, v22

    .line 889
    :cond_14
    :goto_a
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_4

    .line 897
    :cond_15
    const/4 v14, 0x0

    goto :goto_a

    .line 899
    :cond_16
    if-eqz v14, :cond_18

    iget v0, v14, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_18

    .line 900
    iget v0, v14, Lmiui/v5/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v22, v0

    add-float v12, v12, v22

    .line 901
    add-int/lit8 v15, v15, 0x1

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lmiui/v5/view/ViewPager$ItemInfo;

    move-object/from16 v14, v22

    :goto_b
    goto :goto_a

    :cond_17
    const/4 v14, 0x0

    goto :goto_b

    .line 904
    :cond_18
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lmiui/v5/view/ViewPager;->addNewItem(II)Lmiui/v5/view/ViewPager$ItemInfo;

    move-result-object v14

    .line 905
    add-int/lit8 v15, v15, 0x1

    .line 906
    iget v0, v14, Lmiui/v5/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v22, v0

    add-float v12, v12, v22

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lmiui/v5/view/ViewPager$ItemInfo;

    move-object/from16 v14, v22

    :goto_c
    goto :goto_a

    :cond_19
    const/4 v14, 0x0

    goto :goto_c

    .line 922
    .end local v11           #extraWidthLeft:F
    .end local v12           #extraWidthRight:F
    .end local v14           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    .end local v15           #itemIndex:I
    .end local v16           #leftWidthNeeded:F
    .end local v20           #pos:I
    :cond_1a
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 940
    .restart local v6       #childCount:I
    .restart local v13       #i:I
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->hasFocus()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 941
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v9

    .line 942
    .local v9, currentFocused:Landroid/view/View;
    if-eqz v9, :cond_1e

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lmiui/v5/view/ViewPager;->infoForAnyChild(Landroid/view/View;)Lmiui/v5/view/ViewPager$ItemInfo;

    move-result-object v14

    .line 943
    .restart local v14       #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    :goto_d
    if-eqz v14, :cond_1c

    iget v0, v14, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mCurItem:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 944
    :cond_1c
    const/4 v13, 0x0

    :goto_e
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ViewPager;->getChildCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v13, v0, :cond_1

    .line 945
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lmiui/v5/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 946
    .restart local v5       #child:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lmiui/v5/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/v5/view/ViewPager$ItemInfo;

    move-result-object v14

    .line 947
    if-eqz v14, :cond_1d

    iget v0, v14, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ViewPager;->mCurItem:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1d

    .line 948
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v22

    if-nez v22, :cond_1

    .line 944
    :cond_1d
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    .line 942
    .end local v5           #child:Landroid/view/View;
    .end local v14           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    :cond_1e
    const/4 v14, 0x0

    goto :goto_d
.end method

.method public setAdapter(Lmiui/v5/view/PagerAdapter;)V
    .locals 9
    .parameter "adapter"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 358
    iget-object v3, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    if-eqz v3, :cond_1

    .line 359
    iget-object v3, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    iget-object v4, p0, Lmiui/v5/view/ViewPager;->mObserver:Lmiui/v5/view/ViewPager$PagerObserver;

    invoke-virtual {v3, v4}, Lmiui/v5/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 360
    iget-object v3, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    invoke-virtual {v3, p0}, Lmiui/v5/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 361
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 362
    iget-object v3, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/view/ViewPager$ItemInfo;

    .line 363
    .local v1, ii:Lmiui/v5/view/ViewPager$ItemInfo;
    iget-object v3, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    iget v4, v1, Lmiui/v5/view/ViewPager$ItemInfo;->position:I

    iget-object v5, v1, Lmiui/v5/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v5}, Lmiui/v5/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    .end local v1           #ii:Lmiui/v5/view/ViewPager$ItemInfo;
    :cond_0
    iget-object v3, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    invoke-virtual {v3, p0}, Lmiui/v5/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 366
    iget-object v3, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 367
    invoke-direct {p0}, Lmiui/v5/view/ViewPager;->removeNonDecorViews()V

    .line 368
    iput v6, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    .line 369
    invoke-virtual {p0, v6, v6}, Lmiui/v5/view/ViewPager;->scrollTo(II)V

    .line 372
    .end local v0           #i:I
    :cond_1
    iget-object v2, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    .line 373
    .local v2, oldAdapter:Lmiui/v5/view/PagerAdapter;
    iput-object p1, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    .line 375
    iget-object v3, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    if-eqz v3, :cond_3

    .line 376
    iget-object v3, p0, Lmiui/v5/view/ViewPager;->mObserver:Lmiui/v5/view/ViewPager$PagerObserver;

    if-nez v3, :cond_2

    .line 377
    new-instance v3, Lmiui/v5/view/ViewPager$PagerObserver;

    invoke-direct {v3, p0, v7}, Lmiui/v5/view/ViewPager$PagerObserver;-><init>(Lmiui/v5/view/ViewPager;Lmiui/v5/view/ViewPager$1;)V

    iput-object v3, p0, Lmiui/v5/view/ViewPager;->mObserver:Lmiui/v5/view/ViewPager$PagerObserver;

    .line 379
    :cond_2
    iget-object v3, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    iget-object v4, p0, Lmiui/v5/view/ViewPager;->mObserver:Lmiui/v5/view/ViewPager$PagerObserver;

    invoke-virtual {v3, v4}, Lmiui/v5/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 380
    iput-boolean v6, p0, Lmiui/v5/view/ViewPager;->mPopulatePending:Z

    .line 381
    iput-boolean v8, p0, Lmiui/v5/view/ViewPager;->mFirstLayout:Z

    .line 382
    iget v3, p0, Lmiui/v5/view/ViewPager;->mRestoredCurItem:I

    if-ltz v3, :cond_5

    .line 383
    iget-object v3, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    iget-object v4, p0, Lmiui/v5/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    invoke-virtual {v3, v4, v7}, Lmiui/v5/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 384
    iget v3, p0, Lmiui/v5/view/ViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v3, v6, v8}, Lmiui/v5/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 385
    const/4 v3, -0x1

    iput v3, p0, Lmiui/v5/view/ViewPager;->mRestoredCurItem:I

    .line 386
    iput-object v7, p0, Lmiui/v5/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 392
    :cond_3
    :goto_1
    iget-object v3, p0, Lmiui/v5/view/ViewPager;->mAdapterChangeListener:Lmiui/v5/view/ViewPager$OnAdapterChangeListener;

    if-eqz v3, :cond_4

    if-eq v2, p1, :cond_4

    .line 393
    iget-object v3, p0, Lmiui/v5/view/ViewPager;->mAdapterChangeListener:Lmiui/v5/view/ViewPager$OnAdapterChangeListener;

    invoke-interface {v3, v2, p1}, Lmiui/v5/view/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Lmiui/v5/view/PagerAdapter;Lmiui/v5/view/PagerAdapter;)V

    .line 395
    :cond_4
    return-void

    .line 388
    :cond_5
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->populate()V

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 429
    iput-boolean v1, p0, Lmiui/v5/view/ViewPager;->mPopulatePending:Z

    .line 430
    iget-boolean v0, p0, Lmiui/v5/view/ViewPager;->mFirstLayout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lmiui/v5/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 431
    return-void

    :cond_0
    move v0, v1

    .line 430
    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .parameter "item"
    .parameter "smoothScroll"

    .prologue
    const/4 v0, 0x0

    .line 440
    iput-boolean v0, p0, Lmiui/v5/view/ViewPager;->mPopulatePending:Z

    .line 441
    invoke-virtual {p0, p1, p2, v0}, Lmiui/v5/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 442
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .parameter "item"
    .parameter "smoothScroll"
    .parameter "always"

    .prologue
    .line 449
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/v5/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 450
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

    .line 453
    iget-object v6, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    invoke-virtual {v6}, Lmiui/v5/view/PagerAdapter;->getCount()I

    move-result v6

    if-gtz v6, :cond_2

    .line 454
    :cond_0
    invoke-direct {p0, v7}, Lmiui/v5/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 503
    :cond_1
    :goto_0
    return-void

    .line 457
    :cond_2
    if-nez p3, :cond_3

    iget v6, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    if-ne v6, p1, :cond_3

    iget-object v6, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_3

    .line 458
    invoke-direct {p0, v7}, Lmiui/v5/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 462
    :cond_3
    if-gez p1, :cond_6

    .line 463
    const/4 p1, 0x0

    .line 467
    :cond_4
    :goto_1
    iget v4, p0, Lmiui/v5/view/ViewPager;->mOffscreenPageLimit:I

    .line 468
    .local v4, pageLimit:I
    iget v6, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    add-int/2addr v6, v4

    if-gt p1, v6, :cond_5

    iget v6, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    sub-int/2addr v6, v4

    if-ge p1, v6, :cond_7

    .line 472
    :cond_5
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget-object v6, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_7

    .line 473
    iget-object v6, p0, Lmiui/v5/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/v5/view/ViewPager$ItemInfo;

    iput-boolean v2, v6, Lmiui/v5/view/ViewPager$ItemInfo;->scrolling:Z

    .line 472
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 464
    .end local v3           #i:I
    .end local v4           #pageLimit:I
    :cond_6
    iget-object v6, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    invoke-virtual {v6}, Lmiui/v5/view/PagerAdapter;->getCount()I

    move-result v6

    if-lt p1, v6, :cond_4

    .line 465
    iget-object v6, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    invoke-virtual {v6}, Lmiui/v5/view/PagerAdapter;->getCount()I

    move-result v6

    add-int/lit8 p1, v6, -0x1

    goto :goto_1

    .line 476
    .restart local v4       #pageLimit:I
    :cond_7
    iget v6, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    if-eq v6, p1, :cond_a

    .line 477
    .local v2, dispatchSelected:Z
    :goto_3
    invoke-virtual {p0, p1}, Lmiui/v5/view/ViewPager;->populate(I)V

    .line 478
    invoke-virtual {p0, p1}, Lmiui/v5/view/ViewPager;->infoForPosition(I)Lmiui/v5/view/ViewPager$ItemInfo;

    move-result-object v0

    .line 479
    .local v0, curInfo:Lmiui/v5/view/ViewPager$ItemInfo;
    const/4 v1, 0x0

    .line 480
    .local v1, destX:I
    if-eqz v0, :cond_8

    .line 481
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getWidth()I

    move-result v5

    .line 482
    .local v5, width:I
    int-to-float v6, v5

    iget v8, p0, Lmiui/v5/view/ViewPager;->mFirstOffset:F

    iget v9, v0, Lmiui/v5/view/ViewPager$ItemInfo;->offset:F

    iget v10, p0, Lmiui/v5/view/ViewPager;->mLastOffset:F

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    mul-float/2addr v6, v8

    float-to-int v1, v6

    .line 485
    .end local v5           #width:I
    :cond_8
    if-eqz p2, :cond_b

    .line 486
    invoke-virtual {p0, v1, v7, p4}, Lmiui/v5/view/ViewPager;->smoothScrollTo(III)V

    .line 487
    if-eqz v2, :cond_9

    iget-object v6, p0, Lmiui/v5/view/ViewPager;->mOnPageChangeListener:Lmiui/v5/view/ViewPager$OnPageChangeListener;

    if-eqz v6, :cond_9

    .line 488
    iget-object v6, p0, Lmiui/v5/view/ViewPager;->mOnPageChangeListener:Lmiui/v5/view/ViewPager$OnPageChangeListener;

    invoke-interface {v6, p1}, Lmiui/v5/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 490
    :cond_9
    if-eqz v2, :cond_1

    iget-object v6, p0, Lmiui/v5/view/ViewPager;->mInternalPageChangeListener:Lmiui/v5/view/ViewPager$OnPageChangeListener;

    if-eqz v6, :cond_1

    .line 491
    iget-object v6, p0, Lmiui/v5/view/ViewPager;->mInternalPageChangeListener:Lmiui/v5/view/ViewPager$OnPageChangeListener;

    invoke-interface {v6, p1}, Lmiui/v5/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto/16 :goto_0

    .end local v0           #curInfo:Lmiui/v5/view/ViewPager$ItemInfo;
    .end local v1           #destX:I
    .end local v2           #dispatchSelected:Z
    :cond_a
    move v2, v7

    .line 476
    goto :goto_3

    .line 494
    .restart local v0       #curInfo:Lmiui/v5/view/ViewPager$ItemInfo;
    .restart local v1       #destX:I
    .restart local v2       #dispatchSelected:Z
    :cond_b
    if-eqz v2, :cond_c

    iget-object v6, p0, Lmiui/v5/view/ViewPager;->mOnPageChangeListener:Lmiui/v5/view/ViewPager$OnPageChangeListener;

    if-eqz v6, :cond_c

    .line 495
    iget-object v6, p0, Lmiui/v5/view/ViewPager;->mOnPageChangeListener:Lmiui/v5/view/ViewPager$OnPageChangeListener;

    invoke-interface {v6, p1}, Lmiui/v5/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 497
    :cond_c
    if-eqz v2, :cond_d

    iget-object v6, p0, Lmiui/v5/view/ViewPager;->mInternalPageChangeListener:Lmiui/v5/view/ViewPager$OnPageChangeListener;

    if-eqz v6, :cond_d

    .line 498
    iget-object v6, p0, Lmiui/v5/view/ViewPager;->mInternalPageChangeListener:Lmiui/v5/view/ViewPager$OnPageChangeListener;

    invoke-interface {v6, p1}, Lmiui/v5/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 500
    :cond_d
    invoke-direct {p0}, Lmiui/v5/view/ViewPager;->completeScroll()V

    .line 501
    invoke-virtual {p0, v1, v7}, Lmiui/v5/view/ViewPager;->scrollTo(II)V

    goto/16 :goto_0
.end method

.method public setDraggable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 2614
    iput-boolean p1, p0, Lmiui/v5/view/ViewPager;->mDragEnabled:Z

    .line 2615
    return-void
.end method

.method public setInternalPageChangeListener(Lmiui/v5/view/ViewPager$OnPageChangeListener;)Lmiui/v5/view/ViewPager$OnPageChangeListener;
    .locals 1
    .parameter "listener"

    .prologue
    .line 523
    iget-object v0, p0, Lmiui/v5/view/ViewPager;->mInternalPageChangeListener:Lmiui/v5/view/ViewPager$OnPageChangeListener;

    .line 524
    .local v0, oldListener:Lmiui/v5/view/ViewPager$OnPageChangeListener;
    iput-object p1, p0, Lmiui/v5/view/ViewPager;->mInternalPageChangeListener:Lmiui/v5/view/ViewPager$OnPageChangeListener;

    .line 525
    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4
    .parameter "limit"

    .prologue
    const/4 v3, 0x3

    .line 557
    if-ge p1, v3, :cond_0

    .line 558
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

    .line 560
    const/4 p1, 0x3

    .line 562
    :cond_0
    iget v0, p0, Lmiui/v5/view/ViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 563
    iput p1, p0, Lmiui/v5/view/ViewPager;->mOffscreenPageLimit:I

    .line 564
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->populate()V

    .line 566
    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Lmiui/v5/view/ViewPager$OnAdapterChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 418
    iput-object p1, p0, Lmiui/v5/view/ViewPager;->mAdapterChangeListener:Lmiui/v5/view/ViewPager$OnAdapterChangeListener;

    .line 419
    return-void
.end method

.method public setOnPageChangeListener(Lmiui/v5/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 512
    iput-object p1, p0, Lmiui/v5/view/ViewPager;->mOnPageChangeListener:Lmiui/v5/view/ViewPager$OnPageChangeListener;

    .line 513
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .parameter "marginPixels"

    .prologue
    .line 577
    iget v0, p0, Lmiui/v5/view/ViewPager;->mPageMargin:I

    .line 578
    .local v0, oldMargin:I
    iput p1, p0, Lmiui/v5/view/ViewPager;->mPageMargin:I

    .line 580
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getWidth()I

    move-result v1

    .line 581
    .local v1, width:I
    invoke-direct {p0, v1, v1, p1, v0}, Lmiui/v5/view/ViewPager;->recomputeScrollPosition(IIII)V

    .line 583
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->requestLayout()V

    .line 584
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 613
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/v5/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 614
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 601
    iput-object p1, p0, Lmiui/v5/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 602
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->refreshDrawableState()V

    .line 603
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lmiui/v5/view/ViewPager;->setWillNotDraw(Z)V

    .line 604
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->invalidate()V

    .line 605
    return-void

    .line 603
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method smoothScrollTo(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 647
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmiui/v5/view/ViewPager;->smoothScrollTo(III)V

    .line 648
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 15
    .parameter "x"
    .parameter "y"
    .parameter "velocity"

    .prologue
    .line 658
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 660
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lmiui/v5/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 696
    :goto_0
    return-void

    .line 663
    :cond_0
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getScrollX()I

    move-result v2

    .line 664
    .local v2, sx:I
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getScrollY()I

    move-result v3

    .line 665
    .local v3, sy:I
    sub-int v4, p1, v2

    .line 666
    .local v4, dx:I
    sub-int v5, p2, v3

    .line 667
    .local v5, dy:I
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 668
    invoke-direct {p0}, Lmiui/v5/view/ViewPager;->completeScroll()V

    .line 669
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->populate()V

    .line 670
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lmiui/v5/view/ViewPager;->setScrollState(I)V

    goto :goto_0

    .line 674
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lmiui/v5/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 675
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lmiui/v5/view/ViewPager;->setScrollState(I)V

    .line 677
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->getWidth()I

    move-result v12

    .line 678
    .local v12, width:I
    div-int/lit8 v9, v12, 0x2

    .line 679
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

    .line 680
    .local v8, distanceRatio:F
    int-to-float v1, v9

    int-to-float v13, v9

    invoke-virtual {p0, v8}, Lmiui/v5/view/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v14

    mul-float/2addr v13, v14

    add-float v7, v1, v13

    .line 683
    .local v7, distance:F
    const/4 v6, 0x0

    .line 684
    .local v6, duration:I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 685
    if-lez p3, :cond_2

    .line 686
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

    .line 692
    :goto_1
    const/16 v1, 0x320

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 694
    iget-object v1, p0, Lmiui/v5/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 695
    invoke-virtual {p0}, Lmiui/v5/view/ViewPager;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 688
    :cond_2
    int-to-float v1, v12

    iget-object v13, p0, Lmiui/v5/view/ViewPager;->mAdapter:Lmiui/v5/view/PagerAdapter;

    iget v14, p0, Lmiui/v5/view/ViewPager;->mCurItem:I

    invoke-virtual {v13, v14}, Lmiui/v5/view/PagerAdapter;->getPageWidth(I)F

    move-result v13

    mul-float v11, v1, v13

    .line 689
    .local v11, pageWidth:F
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v13, p0, Lmiui/v5/view/ViewPager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v11

    div-float v10, v1, v13

    .line 690
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
    .line 618
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/v5/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
