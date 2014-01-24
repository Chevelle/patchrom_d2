.class public Lmiui/widget/AlphabetFastIndexer;
.super Landroid/widget/ImageView;
.source "AlphabetFastIndexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;,
        Lmiui/widget/AlphabetFastIndexer$AlphabetPattern;
    }
.end annotation


# static fields
.field private static final FADE_DELAYED:I = 0x5dc

.field private static final MSG_FADE:I = 0x1

.field private static final STARRED_LABEL:Ljava/lang/String; = null

.field public static final STARRED_TITLE:Ljava/lang/String; = "!"

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_NONE:I


# instance fields
.field private mAlphabetPattern:Lmiui/widget/AlphabetFastIndexer$AlphabetPattern;

.field private mAlphabetTable:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHighlightColor:I

.field private mLastAlphabetIndex:I

.field mListScrollState:I

.field private mListView:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field

.field private mNormalColor:I

.field private mOverlay:Landroid/widget/TextView;

.field private mOverlayBackground:Landroid/graphics/drawable/Drawable;

.field private mOverlayLeftMargin:I

.field private mOverlayTextColor:I

.field private mOverlayTextSize:I

.field private mOverlayTopMargin:I

.field private final mPaint:Landroid/text/TextPaint;

.field private mRefreshMaskRunnable:Ljava/lang/Runnable;

.field private mState:I

.field private final mTextBounds:Landroid/graphics/Rect;

