.class public Lmiui/provider/yellowpage/utils/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/yellowpage/utils/ImageLoader$1;,
        Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;,
        Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;,
        Lmiui/provider/yellowpage/utils/ImageLoader$State;
    }
.end annotation


# static fields
.field private static final BITMAP_CACHE_SIZE:I = 0xa00000

.field private static final MESSAGE_REQUEST_LOADED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImageLoader"

.field private static final THREAD_POOL_COUNT:I = 0x6

.field private static sLoader:Lmiui/provider/yellowpage/utils/ImageLoader;


# instance fields
.field private final mBitmapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Lmiui/provider/yellowpage/model/Image;",
            "Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapCacheLock:Ljava/lang/Byte;

.field private mContext:Landroid/content/Context;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mLoadingRequest:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Lmiui/provider/yellowpage/model/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mMainThreadHandler:Landroid/os/Handler;

.field private volatile mPauseLoading:Z

.field private final mPendingRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestingImageView:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lmiui/provider/yellowpage/model/Image;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/widget/ImageView;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Byte;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    iput-object v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mBitmapCacheLock:Ljava/lang/Byte;

    .line 86
    new-instance v0, Landroid/util/LruCache;

    const/high16 v1, 0xa0

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    .line 88
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mPendingRequests:Ljava/util/Set;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mLoadingRequest:Ljava/util/Map;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mRequestingImageView:Ljava/util/Map;

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mMainThreadHandler:Landroid/os/Handler;

    .line 92
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 93
    iput-object p1, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mContext:Landroid/content/Context;

    .line 94
    return-void
.end method

.method static synthetic access$100(Lmiui/provider/yellowpage/utils/ImageLoader;)Ljava/lang/Byte;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mBitmapCacheLock:Ljava/lang/Byte;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/provider/yellowpage/utils/ImageLoader;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mRequestingImageView:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/provider/yellowpage/utils/ImageLoader;)Landroid/util/LruCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/provider/yellowpage/utils/ImageLoader;Lmiui/provider/yellowpage/model/Image;Z)[B
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lmiui/provider/yellowpage/utils/ImageLoader;->loadImage(Lmiui/provider/yellowpage/model/Image;Z)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lmiui/provider/yellowpage/utils/ImageLoader;Lmiui/provider/yellowpage/model/Image;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lmiui/provider/yellowpage/utils/ImageLoader;->cacheBitmap(Lmiui/provider/yellowpage/model/Image;[B)V

    return-void
.end method

.method static synthetic access$600(Lmiui/provider/yellowpage/utils/ImageLoader;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bindCachedImage(Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image;)Lmiui/provider/yellowpage/utils/ImageLoader$State;
    .locals 5
    .parameter "view"
    .parameter "image"

    .prologue
    .line 183
    iget-object v3, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mBitmapCacheLock:Ljava/lang/Byte;

    monitor-enter v3

    .line 184
    const/4 v1, 0x0

    .line 185
    .local v1, holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    :try_start_0
    iget-object v2, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v2, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;

    move-object v1, v0

    .line 186
    if-eqz v1, :cond_1

    iget-object v2, v1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mState:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    sget-object v4, Lmiui/provider/yellowpage/utils/ImageLoader$State;->LOADED:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    if-ne v2, v4, :cond_1

    .line 187
    iget-object v2, v1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 188
    invoke-direct {p0, v1}, Lmiui/provider/yellowpage/utils/ImageLoader;->inflateBitmap(Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;)V

    .line 191
    :cond_0
    iget-object v2, v1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v2, p2}, Lmiui/provider/yellowpage/utils/ImageLoader;->bindImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lmiui/provider/yellowpage/model/Image;)V

    .line 192
    sget-object v2, Lmiui/provider/yellowpage/utils/ImageLoader$State;->LOADED:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    monitor-exit v3

    .line 197
    :goto_0
    return-object v2

    .line 193
    :cond_1
    if-eqz v1, :cond_2

    .line 194
    iget-object v2, v1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mState:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    monitor-exit v3

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    sget-object v2, Lmiui/provider/yellowpage/utils/ImageLoader$State;->NEEDED:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    goto :goto_0
.end method

.method private bindDefaultImage(Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image;Landroid/graphics/Bitmap;I)V
    .locals 1
    .parameter "view"
    .parameter "image"
    .parameter "defaultBitmap"
    .parameter "defaultResId"

    .prologue
    .line 426
    if-eqz p3, :cond_0

    .line 427
    invoke-virtual {p2, p3}, Lmiui/provider/yellowpage/model/Image;->proccessImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 434
    :goto_0
    return-void

    .line 428
    :cond_0
    if-eqz p4, :cond_1

    .line 429
    iget-object v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmiui/provider/yellowpage/model/Image;->proccessImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 432
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private bindImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lmiui/provider/yellowpage/model/Image;)V
    .locals 1
    .parameter "view"
    .parameter "bitmap"
    .parameter "image"

    .prologue
    .line 419
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 420
    invoke-virtual {p3, p2}, Lmiui/provider/yellowpage/model/Image;->proccessImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 422
    :cond_0
    return-void
