.class public Lmiui/maml/elements/ImageScreenElement;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "ImageScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/ImageScreenElement$1;,
        Lmiui/maml/elements/ImageScreenElement$pair;,
        Lmiui/maml/elements/ImageScreenElement$Mask;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImageScreenElement"

.field public static final MASK_TAG_NAME:Ljava/lang/String; = "Mask"

.field private static final PI:D = 3.1415926535897

.field public static final TAG_NAME:Ljava/lang/String; = "Image"

.field private static final VAR_BMP_HEIGHT:Ljava/lang/String; = "bmp_height"

.field private static final VAR_BMP_WIDTH:Ljava/lang/String; = "bmp_width"

.field private static final VAR_HAS_BITMAP:Ljava/lang/String; = "has_bitmap"


# instance fields
.field private mAntiAlias:Z

.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

.field private mBlurBitmap:Landroid/graphics/Bitmap;

.field private mBlurExp:Lmiui/maml/data/Expression;

.field private mBlurRadius:I

.field private mBmpSizeHeightVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mBmpSizeWidthVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mBufferCanvas:Landroid/graphics/Canvas;

.field protected mCurrentBitmap:Landroid/graphics/Bitmap;

.field private mDesRect:Landroid/graphics/Rect;

.field private mExpSrcH:Lmiui/maml/data/Expression;

.field private mExpSrcW:Lmiui/maml/data/Expression;

.field private mExpSrcX:Lmiui/maml/data/Expression;

.field private mExpSrcY:Lmiui/maml/data/Expression;

.field private mHasBitmapVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mHasSrcRect:Z

.field private mKey:Ljava/lang/String;

.field private mMaskBuffer:Landroid/graphics/Bitmap;

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mMasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ImageScreenElement$Mask;",
            ">;"
        }
    .end annotation
.end field

.field private mMeshHeight:I

.field private mMeshWidth:I

.field protected mPaint:Landroid/graphics/Paint;

.field private mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/maml/elements/ImageScreenElement$pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mSrcH:I

.field private mSrcRect:Landroid/graphics/Rect;

.field private mSrcW:I

.field private mSrcX:I

.field private mSrcY:I

