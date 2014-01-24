.class public Lmiui/msim/telephony/MiuiSmsManager;
.super Ljava/lang/Object;
.source "MiuiSmsManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiSmsManager"

.field private static mInstance:Lmiui/msim/telephony/IMiuiSmsManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lmiui/msim/telephony/IMiuiSmsManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 21
    const-class v1, Lmiui/msim/telephony/MiuiSmsManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lmiui/msim/telephony/MiuiSmsManager;->mInstance:Lmiui/msim/telephony/IMiuiSmsManager;

    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/msim/telephony/MiuiSmsManager;->newInstance(Landroid/content/Context;)Lmiui/msim/telephony/IMiuiSmsManager;

    move-result-object v0

    sput-object v0, Lmiui/msim/telephony/MiuiSmsManager;->mInstance:Lmiui/msim/telephony/IMiuiSmsManager;

    .line 24
    :cond_0
    sget-object v0, Lmiui/msim/telephony/MiuiSmsManager;->mInstance:Lmiui/msim/telephony/IMiuiSmsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static newInstance(Landroid/content/Context;)Lmiui/msim/telephony/IMiuiSmsManager;
    .locals 6
    .parameter "context"

    .prologue
    .line 28
    invoke-static {}, Lmiui/msim/MsimUtils;->isGemini2()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    const-string v3, "MiuiSmsManager"

    const-string v4, "use mtk sms manager"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :try_start_0
    const-string v3, "miui.msim.telephony.MtkMiuiSmsManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 33
    .local v0, clazz:Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 35
    .local v1, constructor:Ljava/lang/reflect/Constructor;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/msim/telephony/IMiuiSmsManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-object v3

    .line 36
    .end local v0           #clazz:Ljava/lang/Class;
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v2

    .line 37
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "MiuiSmsManager"

    const-string v4, "unable to init mtk sms manager"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "unable to init telephony manager ext"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 42
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    const-string v3, "MiuiSmsManager"

    const-string v4, "use standard sms manager"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :try_start_1
    const-string v3, "miui.msim.telephony.SingleSimMiuiSmsManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 46
    .restart local v0       #clazz:Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 48
    .restart local v1       #constructor:Ljava/lang/reflect/Constructor;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/msim/telephony/IMiuiSmsManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 49
    .end local v0           #clazz:Ljava/lang/Class;
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;
    :catch_1
    move-exception v2

    .line 50
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v3, "MiuiSmsManager"

    const-string v4, "unable to init default sms manager"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "unable to init telephony manager ext"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