.field private mVerticalPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/String;

    const-string v1, "\u2605"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/widget/AlphabetFastIndexer;->STARRED_LABEL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 85
    const/high16 v0, 0x60d

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/AlphabetFastIndexer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 89
    invoke-direct/range {p0 .. p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lmiui/widget/AlphabetFastIndexer;->mTextBounds:Landroid/graphics/Rect;

    .line 198
    new-instance v14, Lmiui/widget/AlphabetFastIndexer$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lmiui/widget/AlphabetFastIndexer$1;-><init>(Lmiui/widget/AlphabetFastIndexer;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lmiui/widget/AlphabetFastIndexer;->mRefreshMaskRunnable:Ljava/lang/Runnable;

    .line 332
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lmiui/widget/AlphabetFastIndexer;->mListScrollState:I

    .line 371
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lmiui/widget/AlphabetFastIndexer;->mState:I

    .line 580
    new-instance v14, Lmiui/widget/AlphabetFastIndexer$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lmiui/widget/AlphabetFastIndexer$2;-><init>(Lmiui/widget/AlphabetFastIndexer;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 92
    .local v11, res:Landroid/content/res/Resources;
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v14

    if-nez v14, :cond_0

    move/from16 v12, p3

    .line 93
    .local v12, style:I
    :goto_0
    sget-object v14, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer:[I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14, v15, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 95
    .local v2, a:Landroid/content/res/TypedArray;
    const/4 v14, 0x2

    const v15, 0x6070002

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lmiui/widget/AlphabetFastIndexer;->mNormalColor:I

    .line 97
    const/4 v14, 0x3

    const/high16 v15, 0x607

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lmiui/widget/AlphabetFastIndexer;->mHighlightColor:I

    .line 99
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v13

    .line 100
    .local v13, table:[Ljava/lang/CharSequence;
    if-eqz v13, :cond_1

    .line 101
    array-length v14, v13

    new-array v14, v14, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lmiui/widget/AlphabetFastIndexer;->mAlphabetTable:[Ljava/lang/String;

    .line 102
    const/4 v6, 0x0

    .line 103
    .local v6, i:I
    move-object v3, v13

    .local v3, arr$:[Ljava/lang/CharSequence;
    array-length v9, v3

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move v7, v6

    .end local v6           #i:I
    .local v7, i:I
    :goto_1
    if-ge v8, v9, :cond_2

    aget-object v5, v3, v8

    .line 104
    .local v5, cs:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/widget/AlphabetFastIndexer;->mAlphabetTable:[Ljava/lang/String;

    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v7

    .line 103
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6           #i:I
    .restart local v7       #i:I
    goto :goto_1

    .line 92
    .end local v2           #a:Landroid/content/res/TypedArray;
    .end local v3           #arr$:[Ljava/lang/CharSequence;
    .end local v5           #cs:Ljava/lang/CharSequence;
    .end local v7           #i:I
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v12           #style:I
    .end local v13           #table:[Ljava/lang/CharSequence;
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v12

    goto :goto_0

    .line 107
    .restart local v2       #a:Landroid/content/res/TypedArray;
    .restart local v12       #style:I
    .restart local v13       #table:[Ljava/lang/CharSequence;
    :cond_1
    const/high16 v14, 0x606

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lmiui/widget/AlphabetFastIndexer;->mAlphabetTable:[Ljava/lang/String;

    .line 110
    :cond_2
    const/4 v14, 0x6

    const/high16 v15, 0x60a

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v15

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lmiui/widget/AlphabetFastIndexer;->mOverlayLeftMargin:I

    .line 112
    const/4 v14, 0x7

    const v15, 0x60a0001

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v15

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lmiui/widget/AlphabetFastIndexer;->mOverlayTopMargin:I

    .line 114
    const/16 v14, 0x9

    const v15, 0x60a0002

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lmiui/widget/AlphabetFastIndexer;->mOverlayTextSize:I

    .line 116
    const/16 v14, 0x8

    const v15, 0x6070001

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lmiui/widget/AlphabetFastIndexer;->mOverlayTextColor:I

    .line 118
    const/4 v14, 0x5

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lmiui/widget/AlphabetFastIndexer;->mOverlayBackground:Landroid/graphics/drawable/Drawable;

    .line 119
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/widget/AlphabetFastIndexer;->mOverlayBackground:Landroid/graphics/drawable/Drawable;

    if-nez v14, :cond_3

    .line 120
    const v14, 0x6020004

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lmiui/widget/AlphabetFastIndexer;->mOverlayBackground:Landroid/graphics/drawable/Drawable;

    .line 123
    :cond_3
    new-instance v10, Landroid/text/TextPaint;

    invoke-direct {v10}, Landroid/text/TextPaint;-><init>()V

    .line 124
    .local v10, paint:Landroid/text/TextPaint;
    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 125
    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v10, v14}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 126
    sget-object v14, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v14}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 127
    const/4 v14, 0x4

    const v15, 0x60a0003

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v14

    invoke-virtual {v10, v14}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 129
    move-object/from16 v0, p0

    iput-object v10, v0, Lmiui/widget/AlphabetFastIndexer;->mPaint:Landroid/text/TextPaint;

    .line 131
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 132
    .local v4, background:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/widget/AlphabetFastIndexer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 134
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    const/4 v14, 0x5

    move-object/from16 v0, p0

    iput v14, v0, Lmiui/widget/AlphabetFastIndexer;->mVerticalPosition:I

    .line 136
    return-void
.end method

.method static synthetic access$000(Lmiui/widget/AlphabetFastIndexer;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    return-object v0
.end method

.method private drawThumbInternal(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "title"

    .prologue
    const/4 v3, 0x1

    .line 564
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    if-nez v1, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    const-string v1, "!"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Ljava/lang/String;

    .end local p1
    sget-object v1, Lmiui/widget/AlphabetFastIndexer;->STARRED_LABEL:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 569
    .restart local p1
    :cond_2
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 571
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 572
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 573
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 574
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private getListOffset()I
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 329
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPostion(FLandroid/widget/SectionIndexer;)I
    .locals 9
    .parameter "y"
    .parameter "indexer"

    .prologue
    const/4 v5, -0x1

    .line 422
    invoke-interface {p2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v6

    .line 423
    .local v6, sections:[Ljava/lang/Object;
    if-nez v6, :cond_1

    .line 450
    :cond_0
    :goto_0
    return v5

    .line 427
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingTop()I

    move-result v3

    .line 428
    .local v3, paddingTop:I
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingBottom()I

    move-result v2

    .line 429
    .local v2, paddingBottom:I
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getHeight()I

    move-result v7

    sub-int/2addr v7, v3

    sub-int v0, v7, v2

    .line 430
    .local v0, contentHeight:I
    if-lez v0, :cond_0

    .line 433
    int-to-float v7, v3

    sub-float v7, p1, v7

    int-to-float v8, v0

    div-float v4, v7, v8

    .line 434
    .local v4, rate:F
    iget-object v7, p0, Lmiui/widget/AlphabetFastIndexer;->mAlphabetTable:[Ljava/lang/String;

    array-length v7, v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v1, v7

    .line 435
    .local v1, needlePos:I
    if-ltz v1, :cond_0

    .line 437
    iget-object v7, p0, Lmiui/widget/AlphabetFastIndexer;->mAlphabetTable:[Ljava/lang/String;

    array-length v7, v7

    if-lt v1, v7, :cond_2

    .line 438
    array-length v5, v6

    goto :goto_0

    .line 441
    :cond_2
    iget-object v7, p0, Lmiui/widget/AlphabetFastIndexer;->mAlphabetTable:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-static {v6, v7}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    .line 442
    .local v5, section:I
    if-gez v5, :cond_3

    .line 444
    neg-int v7, v5

    add-int/lit8 v5, v7, -0x2

    .line 447
    :cond_3
    if-gez v5, :cond_0

    .line 448
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private getSectionIndexer()Landroid/widget/SectionIndexer;
    .locals 4

    .prologue
    .line 306
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    if-nez v3, :cond_1

    .line 307
    const/4 v2, 0x0

    .line 321
    :cond_0
    :goto_0
    return-object v2

    .line 310
    :cond_1
    const/4 v2, 0x0

    .line 311
    .local v2, si:Landroid/widget/SectionIndexer;
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 312
    .local v1, la:Landroid/widget/Adapter;
    instance-of v3, v1, Landroid/widget/SectionIndexer;

    if-eqz v3, :cond_2

    move-object v2, v1

    .line 313
    check-cast v2, Landroid/widget/SectionIndexer;

    goto :goto_0

    .line 314
    :cond_2
    instance-of v3, v1, Landroid/widget/HeaderViewListAdapter;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 315
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .line 316
    .local v0, hla:Landroid/widget/HeaderViewListAdapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/SectionIndexer;

    if-eqz v3, :cond_0

    .line 317
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .end local v2           #si:Landroid/widget/SectionIndexer;
    check-cast v2, Landroid/widget/SectionIndexer;

    .restart local v2       #si:Landroid/widget/SectionIndexer;
    goto :goto_0
.end method

.method private scrollTo(Landroid/widget/SectionIndexer;I)V
    .locals 24
    .parameter "indexer"
    .parameter "position"

    .prologue
    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    .line 458
    .local v2, count:I
    invoke-direct/range {p0 .. p0}, Lmiui/widget/AlphabetFastIndexer;->getListOffset()I

    move-result v10

    .line 459
    .local v10, listOffset:I
    const/high16 v21, 0x3f80

    int-to-float v0, v2

    move/from16 v22, v0

    div-float v21, v21, v22

    const/high16 v22, 0x4100

    div-float v8, v21, v22

    .line 460
    .local v8, fThreshold:F
    invoke-interface/range {p1 .. p1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v19

    .line 462
    .local v19, sections:[Ljava/lang/Object;
    if-eqz v19, :cond_b

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_b

    .line 463
    move-object/from16 v0, v19

    array-length v11, v0

    .line 464
    .local v11, nSections:I
    move/from16 v17, p2

    .line 465
    .local v17, section:I
    move/from16 v0, v17

    if-lt v0, v11, :cond_0

    .line 466
    add-int/lit8 v17, v11, -0x1

    .line 468
    :cond_0
    move/from16 v4, v17

    .line 469
    .local v4, exactSection:I
    move/from16 v18, v17

    .line 470
    .local v18, sectionIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 477
    .local v9, index:I
    move v12, v2

    .line 478
    .local v12, nextIndex:I
    move v15, v9

    .line 479
    .local v15, prevIndex:I
    move/from16 v16, v17

    .line 480
    .local v16, prevSection:I
    add-int/lit8 v14, v17, 0x1

    .line 482
    .local v14, nextSection:I
    add-int/lit8 v21, v11, -0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 483
    add-int/lit8 v21, v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v12

    .line 487
    :cond_1
    if-ne v12, v9, :cond_3

    .line 489
    :cond_2
    if-lez v17, :cond_3

    .line 490
    add-int/lit8 v17, v17, -0x1

    .line 491
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v15

    .line 492
    if-eq v15, v9, :cond_4

    .line 493
    move/from16 v16, v17

    .line 494
    move/from16 v18, v17

    .line 511
    :cond_3
    :goto_0
    add-int/lit8 v13, v14, 0x1

    .line 513
    .local v13, nextNextSection:I
    :goto_1
    if-ge v13, v11, :cond_5

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v21

    move/from16 v0, v21

    if-ne v0, v12, :cond_5

    .line 514
    add-int/lit8 v13, v13, 0x1

    .line 515
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 496
    .end local v13           #nextNextSection:I
    :cond_4
    if-nez v17, :cond_2

    .line 501
    const/16 v18, 0x0

    .line 502
    goto :goto_0

    .line 520
    .restart local v13       #nextNextSection:I
    :cond_5
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v11

    move/from16 v22, v0

    div-float v7, v21, v22

    .line 521
    .local v7, fPrev:F
    int-to-float v0, v14

    move/from16 v21, v0

    int-to-float v0, v11

    move/from16 v22, v0

    div-float v6, v21, v22

    .line 522
    .local v6, fNext:F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v11

    move/from16 v22, v0

    div-float v3, v21, v22

    .line 523
    .local v3, current:F
    move/from16 v0, v16

    if-ne v0, v4, :cond_8

    sub-float v21, v3, v7

    cmpg-float v21, v21, v8

    if-gez v21, :cond_8

    .line 524
    move v9, v15

    .line 529
    :goto_2
    add-int/lit8 v21, v2, -0x1

    move/from16 v0, v21

    if-le v9, v0, :cond_6

    .line 530
    add-int/lit8 v9, v2, -0x1

    .line 532
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v21, v0

    if-eqz v21, :cond_9

    .line 533
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    check-cast v5, Landroid/widget/ExpandableListView;

    .line 534
    .local v5, expList:Landroid/widget/ExpandableListView;
    add-int v21, v9, v10

    invoke-static/range {v21 .. v21}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v21

    move-wide/from16 v0, v21

    invoke-virtual {v5, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 555
    .end local v3           #current:F
    .end local v4           #exactSection:I
    .end local v5           #expList:Landroid/widget/ExpandableListView;
    .end local v6           #fNext:F
    .end local v7           #fPrev:F
    .end local v11           #nSections:I
    .end local v12           #nextIndex:I
    .end local v13           #nextNextSection:I
    .end local v14           #nextSection:I
    .end local v15           #prevIndex:I
    .end local v16           #prevSection:I
    .end local v17           #section:I
    :goto_3
    if-ltz v18, :cond_7

    .line 556
    aget-object v21, v19, v18

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .line 557
    .local v20, text:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 558
    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lmiui/widget/AlphabetFastIndexer;->drawThumbInternal(Ljava/lang/CharSequence;)V

    .line 561
    .end local v20           #text:Ljava/lang/String;
    :cond_7
    return-void

    .line 526
    .restart local v3       #current:F
    .restart local v4       #exactSection:I
    .restart local v6       #fNext:F
    .restart local v7       #fPrev:F
    .restart local v11       #nSections:I
    .restart local v12       #nextIndex:I
    .restart local v13       #nextNextSection:I
    .restart local v14       #nextSection:I
    .restart local v15       #prevIndex:I
    .restart local v16       #prevSection:I
    .restart local v17       #section:I
    :cond_8
    sub-int v21, v12, v15

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v22, v3, v7

    mul-float v21, v21, v22

    sub-float v22, v6, v7

    div-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    add-int v9, v15, v21

    goto :goto_2

    .line 536
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    move-object/from16 v21, v0

    check-cast v21, Landroid/widget/ListView;

    add-int v22, v9, v10

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_3

    .line 539
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    move-object/from16 v21, v0

    add-int v22, v9, v10

    invoke-virtual/range {v21 .. v22}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_3

    .line 542
    .end local v3           #current:F
    .end local v4           #exactSection:I
    .end local v6           #fNext:F
    .end local v7           #fPrev:F
    .end local v9           #index:I
    .end local v11           #nSections:I
    .end local v12           #nextIndex:I
    .end local v13           #nextNextSection:I
    .end local v14           #nextSection:I
    .end local v15           #prevIndex:I
    .end local v16           #prevSection:I
    .end local v17           #section:I
    .end local v18           #sectionIndex:I
    :cond_b
    mul-int v21, p2, v2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 543
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 544
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    check-cast v5, Landroid/widget/ExpandableListView;

    .line 545
    .restart local v5       #expList:Landroid/widget/ExpandableListView;
    add-int v21, v9, v10

    invoke-static/range {v21 .. v21}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v21

    move-wide/from16 v0, v21

    invoke-virtual {v5, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 552
    .end local v5           #expList:Landroid/widget/ExpandableListView;
    :goto_4
    const/16 v18, -0x1

    .restart local v18       #sectionIndex:I
    goto/16 :goto_3

    .line 547
    .end local v18           #sectionIndex:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v21, v0

    if-eqz v21, :cond_d

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    move-object/from16 v21, v0

    check-cast v21, Landroid/widget/ListView;

    add-int v22, v9, v10

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_4

    .line 550
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    move-object/from16 v21, v0

    add-int v22, v9, v10

    invoke-virtual/range {v21 .. v22}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_4
.end method


# virtual methods
.method public attatch(Landroid/widget/AdapterView;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, lv:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/16 v6, 0x11

    const/4 v4, -0x2

    const/4 v5, 0x0

    .line 213
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    if-ne v3, p1, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->detach()V

    .line 218
    if-eqz p1, :cond_0

    .line 222
    const/4 v3, -0x1

    iput v3, p0, Lmiui/widget/AlphabetFastIndexer;->mLastAlphabetIndex:I

    .line 224
    iput-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    .line 225
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 227
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 230
    .local v2, parent:Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    .line 231
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 234
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    iget v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayLeftMargin:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 235
    iget v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayTopMargin:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 236
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->measure(II)V

    .line 239
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 241
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    iget v4, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 242
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    iget v4, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 247
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #params:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 248
    .restart local v1       #params:Landroid/widget/FrameLayout$LayoutParams;
    iget v3, p0, Lmiui/widget/AlphabetFastIndexer;->mVerticalPosition:I

    or-int/lit8 v3, v3, 0x30

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 249
    invoke-virtual {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->refreshMask()V

    goto :goto_0
.end method

.method public decorateScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1
    .parameter "l"

    .prologue
    .line 266
    new-instance v0, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;

    invoke-direct {v0, p0, p1}, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;-><init>(Lmiui/widget/AlphabetFastIndexer;Landroid/widget/AbsListView$OnScrollListener;)V

    return-object v0
.end method

.method public detach()V
    .locals 2

    .prologue
    .line 255
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    .line 256
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    .line 257
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 258
    .local v0, parent:Landroid/widget/FrameLayout;
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 260
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->setVisibility(I)V

    .line 261
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    .line 263
    .end local v0           #parent:Landroid/widget/FrameLayout;
    :cond_0
    return-void
.end method

.method public drawThumb(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 270
    iget v0, p0, Lmiui/widget/AlphabetFastIndexer;->mState:I

    if-nez v0, :cond_0

    iget v0, p0, Lmiui/widget/AlphabetFastIndexer;->mListScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 272
    invoke-direct {p0, p1}, Lmiui/widget/AlphabetFastIndexer;->drawThumbInternal(Ljava/lang/CharSequence;)V

    .line 274
    :cond_0
    return-void
.end method

.method public getIndexerIntrinsicWidth()I
    .locals 2

    .prologue
    .line 301
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 302
    .local v0, background:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    .line 156
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingTop()I

    move-result v17

    .line 159
    .local v17, top:I
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/AlphabetFastIndexer;->getHeight()I

    move-result v1

    sub-int v1, v1, v17

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingBottom()I

    move-result v3

    sub-int v15, v1, v3

    .line 160
    .local v15, height:I
    if-gtz v15, :cond_1

    .line 188
    :cond_0
    return-void

    .line 164
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lmiui/widget/AlphabetFastIndexer;->mPaint:Landroid/text/TextPaint;

    .line 165
    .local v7, paint:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/widget/AlphabetFastIndexer;->mTextBounds:Landroid/graphics/Rect;

    .line 166
    .local v11, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer;->mAlphabetTable:[Ljava/lang/String;

    move-object/from16 v16, v0

    .line 167
    .local v16, table:[Ljava/lang/String;
    int-to-float v1, v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/AlphabetFastIndexer;->mAlphabetTable:[Ljava/lang/String;

    array-length v3, v3

    int-to-float v3, v3

    div-float v14, v1, v3

    .line 168
    .local v14, alphaHeight:F
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/AlphabetFastIndexer;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x4000

    div-float v5, v1, v3

    .line 170
    .local v5, x:F
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move-object/from16 v0, v16

    array-length v1, v0

    if-ge v12, v1, :cond_0

    .line 171
    move-object/from16 v0, p0

    iget v1, v0, Lmiui/widget/AlphabetFastIndexer;->mLastAlphabetIndex:I

    if-eq v12, v1, :cond_3

    .line 172
    move-object/from16 v0, p0

    iget v1, v0, Lmiui/widget/AlphabetFastIndexer;->mNormalColor:I

    invoke-virtual {v7, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 178
    :goto_1
    aget-object v1, v16, v12

    const-string v3, "!"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v2, Lmiui/widget/AlphabetFastIndexer;->STARRED_LABEL:Ljava/lang/String;

    .line 180
    .local v2, alpha:Ljava/lang/String;
    :goto_2
    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v7, v2, v1, v3, v11}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 181
    int-to-float v1, v12

    mul-float/2addr v1, v14

    move/from16 v0, v17

    int-to-float v3, v0

    add-float/2addr v1, v3

    iget v3, v11, Landroid/graphics/Rect;->top:I

    iget v4, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float v3, v14, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v6, v1, v3

    .line 182
    .local v6, y:F
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/widget/AlphabetFastIndexer;->mAlphabetPattern:Lmiui/widget/AlphabetFastIndexer$AlphabetPattern;

    if-eqz v1, :cond_2

    .line 185
    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/widget/AlphabetFastIndexer;->mAlphabetPattern:Lmiui/widget/AlphabetFastIndexer$AlphabetPattern;

    move-object/from16 v0, p0

    iget v13, v0, Lmiui/widget/AlphabetFastIndexer;->mLastAlphabetIndex:I

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-interface/range {v8 .. v13}, Lmiui/widget/AlphabetFastIndexer$AlphabetPattern;->draw(Lmiui/widget/AlphabetFastIndexer;Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    .line 170
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 174
    .end local v2           #alpha:Ljava/lang/String;
    .end local v6           #y:F
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lmiui/widget/AlphabetFastIndexer;->mHighlightColor:I

    invoke-virtual {v7, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1

    .line 178
    :cond_4
    aget-object v2, v16, v12

    goto :goto_2
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 150
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/AlphabetFastIndexer;->mLastAlphabetIndex:I

    .line 151
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mRefreshMaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/widget/AlphabetFastIndexer;->post(Ljava/lang/Runnable;)Z

    .line 152
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 375
    iget-object v5, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    if-nez v5, :cond_0

    .line 376
    invoke-virtual {p0, v3}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    .line 404
    :goto_0
    return v3

    .line 380
    :cond_0
    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->getSectionIndexer()Landroid/widget/SectionIndexer;

    move-result-object v1

    .line 381
    .local v1, indexer:Landroid/widget/SectionIndexer;
    if-nez v1, :cond_1

    .line 382
    invoke-virtual {p0, v3}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    goto :goto_0

    .line 386
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v0, v5, 0xff

    .line 387
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 401
    :pswitch_0
    const/16 v3, 0x5dc

    invoke-virtual {p0, v3}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    :goto_1
    move v3, v4

    .line 404
    goto :goto_0

    .line 389
    :pswitch_1
    iput v4, p0, Lmiui/widget/AlphabetFastIndexer;->mState:I

    .line 390
    invoke-virtual {p0, v4}, Lmiui/widget/AlphabetFastIndexer;->setPressed(Z)V

    .line 393
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v5, v1}, Lmiui/widget/AlphabetFastIndexer;->getPostion(FLandroid/widget/SectionIndexer;)I

    move-result v2

    .line 394
    .local v2, pos:I
    if-gez v2, :cond_2

    .line 395
    iget-object v5, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    invoke-virtual {v5, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_1

    .line 397
    :cond_2
    invoke-direct {p0, v1, v2}, Lmiui/widget/AlphabetFastIndexer;->scrollTo(Landroid/widget/SectionIndexer;I)V

    goto :goto_1

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public refreshMask()V
    .locals 7

    .prologue
    .line 277
    iget-object v5, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    if-nez v5, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    const/4 v3, 0x0

    .line 282
    .local v3, newIndex:I
    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->getSectionIndexer()Landroid/widget/SectionIndexer;

    move-result-object v1

    .line 283
    .local v1, indexer:Landroid/widget/SectionIndexer;
    if-eqz v1, :cond_2

    .line 284
    iget-object v5, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v5

    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->getListOffset()I

    move-result v6

    sub-int v0, v5, v6

    .line 285
    .local v0, first:I
    invoke-interface {v1, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v4

    .line 286
    .local v4, section:I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 287
    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v5

    aget-object v2, v5, v4

    check-cast v2, Ljava/lang/String;

    .line 288
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 289
    iget-object v5, p0, Lmiui/widget/AlphabetFastIndexer;->mAlphabetTable:[Ljava/lang/String;

    invoke-static {v5, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 294
    .end local v0           #first:I
    .end local v2           #name:Ljava/lang/String;
    .end local v4           #section:I
    :cond_2
    iget v5, p0, Lmiui/widget/AlphabetFastIndexer;->mLastAlphabetIndex:I

    if-eq v5, v3, :cond_0

    .line 295
    iput v3, p0, Lmiui/widget/AlphabetFastIndexer;->mLastAlphabetIndex:I

    .line 296
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->invalidate()V

    goto :goto_0
.end method

.method public setAlphabetStyle(Lmiui/widget/AlphabetFastIndexer$AlphabetPattern;)V
    .locals 0
    .parameter "pattern"

    .prologue
    .line 191
    iput-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->mAlphabetPattern:Lmiui/widget/AlphabetFastIndexer$AlphabetPattern;

    .line 192
    return-void
.end method

.method public setOverlayOffset(II)V
    .locals 0
    .parameter "leftMargin"
    .parameter "topMargin"

    .prologue
    .line 143
    iput p1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayLeftMargin:I

    .line 144
    iput p2, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayTopMargin:I

    .line 145
    return-void
.end method

.method public setVerticalPosition(Z)V
    .locals 1
    .parameter "isRight"

    .prologue
    .line 139
    if-eqz p1, :cond_0

    const/4 v0, 0x5

    :goto_0
    iput v0, p0, Lmiui/widget/AlphabetFastIndexer;->mVerticalPosition:I

    .line 140
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method stop(I)V
    .locals 4
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 408
    invoke-virtual {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->setPressed(Z)V

    .line 409
    iput v1, p0, Lmiui/widget/AlphabetFastIndexer;->mState:I

    .line 410
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 411
    if-gtz p1, :cond_1

    .line 412
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 417
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
