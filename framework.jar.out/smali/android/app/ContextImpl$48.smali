.class final Landroid/app/ContextImpl$48;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 626
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 3
    .parameter "ctx"

    .prologue
    .line 628
    const-string v2, "battery"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 629
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IBatteryService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBatteryService;

    move-result-object v1

    .line 630
    .local v1, service:Landroid/app/IBatteryService;
    new-instance v2, Landroid/os/BatteryManager;

    invoke-direct {v2, v1, p1}, Landroid/os/BatteryManager;-><init>(Landroid/app/IBatteryService;Landroid/content/Context;)V

    return-object v2
.end method
