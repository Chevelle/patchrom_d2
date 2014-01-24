.class public Lmiui/msim/telephony/MiuiSimManager;
.super Ljava/lang/Object;
.source "MiuiSimManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiSimManager"

.field private static mInstance:Lmiui/msim/telephony/IMiuiSimManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lmiui/msim/telephony/IMiuiSimManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 20
    const-class v1, Lmiui/msim/telephony/MiuiSimManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lmiui/msim/telephony/MiuiSimManager;->mInstance:Lmiui/msim/telephony/IMiuiSimManager;

    if-nez v0, :cond_0

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/msim/telephony/MiuiSimManager;->newInstance(Landroid/content/Context;)Lmiui/msim/telephony/IMiuiSimManager;

    move-result-object v0

    sput-object v0, Lmiui/msim/telephony/MiuiSimManager;->mInstance:Lmiui/msim/telephony/IMiuiSimManager;

    .line 23
    :cond_0
    sget-object v0, Lmiui/msim/telephony/MiuiSimManager;->mInstance:Lmiui/msim/telephony/IMiuiSimManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static newInstance(Landroid/content/Context;)Lmiui/msim/telephony/IMiuiSimManager;
    .locals 6
    .parameter "context"

    .prologue
    .line 27
    invoke-static {}, Lmiui/msim/MsimUtils;->isGemini2()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 28
    const-string v3, "MiuiSimManager"

    const-string v4, "use mtk sim manager"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :try_start_0
    const-string v3, "miui.msim.telephony.MtkMiuiSimManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 32
    .local v0, clazz:Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 34
    .local v1, constructor:Ljava/lang/reflect/Constructor;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/msim/telephony/IMiuiSimManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-object v3

    .line 35
    .end local v0           #clazz:Ljava/lang/Class;
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v2

    .line 36
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "MiuiSimManager"

    const-string v4, "unable to init mtk sim manager"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "unable to init sim manager ext"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 41
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    const-string v3, "MiuiSimManager"

    const-string v4, "use standard sim manager"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :try_start_1
    const-string v3, "miui.msim.telephony.SingleSimMiuiSimManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 45
    .restart local v0       #clazz:Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 47
    .restart local v1       #constructor:Ljava/lang/reflect/Constructor;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/msim/telephony/IMiuiSimManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 48
    .end local v0           #clazz:Ljava/lang/Class;
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;
    :catch_1
    move-exception v2

    .line 49
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v3, "MiuiSimManager"

    const-string v4, "unable to init default sim manager"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "unable to init sim manager ext"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
