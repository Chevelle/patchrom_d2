.class final Lcom/android/server/pie/PieService$DisplayObserver;
.super Ljava/lang/Object;
.source "PieService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pie/PieService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayObserver"
.end annotation


# instance fields
.field private final mDefaultDisplay:Landroid/view/Display;

.field private final mDefaultDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/pie/PieService;


# direct methods
.method public constructor <init>(Lcom/android/server/pie/PieService;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/server/pie/PieService$DisplayObserver;->this$0:Lcom/android/server/pie/PieService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/pie/PieService$DisplayObserver;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    .line 378
    iput-object p3, p0, Lcom/android/server/pie/PieService$DisplayObserver;->mHandler:Landroid/os/Handler;

    .line 379
    const-string v1, "display"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/server/pie/PieService$DisplayObserver;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 381
    const-string v1, "window"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 384
    .local v0, windowManager:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pie/PieService$DisplayObserver;->mDefaultDisplay:Landroid/view/Display;

    .line 385
    invoke-direct {p0}, Lcom/android/server/pie/PieService$DisplayObserver;->updateDisplayInfo()V

    .line 386
    return-void
.end method

.method private updateDisplayInfo()V
    .locals 4

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/server/pie/PieService$DisplayObserver;->mDefaultDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/pie/PieService$DisplayObserver;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/android/server/pie/PieService$DisplayObserver;->this$0:Lcom/android/server/pie/PieService;

    #getter for: Lcom/android/server/pie/PieService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pie/PieService;->access$200(Lcom/android/server/pie/PieService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pie/PieService$DisplayObserver;->this$0:Lcom/android/server/pie/PieService;

    #getter for: Lcom/android/server/pie/PieService;->mInputFilter:Lcom/android/server/pie/PieInputFilter;
    invoke-static {v0}, Lcom/android/server/pie/PieService;->access$100(Lcom/android/server/pie/PieService;)Lcom/android/server/pie/PieInputFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/server/pie/PieService$DisplayObserver;->this$0:Lcom/android/server/pie/PieService;

    #getter for: Lcom/android/server/pie/PieService;->mInputFilter:Lcom/android/server/pie/PieInputFilter;
    invoke-static {v0}, Lcom/android/server/pie/PieService;->access$100(Lcom/android/server/pie/PieService;)Lcom/android/server/pie/PieInputFilter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pie/PieService$DisplayObserver;->mDefaultDisplay:Landroid/view/Display;

    iget-object v3, p0, Lcom/android/server/pie/PieService$DisplayObserver;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pie/PieInputFilter;->updateDisplay(Landroid/view/Display;Landroid/view/DisplayInfo;)V

    .line 397
    :cond_0
    monitor-exit v1

    .line 401
    :goto_0
    return-void

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 399
    :cond_1
    const-string v0, "PieService"

    const-string v1, "Default display is not valid."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public observe()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/server/pie/PieService$DisplayObserver;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/pie/PieService$DisplayObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 405
    invoke-direct {p0}, Lcom/android/server/pie/PieService$DisplayObserver;->updateDisplayInfo()V

    .line 406
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0
    .parameter "displayId"

    .prologue
    .line 415
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0
    .parameter "displayId"

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/android/server/pie/PieService$DisplayObserver;->updateDisplayInfo()V

    .line 425
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .parameter "displayId"

    .prologue
    .line 420
    return-void
.end method

.method public unobserve()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/server/pie/PieService$DisplayObserver;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 410
    return-void
.end method