.field private mVerts:[F

.field private mVertsExps:[Lmiui/maml/data/Expression;

.field private mXfermodeNumExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .parameter "node"
    .parameter "root"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    .line 129
    invoke-direct {p0, p1}, Lmiui/maml/elements/ImageScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 130
    return-void
.end method

.method private getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 405
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mKey:Ljava/lang/String;

    .line 406
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method private final getPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;
    .locals 7
    .parameter "modeNum"

    .prologue
    .line 220
    const-class v6, Landroid/graphics/PorterDuff$Mode;

    invoke-static {v6}, Ljava/lang/Enum;->getSharedConstants(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v5

    check-cast v5, [Landroid/graphics/PorterDuff$Mode;

    .line 222
    .local v5, modes:[Landroid/graphics/PorterDuff$Mode;
    if-gez p1, :cond_2

    .line 223
    const/4 p1, 0x0

    .line 228
    :cond_0
    :goto_0
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 229
    .local v4, mode:Landroid/graphics/PorterDuff$Mode;
    move-object v0, v5

    .local v0, arr$:[Landroid/graphics/PorterDuff$Mode;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 230
    .local v3, m:Landroid/graphics/PorterDuff$Mode;
    invoke-virtual {v3}, Landroid/graphics/PorterDuff$Mode;->ordinal()I

    move-result v6

    if-ne v6, p1, :cond_3

    .line 231
    move-object v4, v3

    .line 235
    .end local v3           #m:Landroid/graphics/PorterDuff$Mode;
    :cond_1
    return-object v4

    .line 224
    .end local v0           #arr$:[Landroid/graphics/PorterDuff$Mode;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #mode:Landroid/graphics/PorterDuff$Mode;
    :cond_2
    array-length v6, v5

    if-lt p1, v6, :cond_0

    .line 225
    array-length v6, v5

    add-int/lit8 p1, v6, -0x1

    goto :goto_0

    .line 229
    .restart local v0       #arr$:[Landroid/graphics/PorterDuff$Mode;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #m:Landroid/graphics/PorterDuff$Mode;
    .restart local v4       #mode:Landroid/graphics/PorterDuff$Mode;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private final getPorterDuffMode(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;
    .locals 5
    .parameter "strMode"

    .prologue
    .line 206
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 216
    :goto_0
    return-object v1

    .line 210
    :cond_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 212
    .local v1, mode:Landroid/graphics/PorterDuff$Mode;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "ImageScreenElement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal xfermode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 14
    .parameter "node"

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 203
    :goto_0
    return-void

    .line 137
    :cond_0
    const-string v10, "antiAlias"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "false"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, p0, Lmiui/maml/elements/ImageScreenElement;->mAntiAlias:Z

    .line 138
    iget-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    iget-boolean v11, p0, Lmiui/maml/elements/ImageScreenElement;->mAntiAlias:Z

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 139
    iget-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/PorterDuffXfermode;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 140
    iget-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    iget-boolean v11, p0, Lmiui/maml/elements/ImageScreenElement;->mAntiAlias:Z

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 141
    const-string v10, "srcX"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v10

    iput-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcX:Lmiui/maml/data/Expression;

    .line 142
    const-string v10, "srcY"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v10

    iput-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcY:Lmiui/maml/data/Expression;

    .line 143
    const-string v10, "srcW"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v10

    iput-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcW:Lmiui/maml/data/Expression;

    .line 144
    const-string v10, "srcH"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v10

    iput-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcH:Lmiui/maml/data/Expression;

    .line 145
    iget-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcW:Lmiui/maml/data/Expression;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcH:Lmiui/maml/data/Expression;

    if-eqz v10, :cond_1

    .line 146
    const/4 v10, 0x1

    iput-boolean v10, p0, Lmiui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    .line 147
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    .line 150
    :cond_1
    const-string v10, "blur"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v10

    iput-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mBlurExp:Lmiui/maml/data/Expression;

    .line 151
    const-string v10, "mesh"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 152
    .local v5, meshStr:Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 153
    .local v0, comma:I
    const/4 v10, -0x1

    if-eq v0, v10, :cond_2

    .line 155
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v5, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lmiui/maml/elements/ImageScreenElement;->mMeshWidth:I

    .line 156
    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lmiui/maml/elements/ImageScreenElement;->mMeshHeight:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_2
    const-string v10, "meshVerts"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 161
    .local v6, meshVertsStr:Ljava/lang/String;
    invoke-static {v6}, Lmiui/maml/data/Expression;->buildMultiple(Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v10

    iput-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mVertsExps:[Lmiui/maml/data/Expression;

    .line 162
    iget v10, p0, Lmiui/maml/elements/ImageScreenElement;->mMeshWidth:I

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lmiui/maml/elements/ImageScreenElement;->mMeshHeight:I

    add-int/lit8 v11, v11, 0x1

    mul-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x2

    iget-object v11, p0, Lmiui/maml/elements/ImageScreenElement;->mVertsExps:[Lmiui/maml/data/Expression;

    array-length v11, v11

    if-eq v10, v11, :cond_7

    .line 163
    const/4 v10, 0x0

    iput v10, p0, Lmiui/maml/elements/ImageScreenElement;->mMeshWidth:I

    .line 164
    const/4 v10, 0x0

    iput v10, p0, Lmiui/maml/elements/ImageScreenElement;->mMeshHeight:I

    .line 165
    const/4 v10, 0x0

    iput-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mVertsExps:[Lmiui/maml/data/Expression;

    .line 166
    const-string v10, "ImageScreenElement"

    const-string v11, "Wrong number of meshVerts!"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local v6           #meshVertsStr:Ljava/lang/String;
    :cond_2
    :goto_3
    const-string v10, "xfermodeNum"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v10

    iput-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mXfermodeNumExp:Lmiui/maml/data/Expression;

    .line 187
    iget-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mXfermodeNumExp:Lmiui/maml/data/Expression;

    if-nez v10, :cond_3

    .line 188
    const-string v10, "xfermode"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lmiui/maml/elements/ImageScreenElement;->getPorterDuffMode(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    .line 189
    .local v7, mode:Landroid/graphics/PorterDuff$Mode;
    iget-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v11, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 193
    .end local v7           #mode:Landroid/graphics/PorterDuff$Mode;
    :cond_3
    const-string v10, "useVirtualScreen"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 194
    .local v9, useVirtualScreen:Z
    const-string v10, "srcType"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 195
    .local v8, srcType:Ljava/lang/String;
    iget-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v9, :cond_4

    const-string v8, "VirtualScreen"

    .end local v8           #srcType:Ljava/lang/String;
    :cond_4
    invoke-static {v10, v8}, Lmiui/maml/elements/BitmapProvider;->create(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider;

    move-result-object v10

    iput-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    .line 197
    iget-boolean v10, p0, Lmiui/maml/elements/ImageScreenElement;->mHasName:Z

    if-eqz v10, :cond_5

    .line 198
    new-instance v10, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v11, p0, Lmiui/maml/elements/ImageScreenElement;->mName:Ljava/lang/String;

    const-string v12, "bmp_width"

    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mBmpSizeWidthVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 199
    new-instance v10, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v11, p0, Lmiui/maml/elements/ImageScreenElement;->mName:Ljava/lang/String;

    const-string v12, "bmp_height"

    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mBmpSizeHeightVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 200
    new-instance v10, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v11, p0, Lmiui/maml/elements/ImageScreenElement;->mName:Ljava/lang/String;

    const-string v12, "has_bitmap"

    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mHasBitmapVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 202
    :cond_5
    invoke-direct {p0, p1}, Lmiui/maml/elements/ImageScreenElement;->loadMask(Lorg/w3c/dom/Element;)V

    goto/16 :goto_0

    .line 137
    .end local v0           #comma:I
    .end local v5           #meshStr:Ljava/lang/String;
    .end local v9           #useVirtualScreen:Z
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 157
    .restart local v0       #comma:I
    .restart local v5       #meshStr:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 158
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v10, "ImageScreenElement"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid format:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 168
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v6       #meshVertsStr:Ljava/lang/String;
    :cond_7
    iget-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mVertsExps:[Lmiui/maml/data/Expression;

    array-length v4, v10

    .line 169
    .local v4, length:I
    const/4 v3, 0x0

    .line 170
    .local v3, isNull:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    if-ge v2, v4, :cond_8

    .line 171
    iget-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mVertsExps:[Lmiui/maml/data/Expression;

    aget-object v10, v10, v2

    if-nez v10, :cond_9

    .line 172
    const-string v10, "ImageScreenElement"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid meshVerts:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v3, 0x1

    .line 174
    const/4 v10, 0x0

    iput v10, p0, Lmiui/maml/elements/ImageScreenElement;->mMeshWidth:I

    .line 175
    const/4 v10, 0x0

    iput v10, p0, Lmiui/maml/elements/ImageScreenElement;->mMeshHeight:I

    .line 176
    const/4 v10, 0x0

    iput-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mVertsExps:[Lmiui/maml/data/Expression;

    .line 180
    :cond_8
    if-nez v3, :cond_2

    .line 181
    iget-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mVertsExps:[Lmiui/maml/data/Expression;

    array-length v10, v10

    new-array v10, v10, [F

    iput-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mVerts:[F

    goto/16 :goto_3

    .line 170
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method private loadMask(Lorg/w3c/dom/Element;)V
    .locals 6
    .parameter "node"

    .prologue
    .line 239
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 240
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 242
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 244
    const-string v2, "Mask"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 245
    .local v1, images:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 246
    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    new-instance v4, Lmiui/maml/elements/ImageScreenElement$Mask;

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v4, p0, v2, v5}, Lmiui/maml/elements/ImageScreenElement$Mask;-><init>(Lmiui/maml/elements/ImageScreenElement;Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_1
    return-void
.end method

.method private renderWithMask(Landroid/graphics/Canvas;Lmiui/maml/elements/ImageScreenElement$Mask;II)V
    .locals 44
    .parameter "bufferCanvas"
    .parameter "mask"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 430
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 431
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v38

    .line 432
    .local v38, rawMask:Landroid/graphics/Bitmap;
    if-nez v38, :cond_0

    .line 485
    :goto_0
    return-void

    .line 435
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getX()F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v32, v0

    .line 436
    .local v32, maskX:D
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getY()F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v34, v0

    .line 437
    .local v34, maskY:D
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getRotation()F

    move-result v31

    .line 438
    .local v31, maskAngle:F
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->isAlignAbsolute()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 439
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getRotation()F

    move-result v17

    .line 440
    .local v17, angle:F
    const/4 v2, 0x0

    cmpl-float v2, v17, v2

    if-nez v2, :cond_4

    .line 441
    move/from16 v0, p3

    int-to-double v2, v0

    sub-double v32, v32, v2

    .line 442
    move/from16 v0, p4

    int-to-double v2, v0

    sub-double v34, v34, v2

    .line 468
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getX()F

    move-result v2

    float-to-double v2, v2

    sub-double v32, v32, v2

    .line 469
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getY()F

    move-result v2

    float-to-double v2, v2

    sub-double v34, v34, v2

    .line 471
    .end local v17           #angle:F
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getPivotX()F

    move-result v2

    float-to-double v2, v2

    add-double v2, v2, v32

    double-to-float v2, v2

    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getPivotY()F

    move-result v3

    float-to-double v3, v3

    add-double v3, v3, v34

    double-to-float v3, v3

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 473
    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v36, v0

    .line 474
    .local v36, mx:I
    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v37, v0

    .line 475
    .local v37, my:I
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getWidth()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v43

    .line 476
    .local v43, width:I
    if-gez v43, :cond_2

    .line 477
    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v43

    .line 478
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getHeight()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v30

    .line 479
    .local v30, height:I
    if-gez v30, :cond_3

    .line 480
    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v30

    .line 481
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    add-int v3, v36, v43

    add-int v4, v37, v30

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getAlpha()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 483
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 484
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 444
    .end local v30           #height:I
    .end local v36           #mx:I
    .end local v37           #my:I
    .end local v43           #width:I
    .restart local v17       #angle:F
    :cond_4
    sub-float v31, v31, v17

    .line 445
    move/from16 v0, v17

    float-to-double v2, v0

    const-wide v4, 0x400921fb54442c46L

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L

    div-double v7, v2, v4

    .line 446
    .local v7, angleA:D
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getPivotX()F

    move-result v22

    .line 447
    .local v22, cx:F
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getPivotY()F

    move-result v23

    .line 448
    .local v23, cy:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    if-nez v2, :cond_5

    .line 449
    new-instance v2, Lmiui/maml/elements/ImageScreenElement$pair;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lmiui/maml/elements/ImageScreenElement$pair;-><init>(Lmiui/maml/elements/ImageScreenElement$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    .line 451
    :cond_5
    move/from16 v0, v22

    float-to-double v3, v0

    move/from16 v0, v23

    float-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lmiui/maml/elements/ImageScreenElement;->rotateXY(DDDLmiui/maml/elements/ImageScreenElement$pair;)V

    .line 453
    move/from16 v0, p3

    int-to-double v3, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    iget-object v2, v2, Lmiui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    add-double v39, v3, v5

    .line 454
    .local v39, rx:D
    move/from16 v0, p4

    int-to-double v3, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    iget-object v2, v2, Lmiui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    add-double v41, v3, v5

    .line 457
    .local v41, ry:D
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getPivotX()F

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmiui/maml/elements/ImageScreenElement;->descale(F)F

    move-result v2

    float-to-double v10, v2

    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getPivotY()F

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmiui/maml/elements/ImageScreenElement;->descale(F)F

    move-result v2

    float-to-double v12, v2

    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getRotation()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442c46L

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L

    div-double v14, v2, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    move-object/from16 v16, v0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v16}, Lmiui/maml/elements/ImageScreenElement;->rotateXY(DDDLmiui/maml/elements/ImageScreenElement$pair;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    iget-object v2, v2, Lmiui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v2

    float-to-double v2, v2

    add-double v32, v32, v2

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    iget-object v2, v2, Lmiui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v2

    float-to-double v2, v2

    add-double v34, v34, v2

    .line 460
    sub-double v26, v32, v39

    .line 461
    .local v26, dx:D
    sub-double v28, v34, v41

    .line 462
    .local v28, dy:D
    mul-double v2, v26, v26

    mul-double v4, v28, v28

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    .line 463
    .local v24, dm:D
    div-double v2, v26, v24

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v18

    .line 464
    .local v18, angleB:D
    const-wide/16 v2, 0x0

    cmpl-double v2, v28, v2

    if-lez v2, :cond_6

    add-double v20, v7, v18

    .line 465
    .local v20, angleC:D
    :goto_2
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v32, v24, v2

    .line 466
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v34, v24, v2

    goto/16 :goto_1

    .line 464
    .end local v20           #angleC:D
    :cond_6
    const-wide v2, 0x400921fb54442c46L

    add-double/2addr v2, v7

    sub-double v20, v2, v18

    goto :goto_2
.end method

.method private rotateXY(DDDLmiui/maml/elements/ImageScreenElement$pair;)V
    .locals 11
    .parameter "centerX"
    .parameter "centerY"
    .parameter "angle"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDD",
            "Lmiui/maml/elements/ImageScreenElement$pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p7, pr:Lmiui/maml/elements/ImageScreenElement$pair;,"Lmiui/maml/elements/ImageScreenElement$pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    mul-double v7, p1, p1

    mul-double v9, p3, p3

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 417
    .local v5, cm:D
    const-wide/16 v7, 0x0

    cmpl-double v7, v5, v7

    if-lez v7, :cond_0

    .line 418
    div-double v7, p1, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    .line 419
    .local v1, angle1:D
    const-wide v7, 0x400921fb54442c46L

    sub-double/2addr v7, v1

    sub-double v3, v7, p5

    .line 420
    .local v3, angle2:D
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    add-double/2addr v7, p1

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, p7

    iput-object v7, v0, Lmiui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    .line 421
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    sub-double v7, p3, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, p7

    iput-object v7, v0, Lmiui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    .line 426
    .end local v1           #angle1:D
    .end local v3           #angle2:D
    :goto_0
    return-void

    .line 423
    :cond_0
    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, p7

    iput-object v7, v0, Lmiui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    .line 424
    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, p7

    iput-object v7, v0, Lmiui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateBitmap()V
    .locals 4

    .prologue
    .line 619
    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 620
    iget-boolean v1, p0, Lmiui/maml/elements/ImageScreenElement;->mHasName:Z

    if-eqz v1, :cond_0

    .line 623
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mBmpSizeWidthVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getBitmapWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lmiui/maml/elements/ImageScreenElement;->descale(F)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 624
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mBmpSizeHeightVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getBitmapHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lmiui/maml/elements/ImageScreenElement;->descale(F)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 625
    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mHasBitmapVar:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4

    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 629
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mBlurExp:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_3

    .line 630
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mBlurExp:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v1}, Lmiui/maml/elements/ImageScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v1

    float-to-int v0, v1

    .line 631
    .local v0, radius:I
    if-lez v0, :cond_3

    .line 632
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 635
    :cond_1
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 638
    :cond_2
    iput v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBlurRadius:I

    .line 641
    .end local v0           #radius:I
    :cond_3
    return-void

    .line 625
    :cond_4
    const-wide/high16 v1, 0x3ff0

    goto :goto_0
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 28
    .parameter "c"

    .prologue
    .line 303
    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurRadius:I

    if-lez v4, :cond_0

    .line 304
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v7, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurRadius:I

    invoke-static {v4, v6, v7}, Lmiui/util/ImageUtils;->fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 305
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurRadius:I

    .line 306
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 309
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 310
    .local v5, bmp:Landroid/graphics/Bitmap;
    if-nez v5, :cond_2

    .line 385
    :cond_1
    :goto_0
    return-void

    .line 313
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getAlpha()I

    move-result v13

    .line 314
    .local v13, alpha:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 315
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v24

    .line 316
    .local v24, oldDensity:I
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 318
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getWidth()F

    move-result v25

    .line 319
    .local v25, width:F
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getHeight()F

    move-result v18

    .line 320
    .local v18, height:F
    invoke-super/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v15

    .line 321
    .local v15, aniWidth:F
    invoke-super/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v14

    .line 323
    .local v14, aniHeight:F
    const/4 v4, 0x0

    cmpl-float v4, v25, v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    cmpl-float v4, v18, v4

    if-eqz v4, :cond_1

    .line 326
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Lmiui/maml/elements/ImageScreenElement;->getLeft(FF)F

    move-result v4

    float-to-int v0, v4

    move/from16 v26, v0

    .line 327
    .local v26, x:I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lmiui/maml/elements/ImageScreenElement;->getTop(FF)F

    move-result v4

    float-to-int v0, v4

    move/from16 v27, v0

    .line 328
    .local v27, y:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 330
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_9

    .line 331
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    if-eqz v4, :cond_4

    .line 332
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lmiui/maml/ResourceManager;->getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;

    move-result-object v23

    .line 333
    .local v23, np:Landroid/graphics/NinePatch;
    if-eqz v23, :cond_3

    .line 334
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move/from16 v0, v26

    int-to-float v6, v0

    add-float v6, v6, v25

    float-to-int v6, v6

    move/from16 v0, v27

    int-to-float v7, v0

    add-float v7, v7, v18

    float-to-int v7, v7

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 335
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v6}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 383
    .end local v23           #np:Landroid/graphics/NinePatch;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 384
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDensity(I)V

    goto/16 :goto_0

    .line 337
    .restart local v23       #np:Landroid/graphics/NinePatch;
    :cond_3
    const-string v4, "ImageScreenElement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the image contains ninepatch chunk but couldn\'t get NinePatch object: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 341
    .end local v23           #np:Landroid/graphics/NinePatch;
    :cond_4
    const/4 v4, 0x0

    cmpl-float v4, v15, v4

    if-gtz v4, :cond_5

    const/4 v4, 0x0

    cmpl-float v4, v14, v4

    if-gtz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_7

    .line 342
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move/from16 v0, v26

    int-to-float v6, v0

    add-float v6, v6, v25

    float-to-int v6, v6

    move/from16 v0, v27

    int-to-float v7, v0

    add-float v7, v7, v18

    float-to-int v7, v7

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 343
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_6

    .line 344
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v6, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcX:I

    move-object/from16 v0, p0

    iget v7, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcY:I

    move-object/from16 v0, p0

    iget v8, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcX:I

    move-object/from16 v0, p0

    iget v9, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcW:I

    add-int/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcY:I

    move-object/from16 v0, p0

    iget v10, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcH:I

    add-int/2addr v9, v10

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 346
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v7, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 347
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/ImageScreenElement;->mMeshWidth:I

    if-lez v4, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/ImageScreenElement;->mMeshHeight:I

    if-lez v4, :cond_8

    .line 348
    move-object/from16 v0, p0

    iget v6, v0, Lmiui/maml/elements/ImageScreenElement;->mMeshWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lmiui/maml/elements/ImageScreenElement;->mMeshHeight:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/maml/elements/ImageScreenElement;->mVerts:[F

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 350
    :cond_8
    move/from16 v0, v26

    int-to-float v4, v0

    move/from16 v0, v27

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 354
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getMaxWidth()F

    move-result v22

    .line 355
    .local v22, maxWidth:F
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getMaxHeight()F

    move-result v21

    .line 356
    .local v21, maxHeight:F
    move/from16 v0, v22

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v22

    .line 357
    move/from16 v0, v21

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v21

    .line 358
    move/from16 v0, v22

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v17, v0

    .line 359
    .local v17, bufferWidth:I
    move/from16 v0, v21

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v16, v0

    .line 360
    .local v16, bufferHeight:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move/from16 v0, v17

    if-gt v0, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move/from16 v0, v16

    if-le v0, v4, :cond_b

    .line 361
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getKey()Ljava/lang/String;

    move-result-object v6

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v4, v0, v1, v6}, Lmiui/maml/ResourceManager;->getMaskBufferBitmap(IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    .line 362
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 363
    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v4, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    .line 365
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 367
    const/4 v4, 0x0

    cmpl-float v4, v15, v4

    if-gtz v4, :cond_c

    const/4 v4, 0x0

    cmpl-float v4, v14, v4

    if-gtz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_e

    .line 368
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v25

    float-to-int v8, v0

    move/from16 v0, v18

    float-to-int v9, v0

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 369
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_d

    .line 370
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v6, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcX:I

    move-object/from16 v0, p0

    iget v7, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcY:I

    move-object/from16 v0, p0

    iget v8, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcX:I

    move-object/from16 v0, p0

    iget v9, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcW:I

    add-int/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcY:I

    move-object/from16 v0, p0

    iget v10, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcH:I

    add-int/2addr v9, v10

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 372
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v7, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 377
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 378
    .local v20, mask:Lmiui/maml/elements/ImageScreenElement$Mask;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v4, v1, v2, v3}, Lmiui/maml/elements/ImageScreenElement;->renderWithMask(Landroid/graphics/Canvas;Lmiui/maml/elements/ImageScreenElement$Mask;II)V

    goto :goto_3

    .line 374
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v20           #mask:Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 381
    .restart local v19       #i$:Ljava/util/Iterator;
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move/from16 v0, v26

    int-to-float v6, v0

    move/from16 v0, v27

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method protected doTick(J)V
    .locals 8
    .parameter "currentTime"

    .prologue
    .line 489
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->doTick(J)V

    .line 490
    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->isVisible()Z

    move-result v5

    if-nez v5, :cond_0

    .line 518
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 493
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 494
    .local v3, mask:Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v3, p1, p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->doTick(J)V

    goto :goto_1

    .line 498
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #mask:Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_1
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mXfermodeNumExp:Lmiui/maml/data/Expression;

    if-eqz v5, :cond_2

    .line 499
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mXfermodeNumExp:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-direct {p0, v5}, Lmiui/maml/elements/ImageScreenElement;->getPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    .line 500
    .local v4, mode:Landroid/graphics/PorterDuff$Mode;
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v6, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 503
    .end local v4           #mode:Landroid/graphics/PorterDuff$Mode;
    :cond_2
    iget-boolean v5, p0, Lmiui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    if-eqz v5, :cond_3

    .line 504
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcX:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v5}, Lmiui/maml/elements/ImageScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcX:I

    .line 505
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcY:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v5}, Lmiui/maml/elements/ImageScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcY:I

    .line 506
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcW:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v5}, Lmiui/maml/elements/ImageScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcW:I

    .line 507
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcH:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v5}, Lmiui/maml/elements/ImageScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcH:I

    .line 510
    :cond_3
    iget v5, p0, Lmiui/maml/elements/ImageScreenElement;->mMeshWidth:I

    if-lez v5, :cond_4

    iget v5, p0, Lmiui/maml/elements/ImageScreenElement;->mMeshHeight:I

    if-lez v5, :cond_4

    .line 511
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mVertsExps:[Lmiui/maml/data/Expression;

    array-length v2, v5

    .line 512
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v2, :cond_4

    .line 513
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mVerts:[F

    iget-object v6, p0, Lmiui/maml/elements/ImageScreenElement;->mVertsExps:[Lmiui/maml/data/Expression;

    aget-object v6, v6, v0

    invoke-virtual {p0, v6}, Lmiui/maml/elements/ImageScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v6

    aput v6, v5, v0

    .line 512
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 517
    .end local v0           #i:I
    .end local v2           #length:I
    :cond_4
    invoke-direct {p0}, Lmiui/maml/elements/ImageScreenElement;->updateBitmap()V

    goto/16 :goto_0
.end method

.method public finish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 522
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->finish()V

    .line 524
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    if-eqz v2, :cond_0

    .line 525
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    invoke-virtual {v2}, Lmiui/maml/elements/BitmapProvider;->finish()V

    .line 528
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 529
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 530
    .local v1, mask:Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v1}, Lmiui/maml/elements/ImageScreenElement$Mask;->finish()V

    goto :goto_0

    .line 533
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mask:Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_1
    iput-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 534
    iput-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 535
    iput-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    .line 536
    return-void
.end method

.method protected getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 400
    :goto_0
    return-object v0

    .line 398
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/elements/BitmapProvider;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 400
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBitmapHeight()I
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBitmapWidth()I
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 292
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v0

    .line 293
    .local v0, h:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 298
    .end local v0           #h:F
    :goto_0
    return v0

    .line 295
    .restart local v0       #h:F
    :cond_0
    iget-boolean v1, p0, Lmiui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    if-eqz v1, :cond_1

    .line 296
    iget v1, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcH:I

    int-to-float v0, v1

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getBitmapHeight()I

    move-result v1

    int-to-float v0, v1

    goto :goto_0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 281
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v0

    .line 282
    .local v0, w:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 287
    .end local v0           #w:F
    :goto_0
    return v0

    .line 284
    .restart local v0       #w:F
    :cond_0
    iget-boolean v1, p0, Lmiui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    if-eqz v1, :cond_1

    .line 285
    iget v1, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcW:I

    int-to-float v0, v1

    goto :goto_0

    .line 287
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getBitmapWidth()I

    move-result v1

    int-to-float v0, v1

    goto :goto_0
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 252
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->init()V

    .line 254
    iput-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 255
    iput-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    .line 257
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 258
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 259
    .local v1, mask:Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v1}, Lmiui/maml/elements/ImageScreenElement$Mask;->init()V

    goto :goto_0

    .line 262
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mask:Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    if-eqz v2, :cond_1

    .line 263
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    .line 266
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 267
    invoke-direct {p0}, Lmiui/maml/elements/ImageScreenElement;->updateBitmap()V

    .line 269
    :cond_2
    return-void
.end method

.method protected onVisibilityChange(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 608
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    .line 609
    if-eqz p1, :cond_0

    .line 610
    invoke-direct {p0}, Lmiui/maml/elements/ImageScreenElement;->updateBitmap()V

    .line 616
    :goto_0
    return-void

    .line 612
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    if-eqz v0, :cond_1

    .line 613
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    invoke-virtual {v0}, Lmiui/maml/elements/BitmapProvider;->finish()V

    .line 614
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 540
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->pause()V

    .line 542
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 543
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 544
    .local v1, mask:Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v1}, Lmiui/maml/elements/ImageScreenElement$Mask;->pause()V

    goto :goto_0

    .line 547
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mask:Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_0
    return-void
.end method

.method protected pauseAnim(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 588
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->pauseAnim(J)V

    .line 589
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 590
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 591
    .local v1, mask:Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v1, p1, p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->pauseAnim(J)V

    goto :goto_0

    .line 594
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mask:Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_0
    return-void
.end method

.method protected playAnim(JJJZZ)V
    .locals 10
    .parameter "time"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "isLoop"
    .parameter "isDelay"

    .prologue
    .line 575
    invoke-super/range {p0 .. p8}, Lmiui/maml/elements/AnimatedScreenElement;->playAnim(JJJZZ)V

    .line 576
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 577
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ImageScreenElement$Mask;

    .local v0, mask:Lmiui/maml/elements/ImageScreenElement$Mask;
    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    .line 578
    invoke-virtual/range {v0 .. v8}, Lmiui/maml/elements/ImageScreenElement$Mask;->playAnim(JJJZZ)V

    goto :goto_0

    .line 581
    .end local v0           #mask:Lmiui/maml/elements/ImageScreenElement$Mask;
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    if-eqz v1, :cond_1

    .line 582
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    invoke-virtual {v1}, Lmiui/maml/elements/BitmapProvider;->reset()V

    .line 584
    :cond_1
    return-void
.end method

.method public reset(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 562
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->reset(J)V

    .line 563
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 564
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 565
    .local v1, mask:Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v1, p1, p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->reset(J)V

    goto :goto_0

    .line 568
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mask:Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    if-eqz v2, :cond_1

    .line 569
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    invoke-virtual {v2}, Lmiui/maml/elements/BitmapProvider;->reset()V

    .line 571
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 551
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->resume()V

    .line 553
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 554
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 555
    .local v1, mask:Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v1}, Lmiui/maml/elements/ImageScreenElement$Mask;->resume()V

    goto :goto_0

    .line 558
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mask:Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_0
    return-void
.end method

.method protected resumeAnim(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 598
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->resumeAnim(J)V

    .line 599
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 600
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 601
    .local v1, mask:Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v1, p1, p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->resumeAnim(J)V

    goto :goto_0

    .line 604
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mask:Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bmp"

    .prologue
    .line 388
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_0

    .line 389
    iput-object p1, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 390
    invoke-direct {p0}, Lmiui/maml/elements/ImageScreenElement;->updateBitmap()V

    .line 391
    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->requestUpdate()V

    .line 393
    :cond_0
    return-void
.end method
