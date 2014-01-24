.class public Lmiui/widget/SpectrumVisualizer;
.super Landroid/widget/ImageView;
.source "SpectrumVisualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;,
        Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;,
        Lmiui/widget/SpectrumVisualizer$DotBarDrawer;
    }
.end annotation


# static fields
.field private static final CONSIDER_SAMPLE_LENGTH:I = 0xa0

.field public static IS_LPA_DECODE:Z = false

.field private static final RES_DEFAULT_SLIDING_DOT_BAR_ID:I = 0x6020098

.field private static final RES_DEFAULT_SLIDING_PANEL_ID:I = 0x6020097

.field private static final RES_DEFAULT_SLIDING_SHADOW_DOT_BAR_ID:I = 0x6020099

.field private static final TAG:Ljava/lang/String; = "SpectrumVisualizer"

.field private static final VISUALIZATION_SAMPLE_LENGTH:I = 0x100


# instance fields
.field private INDEX_SCALE_FACTOR:F

.field private final MAX_VALID_SAMPLE:I

.field private SAMPLE_SCALE_FACTOR:F

.field private VISUALIZE_DESC_HEIGHT:F

.field mAlphaWidthNum:I

.field private mCachedBitmap:Landroid/graphics/Bitmap;

.field private mCachedCanvas:Landroid/graphics/Canvas;

.field mCellSize:I

.field mDotbarHeight:I

.field private mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

.field private mEnableDrawing:Z

.field private mIsEnableUpdate:Z

.field private mIsNeedCareStreamActive:Z

.field private mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

.field mPaint:Landroid/graphics/Paint;

