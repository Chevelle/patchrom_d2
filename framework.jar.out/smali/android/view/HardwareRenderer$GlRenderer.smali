.class abstract Landroid/view/HardwareRenderer$GlRenderer;
.super Landroid/view/HardwareRenderer;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HardwareRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "GlRenderer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;,
        Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;
    }
.end annotation


# static fields
.field static final FUNCTOR_PROCESS_DELAY:I = 0x4

.field private static final OVERDRAW:[Ljava/lang/String; = null

.field private static final OVERDRAW_TYPE_COUNT:I = 0x1

.field private static final PROFILE_DRAW_COLORS:[I = null

.field private static final PROFILE_DRAW_CURRENT_FRAME_COLOR:I = -0x30a055b3

.field private static final PROFILE_DRAW_DP_PER_MS:I = 0x7

.field private static final PROFILE_DRAW_MARGIN:I = 0x0

.field private static final PROFILE_DRAW_THRESHOLD_COLOR:I = -0xa055b3

.field private static final PROFILE_DRAW_THRESHOLD_STROKE_WIDTH:I = 0x2

.field private static final PROFILE_DRAW_WIDTH:I = 0x3

.field static final SURFACE_STATE_ERROR:I = 0x0

.field static final SURFACE_STATE_SUCCESS:I = 0x1

.field static final SURFACE_STATE_UPDATED:I = 0x2

.field private static final VISUALIZERS:[Ljava/lang/String;

.field static sDirtyRegions:Z

.field static final sDirtyRegionsRequested:Z

.field static sEgl:Ljavax/microedition/khronos/egl/EGL10;

.field static sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field static final sEglContextStorage:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/opengl/ManagedEGLContext;",
            ">;"
        }
    .end annotation
.end field

.field static sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field static final sEglLock:[Ljava/lang/Object;


# instance fields
.field mCanvas:Landroid/view/HardwareCanvas;

.field mDebugDataProvider:Landroid/view/HardwareRenderer$GraphDataProvider;

.field mDebugDirtyRegions:Z

.field mDebugOverdraw:I

.field mDebugOverdrawLayer:Landroid/view/HardwareLayer;

.field mDebugOverdrawPaint:Landroid/graphics/Paint;

.field mDebugPaint:Landroid/graphics/Paint;

.field private mDestroyed:Z

.field mDirtyRegionsEnabled:Z

.field private mDrawDelta:J

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field mEglThread:Ljava/lang/Thread;

.field mFrameCount:J

.field private final mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

.field mGl:Ljavax/microedition/khronos/opengles/GL;

.field final mGlVersion:I

.field mHeight:I

.field mName:Ljava/lang/String;

.field mProfileCurrentFrame:I

.field mProfileData:[F

.field mProfileEnabled:Z

.field mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mProfilePaint:Landroid/graphics/Paint;

.field mProfileShapes:[[F

.field mProfileVisualizerType:I

.field private final mRedrawClip:Landroid/graphics/Rect;

.field private mSurface:Landroid/view/Surface;

.field private final mSurfaceSize:[I

.field final mTranslucent:Z

.field mUpdateDirtyRegions:Z

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 812
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/view/HardwareRenderer$GlRenderer;->PROFILE_DRAW_COLORS:[I

    .line 818
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "visual_bars"

    aput-object v2, v1, v3

    const-string/jumbo v2, "visual_lines"

    aput-object v2, v1, v4

    sput-object v1, Landroid/view/HardwareRenderer$GlRenderer;->VISUALIZERS:[Ljava/lang/String;

    .line 823
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "show"

    aput-object v2, v1, v3

    const-string v2, "count"

    aput-object v2, v1, v4

    sput-object v1, Landroid/view/HardwareRenderer$GlRenderer;->OVERDRAW:[Ljava/lang/String;

    .line 832
    new-array v1, v3, [Ljava/lang/Object;

    sput-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglLock:[Ljava/lang/Object;

    .line 835
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglContextStorage:Ljava/lang/ThreadLocal;

    .line 856
    const-string v1, "debug.hwui.render_dirty_regions"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, dirtyProperty:Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegions:Z

    .line 859
    sget-boolean v1, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegions:Z

    sput-boolean v1, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegionsRequested:Z

    .line 860
    return-void

    .line 812
    :array_0
    .array-data 0x4
        0xcct 0x66t 0x3et 0xcft
        0x12t 0x39t 0xdct 0xcft
        0x0t 0x98t 0xe6t 0xcft
    .end array-data
.end method

.method constructor <init>(IZ)V
    .locals 3
    .parameter "glVersion"
    .parameter "translucent"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 892
    invoke-direct {p0}, Landroid/view/HardwareRenderer;-><init>()V

    .line 833
    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    .line 838
    iput-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mSurface:Landroid/view/Surface;

    .line 866
    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileVisualizerType:I

    .line 869
    const/4 v0, -0x3

    iput v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    .line 876
    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdraw:I

    .line 885
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mRedrawClip:Landroid/graphics/Rect;

    .line 887
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mSurfaceSize:[I

    .line 888
    new-instance v0, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    invoke-direct {v0, p0}, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;-><init>(Landroid/view/HardwareRenderer$GlRenderer;)V

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    .line 890
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDrawDelta:J

    .line 893
    iput p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGlVersion:I

    .line 894
    iput-boolean p2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mTranslucent:Z

    .line 896
    invoke-virtual {p0, v2}, Landroid/view/HardwareRenderer$GlRenderer;->loadSystemProperties(Landroid/view/Surface;)Z

    .line 897
    return-void
.end method

.method static synthetic access$100(Landroid/view/HardwareRenderer$GlRenderer;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 803
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mRedrawClip:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/HardwareRenderer$GlRenderer;Landroid/view/View$AttachInfo;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 803
    invoke-direct {p0, p1, p2}, Landroid/view/HardwareRenderer$GlRenderer;->handleFunctorStatus(Landroid/view/View$AttachInfo;I)V

    return-void
.end method

.method static synthetic access$300(IF)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 803
    invoke-static {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->dpToPx(IF)I

    move-result v0

    return v0
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 803
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->PROFILE_DRAW_COLORS:[I

    return-object v0
.end method

.method private beginFrame(Landroid/view/HardwareCanvas;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 5
    .parameter "canvas"
    .parameter "dirty"
    .parameter "surfaceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1589
    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    .line 1590
    const/4 p2, 0x0

    .line 1591
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/view/HardwareRenderer$GlRenderer;->beginFrame([I)V

    .line 1606
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDataProvider:Landroid/view/HardwareRenderer$GraphDataProvider;

    if-eqz v1, :cond_1

    const/4 p2, 0x0

    .line 1608
    :cond_1
    return-object p2

    .line 1593
    :cond_2
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mSurfaceSize:[I

    .line 1594
    .local v0, size:[I
    invoke-static {v0}, Landroid/view/HardwareRenderer$GlRenderer;->beginFrame([I)V

    .line 1596
    aget v1, v0, v4

    iget v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    if-ne v1, v2, :cond_3

    aget v1, v0, v3

    iget v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    if-eq v1, v2, :cond_0

    .line 1597
    :cond_3
    aget v1, v0, v3

    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    .line 1598
    aget v1, v0, v4

    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    .line 1600
    iget v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    iget v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    invoke-virtual {p1, v1, v2}, Landroid/view/HardwareCanvas;->setViewport(II)V

    .line 1602
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private buildDisplayList(Landroid/view/View;Landroid/view/HardwareCanvas;)Landroid/view/DisplayList;
    .locals 10
    .parameter "view"
    .parameter "canvas"

    .prologue
    const-wide/16 v8, 0x8

    const/high16 v7, -0x8000

    .line 1565
    iget-wide v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDrawDelta:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 1566
    iget-object v2, p1, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    .line 1582
    :goto_0
    return-object v2

    .line 1569
    :cond_0
    iget v3, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v7

    if-ne v3, v7, :cond_1

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 1571
    iget v3, p1, Landroid/view/View;->mPrivateFlags:I

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    iput v3, p1, Landroid/view/View;->mPrivateFlags:I

    .line 1573
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->startBuildDisplayListProfiling()J

    move-result-wide v0

    .line 1574
    .local v0, buildDisplayListStartTime:J
    invoke-virtual {p2}, Landroid/view/HardwareCanvas;->clearLayerUpdates()V

    .line 1576
    const-string v3, "getDisplayList"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1577
    invoke-virtual {p1}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    move-result-object v2

    .line 1578
    .local v2, displayList:Landroid/view/DisplayList;
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1580
    invoke-direct {p0, v0, v1}, Landroid/view/HardwareRenderer$GlRenderer;->endBuildDisplayListProfiling(J)V

    goto :goto_0

    .line 1569
    .end local v0           #buildDisplayListStartTime:J
    .end local v2           #displayList:Landroid/view/DisplayList;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private checkEglErrorsForced()V
    .locals 4

    .prologue
    .line 1037
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 1038
    .local v0, error:I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 1041
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EGL error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    const/16 v1, 0x300e

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Landroid/view/HardwareRenderer$GlRenderer;->fallback(Z)V

    .line 1044
    :cond_0
    return-void

    .line 1042
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkRenderContextUnsafe()I
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1772
    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v4, 0x3059

    invoke-interface {v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1774
    :cond_0
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1775
    const-string v2, "HardwareRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglMakeCurrent failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    invoke-direct {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->fallback(Z)V

    move v0, v1

    .line 1787
    :cond_1
    :goto_0
    return v0

    .line 1780
    :cond_2
    iget-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mUpdateDirtyRegions:Z

    if-eqz v0, :cond_3

    .line 1781
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->enableDirtyRegions()V

    .line 1782
    iput-boolean v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mUpdateDirtyRegions:Z

    .line 1784
    :cond_3
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 19

    .prologue
    .line 1156
    const/4 v2, 0x1

    new-array v11, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1157
    .local v11, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    const/4 v2, 0x1

    new-array v7, v2, [I

    .line 1158
    .local v7, configsCount:[I
    sget-boolean v2, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegions:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/HardwareRenderer$GlRenderer;->getConfig(Z)[I

    move-result-object v4

    .line 1161
    .local v4, configSpec:[I
    const-string v2, "debug.hwui.print_config"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1162
    .local v16, debug:Ljava/lang/String;
    const-string v2, "all"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1163
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1165
    const/4 v2, 0x0

    aget v2, v7, v2

    new-array v5, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1166
    .local v5, debugConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v6, 0x0

    aget v6, v7, v6

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1169
    move-object v14, v5

    .local v14, arr$:[Ljavax/microedition/khronos/egl/EGLConfig;
    array-length v0, v14

    move/from16 v18, v0

    .local v18, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    aget-object v15, v14, v17

    .line 1170
    .local v15, config:Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v15}, Landroid/view/HardwareRenderer$GlRenderer;->printConfig(Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1169
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 1174
    .end local v5           #debugConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v14           #arr$:[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v15           #config:Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v17           #i$:I
    .end local v18           #len$:I
    :cond_0
    sget-object v8, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v9, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v12, 0x1

    move-object v10, v4

    move-object v13, v7

    invoke-interface/range {v8 .. v13}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1175
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "eglChooseConfig failed "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v6

    invoke-static {v6}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1177
    :cond_1
    const/4 v2, 0x0

    aget v2, v7, v2

    if-lez v2, :cond_3

    .line 1178
    const-string v2, "choice"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1179
    const/4 v2, 0x0

    aget-object v2, v11, v2

    invoke-static {v2}, Landroid/view/HardwareRenderer$GlRenderer;->printConfig(Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1181
    :cond_2
    const/4 v2, 0x0

    aget-object v2, v11, v2

    .line 1184
    :goto_1
    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private createSurface(Landroid/view/Surface;)Z
    .locals 6
    .parameter "surface"

    .prologue
    .line 1343
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, p1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1345
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v2, :cond_2

    .line 1346
    :cond_0
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 1347
    .local v0, error:I
    const/16 v1, 0x300b

    if-ne v0, v1, :cond_1

    .line 1348
    const-string v1, "HardwareRenderer"

    const-string v2, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    const/4 v1, 0x0

    .line 1362
    .end local v0           #error:I
    :goto_0
    return v1

    .line 1351
    .restart local v0       #error:I
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createWindowSurface failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1355
    .end local v0           #error:I
    :cond_2
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1356
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglMakeCurrent failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1360
    :cond_3
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->enableDirtyRegions()V

    .line 1361
    iput-object p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mSurface:Landroid/view/Surface;

    .line 1362
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private debugDirtyRegions(Landroid/graphics/Rect;Landroid/view/HardwareCanvas;)V
    .locals 4
    .parameter "dirty"
    .parameter "canvas"

    .prologue
    .line 1689
    iget-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDirtyRegions:Z

    if-eqz v0, :cond_1

    .line 1690
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 1691
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugPaint:Landroid/graphics/Paint;

    .line 1692
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x7fff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1695
    :cond_0
    if-eqz p1, :cond_1

    iget-wide v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1696
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0}, Landroid/view/HardwareCanvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1699
    :cond_1
    return-void
.end method

.method private debugOverdraw(Landroid/view/View$AttachInfo;Landroid/graphics/Rect;Landroid/view/HardwareCanvas;Landroid/view/DisplayList;)V
    .locals 8
    .parameter "attachInfo"
    .parameter "dirty"
    .parameter "canvas"
    .parameter "displayList"

    .prologue
    const/4 v7, 0x1

    .line 1518
    iget v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdraw:I

    if-ne v4, v7, :cond_1

    .line 1519
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    if-nez v4, :cond_2

    .line 1520
    iget v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    iget v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    invoke-virtual {p0, v4, v5, v7}, Landroid/view/HardwareRenderer$GlRenderer;->createHardwareLayer(IIZ)Landroid/view/HardwareLayer;

    move-result-object v4

    iput-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    .line 1526
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v4}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1527
    const/4 v4, -0x1

    iput v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdraw:I

    .line 1543
    :cond_1
    :goto_1
    return-void

    .line 1521
    :cond_2
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v4}, Landroid/view/HardwareLayer;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v4}, Landroid/view/HardwareLayer;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    if-eq v4, v5, :cond_0

    .line 1523
    :cond_3
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    iget v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    iget v6, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    invoke-virtual {v4, v5, v6}, Landroid/view/HardwareLayer;->resize(II)Z

    goto :goto_0

    .line 1531
    :cond_4
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v4, p3, p2}, Landroid/view/HardwareLayer;->start(Landroid/graphics/Canvas;Landroid/graphics/Rect;)Landroid/view/HardwareCanvas;

    move-result-object v0

    .line 1532
    .local v0, layerCanvas:Landroid/view/HardwareCanvas;
    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->countOverdraw(Landroid/view/HardwareCanvas;)V

    .line 1533
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->save()I

    move-result v3

    .line 1534
    .local v3, restoreCount:I
    const/4 v4, 0x0

    invoke-virtual {v0, p4, v4, v7}, Landroid/view/HardwareCanvas;->drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I

    .line 1535
    invoke-virtual {v0, v3}, Landroid/view/HardwareCanvas;->restoreToCount(I)V

    .line 1536
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v4, p3}, Landroid/view/HardwareLayer;->end(Landroid/graphics/Canvas;)V

    .line 1538
    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->getOverdraw(Landroid/view/HardwareCanvas;)F

    move-result v2

    .line 1539
    .local v2, overdraw:F
    iget-object v4, p1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1541
    .local v1, metrics:Landroid/util/DisplayMetrics;
    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p0, p3, v2, v4}, Landroid/view/HardwareRenderer$GlRenderer;->drawOverdrawCounter(Landroid/view/HardwareCanvas;FF)V

    goto :goto_1
.end method

.method private static dpToPx(IF)I
    .locals 2
    .parameter "dp"
    .parameter "density"

    .prologue
    .line 1791
    int-to-float v0, p0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private drawDisplayList(Landroid/view/View$AttachInfo;Landroid/view/HardwareCanvas;Landroid/view/DisplayList;I)I
    .locals 9
    .parameter "attachInfo"
    .parameter "canvas"
    .parameter "displayList"
    .parameter "status"

    .prologue
    const-wide/16 v7, 0x8

    .line 1646
    const-wide/16 v0, 0x0

    .line 1647
    .local v0, drawDisplayListStartTime:J
    iget-boolean v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v5, :cond_0

    .line 1648
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1651
    :cond_0
    const-string v5, "drawDisplayList"

    invoke-static {v7, v8, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1653
    :try_start_0
    iget-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mRedrawClip:Landroid/graphics/Rect;

    const/4 v6, 0x1

    invoke-virtual {p2, p3, v5, v6}, Landroid/view/HardwareCanvas;->drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    or-int/2addr p4, v5

    .line 1656
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 1659
    iget-boolean v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v5, :cond_1

    .line 1660
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1661
    .local v2, now:J
    sub-long v5, v2, v0

    long-to-float v5, v5

    const v6, 0x358637bd

    mul-float v4, v5, v6

    .line 1662
    .local v4, total:F
    iget-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    iget v6, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    add-int/lit8 v6, v6, 0x1

    aput v4, v5, v6

    .line 1665
    .end local v2           #now:J
    .end local v4           #total:F
    :cond_1
    invoke-direct {p0, p1, p4}, Landroid/view/HardwareRenderer$GlRenderer;->handleFunctorStatus(Landroid/view/View$AttachInfo;I)V

    .line 1666
    return p4

    .line 1656
    :catchall_0
    move-exception v5

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    throw v5
.end method

.method private drawOverdrawCounter(Landroid/view/HardwareCanvas;FF)V
    .locals 7
    .parameter "canvas"
    .parameter "overdraw"
    .parameter "density"

    .prologue
    const v6, 0x3e8f5c29

    .line 1546
    const-string v2, "%.2fx"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1547
    .local v1, text:Ljava/lang/String;
    invoke-direct {p0, p3}, Landroid/view/HardwareRenderer$GlRenderer;->setupPaint(F)Landroid/graphics/Paint;

    move-result-object v0

    .line 1549
    .local v0, paint:Landroid/graphics/Paint;
    mul-float v2, v6, p2

    const/high16 v3, 0x4060

    div-float/2addr v2, v3

    sub-float v2, v6, v2

    const v3, 0x3f4ccccd

    const/high16 v4, 0x3f80

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->HSBtoColor(FFF)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1551
    const/high16 v2, 0x4080

    mul-float/2addr v2, p3

    iget v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/HardwareCanvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1552
    return-void
.end method

.method private enableDirtyRegions()V
    .locals 2

    .prologue
    .line 1255
    sget-boolean v0, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegions:Z

    if-eqz v0, :cond_1

    .line 1256
    invoke-static {}, Landroid/view/HardwareRenderer$GlRenderer;->preserveBackBuffer()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDirtyRegionsEnabled:Z

    if-nez v0, :cond_0

    .line 1257
    const-string v0, "HardwareRenderer"

    const-string v1, "Backbuffer cannot be preserved"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :cond_0
    :goto_0
    return-void

    .line 1259
    :cond_1
    sget-boolean v0, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegionsRequested:Z

    if-eqz v0, :cond_0

    .line 1266
    invoke-static {}, Landroid/view/HardwareRenderer$GlRenderer;->isBackBufferPreserved()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDirtyRegionsEnabled:Z

    goto :goto_0
.end method

.method private endBuildDisplayListProfiling(J)V
    .locals 5
    .parameter "getDisplayListStartTime"

    .prologue
    .line 1624
    iget-boolean v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v3, :cond_0

    .line 1625
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1626
    .local v0, now:J
    sub-long v3, v0, p1

    long-to-float v3, v3

    const v4, 0x358637bd

    mul-float v2, v3, v4

    .line 1628
    .local v2, total:F
    iget-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    iget v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    aput v2, v3, v4

    .line 1630
    .end local v0           #now:J
    .end local v2           #total:F
    :cond_0
    return-void
.end method

.method private fallback(Z)V
    .locals 2
    .parameter "fallback"

    .prologue
    .line 1047
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->destroy(Z)V

    .line 1048
    if-eqz p1, :cond_0

    .line 1050
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->setRequested(Z)V

    .line 1051
    const-string v0, "HardwareRenderer"

    const-string v1, "Mountain View, we\'ve had a problem here. Switching back to software rendering."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_0
    return-void
.end method

.method private handleFunctorStatus(Landroid/view/View$AttachInfo;I)V
    .locals 4
    .parameter "attachInfo"
    .parameter "status"

    .prologue
    .line 1704
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 1705
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mRedrawClip:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1706
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 1713
    :cond_0
    :goto_0
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1715
    :cond_1
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1716
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    iput-object p1, v0, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;->attachInfo:Landroid/view/View$AttachInfo;

    .line 1717
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    const-wide/16 v2, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1719
    :cond_2
    return-void

    .line 1708
    :cond_3
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mRedrawClip:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRootImpl;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    .line 1709
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mRedrawClip:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method private loadEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 3

    .prologue
    .line 1137
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    .line 1138
    .local v0, eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;
    if-nez v0, :cond_1

    .line 1140
    sget-boolean v1, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegions:Z

    if-eqz v1, :cond_0

    .line 1141
    const/4 v1, 0x0

    sput-boolean v1, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegions:Z

    .line 1142
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    .line 1143
    if-nez v0, :cond_1

    .line 1144
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglConfig not initialized"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1147
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglConfig not initialized"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1150
    :cond_1
    return-object v0
.end method

.method private prepareFrame(Landroid/graphics/Rect;)I
    .locals 4
    .parameter "dirty"

    .prologue
    const-wide/16 v2, 0x8

    .line 1634
    const-string/jumbo v1, "prepareFrame"

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1636
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->onPreDraw(Landroid/graphics/Rect;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1638
    .local v0, status:I
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1640
    return v0

    .line 1638
    .end local v0           #status:I
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v1
.end method

.method private static printConfig(Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 5
    .parameter "config"

    .prologue
    const/4 v4, 0x0

    .line 1188
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 1190
    .local v0, value:[I
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EGL configuration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3024

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1193
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  RED_SIZE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3023

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1196
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  GREEN_SIZE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3022

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1199
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  BLUE_SIZE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3021

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1202
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ALPHA_SIZE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3025

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1205
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  DEPTH_SIZE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3026

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1208
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  STENCIL_SIZE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3032

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1211
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  SAMPLE_BUFFERS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3031

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1214
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  SAMPLES = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3033

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1217
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  SURFACE_TYPE = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3027

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1220
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  CONFIG_CAVEAT = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    return-void
.end method

.method private static search([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "values"
    .parameter "value"

    .prologue
    .line 985
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 986
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 988
    .end local v0           #i:I
    :goto_1
    return v0

    .line 985
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 988
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private setupPaint(F)Landroid/graphics/Paint;
    .locals 4
    .parameter "density"

    .prologue
    const/4 v3, 0x0

    .line 1555
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 1556
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawPaint:Landroid/graphics/Paint;

    .line 1557
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1558
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    mul-float/2addr v1, p1

    const/high16 v2, -0x100

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1559
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41a0

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1561
    :cond_0
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private startBuildDisplayListProfiling()J
    .locals 2

    .prologue
    .line 1612
    iget-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v0, :cond_1

    .line 1613
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    .line 1614
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1615
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    .line 1618
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1620
    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private swapBuffers(I)V
    .locals 8
    .parameter "status"

    .prologue
    .line 1670
    and-int/lit8 v5, p1, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 1671
    const-wide/16 v0, 0x0

    .line 1672
    .local v0, eglSwapBuffersStartTime:J
    iget-boolean v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v5, :cond_0

    .line 1673
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1676
    :cond_0
    sget-object v5, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v6, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1678
    iget-boolean v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v5, :cond_1

    .line 1679
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1680
    .local v2, now:J
    sub-long v5, v2, v0

    long-to-float v5, v5

    const v6, 0x358637bd

    mul-float v4, v5, v6

    .line 1681
    .local v4, total:F
    iget-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    iget v6, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    add-int/lit8 v6, v6, 0x2

    aput v4, v5, v6

    .line 1684
    .end local v2           #now:J
    .end local v4           #total:F
    :cond_1
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkEglErrors()V

    .line 1686
    .end local v0           #eglSwapBuffersStartTime:J
    :cond_2
    return-void
.end method


# virtual methods
.method attachFunctor(Landroid/view/View$AttachInfo;I)Z
    .locals 4
    .parameter "attachInfo"
    .parameter "functor"

    .prologue
    .line 1730
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz v0, :cond_0

    .line 1731
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    invoke-virtual {v0, p2}, Landroid/view/HardwareCanvas;->attachFunctor(I)V

    .line 1732
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    iput-object p1, v0, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;->attachInfo:Landroid/view/View$AttachInfo;

    .line 1733
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1734
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1735
    const/4 v0, 0x1

    .line 1737
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canDraw()Z
    .locals 1

    .prologue
    .line 1400
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkEglErrors()V
    .locals 1

    .prologue
    .line 1031
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1032
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkEglErrorsForced()V

    .line 1034
    :cond_0
    return-void
.end method

.method checkRenderContext()I
    .locals 3

    .prologue
    .line 1752
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1753
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hardware acceleration can only be used with a single UI thread.\nOriginal thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Current thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1758
    :cond_0
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkRenderContextUnsafe()I

    move-result v0

    return v0
.end method

.method abstract countOverdraw(Landroid/view/HardwareCanvas;)V
.end method

.method abstract createCanvas()Landroid/view/HardwareCanvas;
.end method

.method createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 5
    .parameter "egl"
    .parameter "eglDisplay"
    .parameter "eglConfig"

    .prologue
    .line 1274
    const/4 v2, 0x3

    new-array v0, v2, [I

    const/4 v2, 0x0

    const/16 v3, 0x3098

    aput v3, v0, v2

    const/4 v2, 0x1

    iget v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGlVersion:I

    aput v3, v0, v2

    const/4 v2, 0x2

    const/16 v3, 0x3038

    aput v3, v0, v2

    .line 1276
    .local v0, attribs:[I
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iget v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGlVersion:I

    if-eqz v3, :cond_1

    .end local v0           #attribs:[I
    :goto_0
    invoke-interface {p1, p2, p3, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    .line 1278
    .local v1, context:Ljavax/microedition/khronos/egl/EGLContext;
    if-eqz v1, :cond_0

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v2, :cond_2

    .line 1280
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create an EGL context. eglCreateContext failed with error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1276
    .end local v1           #context:Ljavax/microedition/khronos/egl/EGLContext;
    .restart local v0       #attribs:[I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1285
    .end local v0           #attribs:[I
    .restart local v1       #context:Ljavax/microedition/khronos/egl/EGLContext;
    :cond_2
    return-object v1
.end method

.method createEglSurface(Landroid/view/Surface;)Ljavax/microedition/khronos/opengles/GL;
    .locals 2
    .parameter "surface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 1225
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    .line 1226
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "egl not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1228
    :cond_0
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v0, :cond_1

    .line 1229
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDisplay not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1231
    :cond_1
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_2

    .line 1232
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1234
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_3

    .line 1235
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HardwareRenderer cannot be used from multiple threads"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1240
    :cond_3
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->destroySurface()V

    .line 1243
    invoke-direct {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->createSurface(Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1244
    const/4 v0, 0x0

    .line 1249
    :goto_0
    return-object v0

    .line 1247
    :cond_4
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->initCaches()V

    .line 1249
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    goto :goto_0
.end method

.method abstract createManagedContext(Ljavax/microedition/khronos/egl/EGLContext;)Landroid/opengl/ManagedEGLContext;
.end method

.method destroy(Z)V
    .locals 3
    .parameter "full"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1290
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz v0, :cond_0

    .line 1291
    iput-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    .line 1294
    :cond_0
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDestroyed:Z

    if-eqz v0, :cond_2

    .line 1295
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/HardwareRenderer$GlRenderer;->setEnabled(Z)V

    .line 1304
    :goto_0
    return-void

    .line 1299
    :cond_2
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->destroySurface()V

    .line 1300
    invoke-virtual {p0, v1}, Landroid/view/HardwareRenderer$GlRenderer;->setEnabled(Z)V

    .line 1302
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDestroyed:Z

    .line 1303
    iput-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL;

    goto :goto_0
.end method

.method destroySurface()V
    .locals 5

    .prologue
    .line 1307
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_1

    .line 1308
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v2, 0x3059

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1309
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1312
    :cond_0
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1313
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1315
    :cond_1
    return-void
.end method

.method detachFunctor(I)V
    .locals 1
    .parameter "functor"

    .prologue
    .line 1723
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz v0, :cond_0

    .line 1724
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    invoke-virtual {v0, p1}, Landroid/view/HardwareCanvas;->detachFunctor(I)V

    .line 1726
    :cond_0
    return-void
.end method

.method draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;Landroid/graphics/Rect;)V
    .locals 15
    .parameter "view"
    .parameter "attachInfo"
    .parameter "callbacks"
    .parameter "dirty"

    .prologue
    .line 1430
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->canDraw()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1431
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->hasDirtyRegions()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1432
    const/16 p4, 0x0

    .line 1434
    :cond_0
    const/4 v10, 0x1

    move-object/from16 v0, p2

    iput-boolean v10, v0, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1435
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p2

    iput-wide v10, v0, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 1437
    move-object/from16 v0, p1

    iget v10, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v10, v10, 0x20

    move-object/from16 v0, p1

    iput v10, v0, Landroid/view/View;->mPrivateFlags:I

    .line 1440
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkRenderContextUnsafe()I

    move-result v9

    .line 1441
    .local v9, surfaceState:I
    if-eqz v9, :cond_2

    .line 1442
    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    .line 1443
    .local v2, canvas:Landroid/view/HardwareCanvas;
    move-object/from16 v0, p2

    iput-object v2, v0, Landroid/view/View$AttachInfo;->mHardwareCanvas:Landroid/view/HardwareCanvas;

    .line 1445
    iget-boolean v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v10, :cond_1

    .line 1446
    iget-object v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1449
    :cond_1
    move-object/from16 v0, p4

    invoke-direct {p0, v2, v0, v9}, Landroid/view/HardwareRenderer$GlRenderer;->beginFrame(Landroid/view/HardwareCanvas;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object p4

    .line 1451
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v2}, Landroid/view/HardwareRenderer$GlRenderer;->buildDisplayList(Landroid/view/View;Landroid/view/HardwareCanvas;)Landroid/view/DisplayList;

    move-result-object v3

    .line 1456
    .local v3, displayList:Landroid/view/DisplayList;
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkRenderContextUnsafe()I

    move-result v10

    if-nez v10, :cond_3

    .line 1510
    .end local v2           #canvas:Landroid/view/HardwareCanvas;
    .end local v3           #displayList:Landroid/view/DisplayList;
    .end local v9           #surfaceState:I
    :cond_2
    :goto_0
    return-void

    .line 1460
    .restart local v2       #canvas:Landroid/view/HardwareCanvas;
    .restart local v3       #displayList:Landroid/view/DisplayList;
    .restart local v9       #surfaceState:I
    :cond_3
    const/4 v5, 0x0

    .line 1461
    .local v5, saveCount:I
    const/4 v8, 0x0

    .line 1463
    .local v8, status:I
    invoke-static {}, Landroid/view/HardwareRenderer$GlRenderer;->getSystemTime()J

    move-result-wide v6

    .line 1465
    .local v6, start:J
    :try_start_0
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->prepareFrame(Landroid/graphics/Rect;)I

    move-result v8

    .line 1469
    iget-object v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v10}, Landroid/view/Surface;->isValid()Z

    move-result v10

    if-eqz v10, :cond_4

    if-eqz p4, :cond_4

    .line 1470
    iget-object v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/view/Surface;->setDirtyRect(Landroid/graphics/Rect;)V

    .line 1472
    :cond_4
    invoke-virtual {v2}, Landroid/view/HardwareCanvas;->save()I

    move-result v5

    .line 1473
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/view/HardwareRenderer$HardwareDrawCallbacks;->onHardwarePreDraw(Landroid/view/HardwareCanvas;)V

    .line 1475
    if-eqz v3, :cond_7

    .line 1476
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v2, v3, v8}, Landroid/view/HardwareRenderer$GlRenderer;->drawDisplayList(Landroid/view/View$AttachInfo;Landroid/view/HardwareCanvas;Landroid/view/DisplayList;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    or-int/2addr v8, v10

    .line 1484
    :goto_1
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/view/HardwareRenderer$HardwareDrawCallbacks;->onHardwarePostDraw(Landroid/view/HardwareCanvas;)V

    .line 1485
    invoke-virtual {v2, v5}, Landroid/view/HardwareCanvas;->restoreToCount(I)V

    .line 1486
    const/4 v10, 0x0

    move-object/from16 v0, p1

    iput-boolean v10, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 1488
    invoke-static {}, Landroid/view/HardwareRenderer$GlRenderer;->getSystemTime()J

    move-result-wide v10

    sub-long/2addr v10, v6

    iput-wide v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDrawDelta:J

    .line 1490
    iget-wide v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDrawDelta:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_5

    .line 1491
    iget-wide v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    .line 1493
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/view/HardwareRenderer$GlRenderer;->debugOverdraw(Landroid/view/View$AttachInfo;Landroid/graphics/Rect;Landroid/view/HardwareCanvas;Landroid/view/DisplayList;)V

    .line 1494
    move-object/from16 v0, p4

    invoke-direct {p0, v0, v2}, Landroid/view/HardwareRenderer$GlRenderer;->debugDirtyRegions(Landroid/graphics/Rect;Landroid/view/HardwareCanvas;)V

    .line 1495
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->drawProfileData(Landroid/view/View$AttachInfo;)V

    .line 1499
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->onPostDraw()V

    .line 1501
    invoke-direct {p0, v8}, Landroid/view/HardwareRenderer$GlRenderer;->swapBuffers(I)V

    .line 1503
    iget-boolean v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v10, :cond_6

    .line 1504
    iget-object v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1507
    :cond_6
    const/4 v10, 0x0

    move-object/from16 v0, p2

    iput-boolean v10, v0, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    goto :goto_0

    .line 1479
    :cond_7
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1481
    :catch_0
    move-exception v4

    .line 1482
    .local v4, e:Ljava/lang/Exception;
    :try_start_2
    const-string v10, "HardwareRenderer"

    const-string v11, "An error has occurred while drawing:"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1484
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/view/HardwareRenderer$HardwareDrawCallbacks;->onHardwarePostDraw(Landroid/view/HardwareCanvas;)V

    .line 1485
    invoke-virtual {v2, v5}, Landroid/view/HardwareCanvas;->restoreToCount(I)V

    .line 1486
    const/4 v10, 0x0

    move-object/from16 v0, p1

    iput-boolean v10, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 1488
    invoke-static {}, Landroid/view/HardwareRenderer$GlRenderer;->getSystemTime()J

    move-result-wide v10

    sub-long/2addr v10, v6

    iput-wide v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDrawDelta:J

    .line 1490
    iget-wide v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDrawDelta:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_5

    .line 1491
    iget-wide v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    .line 1493
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/view/HardwareRenderer$GlRenderer;->debugOverdraw(Landroid/view/View$AttachInfo;Landroid/graphics/Rect;Landroid/view/HardwareCanvas;Landroid/view/DisplayList;)V

    .line 1494
    move-object/from16 v0, p4

    invoke-direct {p0, v0, v2}, Landroid/view/HardwareRenderer$GlRenderer;->debugDirtyRegions(Landroid/graphics/Rect;Landroid/view/HardwareCanvas;)V

    .line 1495
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->drawProfileData(Landroid/view/View$AttachInfo;)V

    goto :goto_2

    .line 1484
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/view/HardwareRenderer$HardwareDrawCallbacks;->onHardwarePostDraw(Landroid/view/HardwareCanvas;)V

    .line 1485
    invoke-virtual {v2, v5}, Landroid/view/HardwareCanvas;->restoreToCount(I)V

    .line 1486
    const/4 v11, 0x0

    move-object/from16 v0, p1

    iput-boolean v11, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 1488
    invoke-static {}, Landroid/view/HardwareRenderer$GlRenderer;->getSystemTime()J

    move-result-wide v11

    sub-long/2addr v11, v6

    iput-wide v11, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDrawDelta:J

    .line 1490
    iget-wide v11, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDrawDelta:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_8

    .line 1491
    iget-wide v11, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    .line 1493
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/view/HardwareRenderer$GlRenderer;->debugOverdraw(Landroid/view/View$AttachInfo;Landroid/graphics/Rect;Landroid/view/HardwareCanvas;Landroid/view/DisplayList;)V

    .line 1494
    move-object/from16 v0, p4

    invoke-direct {p0, v0, v2}, Landroid/view/HardwareRenderer$GlRenderer;->debugDirtyRegions(Landroid/graphics/Rect;Landroid/view/HardwareCanvas;)V

    .line 1495
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->drawProfileData(Landroid/view/View$AttachInfo;)V

    :cond_8
    throw v10
.end method

.method abstract drawProfileData(Landroid/view/View$AttachInfo;)V
.end method

.method dumpGfxInfo(Ljava/io/PrintWriter;)V
    .locals 7
    .parameter "pw"

    .prologue
    const/4 v2, 0x0

    .line 993
    iget-boolean v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v1, :cond_1

    .line 994
    const-string v1, "\n\tDraw\tProcess\tExecute\n"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 996
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 998
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 999
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    aget v1, v1, v0

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 1006
    :cond_0
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    array-length v1, v1

    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1011
    .end local v0           #i:I
    :cond_1
    return-void

    .line 1002
    .restart local v0       #i:I
    :cond_2
    :try_start_1
    const-string v1, "\t%3.2f\t%3.2f\t%3.2f\n"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    add-int/lit8 v5, v0, 0x2

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1004
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    add-int/lit8 v5, v0, 0x2

    const/high16 v6, -0x4080

    aput v6, v4, v5

    aput v6, v2, v3

    aput v6, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 998
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 1008
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method getCanvas()Landroid/view/HardwareCanvas;
    .locals 1

    .prologue
    .line 1391
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    return-object v0
.end method

.method abstract getConfig(Z)[I
.end method

.method getFrameCount()J
    .locals 2

    .prologue
    .line 1015
    iget-wide v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    return-wide v0
.end method

.method getHeight()I
    .locals 1

    .prologue
    .line 1386
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    return v0
.end method

.method abstract getOverdraw(Landroid/view/HardwareCanvas;)F
.end method

.method getWidth()I
    .locals 1

    .prologue
    .line 1381
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    return v0
.end method

.method hasDirtyRegions()Z
    .locals 1

    .prologue
    .line 1022
    iget-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDirtyRegionsEnabled:Z

    return v0
.end method

.method abstract initAtlas()V
.end method

.method abstract initCaches()V
.end method

.method initialize(Landroid/view/Surface;)Z
    .locals 6
    .parameter "surface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1058
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->isRequested()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1059
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->initializeEgl()Z

    move-result v0

    .line 1060
    .local v0, contextCreated:Z
    invoke-virtual {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->createEglSurface(Landroid/view/Surface;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v4

    iput-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL;

    .line 1061
    iput-boolean v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDestroyed:Z

    .line 1063
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL;

    if-eqz v4, :cond_4

    .line 1064
    sget-object v4, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    .line 1065
    .local v1, err:I
    const/16 v4, 0x3000

    if-eq v1, v4, :cond_1

    .line 1066
    invoke-virtual {p0, v2}, Landroid/view/HardwareRenderer$GlRenderer;->destroy(Z)V

    .line 1067
    invoke-virtual {p0, v3}, Landroid/view/HardwareRenderer$GlRenderer;->setRequested(Z)V

    .line 1080
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz v4, :cond_3

    .line 1083
    .end local v0           #contextCreated:Z
    .end local v1           #err:I
    :goto_1
    return v2

    .line 1069
    .restart local v0       #contextCreated:Z
    .restart local v1       #err:I
    :cond_1
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-nez v4, :cond_2

    .line 1070
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->createCanvas()Landroid/view/HardwareCanvas;

    move-result-object v4

    iput-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    .line 1071
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    iget-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/view/HardwareCanvas;->setName(Ljava/lang/String;)V

    .line 1073
    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/HardwareRenderer$GlRenderer;->setEnabled(Z)V

    .line 1075
    if-eqz v0, :cond_0

    .line 1076
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->initAtlas()V

    goto :goto_0

    :cond_3
    move v2, v3

    .line 1080
    goto :goto_1

    .end local v0           #contextCreated:Z
    .end local v1           #err:I
    :cond_4
    move v2, v3

    .line 1083
    goto :goto_1
.end method

.method initializeEgl()Z
    .locals 6

    .prologue
    .line 1098
    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEglLock:[Ljava/lang/Object;

    monitor-enter v3

    .line 1099
    :try_start_0
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v2, :cond_2

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v2, :cond_2

    .line 1100
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    sput-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 1103
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    sput-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1105
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v2, v4, :cond_0

    .line 1106
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eglGetDisplay failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    invoke-static {v5}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1121
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1111
    :cond_0
    const/4 v2, 0x2

    :try_start_1
    new-array v1, v2, [I

    .line 1112
    .local v1, version:[I
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v4, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v4, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1113
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eglInitialize failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    invoke-static {v5}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1117
    :cond_1
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkEglErrorsForced()V

    .line 1119
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->loadEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    sput-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1121
    .end local v1           #version:[I
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1123
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglContextStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/ManagedEGLContext;

    .line 1124
    .local v0, managedContext:Landroid/opengl/ManagedEGLContext;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/opengl/ManagedEGLContext;->getContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1125
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglThread:Ljava/lang/Thread;

    .line 1127
    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v2, :cond_4

    .line 1128
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/HardwareRenderer$GlRenderer;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1129
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglContextStorage:Ljava/lang/ThreadLocal;

    iget-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {p0, v3}, Landroid/view/HardwareRenderer$GlRenderer;->createManagedContext(Ljavax/microedition/khronos/egl/EGLContext;)Landroid/opengl/ManagedEGLContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1130
    const/4 v2, 0x1

    .line 1133
    :goto_1
    return v2

    .line 1124
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1133
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method invalidate(Landroid/view/Surface;)V
    .locals 6
    .parameter "surface"

    .prologue
    const/4 v5, 0x1

    .line 1321
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1323
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 1324
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1325
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1326
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->setEnabled(Z)V

    .line 1329
    :cond_0
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1330
    invoke-direct {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->createSurface(Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1340
    :cond_1
    :goto_0
    return-void

    .line 1334
    :cond_2
    iput-boolean v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mUpdateDirtyRegions:Z

    .line 1336
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz v0, :cond_1

    .line 1337
    invoke-virtual {p0, v5}, Landroid/view/HardwareRenderer$GlRenderer;->setEnabled(Z)V

    goto :goto_0
.end method

.method loadSystemProperties(Landroid/view/Surface;)Z
    .locals 14
    .parameter "surface"

    .prologue
    .line 902
    const/4 v0, 0x0

    .line 904
    .local v0, changed:Z
    const-string v8, "debug.hwui.profile"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 905
    .local v6, profiling:Ljava/lang/String;
    sget-object v8, Landroid/view/HardwareRenderer$GlRenderer;->VISUALIZERS:[Ljava/lang/String;

    invoke-static {v8, v6}, Landroid/view/HardwareRenderer$GlRenderer;->search([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 906
    .local v2, graphType:I
    if-ltz v2, :cond_2

    const/4 v7, 0x1

    .line 908
    .local v7, value:Z
    :goto_0
    iget v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileVisualizerType:I

    if-eq v2, v8, :cond_0

    .line 909
    const/4 v0, 0x1

    .line 910
    iput v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileVisualizerType:I

    .line 912
    const/4 v8, 0x0

    check-cast v8, [[F

    iput-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileShapes:[[F

    .line 913
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfilePaint:Landroid/graphics/Paint;

    .line 915
    if-eqz v7, :cond_3

    .line 916
    new-instance v8, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;

    invoke-direct {v8, p0, v2}, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;-><init>(Landroid/view/HardwareRenderer$GlRenderer;I)V

    iput-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDataProvider:Landroid/view/HardwareRenderer$GraphDataProvider;

    .line 924
    :cond_0
    :goto_1
    if-nez v7, :cond_1

    .line 925
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 928
    :cond_1
    iget-boolean v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eq v7, v8, :cond_5

    .line 929
    const/4 v0, 0x1

    .line 930
    iput-boolean v7, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    .line 932
    iget-boolean v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v8, :cond_9

    .line 933
    const-string v8, "HardwareRenderer"

    const-string v9, "Profiling hardware renderer"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const-string v8, "debug.hwui.profile.maxframes"

    const/16 v9, 0x80

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 937
    .local v4, maxProfileFrames:I
    mul-int/lit8 v8, v4, 0x3

    new-array v8, v8, [F

    iput-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    .line 938
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    array-length v8, v8

    if-ge v3, v8, :cond_4

    .line 939
    iget-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    iget-object v9, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    add-int/lit8 v10, v3, 0x1

    iget-object v11, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    add-int/lit8 v12, v3, 0x2

    const/high16 v13, -0x4080

    aput v13, v11, v12

    aput v13, v9, v10

    aput v13, v8, v3

    .line 938
    add-int/lit8 v3, v3, 0x3

    goto :goto_2

    .line 906
    .end local v3           #i:I
    .end local v4           #maxProfileFrames:I
    .end local v7           #value:Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 918
    .restart local v7       #value:Z
    :cond_3
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDataProvider:Landroid/view/HardwareRenderer$GraphDataProvider;

    goto :goto_1

    .line 942
    .restart local v3       #i:I
    .restart local v4       #maxProfileFrames:I
    :cond_4
    new-instance v8, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v8}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 949
    .end local v3           #i:I
    .end local v4           #maxProfileFrames:I
    :goto_3
    const/4 v8, -0x3

    iput v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    .line 952
    :cond_5
    const-string v8, "debug.hwui.show_dirty_regions"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 953
    iget-boolean v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDirtyRegions:Z

    if-eq v7, v8, :cond_6

    .line 954
    const/4 v0, 0x1

    .line 955
    iput-boolean v7, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDirtyRegions:Z

    .line 957
    iget-boolean v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDirtyRegions:Z

    if-eqz v8, :cond_6

    .line 958
    const-string v8, "HardwareRenderer"

    const-string v9, "Debugging dirty regions"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_6
    const-string v8, "debug.hwui.overdraw"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 963
    .local v5, overdraw:Ljava/lang/String;
    sget-object v8, Landroid/view/HardwareRenderer$GlRenderer;->OVERDRAW:[Ljava/lang/String;

    invoke-static {v8, v5}, Landroid/view/HardwareRenderer$GlRenderer;->search([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 964
    .local v1, debugOverdraw:I
    iget v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdraw:I

    if-eq v1, v8, :cond_7

    .line 965
    const/4 v0, 0x1

    .line 966
    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdraw:I

    .line 968
    iget v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdraw:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_7

    .line 969
    iget-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    if-eqz v8, :cond_7

    .line 970
    iget-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v8}, Landroid/view/HardwareLayer;->destroy()V

    .line 971
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    .line 972
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawPaint:Landroid/graphics/Paint;

    .line 977
    :cond_7
    #calls: Landroid/view/HardwareRenderer;->nLoadProperties()Z
    invoke-static {}, Landroid/view/HardwareRenderer;->access$000()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 978
    const/4 v0, 0x1

    .line 981
    :cond_8
    return v0

    .line 944
    .end local v1           #debugOverdraw:I
    .end local v5           #overdraw:Ljava/lang/String;
    :cond_9
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    .line 945
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 946
    const/4 v8, -0x1

    iput v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileVisualizerType:I

    goto :goto_3
.end method

.method onPostDraw()V
    .locals 0

    .prologue
    .line 1408
    return-void
.end method

.method onPreDraw(Landroid/graphics/Rect;)I
    .locals 1
    .parameter "dirty"

    .prologue
    .line 1404
    const/4 v0, 0x0

    return v0
.end method

.method setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 1396
    iput-object p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mName:Ljava/lang/String;

    .line 1397
    return-void
.end method

.method setup(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1372
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1373
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    invoke-virtual {v0, p1, p2}, Landroid/view/HardwareCanvas;->setViewport(II)V

    .line 1374
    iput p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    .line 1375
    iput p2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    .line 1377
    :cond_0
    return-void
.end method

.method updateSurface(Landroid/view/Surface;)V
    .locals 1
    .parameter "surface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 1088
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->isRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1089
    invoke-virtual {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->createEglSurface(Landroid/view/Surface;)Ljavax/microedition/khronos/opengles/GL;

    .line 1091
    :cond_0
    return-void
.end method

.method validate()Z
    .locals 1

    .prologue
    .line 1367
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkRenderContext()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
