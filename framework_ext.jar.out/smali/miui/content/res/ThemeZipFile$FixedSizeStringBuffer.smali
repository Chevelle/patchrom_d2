.class Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;
.super Ljava/lang/Object;
.source "ThemeZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/res/ThemeZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixedSizeStringBuffer"
.end annotation


# static fields
.field private static sBufferPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mBuf:[C

.field private mLen:I

.field private mTemp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 276
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    const/4 v0, 0x0

    iput v0, p0, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->mLen:I

    .line 304
    new-array v0, p1, [C

    iput-object v0, p0, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->mBuf:[C

    .line 305
    return-void
.end method

.method public static freeBuffer(Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;)V
    .locals 3
    .parameter "buffer"

    .prologue
    .line 298
    sget-object v1, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    monitor-enter v1

    .line 299
    :try_start_0
    sget-object v0, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 300
    monitor-exit v1

    .line 301
    return-void

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getBuffer()Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;
    .locals 4

    .prologue
    .line 283
    const/4 v1, 0x0

    .line 284
    .local v1, ret:Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;
    sget-object v3, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    monitor-enter v3

    .line 285
    :try_start_0
    sget-object v2, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 286
    sget-object v2, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 287
    .local v0, cache:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;

    move-object v1, v2

    .line 289
    .end local v0           #cache:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;>;"
    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    if-nez v1, :cond_1

    .line 291
    new-instance v1, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;

    .end local v1           #ret:Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;
    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;-><init>(I)V

    .line 293
    .restart local v1       #ret:Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->setLength(I)V

    .line 294
    return-object v1

    .line 287
    .restart local v0       #cache:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 289
    .end local v0           #cache:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 326
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->mTemp:I

    .line 327
    const/4 v0, 0x0

    iget v1, p0, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->mTemp:I

    iget-object v2, p0, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->mBuf:[C

    iget v3, p0, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->mLen:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 328
    iget v0, p0, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->mLen:I

    iget v1, p0, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->mTemp:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->mLen:I

    .line 329
    return-void
.end method

.method public append(Ljava/lang/String;II)V
    .locals 2
    .parameter "path"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 332
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->mBuf:[C

    iget v1, p0, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->mLen:I

    invoke-virtual {p1, p2, p3, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 333
    iget v0, p0, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->mLen:I

    sub-int v1, p3, p2

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->mLen:I

    .line 334
    return-void
.end method

.method public assign(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 316
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->mLen:I

    .line 317
    iget v0, p0, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->mLen:I

    iget-object v1, p0, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->mBuf:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 318
    return-void
.end method

.method public assign(Ljava/lang/String;I)V
    .locals 2
    .parameter "path"
    .parameter "end"

    .prologue
    const/4 v1, 0x0

    .line 321
    iput p2, p0, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->mLen:I

    .line 322
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->mBuf:[C

    invoke-virtual {p1, v1, p2, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 323
    return-void
.end method

.method public move(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 312
    iget v0, p0, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->mLen:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->mLen:I

    .line 313
    return-void
.end method

.method public setLength(I)V
    .locals 0
    .parameter "length"

    .prologue
    .line 308
    iput p1, p0, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->mLen:I

    .line 309
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 337
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->mBuf:[C

    const/4 v1, 0x0

    iget v2, p0, Lmiui/content/res/ThemeZipFile$FixedSizeStringBuffer;->mLen:I

    invoke-static {v0, v1, v2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