.field mPixels:[I

.field mPointData:[F

.field private mSampleBuf:[S

.field mShadowDotbarHeight:I

.field mShadowPixels:[I

.field private mSoftDrawEnabled:Z

.field private mVisualizationHeight:I

.field mVisualizationHeightNum:I

.field private mVisualizationWidth:I

.field mVisualizationWidthNum:I

.field private mVisualizer:Landroid/media/audiofx/Visualizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const-string v0, "persist.sys.lpa.decode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/widget/SpectrumVisualizer;->IS_LPA_DECODE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 55
    const/16 v0, 0xa0

    new-array v0, v0, [S

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mSampleBuf:[S

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/SpectrumVisualizer;->mSoftDrawEnabled:Z

    .line 271
    new-instance v0, Lmiui/widget/SpectrumVisualizer$1;

    invoke-direct {v0, p0}, Lmiui/widget/SpectrumVisualizer$1;-><init>(Lmiui/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 328
    const/16 v0, 0x14

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->MAX_VALID_SAMPLE:I

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/SpectrumVisualizer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 55
    const/16 v0, 0xa0

    new-array v0, v0, [S

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mSampleBuf:[S

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/SpectrumVisualizer;->mSoftDrawEnabled:Z

    .line 271
    new-instance v0, Lmiui/widget/SpectrumVisualizer$1;

    invoke-direct {v0, p0}, Lmiui/widget/SpectrumVisualizer$1;-><init>(Lmiui/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 328
    const/16 v0, 0x14

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->MAX_VALID_SAMPLE:I

    .line 74
    invoke-direct {p0, p1, p2}, Lmiui/widget/SpectrumVisualizer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 55
    const/16 v0, 0xa0

    new-array v0, v0, [S

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mSampleBuf:[S

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/SpectrumVisualizer;->mSoftDrawEnabled:Z

    .line 271
    new-instance v0, Lmiui/widget/SpectrumVisualizer$1;

    invoke-direct {v0, p0}, Lmiui/widget/SpectrumVisualizer$1;-><init>(Lmiui/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 328
    const/16 v0, 0x14

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->MAX_VALID_SAMPLE:I

    .line 79
    invoke-direct {p0, p1, p2}, Lmiui/widget/SpectrumVisualizer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method private drawInternal(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 252
    iget-object v2, p0, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 253
    iget v2, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    iget v3, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    sub-int v0, v2, v3

    .line 254
    .local v0, end:I
    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 255
    iget-object v2, p0, Lmiui/widget/SpectrumVisualizer;->mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

    invoke-interface {v2, p1, v1}, Lmiui/widget/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    :cond_0
    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    :goto_1
    if-lez v1, :cond_1

    .line 260
    iget-object v2, p0, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    mul-int/lit16 v3, v1, 0xff

    iget v4, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 262
    iget-object v2, p0, Lmiui/widget/SpectrumVisualizer;->mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, p1, v3}, Lmiui/widget/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    .line 263
    iget-object v2, p0, Lmiui/widget/SpectrumVisualizer;->mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

    iget v3, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    sub-int/2addr v3, v1

    invoke-interface {v2, p1, v3}, Lmiui/widget/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    .line 259
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 265
    :cond_1
    return-void
.end method

.method private drawToBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 229
    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 230
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 231
    .local v1, canvas:Landroid/graphics/Canvas;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/SpectrumVisualizer;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/SpectrumVisualizer;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 232
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 233
    const/4 v0, 0x0

    .line 236
    :cond_1
    if-nez v0, :cond_2

    .line 237
    invoke-virtual {p0}, Lmiui/widget/SpectrumVisualizer;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/SpectrumVisualizer;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 238
    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 240
    new-instance v1, Landroid/graphics/Canvas;

    .end local v1           #canvas:Landroid/graphics/Canvas;
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 241
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    iput-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 244
    :cond_2
    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 245
    invoke-direct {p0, v1}, Lmiui/widget/SpectrumVisualizer;->drawInternal(Landroid/graphics/Canvas;)V

    .line 247
    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 141
    const/4 v4, 0x0

    .line 142
    .local v4, panelDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 143
    .local v2, dotBarDrawble:Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    .line 144
    .local v6, shadowDotbarDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .line 146
    .local v7, symmetry:Z
    iput-boolean v10, p0, Lmiui/widget/SpectrumVisualizer;->mEnableDrawing:Z

    .line 147
    iput-boolean v10, p0, Lmiui/widget/SpectrumVisualizer;->mIsNeedCareStreamActive:Z

    .line 149
    iput v9, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .line 151
    if-eqz p2, :cond_0

    .line 152
    sget-object v8, Lmiui/R$styleable;->SpectrumVisualizer:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 153
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 154
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 155
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 156
    const/4 v8, 0x5

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 158
    iget v8, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .line 159
    const/4 v8, 0x6

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lmiui/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    .line 160
    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lmiui/widget/SpectrumVisualizer;->mIsNeedCareStreamActive:Z

    .line 161
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 164
    .end local v0           #a:Landroid/content/res/TypedArray;
    :cond_0
    if-nez v4, :cond_1

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x6020097

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 167
    :cond_1
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .end local v4           #panelDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 169
    .local v3, panelBm:Landroid/graphics/Bitmap;
    if-nez v2, :cond_2

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x6020098

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 173
    :cond_2
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2           #dotBarDrawble:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 175
    .local v1, dotBar:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 176
    .local v5, shadowDotBar:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_4

    .line 177
    if-nez v6, :cond_3

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x6020099

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :cond_3
    move-object v8, v6

    .line 181
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 184
    :cond_4
    invoke-virtual {p0, v3, v1, v5}, Lmiui/widget/SpectrumVisualizer;->setBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 185
    return-void
.end method


# virtual methods
.method public enableDrawing(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 282
    iput-boolean p1, p0, Lmiui/widget/SpectrumVisualizer;->mEnableDrawing:Z

    .line 283
    return-void
.end method

.method public enableUpdate(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 287
    :try_start_0
    iget-boolean v1, p0, Lmiui/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    if-eq v1, p1, :cond_1

    .line 288
    if-eqz p1, :cond_3

    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-nez v1, :cond_3

    .line 289
    sget-boolean v1, Lmiui/widget/SpectrumVisualizer;->IS_LPA_DECODE:Z

    if-eqz v1, :cond_2

    .line 290
    const-string v1, "SpectrumVisualizer"

    const-string v2, "lpa decode is on, can\'t enable"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lmiui/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    .line 322
    :cond_1
    :goto_1
    return-void

    .line 292
    :cond_2
    new-instance v1, Landroid/media/audiofx/Visualizer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    iput-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 293
    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v1}, Landroid/media/audiofx/Visualizer;->getEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    .line 295
    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    iget-object v2, p0, Lmiui/widget/SpectrumVisualizer;->mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    .line 299
    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    goto :goto_0

    .line 315
    :catch_0
    move-exception v1

    goto :goto_1

    .line 302
    :cond_3
    if-nez p1, :cond_0

    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 309
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 310
    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v1}, Landroid/media/audiofx/Visualizer;->release()V

    .line 311
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 317
    :catch_1
    move-exception v1

    goto :goto_1

    .line 319
    :catch_2
    move-exception v0

    .line 320
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public getVisualHeight()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeight:I

    return v0
.end method

.method public getVisualWidth()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidth:I

    return v0
.end method

.method public isUpdateEnabled()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lmiui/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 197
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 198
    iget-boolean v0, p0, Lmiui/widget/SpectrumVisualizer;->mEnableDrawing:Z

    if-nez v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-boolean v0, p0, Lmiui/widget/SpectrumVisualizer;->mSoftDrawEnabled:Z

    if-eqz v0, :cond_1

    .line 203
    invoke-direct {p0}, Lmiui/widget/SpectrumVisualizer;->drawToBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 205
    :cond_1
    invoke-direct {p0, p1}, Lmiui/widget/SpectrumVisualizer;->drawInternal(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setAlphaNum(I)V
    .locals 1
    .parameter "num"

    .prologue
    .line 133
    if-gtz p1, :cond_0

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .line 138
    .end local p1
    :goto_0
    return-void

    .line 137
    .restart local p1
    :cond_0
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_1

    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    div-int/lit8 p1, v0, 0x2

    .end local p1
    :cond_1
    iput p1, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    goto :goto_0
.end method

.method public setBitmaps(IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 8
    .parameter "width"
    .parameter "height"
    .parameter "dotbar"
    .parameter "shadow"

    .prologue
    const/4 v2, 0x0

    .line 88
    iput p1, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidth:I

    .line 89
    iput p2, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeight:I

    .line 90
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    .line 91
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    .line 93
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeight:I

    if-le v0, v1, :cond_0

    .line 94
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeight:I

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    .line 96
    :cond_0
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mPixels:[I

    .line 97
    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mPixels:[I

    iget v3, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    iget v6, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    iget v7, p0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    move-object v0, p3

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 99
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidth:I

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    div-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    .line 100
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    div-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    .line 101
    const/high16 v0, 0x41a0

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->SAMPLE_SCALE_FACTOR:F

    .line 102
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    div-int/lit8 v0, v0, 0x3

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->INDEX_SCALE_FACTOR:F

    .line 103
    const/high16 v0, 0x3f80

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->VISUALIZE_DESC_HEIGHT:F

    .line 105
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    new-array v0, v0, [F

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mPointData:[F

    .line 107
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    if-nez v0, :cond_1

    .line 108
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .line 111
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mShadowPixels:[I

    .line 112
    if-eqz p4, :cond_4

    .line 113
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    .line 115
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeight:I

    if-le v0, v1, :cond_2

    .line 116
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeight:I

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    .line 118
    :cond_2
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    if-ge v0, v1, :cond_3

    .line 120
    new-instance v0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;

    invoke-direct {v0, p0}, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;-><init>(Lmiui/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

    .line 130
    :goto_0
    return-void

    .line 124
    :cond_3
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mShadowPixels:[I

    .line 125
    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mShadowPixels:[I

    iget v3, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    iget v6, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    iget v7, p0, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    move-object v0, p4

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 126
    new-instance v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;

    invoke-direct {v0, p0}, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;-><init>(Lmiui/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

    goto :goto_0

    .line 128
    :cond_4
    new-instance v0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;

    invoke-direct {v0, p0}, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;-><init>(Lmiui/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

    goto :goto_0
.end method

.method public setBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "panel"
    .parameter "dotbar"
    .parameter "shadow"

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lmiui/widget/SpectrumVisualizer;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2, p3}, Lmiui/widget/SpectrumVisualizer;->setBitmaps(IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 85
    return-void
.end method

.method public setSoftDrawEnabled(Z)V
    .locals 2
    .parameter "endabled"

    .prologue
    const/4 v1, 0x0

    .line 220
    iput-boolean p1, p0, Lmiui/widget/SpectrumVisualizer;->mSoftDrawEnabled:Z

    .line 221
    if-nez p1, :cond_0

    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 223
    iput-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 224
    iput-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 226
    :cond_0
    return-void
.end method

.method update([B)V
    .locals 15
    .parameter "fFtBuffer"

    .prologue
    .line 332
    iget-boolean v11, p0, Lmiui/widget/SpectrumVisualizer;->mIsNeedCareStreamActive:Z

    if-eqz v11, :cond_1

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v11

    if-nez v11, :cond_1

    .line 333
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lmiui/widget/SpectrumVisualizer;->enableDrawing(Z)V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lmiui/widget/SpectrumVisualizer;->enableDrawing(Z)V

    .line 340
    if-eqz p1, :cond_0

    .line 344
    iget-object v8, p0, Lmiui/widget/SpectrumVisualizer;->mSampleBuf:[S

    .line 345
    .local v8, sampleBuf:[S
    array-length v9, v8

    .line 346
    .local v9, sampleLen:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v9, :cond_3

    .line 347
    mul-int/lit8 v11, v5, 0x2

    aget-byte v0, p1, v11

    .line 348
    .local v0, a:I
    mul-int/lit8 v11, v5, 0x2

    add-int/lit8 v11, v11, 0x1

    aget-byte v1, p1, v11

    .line 349
    .local v1, b:I
    mul-int v11, v0, v0

    mul-int v12, v1, v1

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v2, v11

    .line 351
    .local v2, c:I
    const/16 v11, 0x7fff

    if-ge v2, v11, :cond_2

    .end local v2           #c:I
    :goto_2
    int-to-short v11, v2

    aput-short v11, v8, v5

    .line 346
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 351
    .restart local v2       #c:I
    :cond_2
    const/16 v2, 0x7fff

    goto :goto_2

    .line 354
    .end local v0           #a:I
    .end local v1           #b:I
    .end local v2           #c:I
    :cond_3
    const/4 v10, 0x0

    .line 355
    .local v10, srcIdx:I
    const/4 v3, 0x0

    .line 356
    .local v3, count:I
    const/4 v5, 0x0

    :goto_3
    iget v11, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    if-ge v5, v11, :cond_7

    .line 357
    const/4 v6, 0x0

    .line 360
    .local v6, max:I
    :goto_4
    if-ge v3, v9, :cond_4

    .line 361
    aget-short v11, v8, v10

    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 362
    add-int/lit8 v10, v10, 0x1

    .line 363
    iget v11, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    add-int/2addr v3, v11

    goto :goto_4

    .line 365
    :cond_4
    sub-int/2addr v3, v9

    .line 369
    const/4 v11, 0x1

    if-le v6, v11, :cond_5

    .line 370
    add-int/lit8 v11, v5, 0x2

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    iget v13, p0, Lmiui/widget/SpectrumVisualizer;->INDEX_SCALE_FACTOR:F

    float-to-double v13, v13

    div-double/2addr v11, v13

    double-to-float v4, v11

    .line 371
    .local v4, f:F
    add-int/lit8 v11, v6, -0x1

    int-to-float v11, v11

    mul-float/2addr v11, v4

    mul-float v7, v11, v4

    .line 378
    .end local v4           #f:F
    .local v7, rawData:F
    :goto_5
    const/high16 v11, 0x41a0

    cmpl-float v11, v7, v11

    if-lez v11, :cond_6

    .line 379
    iget v11, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    int-to-float v7, v11

    .line 385
    :goto_6
    iget-object v11, p0, Lmiui/widget/SpectrumVisualizer;->mPointData:[F

    iget v12, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    int-to-float v12, v12

    div-float v12, v7, v12

    iget-object v13, p0, Lmiui/widget/SpectrumVisualizer;->mPointData:[F

    aget v13, v13, v5

    iget v14, p0, Lmiui/widget/SpectrumVisualizer;->VISUALIZE_DESC_HEIGHT:F

    sub-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    aput v12, v11, v5

    .line 356
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 373
    .end local v7           #rawData:F
    :cond_5
    const/4 v7, 0x0

    .restart local v7       #rawData:F
    goto :goto_5

    .line 381
    :cond_6
    iget v11, p0, Lmiui/widget/SpectrumVisualizer;->SAMPLE_SCALE_FACTOR:F

    div-float/2addr v7, v11

    goto :goto_6

    .line 388
    .end local v6           #max:I
    .end local v7           #rawData:F
    :cond_7
    invoke-virtual {p0}, Lmiui/widget/SpectrumVisualizer;->invalidate()V

    goto/16 :goto_0
.end method
