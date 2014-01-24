.class public Lcom/android/server/am/ExtraActivityManagerService;
.super Ljava/lang/Object;
.source "ExtraActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ExtraActivityManagerService$CompatibleMessage;
    }
.end annotation


# static fields
.field static final SHOW_INCOMPATIBLE_ERROR:I = 0x1

.field private static TAG:Ljava/lang/String;

.field static final sHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/android/server/am/ExtraActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    .line 95
    new-instance v0, Lcom/android/server/am/ExtraActivityManagerService$1;

    invoke-direct {v0}, Lcom/android/server/am/ExtraActivityManagerService$1;-><init>()V

    sput-object v0, Lcom/android/server/am/ExtraActivityManagerService;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    return-void
.end method

.method public static adjustMediaButtonReceivers(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, receivers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .local p2, procs:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_1

    .line 68
    :cond_0
    return-void

    .line 50
    :cond_1
    invoke-static {p0}, Lmiui/util/ActivityManagerHelper;->getPackageNameListForRecentTasks(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 52
    .local v4, packageNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, headIdx:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 58
    .local v6, receiverSize:I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 59
    .local v3, name:Ljava/lang/String;
    move v1, v0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_2

    .line 60
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 61
    .local v5, r:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameForReceiver(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 62
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 63
    invoke-interface {p1, v0, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 59
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static adjustMediaButtonReceivers(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter
    .parameter "action"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, receivers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .local p2, procs:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {p0, p1, p2}, Lcom/android/server/am/ExtraActivityManagerService;->adjustMediaButtonReceivers(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 33
    :cond_0
    return-void
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;I)Z
    .locals 5
    .parameter "context"
    .parameter "service"
    .parameter "resolvedType"
    .parameter "userId"

    .prologue
    const/4 v2, 0x0

    .line 121
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v4, 0x400

    invoke-interface {v3, p1, p2, v4, p3}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 123
    .local v0, rInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 124
    .local v1, sInfo:Landroid/content/pm/ServiceInfo;
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :cond_0
    invoke-static {p0, v2}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 128
    .end local v0           #rInfo:Landroid/content/pm/ResolveInfo;
    .end local v1           #sInfo:Landroid/content/pm/ServiceInfo;
    :goto_1
    return v2

    .restart local v0       #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_1
    move-object v1, v2

    .line 123
    goto :goto_0

    .line 125
    .end local v0           #rInfo:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v2

    .line 128
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .parameter "context"
    .parameter "info"

    .prologue
    .line 132
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_1
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static checkRunningCompatibility(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "pkgName"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 137
    const/4 v1, 0x0

    .line 139
    .local v1, msg:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget v2, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 140
    .local v2, versionCode:I
    const/4 v5, 0x2

    invoke-static {p0, p1, v2, v5}, Lmiui/provider/CloudAppControll;->getCompatibility(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 144
    .end local v2           #versionCode:I
    :goto_0
    if-eqz v1, :cond_0

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 145
    sget-object v5, Lcom/android/server/am/ExtraActivityManagerService;->sHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 146
    .local v0, message:Landroid/os/Message;
    new-instance v4, Lcom/android/server/am/ExtraActivityManagerService$CompatibleMessage;

    invoke-direct {v4, p0, v1}, Lcom/android/server/am/ExtraActivityManagerService$CompatibleMessage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 147
    sget-object v4, Lcom/android/server/am/ExtraActivityManagerService;->sHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    .end local v0           #message:Landroid/os/Message;
    :goto_1
    return v3

    :cond_0
    move v3, v4

    goto :goto_1

    .line 142
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static finishBooting(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 91
    new-instance v0, Lmiui/drm/DrmBroadcast;

    invoke-direct {v0, p0}, Lmiui/drm/DrmBroadcast;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lmiui/drm/DrmBroadcast;->broadcast()V

    .line 92
    return-void
.end method

.method private static getPackageNameForReceiver(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter "receiver"

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, pkgName:Ljava/lang/String;
    instance-of v2, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v2, :cond_1

    .line 73
    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    .end local p0
    iget-object v0, p0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    .line 81
    :cond_0
    :goto_0
    return-object v0

    .line 74
    .restart local p0
    :cond_1
    instance-of v2, p0, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 75
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 76
    .local v1, rinfo:Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static init()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 85
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "sdcard"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v1, 0x1ff

    invoke-static {v0, v1, v3, v3}, Lmiui/os/ExtraFileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 87
    invoke-static {}, Lmiui/content/res/IconCustomizer;->checkModIconsTimestamp()V

    .line 88
    return-void
.end method
