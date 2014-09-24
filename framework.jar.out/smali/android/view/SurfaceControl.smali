.class public Landroid/view/SurfaceControl;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    }
.end annotation


# static fields
.field public static final BUILT_IN_DISPLAY_ID_HDMI:I = 0x1

.field public static final BUILT_IN_DISPLAY_ID_MAIN:I = 0x0

.field public static final FX_SURFACE_DIM:I = 0x20000

.field public static final FX_SURFACE_MASK:I = 0xf0000

.field public static final FX_SURFACE_NORMAL:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final HEADLESS:Z = false

.field public static final HIDDEN:I = 0x4

.field public static final NON_PREMULTIPLIED:I = 0x100

.field public static final OPAQUE:I = 0x400

.field public static final PROTECTED_APP:I = 0x800

.field public static final SECURE:I = 0x80

.field public static final SURFACE_HIDDEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SurfaceControl"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mName:Ljava/lang/String;

.field mNativeObject:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 82
    const-string v0, "1"

    const-string/jumbo v1, "ro.config.headless"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/view/SurfaceControl;->HEADLESS:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    .locals 3
    .parameter "session"
    .parameter "name"
    .parameter "w"
    .parameter "h"
    .parameter "format"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 219
    if-nez p1, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "session must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_0
    if-nez p2, :cond_1

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_1
    and-int/lit8 v0, p6, 0x4

    if-nez v0, :cond_2

    .line 227
    const-string v0, "SurfaceControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surfaces should always be created with the HIDDEN flag set to ensure that they are not made visible prematurely before all of the surface\'s properties have been configured.  Set the other properties and make the surface visible within a transaction.  New surface name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    :cond_2
    invoke-static {}, Landroid/view/SurfaceControl;->checkHeadless()V

    .line 237
    iput-object p2, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    .line 238
    invoke-static/range {p1 .. p6}, Landroid/view/SurfaceControl;->nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    .line 239
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    if-nez v0, :cond_3

    .line 240
    new-instance v0, Landroid/view/Surface$OutOfResourcesException;

    const-string v1, "Couldn\'t allocate SurfaceControl native object"

    invoke-direct {v0, v1}, Landroid/view/Surface$OutOfResourcesException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_3
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public static blankDisplay(Landroid/os/IBinder;)V
    .locals 2
    .parameter "displayToken"

    .prologue
    .line 449
    if-nez p0, :cond_0

    .line 450
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_0
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeBlankDisplay(Landroid/os/IBinder;)V

    .line 453
    return-void
.end method

.method private static checkHeadless()V
    .locals 2

    .prologue
    .line 624
    sget-boolean v0, Landroid/view/SurfaceControl;->HEADLESS:Z

    if-eqz v0, :cond_0

    .line 625
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Device is headless"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_0
    return-void
.end method

.method private checkNotReleased()V
    .locals 2

    .prologue
    .line 293
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mNativeObject is null. Have you called release() already?"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    return-void
.end method

.method public static closeTransaction()V
    .locals 0

    .prologue
    .line 309
    invoke-static {}, Landroid/view/SurfaceControl;->nativeCloseTransaction()V

    .line 310
    return-void
.end method

.method public static createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
    .locals 2
    .parameter "name"
    .parameter "secure"

    .prologue
    .line 503
    if-nez p0, :cond_0

    .line 504
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_0
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeCreateDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static destroyDisplay(Landroid/os/IBinder;)V
    .locals 2
    .parameter "displayToken"

    .prologue
    .line 510
    if-nez p0, :cond_0

    .line 511
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_0
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeDestroyDisplay(Landroid/os/IBinder;)V

    .line 514
    return-void
.end method

