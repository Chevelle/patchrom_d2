.class final Lcom/android/server/wm/WindowManagerService$3;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/internal/os/IDeviceHandler;Landroid/os/Handler;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$device:Lcom/android/internal/os/IDeviceHandler;

.field final synthetic val$dm:Lcom/android/server/display/DisplayManagerService;

.field final synthetic val$haveInputMethods:Z

.field final synthetic val$holder:[Lcom/android/server/wm/WindowManagerService;

.field final synthetic val$im:Lcom/android/server/input/InputManagerService;

.field final synthetic val$onlyCore:Z

.field final synthetic val$pm:Lcom/android/server/power/PowerManagerService;

.field final synthetic val$showBootMsgs:Z

.field final synthetic val$uiHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>([Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/internal/os/IDeviceHandler;Landroid/os/Handler;ZZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 778
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$3;->val$holder:[Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/wm/WindowManagerService$3;->val$pm:Lcom/android/server/power/PowerManagerService;

    iput-object p4, p0, Lcom/android/server/wm/WindowManagerService$3;->val$dm:Lcom/android/server/display/DisplayManagerService;

    iput-object p5, p0, Lcom/android/server/wm/WindowManagerService$3;->val$im:Lcom/android/server/input/InputManagerService;

    iput-object p6, p0, Lcom/android/server/wm/WindowManagerService$3;->val$device:Lcom/android/internal/os/IDeviceHandler;

    iput-object p7, p0, Lcom/android/server/wm/WindowManagerService$3;->val$uiHandler:Landroid/os/Handler;

    iput-boolean p8, p0, Lcom/android/server/wm/WindowManagerService$3;->val$haveInputMethods:Z

    iput-boolean p9, p0, Lcom/android/server/wm/WindowManagerService$3;->val$showBootMsgs:Z

    iput-boolean p10, p0, Lcom/android/server/wm/WindowManagerService$3;->val$onlyCore:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 781
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService$3;->val$holder:[Lcom/android/server/wm/WindowManagerService;

    const/4 v12, 0x0

    new-instance v0, Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$3;->val$pm:Lcom/android/server/power/PowerManagerService;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$3;->val$dm:Lcom/android/server/display/DisplayManagerService;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$3;->val$im:Lcom/android/server/input/InputManagerService;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$3;->val$device:Lcom/android/internal/os/IDeviceHandler;

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService$3;->val$uiHandler:Landroid/os/Handler;

    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService$3;->val$haveInputMethods:Z

    iget-boolean v8, p0, Lcom/android/server/wm/WindowManagerService$3;->val$showBootMsgs:Z

    iget-boolean v9, p0, Lcom/android/server/wm/WindowManagerService$3;->val$onlyCore:Z

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/internal/os/IDeviceHandler;Landroid/os/Handler;ZZZLcom/android/server/wm/WindowManagerService$1;)V

    aput-object v0, v11, v12

    .line 783
    return-void
.end method
