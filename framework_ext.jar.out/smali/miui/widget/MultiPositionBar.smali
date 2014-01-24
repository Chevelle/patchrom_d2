.class public Lmiui/widget/MultiPositionBar;
.super Landroid/widget/LinearLayout;
.source "MultiPositionBar.java"


# static fields
.field private static final DEFAULT_SEEKBAR_PADDING:I = 0x10


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mImageViewGroup:Landroid/view/ViewGroup;

.field private mPositionDrawable:Landroid/graphics/drawable/Drawable;

.field private mSeekBar:Lmiui/widget/SeekBar;

.field private mTextViewGroup:Landroid/view/ViewGroup;

.field private mViewGroup:Landroid/widget/LinearLayout;

.field private mViewGroupContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    const v0, 0x60d009a

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/MultiPositionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v4, 0x10

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    sget-object v2, Lmiui/R$styleable;->MultiPositionBar:[I

    invoke-virtual {p1, p2, v2, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v6}, Lmiui/widget/MultiPositionBar;->setOrientation(I)V

    .line 41
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/widget/MultiPositionBar;->mViewGroupContainer:Landroid/widget/LinearLayout;

    .line 44
    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mViewGroupContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mViewGroupContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 46
    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mViewGroupContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 48
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/widget/MultiPositionBar;->mViewGroup:Landroid/widget/LinearLayout;

    .line 49
    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/widget/MultiPositionBar;->mTextViewGroup:Landroid/view/ViewGroup;

    .line 53
    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mTextViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/widget/MultiPositionBar;->mImageViewGroup:Landroid/view/ViewGroup;

    .line 56
    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mImageViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    new-instance v2, Lmiui/widget/SeekBar;

    const/4 v3, 0x0

    const v4, 0x60100ba

    invoke-direct {v2, p1, v3, v4}, Lmiui/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lmiui/widget/MultiPositionBar;->mSeekBar:Lmiui/widget/SeekBar;

    .line 59
    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mSeekBar:Lmiui/widget/SeekBar;

    invoke-virtual {v2, v1}, Lmiui/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mViewGroup:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lmiui/widget/MultiPositionBar;->mTextViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 61
    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mViewGroup:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lmiui/widget/MultiPositionBar;->mImageViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 62
    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mViewGroupContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lmiui/widget/MultiPositionBar;->mViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 64
    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mViewGroupContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lmiui/widget/MultiPositionBar;->addView(Landroid/view/View;)V

    .line 65
    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mSeekBar:Lmiui/widget/SeekBar;

    invoke-virtual {p0, v2}, Lmiui/widget/MultiPositionBar;->addView(Landroid/view/View;)V

    .line 67
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lmiui/widget/MultiPositionBar;->mPositionDrawable:Landroid/graphics/drawable/Drawable;

    .line 68
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lmiui/widget/MultiPositionBar;->mEntryValues:[Ljava/lang/CharSequence;

    .line 69
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2}, Lmiui/widget/MultiPositionBar;->setData([Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lmiui/widget/MultiPositionBar;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lmiui/widget/MultiPositionBar;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/widget/MultiPositionBar;I)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lmiui/widget/MultiPositionBar;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lmiui/widget/MultiPositionBar;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lmiui/widget/MultiPositionBar;->mTextViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/widget/MultiPositionBar;I)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lmiui/widget/MultiPositionBar;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lmiui/widget/MultiPositionBar;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lmiui/widget/MultiPositionBar;->mImageViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private getImageView(I)Landroid/widget/ImageView;
    .locals 4
    .parameter "i"

    .prologue
    const/4 v2, -0x2

    .line 92
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 95
    .local v1, lp:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmiui/widget/MultiPositionBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 96
    .local v0, iv:Landroid/widget/ImageView;
    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mPositionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mTextViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/MultiPositionBar;->mTextViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 98
    int-to-double v2, p1

    invoke-direct {p0, v2, v3}, Lmiui/widget/MultiPositionBar;->getThumbX(D)I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    return-object v0
.end method

.method private getTextView(I)Landroid/widget/TextView;
    .locals 4
    .parameter "i"

    .prologue
    const/4 v2, -0x2

    .line 79
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 82
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lmiui/widget/MultiPositionBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 83
    .local v1, tv:Landroid/widget/TextView;
    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mEntries:[Ljava/lang/CharSequence;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mTextViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/MultiPositionBar;->mTextViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->measure(II)V

    .line 85
    int-to-double v2, p1

    invoke-direct {p0, v2, v3}, Lmiui/widget/MultiPositionBar;->getThumbX(D)I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 86
    const/4 v2, 0x5

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 87
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    return-object v1
.end method

.method private getThumbX(D)I
    .locals 4
    .parameter "pos"

    .prologue
    .line 74
    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/MultiPositionBar;->mSeekBar:Lmiui/widget/SeekBar;

    invoke-virtual {v3}, Lmiui/widget/SeekBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lmiui/widget/MultiPositionBar;->mSeekBar:Lmiui/widget/SeekBar;

    invoke-virtual {v3}, Lmiui/widget/SeekBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v0, v2

    .line 75
    .local v0, available:D
    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mSeekBar:Lmiui/widget/SeekBar;

    invoke-virtual {v2}, Lmiui/widget/SeekBar;->getMax()I

    move-result v2

    int-to-double v2, v2

    div-double v2, p1, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    iget-object v3, p0, Lmiui/widget/MultiPositionBar;->mSeekBar:Lmiui/widget/SeekBar;

    invoke-virtual {v3}, Lmiui/widget/SeekBar;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    return v2
.end method

.method private setData([Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "datas"

    .prologue
    .line 104
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iput-object p1, p0, Lmiui/widget/MultiPositionBar;->mEntries:[Ljava/lang/CharSequence;

    .line 109
    iget-object v0, p0, Lmiui/widget/MultiPositionBar;->mSeekBar:Lmiui/widget/SeekBar;

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lmiui/widget/SeekBar;->setMax(I)V

    .line 110
    new-instance v0, Lmiui/widget/MultiPositionBar$1;

    invoke-direct {v0, p0}, Lmiui/widget/MultiPositionBar$1;-><init>(Lmiui/widget/MultiPositionBar;)V

    invoke-virtual {p0, v0}, Lmiui/widget/MultiPositionBar;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lmiui/widget/MultiPositionBar;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lmiui/widget/MultiPositionBar;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lmiui/widget/MultiPositionBar;->mSeekBar:Lmiui/widget/SeekBar;

    invoke-virtual {v0}, Lmiui/widget/SeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 146
    iget-object v0, p0, Lmiui/widget/MultiPositionBar;->mSeekBar:Lmiui/widget/SeekBar;

    invoke-virtual {v0, p1}, Lmiui/widget/SeekBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 135
    iget-object v0, p0, Lmiui/widget/MultiPositionBar;->mSeekBar:Lmiui/widget/SeekBar;

    invoke-virtual {v0, p1}, Lmiui/widget/SeekBar;->setProgress(I)V

    .line 136
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 153
    iget-object v0, p0, Lmiui/widget/MultiPositionBar;->mSeekBar:Lmiui/widget/SeekBar;

    invoke-virtual {v0, p1}, Lmiui/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    return-void
.end method

.method public setProgressMaskDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 160
    iget-object v0, p0, Lmiui/widget/MultiPositionBar;->mSeekBar:Lmiui/widget/SeekBar;

    invoke-virtual {v0, p1}, Lmiui/widget/SeekBar;->setProgressMaskDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "thumb"

    .prologue
    .line 167
    iget-object v0, p0, Lmiui/widget/MultiPositionBar;->mSeekBar:Lmiui/widget/SeekBar;

    invoke-virtual {v0, p1}, Lmiui/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 168
    return-void
.end method
