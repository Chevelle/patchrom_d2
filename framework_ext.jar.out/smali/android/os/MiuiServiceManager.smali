.class public Landroid/os/MiuiServiceManager;
.super Ljava/lang/Object;
.source "MiuiServiceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiServiceManager"

.field private static sCache:Ljava/util/HashMap;
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

.field private static sMiuiServiceManager:Landroid/os/IMiuiServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/MiuiServiceManager;->sCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 39
    :try_start_0
    invoke-static {}, Landroid/os/MiuiServiceManager;->getIMiuiServiceManager()Landroid/os/IMiuiServiceManager;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/os/IMiuiServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MiuiServiceManager"

    const-string v2, "error in miui addService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getIMiuiServiceManager()Landroid/os/IMiuiServiceManager;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Landroid/os/MiuiServiceManager;->sMiuiServiceManager:Landroid/os/IMiuiServiceManager;

    if-eqz v0, :cond_0

    .line 15
    sget-object v0, Landroid/os/MiuiServiceManager;->sMiuiServiceManager:Landroid/os/IMiuiServiceManager;

    .line 20
    :goto_0
    return-object v0

    .line 19
    :cond_0
    const-string v0, "miui.os.servicemanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IMiuiServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMiuiServiceManager;

    move-result-object v0

    sput-object v0, Landroid/os/MiuiServiceManager;->sMiuiServiceManager:Landroid/os/IMiuiServiceManager;

    .line 20
    sget-object v0, Landroid/os/MiuiServiceManager;->sMiuiServiceManager:Landroid/os/IMiuiServiceManager;

    goto :goto_0
.end method

.method public static getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .parameter "name"

    .prologue
    .line 25
    :try_start_0
    sget-object v2, Landroid/os/MiuiServiceManager;->sCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 26
    .local v1, service:Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 34
    .end local v1           #service:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 29
    .restart local v1       #service:Landroid/os/IBinder;
    :cond_0
    invoke-static {}, Landroid/os/MiuiServiceManager;->getIMiuiServiceManager()Landroid/os/IMiuiServiceManager;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/os/IMiuiServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 31
    .end local v1           #service:Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 32
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MiuiServiceManager"

    const-string v3, "error in miui getService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static listServices()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    :try_start_0
    invoke-static {}, Landroid/os/MiuiServiceManager;->getIMiuiServiceManager()Landroid/os/IMiuiServiceManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IMiuiServiceManager;->listServices()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 50
    .local v0, e:Landroid/os/RemoteException;
    :goto_0
    return-object v1

    .line 48
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 49
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v1, "MiuiServiceManager"

    const-string v2, "error in miui listServices"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    const/4 v1, 0x0

    goto :goto_0
.end method
