.class public Landroid/os/MiuiServiceManagerInternal;
.super Landroid/os/IMiuiServiceManager$Stub;
.source "MiuiServiceManagerInternal.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "miui.os.servicemanager"

.field private static final TAG:Ljava/lang/String; = "MiuiServiceManagerInternal"


# instance fields
.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/IMiuiServiceManager$Stub;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/MiuiServiceManagerInternal;->map:Ljava/util/HashMap;

    .line 15
    return-void
.end method


# virtual methods
.method public addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 29
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 30
    :cond_0
    const-string v0, "MiuiServiceManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add service parameter error, service name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Landroid/os/MiuiServiceManagerInternal;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 2
    .parameter "name"

    .prologue
    .line 19
    if-nez p1, :cond_0

    .line 20
    const-string v0, "MiuiServiceManagerInternal"

    const-string v1, "get service name is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const/4 v0, 0x0

    .line 24
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/os/MiuiServiceManagerInternal;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    goto :goto_0
.end method

.method public listServices()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroid/os/MiuiServiceManagerInternal;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
