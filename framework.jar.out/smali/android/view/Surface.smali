.class public Landroid/view/Surface;
.super Ljava/lang/Object;
.source "Surface.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Surface$CompatibleCanvas;,
        Landroid/view/Surface$OutOfResourcesException;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATION_0:I = 0x0

.field public static final ROTATION_180:I = 0x2

.field public static final ROTATION_270:I = 0x3

.field public static final ROTATION_90:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Surface"


# instance fields
.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mCompatibleMatrix:Landroid/graphics/Matrix;

.field private mGenerationId:I

.field final mLock:Ljava/lang/Object;

.field private mLockedObject:I

.field private mName:Ljava/lang/String;

.field mNativeObject:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Landroid/view/Surface$1;

    invoke-direct {v0}, Landroid/view/Surface$1;-><init>()V

    sput-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$1;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 109
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .parameter "nativeObject"

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$1;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 135
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/Surface;->setNativeObjectLocked(I)V

    .line 137
    monitor-exit v1

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .parameter "surfaceTexture"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$1;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "surfaceTexture must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    .line 129
    invoke-static {p1}, Landroid/view/Surface;->nativeCreateFromSurfaceTexture(Landroid/graphics/SurfaceTexture;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/Surface;->setNativeObjectLocked(I)V

    .line 130
    monitor-exit v1

    .line 131
    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$100(Landroid/view/Surface;)Landroid/graphics/Matrix;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private checkNotReleasedLocked()V
    .locals 2

    .prologue
    .line 418
    iget v0, p0, Landroid/view/Surface;->mNativeObject:I

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Surface has already been released."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_0
    return-void
.end method

.method private static native nativeCreateFromSurfaceControl(I)I
.end method

.method private static native nativeCreateFromSurfaceTexture(Landroid/graphics/SurfaceTexture;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native nativeIsConsumerRunningBehind(I)Z
.end method

.method private static native nativeIsValid(I)Z
.end method

.method private static native nativeLockCanvas(ILandroid/graphics/Canvas;Landroid/graphics/Rect;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native nativeReadFromParcel(ILandroid/os/Parcel;)I
.end method

.method private static native nativeRelease(I)V
.end method

.method private static native nativeSetDirtyRect(ILandroid/graphics/Rect;)V
.end method

.method private static native nativeUnlockCanvasAndPost(ILandroid/graphics/Canvas;)V
.end method

.method private static native nativeWriteToParcel(ILandroid/os/Parcel;)V
.end method

.method public static rotationToString(I)Ljava/lang/String;
    .locals 3
    .parameter "rotation"

    .prologue
    .line 445
    packed-switch p0, :pswitch_data_0

    .line 459
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :pswitch_0
    const-string v0, "ROTATION_0"

    .line 456
    :goto_0
    return-object v0

    .line 450
    :pswitch_1
    const-string v0, "ROATATION_90"

    goto :goto_0

    .line 453
    :pswitch_2
    const-string v0, "ROATATION_180"

    goto :goto_0

    .line 456
    :pswitch_3
    const-string v0, "ROATATION_270"

    goto :goto_0

    .line 445
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static screenshot(II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static screenshot(IIII)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "minLayer"
    .parameter "maxLayer"

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private setNativeObjectLocked(I)V
    .locals 2
    .parameter "ptr"

    .prologue
    .line 406
    iget v0, p0, Landroid/view/Surface;->mNativeObject:I

    if-eq v0, p1, :cond_1

    .line 407
    iget v0, p0, Landroid/view/Surface;->mNativeObject:I

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 408
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 412
    :cond_0
    :goto_0
    iput p1, p0, Landroid/view/Surface;->mNativeObject:I

    .line 413
    iget v0, p0, Landroid/view/Surface;->mGenerationId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/Surface;->mGenerationId:I

    .line 415
    :cond_1
    return-void

    .line 409
    :cond_2
    iget v0, p0, Landroid/view/Surface;->mNativeObject:I

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 410
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    goto :goto_0
.end method


# virtual methods
.method public copyFrom(Landroid/view/SurfaceControl;)V
    .locals 4
    .parameter "other"

    .prologue
    .line 317
    if-nez p1, :cond_0

    .line 318
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "other must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 321
    :cond_0
    iget v1, p1, Landroid/view/SurfaceControl;->mNativeObject:I

    .line 322
    .local v1, surfaceControlPtr:I
    if-nez v1, :cond_1

    .line 323
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "SurfaceControl native object is null. Are you using a released SurfaceControl?"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 326
    :cond_1
    invoke-static {v1}, Landroid/view/Surface;->nativeCreateFromSurfaceControl(I)I

    move-result v0

    .line 328
    .local v0, newNativeObject:I
    iget-object v3, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 329
    :try_start_0
    iget v2, p0, Landroid/view/Surface;->mNativeObject:I

    if-eqz v2, :cond_2

    .line 330
    iget v2, p0, Landroid/view/Surface;->mNativeObject:I

    invoke-static {v2}, Landroid/view/Surface;->nativeRelease(I)V

    .line 332
    :cond_2
    invoke-direct {p0, v0}, Landroid/view/Surface;->setNativeObjectLocked(I)V

    .line 333
    monitor-exit v3

    .line 334
    return-void

    .line 333
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    .line 184
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
    .line 143
    :try_start_0
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 146
    :cond_0
    invoke-virtual {p0}, Landroid/view/Surface;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 150
    return-void

    .line 148
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getGenerationId()I
    .locals 2

    .prologue
    .line 207
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 208
    :try_start_0
    iget v0, p0, Landroid/view/Surface;->mGenerationId:I

    monitor-exit v1

    return v0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isConsumerRunningBehind()Z
    .locals 2

    .prologue
    .line 219
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 220
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 221
    iget v0, p0, Landroid/view/Surface;->mNativeObject:I

    invoke-static {v0}, Landroid/view/Surface;->nativeIsConsumerRunningBehind(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 193
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 194
    :try_start_0
    iget v0, p0, Landroid/view/Surface;->mNativeObject:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 195
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/Surface;->mNativeObject:I

    invoke-static {v0}, Landroid/view/Surface;->nativeIsValid(I)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 3
    .parameter "inOutDirty"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 246
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 247
    iget v0, p0, Landroid/view/Surface;->mLockedObject:I

    if-eqz v0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Surface was already locked"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 254
    :cond_0
    :try_start_1
    iget v0, p0, Landroid/view/Surface;->mNativeObject:I

    iget-object v2, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v0, v2, p1}, Landroid/view/Surface;->nativeLockCanvas(ILandroid/graphics/Canvas;Landroid/graphics/Rect;)I

    move-result v0

    iput v0, p0, Landroid/view/Surface;->mLockedObject:I

    .line 255
    iget-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 369
    if-nez p1, :cond_0

    .line 370
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_0
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 378
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    .line 379
    iget v0, p0, Landroid/view/Surface;->mNativeObject:I

    invoke-static {v0, p1}, Landroid/view/Surface;->nativeReadFromParcel(ILandroid/os/Parcel;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/Surface;->setNativeObjectLocked(I)V

    .line 380
    monitor-exit v1

    .line 381
    return-void

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 168
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_0
    iget v0, p0, Landroid/view/Surface;->mNativeObject:I

    if-eqz v0, :cond_0

    .line 170
    iget v0, p0, Landroid/view/Surface;->mNativeObject:I

    invoke-static {v0}, Landroid/view/Surface;->nativeRelease(I)V

    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/Surface;->setNativeObjectLocked(I)V

    .line 173
    :cond_0
    monitor-exit v1

    .line 174
    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V
    .locals 2
    .parameter "translator"

    .prologue
    .line 300
    if-eqz p1, :cond_0

    .line 301
    iget v0, p1, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    .line 302
    .local v0, appScale:F
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    .line 303
    iget-object v1, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 305
    .end local v0           #appScale:F
    :cond_0
    return-void
.end method

.method public setDirtyRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "dirty"

    .prologue
    .line 157
    iget v0, p0, Landroid/view/Surface;->mNativeObject:I

    if-eqz v0, :cond_0

    .line 158
    iget v0, p0, Landroid/view/Surface;->mNativeObject:I

    invoke-static {v0, p1}, Landroid/view/Surface;->nativeSetDirtyRect(ILandroid/graphics/Rect;)V

    .line 160
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 399
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 400
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surface(name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")/@0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public transferFrom(Landroid/view/Surface;)V
    .locals 3
    .parameter "other"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 344
    if-nez p1, :cond_0

    .line 345
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "other must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 347
    :cond_0
    if-eq p1, p0, :cond_2

    .line 349
    iget-object v2, p1, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 350
    :try_start_0
    iget v0, p1, Landroid/view/Surface;->mNativeObject:I

    .line 351
    .local v0, newPtr:I
    const/4 v1, 0x0

    invoke-direct {p1, v1}, Landroid/view/Surface;->setNativeObjectLocked(I)V

    .line 352
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    iget-object v2, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 355
    :try_start_1
    iget v1, p0, Landroid/view/Surface;->mNativeObject:I

    if-eqz v1, :cond_1

    .line 356
    iget v1, p0, Landroid/view/Surface;->mNativeObject:I

    invoke-static {v1}, Landroid/view/Surface;->nativeRelease(I)V

    .line 358
    :cond_1
    invoke-direct {p0, v0}, Landroid/view/Surface;->setNativeObjectLocked(I)V

    .line 359
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 361
    .end local v0           #newPtr:I
    :cond_2
    return-void

    .line 352
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 359
    .restart local v0       #newPtr:I
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public unlockCanvas(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 292
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 266
    iget-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    if-eq p1, v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "canvas object must be the same instance that was previously returned by lockCanvas"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 272
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 273
    iget v0, p0, Landroid/view/Surface;->mNativeObject:I

    iget v2, p0, Landroid/view/Surface;->mLockedObject:I

    if-eq v0, v2, :cond_1

    .line 274
    const-string v0, "Surface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WARNING: Surface\'s mNativeObject (0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/Surface;->mNativeObject:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") != mLockedObject (0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/Surface;->mLockedObject:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_1
    iget v0, p0, Landroid/view/Surface;->mLockedObject:I

    if-nez v0, :cond_2

    .line 279
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Surface was not locked"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 281
    :cond_2
    :try_start_1
    iget v0, p0, Landroid/view/Surface;->mLockedObject:I

    invoke-static {v0, p1}, Landroid/view/Surface;->nativeUnlockCanvasAndPost(ILandroid/graphics/Canvas;)V

    .line 282
    iget v0, p0, Landroid/view/Surface;->mLockedObject:I

    invoke-static {v0}, Landroid/view/Surface;->nativeRelease(I)V

    .line 283
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/Surface;->mLockedObject:I

    .line 284
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 385
    if-nez p1, :cond_0

    .line 386
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dest must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_0
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 389
    :try_start_0
    iget-object v0, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    iget v0, p0, Landroid/view/Surface;->mNativeObject:I

    invoke-static {v0, p1}, Landroid/view/Surface;->nativeWriteToParcel(ILandroid/os/Parcel;)V

    .line 391
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 393
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    .line 395
    :cond_1
    return-void

    .line 391
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
