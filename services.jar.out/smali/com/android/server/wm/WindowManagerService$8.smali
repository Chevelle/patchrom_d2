.class Lcom/android/server/wm/WindowManagerService$8;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLockedInner(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;

.field final synthetic val$client:Landroid/view/IWindow;

.field final synthetic val$contentInsets:Landroid/graphics/Rect;

.field final synthetic val$frame:Landroid/graphics/Rect;

.field final synthetic val$newConfig:Landroid/content/res/Configuration;

.field final synthetic val$reportDraw:Z

.field final synthetic val$visibleInsets:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IWindow;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 9546
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$8;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$8;->val$client:Landroid/view/IWindow;

    iput-object p3, p0, Lcom/android/server/wm/WindowManagerService$8;->val$frame:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/server/wm/WindowManagerService$8;->val$contentInsets:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/android/server/wm/WindowManagerService$8;->val$visibleInsets:Landroid/graphics/Rect;

    iput-boolean p6, p0, Lcom/android/server/wm/WindowManagerService$8;->val$reportDraw:Z

    iput-object p7, p0, Lcom/android/server/wm/WindowManagerService$8;->val$newConfig:Landroid/content/res/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 9550
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$8;->val$client:Landroid/view/IWindow;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$8;->val$frame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$8;->val$contentInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$8;->val$visibleInsets:Landroid/graphics/Rect;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService$8;->val$reportDraw:Z

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$8;->val$newConfig:Landroid/content/res/Configuration;

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindow;->resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9556
    :goto_0
    return-void

    .line 9552
    :catch_0
    move-exception v0

    goto :goto_0
.end method