.method public static getBuiltInDisplay(I)Landroid/os/IBinder;
    .locals 1
    .parameter "builtInDisplayId"

    .prologue
    .line 517
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayInfo(Landroid/os/IBinder;Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z
    .locals 2
    .parameter "displayToken"
    .parameter "outInfo"

    .prologue
    .line 456
    if-nez p0, :cond_0

    .line 457
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_0
    if-nez p1, :cond_1

    .line 460
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outInfo must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_1
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeGetDisplayInfo(Landroid/os/IBinder;Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v0

    return v0
.end method

.method private static native nativeBlankDisplay(Landroid/os/IBinder;)V
.end method

.method private static native nativeCloseTransaction()V
.end method

.method private static native nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native nativeCreateDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
.end method

.method private static native nativeDestroy(I)V
.end method

.method private static native nativeDestroyDisplay(Landroid/os/IBinder;)V
.end method

.method private static native nativeGetBuiltInDisplay(I)Landroid/os/IBinder;
.end method

.method private static native nativeGetDisplayInfo(Landroid/os/IBinder;Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z
.end method

.method private static native nativeOpenTransaction()V
.end method

.method private static native nativeRelease(I)V
.end method

.method private static native nativeScreenshot(Landroid/os/IBinder;IIIIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeScreenshot(Landroid/os/IBinder;Landroid/view/Surface;IIIIZ)V
.end method

.method private static native nativeSetAlpha(IF)V
.end method

.method private static native nativeSetAnimationTransaction()V
.end method

.method private static native nativeSetDisplayLayerStack(Landroid/os/IBinder;I)V
.end method

.method private static native nativeSetDisplayProjection(Landroid/os/IBinder;IIIIIIIII)V
.end method

.method private static native nativeSetDisplaySurface(Landroid/os/IBinder;I)V
.end method

.method private static native nativeSetFlags(III)V
.end method

.method private static native nativeSetLayer(II)V
.end method

.method private static native nativeSetLayerStack(II)V
.end method

.method private static native nativeSetMatrix(IFFFF)V
.end method

.method private static native nativeSetPosition(IFF)V
.end method

.method private static native nativeSetSize(III)V
.end method

.method private static native nativeSetTransparentRegionHint(ILandroid/graphics/Region;)V
.end method

.method private static native nativeSetWindowCrop(IIIII)V
.end method

.method private static native nativeUnblankDisplay(Landroid/os/IBinder;)V
.end method

.method public static openTransaction()V
    .locals 0

    .prologue
    .line 304
    invoke-static {}, Landroid/view/SurfaceControl;->nativeOpenTransaction()V

    .line 305
    return-void
.end method

.method public static screenshot(II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 607
    invoke-static {v3}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    .line 609
    .local v0, displayToken:Landroid/os/IBinder;
    const/4 v5, 0x1

    move v1, p0

    move v2, p1

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->nativeScreenshot(Landroid/os/IBinder;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static screenshot(IIII)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "width"
    .parameter "height"
    .parameter "minLayer"
    .parameter "maxLayer"

    .prologue
    const/4 v5, 0x0

    .line 588
    invoke-static {v5}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    .local v0, displayToken:Landroid/os/IBinder;
    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 590
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->nativeScreenshot(Landroid/os/IBinder;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V
    .locals 7
    .parameter "display"
    .parameter "consumer"

    .prologue
    const/4 v2, 0x0

    .line 562
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;IIIIZ)V

    .line 563
    return-void
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;II)V
    .locals 7
    .parameter "display"
    .parameter "consumer"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    .line 552
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;IIIIZ)V

    .line 553
    return-void
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;IIII)V
    .locals 7
    .parameter "display"
    .parameter "consumer"
    .parameter "width"
    .parameter "height"
    .parameter "minLayer"
    .parameter "maxLayer"

    .prologue
    .line 537
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;IIIIZ)V

    .line 538
    return-void
.end method

.method private static screenshot(Landroid/os/IBinder;Landroid/view/Surface;IIIIZ)V
    .locals 2
    .parameter "display"
    .parameter "consumer"
    .parameter "width"
    .parameter "height"
    .parameter "minLayer"
    .parameter "maxLayer"
    .parameter "allLayers"

    .prologue
    .line 614
    if-nez p0, :cond_0

    .line 615
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :cond_0
    if-nez p1, :cond_1

    .line 618
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "consumer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :cond_1
    invoke-static/range {p0 .. p6}, Landroid/view/SurfaceControl;->nativeScreenshot(Landroid/os/IBinder;Landroid/view/Surface;IIIIZ)V

    .line 621
    return-void
.end method

.method public static setAnimationTransaction()V
    .locals 0

    .prologue
    .line 314
    invoke-static {}, Landroid/view/SurfaceControl;->nativeSetAnimationTransaction()V

    .line 315
    return-void
.end method

.method public static setDisplayLayerStack(Landroid/os/IBinder;I)V
    .locals 2
    .parameter "displayToken"
    .parameter "layerStack"

    .prologue
    .line 482
    if-nez p0, :cond_0

    .line 483
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_0
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetDisplayLayerStack(Landroid/os/IBinder;I)V

    .line 486
    return-void
.end method

.method public static setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 10
    .parameter "displayToken"
    .parameter "orientation"
    .parameter "layerStackRect"
    .parameter "displayRect"

    .prologue
    .line 467
    if-nez p0, :cond_0

    .line 468
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_0
    if-nez p2, :cond_1

    .line 471
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "layerStackRect must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_1
    if-nez p3, :cond_2

    .line 474
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayRect must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_2
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    iget v6, p3, Landroid/graphics/Rect;->left:I

    iget v7, p3, Landroid/graphics/Rect;->top:I

    iget v8, p3, Landroid/graphics/Rect;->right:I

    iget v9, p3, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v9}, Landroid/view/SurfaceControl;->nativeSetDisplayProjection(Landroid/os/IBinder;IIIIIIIII)V

    .line 479
    return-void
.end method

.method public static setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)V
    .locals 2
    .parameter "displayToken"
    .parameter "surface"

    .prologue
    .line 489
    if-nez p0, :cond_0

    .line 490
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :cond_0
    if-eqz p1, :cond_1

    .line 494
    iget-object v1, p1, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 495
    :try_start_0
    iget v0, p1, Landroid/view/Surface;->mNativeObject:I

    invoke-static {p0, v0}, Landroid/view/SurfaceControl;->nativeSetDisplaySurface(Landroid/os/IBinder;I)V

    .line 496
    monitor-exit v1

    .line 500
    :goto_0
    return-void

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 498
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/view/SurfaceControl;->nativeSetDisplaySurface(Landroid/os/IBinder;I)V

    goto :goto_0