.end method

.method private cacheBitmap(Lmiui/provider/yellowpage/model/Image;[B)V
    .locals 5
    .parameter "image"
    .parameter "bitmapData"

    .prologue
    .line 201
    iget-object v2, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mBitmapCacheLock:Ljava/lang/Byte;

    monitor-enter v2

    .line 202
    :try_start_0
    iget-object v1, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;

    .line 203
    .local v0, holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    if-eqz v0, :cond_1

    .line 204
    if-eqz p2, :cond_0

    .line 205
    sget-object v1, Lmiui/provider/yellowpage/utils/ImageLoader$State;->LOADED:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    iput-object v1, v0, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mState:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    .line 206
    iput-object p2, v0, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mBytes:[B

    .line 207
    invoke-direct {p0, v0}, Lmiui/provider/yellowpage/utils/ImageLoader;->inflateBitmap(Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;)V

    .line 223
    :goto_0
    monitor-exit v2

    .line 224
    return-void

    .line 209
    :cond_0
    sget-object v1, Lmiui/provider/yellowpage/utils/ImageLoader$State;->NEEDED:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    iput-object v1, v0, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mState:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    .line 210
    const-string v1, "ImageLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadImageRunnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lmiui/provider/yellowpage/model/Image;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " load error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lmiui/provider/yellowpage/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    .end local v0           #holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 213
    .restart local v0       #holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    :cond_1
    :try_start_1
    new-instance v0, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;

    .end local v0           #holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;-><init>(Lmiui/provider/yellowpage/utils/ImageLoader$1;)V

    .line 214
    .restart local v0       #holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    if-eqz p2, :cond_2

    .line 215
    sget-object v1, Lmiui/provider/yellowpage/utils/ImageLoader$State;->LOADED:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    iput-object v1, v0, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mState:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    .line 216
    iput-object p2, v0, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mBytes:[B

    .line 217
    invoke-direct {p0, v0}, Lmiui/provider/yellowpage/utils/ImageLoader;->inflateBitmap(Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;)V

    goto :goto_0

    .line 219
    :cond_2
    sget-object v1, Lmiui/provider/yellowpage/utils/ImageLoader$State;->NEEDED:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    iput-object v1, v0, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mState:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    .line 220
    const-string v1, "ImageLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadImageRunnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lmiui/provider/yellowpage/model/Image;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " load error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lmiui/provider/yellowpage/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7
    .parameter "options"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    .line 266
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 267
    .local v0, height:I
    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 268
    .local v3, width:I
    const/4 v2, 0x1

    .line 270
    .local v2, inSampleSize:I
    if-gt v0, p3, :cond_0

    if-le v3, p2, :cond_1

    .line 274
    :cond_0
    int-to-float v5, v0

    int-to-float v6, p3

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 275
    .local v1, heightRatio:I
    int-to-float v5, v3

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 281
    .local v4, widthRatio:I
    if-ge v1, v4, :cond_2

    move v2, v1

    .line 284
    .end local v1           #heightRatio:I
    .end local v4           #widthRatio:I
    :cond_1
    :goto_0
    return v2

    .restart local v1       #heightRatio:I
    .restart local v4       #widthRatio:I
    :cond_2
    move v2, v4

    .line 281
    goto :goto_0
.end method

.method private decodeBitmap([B)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "bytes"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 244
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 246
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 247
    .local v1, ops:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 248
    array-length v2, p1

    invoke-static {p1, v4, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 251
    iget-object v2, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lmiui/provider/yellowpage/utils/Device;->getDisplayWidth(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lmiui/provider/yellowpage/utils/Device;->getDisplayHeight(Landroid/content/Context;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lmiui/provider/yellowpage/utils/ImageLoader;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 254
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 255
    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 256
    array-length v2, p1

    invoke-static {p1, v4, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 260
    .end local v1           #ops:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lmiui/provider/yellowpage/utils/ImageLoader;
    .locals 2
    .parameter "context"

    .prologue
    .line 79
    const-class v1, Lmiui/provider/yellowpage/utils/ImageLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lmiui/provider/yellowpage/utils/ImageLoader;->sLoader:Lmiui/provider/yellowpage/utils/ImageLoader;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lmiui/provider/yellowpage/utils/ImageLoader;

    invoke-direct {v0, p0}, Lmiui/provider/yellowpage/utils/ImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmiui/provider/yellowpage/utils/ImageLoader;->sLoader:Lmiui/provider/yellowpage/utils/ImageLoader;

    .line 82
    :cond_0
    sget-object v0, Lmiui/provider/yellowpage/utils/ImageLoader;->sLoader:Lmiui/provider/yellowpage/utils/ImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private inflateBitmap(Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;)V
    .locals 5
    .parameter "holder"

    .prologue
    const/4 v4, 0x0

    .line 228
    :try_start_0
    iget-object v2, p1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mBytes:[B

    if-eqz v2, :cond_1

    .line 229
    iget-object v2, p1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mBytes:[B

    invoke-direct {p0, v2}, Lmiui/provider/yellowpage/utils/ImageLoader;->decodeBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 230
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    iget-object v2, p1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;

    if-nez v2, :cond_0

    .line 238
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    :goto_1
    iput-object v2, p1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;

    .line 241
    :cond_0
    return-void

    .line 232
    :cond_1
    :try_start_1
    const-string v2, "ImageLoader"

    const-string v3, "The holder\'s bytes should not be null"

    invoke-static {v2, v3}, Lmiui/provider/yellowpage/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v1

    .line 235
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 237
    iget-object v2, p1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;

    if-nez v2, :cond_0

    .line 238
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 237
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v2

    iget-object v3, p1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;

    if-nez v3, :cond_2

    .line 238
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;

    .line 237
    :cond_2
    throw v2
.end method

.method private loadCachedImageBytes(Lmiui/provider/yellowpage/model/Image;)[B
    .locals 5
    .parameter "image"

    .prologue
    .line 163
    iget-object v3, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mBitmapCacheLock:Ljava/lang/Byte;

    monitor-enter v3

    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    :try_start_0
    iget-object v2, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;

    move-object v1, v0

    .line 166
    if-eqz v1, :cond_0

    iget-object v2, v1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mState:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    sget-object v4, Lmiui/provider/yellowpage/utils/ImageLoader$State;->LOADED:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    if-ne v2, v4, :cond_0

    .line 167
    iget-object v2, v1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mBytes:[B

    monitor-exit v3

    .line 169
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private loadImage(Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image;Landroid/graphics/Bitmap;I)V
    .locals 4
    .parameter "view"
    .parameter "image"
    .parameter "defaultBitmap"
    .parameter "defaultImageRes"

    .prologue
    .line 112
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lmiui/provider/yellowpage/model/Image;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    invoke-direct {p0, p1, p2}, Lmiui/provider/yellowpage/utils/ImageLoader;->bindCachedImage(Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image;)Lmiui/provider/yellowpage/utils/ImageLoader$State;

    move-result-object v0

    .line 114
    .local v0, loadState:Lmiui/provider/yellowpage/utils/ImageLoader$State;
    sget-object v1, Lmiui/provider/yellowpage/utils/ImageLoader$State;->LOADED:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    if-ne v0, v1, :cond_1

    .line 115
    iget-object v1, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 116
    iget-object v1, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mLoadingRequest:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .end local v0           #loadState:Lmiui/provider/yellowpage/utils/ImageLoader$State;
    :cond_0
    :goto_0
    return-void

    .line 121
    .restart local v0       #loadState:Lmiui/provider/yellowpage/utils/ImageLoader$State;
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/provider/yellowpage/utils/ImageLoader;->bindDefaultImage(Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image;Landroid/graphics/Bitmap;I)V

    .line 124
    sget-object v1, Lmiui/provider/yellowpage/utils/ImageLoader$State;->LOADED:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    if-eq v0, v1, :cond_0

    .line 125
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 126
    iget-object v1, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-direct {p0, p1}, Lmiui/provider/yellowpage/utils/ImageLoader;->requestLoading(Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    .end local v0           #loadState:Lmiui/provider/yellowpage/utils/ImageLoader$State;
    :cond_2
    const-string v1, "ImageLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadImage: invalid image : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lmiui/provider/yellowpage/model/Image;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/provider/yellowpage/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 134
    iget-object v1, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mLoadingRequest:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/provider/yellowpage/utils/ImageLoader;->bindDefaultImage(Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image;Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method private loadImage(Lmiui/provider/yellowpage/model/Image;Z)[B
    .locals 15
    .parameter "image"
    .parameter "online"

    .prologue
    .line 437
    invoke-virtual/range {p1 .. p1}, Lmiui/provider/yellowpage/model/Image;->getUrl()Ljava/lang/String;

    move-result-object v10

    .line 438
    .local v10, url:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 439
    const/4 v3, 0x0

    .line 522
    :cond_0
    :goto_0
    return-object v3

    .line 442
    :cond_1
    const/4 v0, 0x0

    .line 444
    .local v0, afd:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    iget-object v11, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lmiui/provider/yellowpage/YellowPageContract$ImageLookup;->CONTENT_URI_IMAGE:Landroid/net/Uri;

    invoke-virtual/range {p1 .. p1}, Lmiui/provider/yellowpage/model/Image;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const-string v13, "w"

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 452
    const/4 v8, 0x0

    .line 453
    .local v8, os:Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 454
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 457
    .local v5, is:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 458
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .local v2, bos:Ljava/io/ByteArrayOutputStream;
    :try_start_2
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_c

    if-eqz p2, :cond_c

    .line 459
    new-instance v9, Lmiui/provider/yellowpage/request/StreamRequest;

    iget-object v11, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mContext:Landroid/content/Context;

    invoke-direct {v9, v11, v10}, Lmiui/provider/yellowpage/request/StreamRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 460
    .local v9, rs:Lmiui/provider/yellowpage/request/StreamRequest;
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lmiui/provider/yellowpage/request/StreamRequest;->setDecryptDownloadData(Z)Lmiui/provider/yellowpage/request/Request;

    .line 461
    invoke-virtual {v9, v2}, Lmiui/provider/yellowpage/request/StreamRequest;->requestStream(Ljava/io/OutputStream;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1c

    move-result v11

    if-eqz v11, :cond_4

    .line 462
    const/4 v3, 0x0

    .line 498
    if-eqz v8, :cond_2

    .line 500
    :try_start_3
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_13

    .line 506
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 508
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_14

    .line 514
    :cond_3
    :goto_2
    if-eqz v5, :cond_0

    .line 516
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 517
    :catch_0
    move-exception v4

    .line 518
    .end local v9           #rs:Lmiui/provider/yellowpage/request/StreamRequest;
    .local v4, e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 446
    .end local v2           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #is:Ljava/io/FileInputStream;
    .end local v8           #os:Ljava/io/OutputStream;
    :catch_1
    move-exception v4

    .line 447
    .local v4, e:Ljava/io/FileNotFoundException;
    const-string v11, "ImageLoader"

    const-string v12, "The yellowpage provider\'s image can not be writted now"

    invoke-static {v11, v12}, Lmiui/provider/yellowpage/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 449
    const/4 v3, 0x0

    goto :goto_0

    .line 465
    .end local v4           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v8       #os:Ljava/io/OutputStream;
    .restart local v9       #rs:Lmiui/provider/yellowpage/request/StreamRequest;
    :cond_4
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 466
    .local v3, buffer:[B
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 467
    .local v7, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v11, 0x1

    iput-boolean v11, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 468
    const/4 v11, 0x0

    array-length v12, v3

    invoke-static {v3, v11, v12, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 469
    iget-object v11, v7, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, v7, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v12, "image"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 470
    :cond_5
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid mime type ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v7, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1c

    .line 491
    .end local v3           #buffer:[B
    .end local v7           #opt:Landroid/graphics/BitmapFactory$Options;
    .end local v9           #rs:Lmiui/provider/yellowpage/request/StreamRequest;
    :catch_2
    move-exception v4

    move-object v1, v2

    .line 492
    .end local v2           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #e:Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 498
    if-eqz v8, :cond_6

    .line 500
    :try_start_8
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c

    .line 506
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :cond_6
    :goto_5
    if-eqz v1, :cond_7

    .line 508
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d

    .line 514
    :cond_7
    :goto_6
    if-eqz v5, :cond_8

    .line 516
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e

    .line 522
    :cond_8
    :goto_7
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 473
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #buffer:[B
    .restart local v7       #opt:Landroid/graphics/BitmapFactory$Options;
    .restart local v9       #rs:Lmiui/provider/yellowpage/request/StreamRequest;
    :cond_9
    if-eqz v3, :cond_12

    :try_start_b
    array-length v11, v3

    if-lez v11, :cond_12

    .line 474
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;

    move-result-object v8

    .line 475
    invoke-virtual {v8, v3}, Ljava/io/OutputStream;->write([B)V

    .line 476
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1c

    .line 498
    if-eqz v8, :cond_a

    .line 500
    :try_start_c
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_15

    .line 506
    :cond_a
    :goto_8
    if-eqz v2, :cond_b

    .line 508
    :try_start_d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_16

    .line 514
    :cond_b
    :goto_9
    if-eqz v5, :cond_0

    .line 516
    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_0

    .line 517
    :catch_3
    move-exception v4

    goto/16 :goto_3

    .line 479
    .end local v3           #buffer:[B
    .end local v7           #opt:Landroid/graphics/BitmapFactory$Options;
    .end local v9           #rs:Lmiui/provider/yellowpage/request/StreamRequest;
    :cond_c
    :try_start_f
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_12

    .line 480
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v5

    .line 481
    const/16 v11, 0x400

    new-array v3, v11, [B

    .line 482
    .restart local v3       #buffer:[B
    const/4 v6, 0x0

    .line 483
    .local v6, len:I
    :goto_a
    invoke-virtual {v5, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v11, -0x1

    if-eq v6, v11, :cond_f

    .line 484
    const/4 v11, 0x0

    invoke-virtual {v2, v3, v11, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1c

    goto :goto_a

    .line 493
    .end local v3           #buffer:[B
    .end local v6           #len:I
    :catch_4
    move-exception v4

    move-object v1, v2

    .line 494
    .end local v2           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    .local v4, e:Ljava/io/IOException;
    :goto_b
    :try_start_10
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 498
    if-eqz v8, :cond_d

    .line 500
    :try_start_11
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f

    .line 506
    :cond_d
    :goto_c
    if-eqz v1, :cond_e

    .line 508
    :try_start_12
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_10

    .line 514
    :cond_e
    :goto_d
    if-eqz v5, :cond_8

    .line 516
    :try_start_13
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_5

    goto :goto_7

    .line 517
    :catch_5
    move-exception v4

    .line 518
    :goto_e
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 487
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #e:Ljava/io/IOException;
    .restart local v2       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #buffer:[B
    .restart local v6       #len:I
    :cond_f
    :try_start_14
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v11

    if-lez v11, :cond_12

    .line 488
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_4
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1c

    move-result-object v3

    .line 498
    .end local v3           #buffer:[B
    if-eqz v8, :cond_10

    .line 500
    :try_start_15
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1a

    .line 506
    :cond_10
    :goto_f
    if-eqz v2, :cond_11

    .line 508
    :try_start_16
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1b

    .line 514
    :cond_11
    :goto_10
    if-eqz v5, :cond_0

    .line 516
    :try_start_17
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_6

    goto/16 :goto_0

    .line 517
    :catch_6
    move-exception v4

    goto/16 :goto_3

    .line 498
    .end local v6           #len:I
    :cond_12
    if-eqz v8, :cond_13

    .line 500
    :try_start_18
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_17

    .line 506
    :cond_13
    :goto_11
    if-eqz v2, :cond_14

    .line 508
    :try_start_19
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_18

    .line 514
    :cond_14
    :goto_12
    if-eqz v5, :cond_15

    .line 516
    :try_start_1a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_19

    :cond_15
    :goto_13
    move-object v1, v2

    .line 521
    .end local v2           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_7

    .line 495
    :catch_7
    move-exception v4

    .line 496
    .local v4, e:Ljava/lang/Exception;
    :goto_14
    :try_start_1b
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 498
    if-eqz v8, :cond_16

    .line 500
    :try_start_1c
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_11

    .line 506
    .end local v4           #e:Ljava/lang/Exception;
    :cond_16
    :goto_15
    if-eqz v1, :cond_17

    .line 508
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_12

    .line 514
    :cond_17
    :goto_16
    if-eqz v5, :cond_8

    .line 516
    :try_start_1e
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_8

    goto/16 :goto_7

    .line 517
    :catch_8
    move-exception v4

    goto :goto_e

    .line 498
    :catchall_0
    move-exception v11

    :goto_17
    if-eqz v8, :cond_18

    .line 500
    :try_start_1f
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_9

    .line 506
    :cond_18
    :goto_18
    if-eqz v1, :cond_19

    .line 508
    :try_start_20
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_a

    .line 514
    :cond_19
    :goto_19
    if-eqz v5, :cond_1a

    .line 516
    :try_start_21
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_b

    .line 498
    :cond_1a
    :goto_1a
    throw v11

    .line 501
    :catch_9
    move-exception v4

    .line 502
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    .line 509
    .end local v4           #e:Ljava/io/IOException;
    :catch_a
    move-exception v4

    .line 510
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    .line 517
    .end local v4           #e:Ljava/io/IOException;
    :catch_b
    move-exception v4

    .line 518
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a

    .line 501
    .local v4, e:Ljava/io/FileNotFoundException;
    :catch_c
    move-exception v4

    .line 502
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 509
    .end local v4           #e:Ljava/io/IOException;
    :catch_d
    move-exception v4

    .line 510
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 517
    .end local v4           #e:Ljava/io/IOException;
    :catch_e
    move-exception v4

    goto :goto_e

    .line 501
    .restart local v4       #e:Ljava/io/IOException;
    :catch_f
    move-exception v4

    .line 502
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_c

    .line 509
    :catch_10
    move-exception v4

    .line 510
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_d

    .line 501
    .local v4, e:Ljava/lang/Exception;
    :catch_11
    move-exception v4

    .line 502
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 509
    .end local v4           #e:Ljava/io/IOException;
    :catch_12
    move-exception v4

    .line 510
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16

    .line 501
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #e:Ljava/io/IOException;
    .restart local v2       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v9       #rs:Lmiui/provider/yellowpage/request/StreamRequest;
    :catch_13
    move-exception v4

    .line 502
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 509
    .end local v4           #e:Ljava/io/IOException;
    :catch_14
    move-exception v4

    .line 510
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 501
    .end local v4           #e:Ljava/io/IOException;
    .restart local v3       #buffer:[B
    .restart local v7       #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_15
    move-exception v4

    .line 502
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 509
    .end local v4           #e:Ljava/io/IOException;
    :catch_16
    move-exception v4

    .line 510
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 501
    .end local v3           #buffer:[B
    .end local v4           #e:Ljava/io/IOException;
    .end local v7           #opt:Landroid/graphics/BitmapFactory$Options;
    .end local v9           #rs:Lmiui/provider/yellowpage/request/StreamRequest;
    :catch_17
    move-exception v4

    .line 502
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_11

    .line 509
    .end local v4           #e:Ljava/io/IOException;
    :catch_18
    move-exception v4

    .line 510
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_12

    .line 517
    .end local v4           #e:Ljava/io/IOException;
    :catch_19
    move-exception v4

    .line 518
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_13

    .line 501
    .end local v4           #e:Ljava/io/IOException;
    .restart local v6       #len:I
    :catch_1a
    move-exception v4

    .line 502
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_f

    .line 509
    .end local v4           #e:Ljava/io/IOException;
    :catch_1b
    move-exception v4

    .line 510
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_10

    .line 498
    .end local v4           #e:Ljava/io/IOException;
    .end local v6           #len:I
    :catchall_1
    move-exception v11

    move-object v1, v2

    .end local v2           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    goto :goto_17

    .line 495
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #bos:Ljava/io/ByteArrayOutputStream;
    :catch_1c
    move-exception v4

    move-object v1, v2

    .end local v2           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_14

    .line 493
    :catch_1d
    move-exception v4

    goto/16 :goto_b

    .line 491
    :catch_1e
    move-exception v4

    goto/16 :goto_4
.end method

.method private onRequestLoaded(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 327
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v5, :cond_0

    .line 358
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lmiui/provider/yellowpage/model/Image;

    .line 332
    .local v2, image:Lmiui/provider/yellowpage/model/Image;
    iget-object v6, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mBitmapCacheLock:Ljava/lang/Byte;

    monitor-enter v6

    .line 333
    :try_start_0
    iget-object v5, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mRequestingImageView:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 334
    .local v3, imageViewList:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ImageView;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 336
    .local v4, view:Landroid/widget/ImageView;
    if-eqz v2, :cond_1

    iget-object v5, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mLoadingRequest:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Lmiui/provider/yellowpage/model/Image;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 339
    iget-object v5, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mLoadingRequest:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v5, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v5, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;

    .line 342
    .local v0, holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    if-eqz v0, :cond_3

    iget-object v5, v0, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mState:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    sget-object v7, Lmiui/provider/yellowpage/utils/ImageLoader$State;->LOADED:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    if-ne v5, v7, :cond_3

    .line 343
    iget-object v5, v0, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 344
    invoke-direct {p0, v0}, Lmiui/provider/yellowpage/utils/ImageLoader;->inflateBitmap(Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;)V

    .line 346
    :cond_2
    iget-object v5, v0, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-direct {p0, v4, v5, v2}, Lmiui/provider/yellowpage/utils/ImageLoader;->bindImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lmiui/provider/yellowpage/model/Image;)V

    .line 347
    const-string v5, "ImageLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage:ImageView with image "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " binded"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 357
    .end local v0           #holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #imageViewList:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ImageView;>;"
    .end local v4           #view:Landroid/widget/ImageView;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 351
    .restart local v0       #holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #imageViewList:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ImageView;>;"
    .restart local v4       #view:Landroid/widget/ImageView;
    :cond_3
    :try_start_1
    const-string v5, "ImageLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage:image "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " was garbaged"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-direct {p0, v4}, Lmiui/provider/yellowpage/utils/ImageLoader;->requestLoading(Landroid/widget/ImageView;)Z

    goto/16 :goto_1

    .line 356
    .end local v0           #holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    .end local v4           #view:Landroid/widget/ImageView;
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 357
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private requestLoading(Landroid/widget/ImageView;)Z
    .locals 2
    .parameter "image"

    .prologue
    .line 288
    iget-boolean v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mPauseLoading:Z

    if-nez v0, :cond_0

    .line 289
    iget-object v1, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mLoadingRequest:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/provider/yellowpage/model/Image;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;

    invoke-direct {v1, p0, p1}, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;-><init>(Lmiui/provider/yellowpage/utils/ImageLoader;Landroid/widget/ImageView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 291
    const/4 v0, 0x1

    .line 293
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelRequest(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "image"

    .prologue
    .line 297
    iget-object v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 298
    iget-object v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mLoadingRequest:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 316
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 323
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 318
    :pswitch_0
    invoke-direct {p0, p1}, Lmiui/provider/yellowpage/utils/ImageLoader;->onRequestLoaded(Landroid/os/Message;)V

    goto :goto_0

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public loadImage(Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image;I)V
    .locals 1
    .parameter "view"
    .parameter "image"
    .parameter "defaultImageRes"

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lmiui/provider/yellowpage/utils/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image;Landroid/graphics/Bitmap;I)V

    .line 105
    return-void
.end method

.method public loadImage(Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "view"
    .parameter "image"
    .parameter "defaultBitmap"

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lmiui/provider/yellowpage/utils/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image;Landroid/graphics/Bitmap;I)V

    .line 109
    return-void
.end method

.method public loadImageBitmap(Lmiui/provider/yellowpage/model/Image;Z)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "image"
    .parameter "online"

    .prologue
    .line 143
    invoke-virtual {p0, p1, p2}, Lmiui/provider/yellowpage/utils/ImageLoader;->loadImageBytes(Lmiui/provider/yellowpage/model/Image;Z)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/provider/yellowpage/utils/ImageLoader;->decodeBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public loadImageBytes(Lmiui/provider/yellowpage/model/Image;Z)[B
    .locals 2
    .parameter "image"
    .parameter "online"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lmiui/provider/yellowpage/utils/ImageLoader;->loadCachedImageBytes(Lmiui/provider/yellowpage/model/Image;)[B

    move-result-object v0

    .line 151
    .local v0, bytes:[B
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 159
    .end local v0           #bytes:[B
    .local v1, bytes:[B
    :goto_0
    return-object v1

    .line 155
    .end local v1           #bytes:[B
    .restart local v0       #bytes:[B
    :cond_0
    invoke-direct {p0, p1, p2}, Lmiui/provider/yellowpage/utils/ImageLoader;->loadImage(Lmiui/provider/yellowpage/model/Image;Z)[B

    move-result-object v0

    .line 156
    if-eqz v0, :cond_1

    .line 157
    invoke-direct {p0, p1, v0}, Lmiui/provider/yellowpage/utils/ImageLoader;->cacheBitmap(Lmiui/provider/yellowpage/model/Image;[B)V

    :cond_1
    move-object v1, v0

    .line 159
    .end local v0           #bytes:[B
    .restart local v1       #bytes:[B
    goto :goto_0
.end method

.method public pauseLoading()V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mPauseLoading:Z

    .line 303
    return-void
.end method

.method public resumeLoading()V
    .locals 2

    .prologue
    .line 306
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mPauseLoading:Z

    .line 307
    iget-object v1, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 308
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/widget/ImageView;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lmiui/provider/yellowpage/utils/ImageLoader;->requestLoading(Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 313
    :cond_1
    return-void
.end method
