.class Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/yellowpage/utils/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadImageRunnable"
.end annotation


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lmiui/provider/yellowpage/utils/ImageLoader;


# direct methods
.method public constructor <init>(Lmiui/provider/yellowpage/utils/ImageLoader;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter "image"

    .prologue
    .line 363
    iput-object p1, p0, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->this$0:Lmiui/provider/yellowpage/utils/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-object p2, p0, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->mImageView:Landroid/widget/ImageView;

    .line 365
    return-void
.end method

.method private notifyBindImage(Lmiui/provider/yellowpage/model/Image;)V
    .locals 3
    .parameter "image"

    .prologue
    .line 412
    iget-object v1, p0, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->this$0:Lmiui/provider/yellowpage/utils/ImageLoader;

    #getter for: Lmiui/provider/yellowpage/utils/ImageLoader;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lmiui/provider/yellowpage/utils/ImageLoader;->access$600(Lmiui/provider/yellowpage/utils/ImageLoader;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 413
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 414
    iget-object v1, p0, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->this$0:Lmiui/provider/yellowpage/utils/ImageLoader;

    #getter for: Lmiui/provider/yellowpage/utils/ImageLoader;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lmiui/provider/yellowpage/utils/ImageLoader;->access$600(Lmiui/provider/yellowpage/utils/ImageLoader;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 415
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 368
    iget-object v4, p0, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/provider/yellowpage/model/Image;

    .line 369
    .local v2, image:Lmiui/provider/yellowpage/model/Image;
    iget-object v4, p0, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->mImageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    if-nez v2, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v4, p0, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->this$0:Lmiui/provider/yellowpage/utils/ImageLoader;

    #getter for: Lmiui/provider/yellowpage/utils/ImageLoader;->mBitmapCacheLock:Ljava/lang/Byte;
    invoke-static {v4}, Lmiui/provider/yellowpage/utils/ImageLoader;->access$100(Lmiui/provider/yellowpage/utils/ImageLoader;)Ljava/lang/Byte;

    move-result-object v5

    monitor-enter v5

    .line 375
    :try_start_0
    iget-object v4, p0, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->this$0:Lmiui/provider/yellowpage/utils/ImageLoader;

    #getter for: Lmiui/provider/yellowpage/utils/ImageLoader;->mRequestingImageView:Ljava/util/Map;
    invoke-static {v4}, Lmiui/provider/yellowpage/utils/ImageLoader;->access$200(Lmiui/provider/yellowpage/utils/ImageLoader;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 376
    .local v3, imageViewList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/widget/ImageView;>;"
    if-nez v3, :cond_2

    .line 377
    new-instance v3, Ljava/util/LinkedList;

    .end local v3           #imageViewList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/widget/ImageView;>;"
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 378
    .restart local v3       #imageViewList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/widget/ImageView;>;"
    iget-object v4, p0, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->this$0:Lmiui/provider/yellowpage/utils/ImageLoader;

    #getter for: Lmiui/provider/yellowpage/utils/ImageLoader;->mRequestingImageView:Ljava/util/Map;
    invoke-static {v4}, Lmiui/provider/yellowpage/utils/ImageLoader;->access$200(Lmiui/provider/yellowpage/utils/ImageLoader;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_2
    iget-object v4, p0, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v4, p0, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->this$0:Lmiui/provider/yellowpage/utils/ImageLoader;

    #getter for: Lmiui/provider/yellowpage/utils/ImageLoader;->mBitmapCache:Landroid/util/LruCache;
    invoke-static {v4}, Lmiui/provider/yellowpage/utils/ImageLoader;->access$300(Lmiui/provider/yellowpage/utils/ImageLoader;)Landroid/util/LruCache;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;

    .line 384
    .local v1, holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    if-eqz v1, :cond_4

    .line 385
    iget-object v4, v1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mState:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    sget-object v6, Lmiui/provider/yellowpage/utils/ImageLoader$State;->LOADING:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    if-ne v4, v6, :cond_3

    .line 386
    monitor-exit v5

    goto :goto_0

    .line 399
    .end local v1           #holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    .end local v3           #imageViewList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/widget/ImageView;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 387
    .restart local v1       #holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    .restart local v3       #imageViewList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/widget/ImageView;>;"
    :cond_3
    :try_start_1
    iget-object v4, v1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mState:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    sget-object v6, Lmiui/provider/yellowpage/utils/ImageLoader$State;->LOADED:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    if-ne v4, v6, :cond_4

    .line 388
    invoke-direct {p0, v2}, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->notifyBindImage(Lmiui/provider/yellowpage/model/Image;)V

    .line 389
    monitor-exit v5

    goto :goto_0

    .line 394
    :cond_4
    if-nez v1, :cond_5

    .line 395
    new-instance v1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;

    .end local v1           #holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;-><init>(Lmiui/provider/yellowpage/utils/ImageLoader$1;)V

    .line 397
    .restart local v1       #holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    :cond_5
    sget-object v4, Lmiui/provider/yellowpage/utils/ImageLoader$State;->LOADING:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    iput-object v4, v1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mState:Lmiui/provider/yellowpage/utils/ImageLoader$State;

    .line 398
    iget-object v4, p0, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->this$0:Lmiui/provider/yellowpage/utils/ImageLoader;

    #getter for: Lmiui/provider/yellowpage/utils/ImageLoader;->mBitmapCache:Landroid/util/LruCache;
    invoke-static {v4}, Lmiui/provider/yellowpage/utils/ImageLoader;->access$300(Lmiui/provider/yellowpage/utils/ImageLoader;)Landroid/util/LruCache;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    iget-object v4, p0, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->this$0:Lmiui/provider/yellowpage/utils/ImageLoader;

    const/4 v5, 0x1

    #calls: Lmiui/provider/yellowpage/utils/ImageLoader;->loadImage(Lmiui/provider/yellowpage/model/Image;Z)[B
    invoke-static {v4, v2, v5}, Lmiui/provider/yellowpage/utils/ImageLoader;->access$400(Lmiui/provider/yellowpage/utils/ImageLoader;Lmiui/provider/yellowpage/model/Image;Z)[B

    move-result-object v0

    .line 403
    .local v0, bitmapData:[B
    iget-object v4, p0, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->this$0:Lmiui/provider/yellowpage/utils/ImageLoader;

    #calls: Lmiui/provider/yellowpage/utils/ImageLoader;->cacheBitmap(Lmiui/provider/yellowpage/model/Image;[B)V
    invoke-static {v4, v2, v0}, Lmiui/provider/yellowpage/utils/ImageLoader;->access$500(Lmiui/provider/yellowpage/utils/ImageLoader;Lmiui/provider/yellowpage/model/Image;[B)V

    .line 406
    if-eqz v0, :cond_0

    .line 407
    invoke-direct {p0, v2}, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->notifyBindImage(Lmiui/provider/yellowpage/model/Image;)V

    goto :goto_0
.end method