.end method

.method public static unblankDisplay(Landroid/os/IBinder;)V
    .locals 2
    .parameter "displayToken"

    .prologue
    .line 442
    if-nez p0, :cond_0

    .line 443
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_0
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeUnblankDisplay(Landroid/os/IBinder;)V

    .line 446
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    if-eqz v0, :cond_0

    .line 286
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0}, Landroid/view/SurfaceControl;->nativeDestroy(I)V

    .line 287
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    .line 289
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 290
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 250
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 253
    :cond_0
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    if-eqz v0, :cond_1

    .line 254
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0}, Landroid/view/SurfaceControl;->nativeRelease(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 259
    return-void

    .line 257
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 333
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 334
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0, v1, v1}, Landroid/view/SurfaceControl;->nativeSetFlags(III)V

    .line 335
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    if-eqz v0, :cond_0

    .line 273
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0}, Landroid/view/SurfaceControl;->nativeRelease(I)V

    .line 274
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    .line 276
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 277
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 348
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 349
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0, p1}, Landroid/view/SurfaceControl;->nativeSetAlpha(IF)V

    .line 350
    return-void
.end method

.method public setFlags(II)V
    .locals 1
    .parameter "flags"
    .parameter "mask"

    .prologue
    .line 358
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 359
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0, p1, p2}, Landroid/view/SurfaceControl;->nativeSetFlags(III)V

    .line 360
    return-void
.end method

.method public setLayer(I)V
    .locals 1
    .parameter "zorder"

    .prologue
    .line 318
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 319
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0, p1}, Landroid/view/SurfaceControl;->nativeSetLayer(II)V

    .line 320
    return-void
.end method

.method public setLayerStack(I)V
    .locals 1
    .parameter "layerStack"

    .prologue
    .line 373
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 374
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0, p1}, Landroid/view/SurfaceControl;->nativeSetLayerStack(II)V

    .line 375
    return-void
.end method

.method public setMatrix(FFFF)V
    .locals 1
    .parameter "dsdx"
    .parameter "dtdx"
    .parameter "dsdy"
    .parameter "dtdy"

    .prologue
    .line 353
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 354
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetMatrix(IFFFF)V

    .line 355
    return-void
.end method

.method public setPosition(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 323
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 324
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0, p1, p2}, Landroid/view/SurfaceControl;->nativeSetPosition(IFF)V

    .line 325
    return-void
.end method

.method public setSize(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 328
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 329
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0, p1, p2}, Landroid/view/SurfaceControl;->nativeSetSize(III)V

    .line 330
    return-void
.end method

.method public setTransparentRegionHint(Landroid/graphics/Region;)V
    .locals 1
    .parameter "region"

    .prologue
    .line 343
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 344
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0, p1}, Landroid/view/SurfaceControl;->nativeSetTransparentRegionHint(ILandroid/graphics/Region;)V

    .line 345
    return-void
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)V
    .locals 5
    .parameter "crop"

    .prologue
    const/4 v1, 0x0

    .line 363
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 364
    if-eqz p1, :cond_0

    .line 365
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControl;->nativeSetWindowCrop(IIIII)V

    .line 370
    :goto_0
    return-void

    .line 368
    :cond_0
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0, v1, v1, v1, v1}, Landroid/view/SurfaceControl;->nativeSetWindowCrop(IIIII)V

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 338
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 339
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/view/SurfaceControl;->nativeSetFlags(III)V

    .line 340
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
