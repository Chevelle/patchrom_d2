.class public Lmiui/content/res/ThemeRuntimeManager;
.super Ljava/lang/Object;
.source "ThemeRuntimeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/res/ThemeRuntimeManager$1;,
        Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;,
        Lmiui/content/res/ThemeRuntimeManager$ThemeServiceConnection;
    }
.end annotation


# static fields
.field public static final BUILTIN_ALARM_PATH:Ljava/lang/String; = "/system/media/audio/alarms/"

.field public static final BUILTIN_LOCKSCREEN_PATH:Ljava/lang/String; = "/system/media/lockscreen/"

.field public static final BUILTIN_NOTIFICATION_PATH:Ljava/lang/String; = "/system/media/audio/notifications/"

.field public static final BUILTIN_RINGTONE_PATH:Ljava/lang/String; = "/system/media/audio/ringtones/"

.field public static final BUILTIN_ROOT_PATH:Ljava/lang/String; = "/system/media/"

.field public static final BUILTIN_WALLPAPER_PATH:Ljava/lang/String; = "/system/media/wallpaper/"

.field public static final DEFAULT_ALARM_FILE_PATH_RES_ID:I = 0x60c0250

.field public static final DEFAULT_NOTIFICATION_FILE_PATH_RES_ID:I = 0x60c0251

.field public static final DEFAULT_RINGTONE_FILE_PATH_RES_ID:I = 0x60c024f

.field public static final RUNTIME_PATH_BOOT_ANIMATION:Ljava/lang/String; = "/data/local/bootanimation.zip"

.field public static final RUNTIME_PATH_LOCKSCREEN:Ljava/lang/String; = "/data/system/theme/lock_wallpaper"

.field public static final RUNTIME_PATH_WALLPAPER:Ljava/lang/String; = "/data/system/theme/wallpaper"

.field public static final RUNTIME_PIC_FOLDER:Ljava/lang/String; = "/data/system/theme/"

.field private static final TAG:Ljava/lang/String; = "themeservice"

.field private static sWhiteList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConnection:Lmiui/content/res/ThemeRuntimeManager$ThemeServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mJobLocker:[B

.field private mPendingJobs:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lmiui/content/res/IThemeService;

.field private mServiceLocker:[B

.field private mThreadFinished:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/content/res/ThemeRuntimeManager;->sWhiteList:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-array v0, v1, [B

    iput-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mServiceLocker:[B

    .line 112
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mPendingJobs:Ljava/util/Stack;

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mThreadFinished:Z

    .line 114
    new-array v0, v1, [B

    iput-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mJobLocker:[B

    .line 56
    iput-object p1, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method static synthetic access$100(Lmiui/content/res/ThemeRuntimeManager;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mServiceLocker:[B

    return-object v0
.end method

.method static synthetic access$200(Lmiui/content/res/ThemeRuntimeManager;)Lmiui/content/res/IThemeService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mService:Lmiui/content/res/IThemeService;

    return-object v0
.end method

.method static synthetic access$202(Lmiui/content/res/ThemeRuntimeManager;Lmiui/content/res/IThemeService;)Lmiui/content/res/IThemeService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lmiui/content/res/ThemeRuntimeManager;->mService:Lmiui/content/res/IThemeService;

    return-object p1
.end method

.method static synthetic access$300(Lmiui/content/res/ThemeRuntimeManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lmiui/content/res/ThemeRuntimeManager;->bindService()V

    return-void
.end method

.method static synthetic access$400(Lmiui/content/res/ThemeRuntimeManager;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mJobLocker:[B

    return-object v0
.end method

.method static synthetic access$500(Lmiui/content/res/ThemeRuntimeManager;)Ljava/util/Stack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mPendingJobs:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$600(Lmiui/content/res/ThemeRuntimeManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lmiui/content/res/ThemeRuntimeManager;->saveIconInner(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lmiui/content/res/ThemeRuntimeManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lmiui/content/res/ThemeRuntimeManager;->unbindService()V

    return-void
.end method

.method static synthetic access$802(Lmiui/content/res/ThemeRuntimeManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lmiui/content/res/ThemeRuntimeManager;->mThreadFinished:Z

    return p1
.end method

.method private bindService()V
    .locals 6

    .prologue
    .line 60
    iget-object v2, p0, Lmiui/content/res/ThemeRuntimeManager;->mServiceLocker:[B

    monitor-enter v2

    .line 61
    :try_start_0
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mService:Lmiui/content/res/IThemeService;

    if-eqz v1, :cond_0

    .line 62
    monitor-exit v2

    .line 75
    :goto_0
    return-void

    .line 64
    :cond_0
    const-string v1, "themeservice"

    const-string v3, "binding service"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v1, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceConnection;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceConnection;-><init>(Lmiui/content/res/ThemeRuntimeManager;Lmiui/content/res/ThemeRuntimeManager$1;)V

    iput-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mConnection:Lmiui/content/res/ThemeRuntimeManager$ThemeServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :try_start_1
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.miui.service.THEME"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lmiui/content/res/ThemeRuntimeManager;->mConnection:Lmiui/content/res/ThemeRuntimeManager$ThemeServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 68
    :goto_1
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mService:Lmiui/content/res/IThemeService;

    if-nez v1, :cond_1

    .line 69
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mServiceLocker:[B

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 74
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private isRestoreIndependentComponents()Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method private saveIconInner(Ljava/lang/String;)V
    .locals 4
    .parameter "pathName"

    .prologue
    .line 146
    const-string v1, "themeservice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saving icon for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :try_start_0
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mService:Lmiui/content/res/IThemeService;

    invoke-interface {v1, p1}, Lmiui/content/res/IThemeService;->saveIcon(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private unbindService()V
    .locals 4

    .prologue
    .line 78
    iget-object v2, p0, Lmiui/content/res/ThemeRuntimeManager;->mServiceLocker:[B

    monitor-enter v2

    .line 79
    :try_start_0
    const-string v1, "themeservice"

    const-string v3, "unbinding service"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :try_start_1
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mService:Lmiui/content/res/IThemeService;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager;->mConnection:Lmiui/content/res/ThemeRuntimeManager$ThemeServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mService:Lmiui/content/res/IThemeService;

    .line 88
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mConnection:Lmiui/content/res/ThemeRuntimeManager$ThemeServiceConnection;

    .line 89
    monitor-exit v2

    .line 90
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public markGadgetUpdated()V
    .locals 6

    .prologue
    .line 167
    const-string v0, "clock_changed_time_"

    .line 168
    .local v0, prefix:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 169
    .local v1, time:J
    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "1x2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 170
    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "2x2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 171
    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "2x4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 172
    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "4x4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 173
    return-void
.end method

.method public restoreDefault()V
    .locals 12

    .prologue
    .line 176
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/system/theme/"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v3, folder:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 178
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 179
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lmiui/content/res/ThemeRuntimeManager;->sWhiteList:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 180
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmiui/os/Shell;->remove(Ljava/lang/String;)Z

    .line 178
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 185
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    const-string v7, "/data/local/bootanimation.zip"

    invoke-static {v7}, Lmiui/os/Shell;->remove(Ljava/lang/String;)Z

    .line 187
    iget-object v7, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    const-string v8, "wallpaper"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/WallpaperManager;

    .line 189
    .local v6, ws:Landroid/app/WallpaperManager;
    :try_start_0
    iget-object v7, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x602000c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_1
    invoke-direct {p0}, Lmiui/content/res/ThemeRuntimeManager;->isRestoreIndependentComponents()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 195
    iget-object v7, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    const v11, 0x60c024f

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 197
    iget-object v7, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    const/4 v8, 0x2

    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    const v11, 0x60c0251

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 199
    iget-object v7, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    const/4 v8, 0x4

    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    const v11, 0x60c0250

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 203
    :cond_2
    const/4 v7, 0x0

    invoke-static {v7}, Lmiui/content/res/IconCustomizer;->clearCustomizedIcons(Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/content/res/ThemeResourcesSystem;->resetIcons()V

    .line 206
    invoke-virtual {p0}, Lmiui/content/res/ThemeRuntimeManager;->markGadgetUpdated()V

    .line 208
    const-wide/32 v7, 0x10007899

    invoke-static {v7, v8}, Lmiui/content/res/ExtraConfiguration;->sendThemeConfigurationChangeMsg(J)V

    .line 209
    return-void

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public saveIcon(Ljava/lang/String;)V
    .locals 4
    .parameter "pathName"

    .prologue
    .line 155
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mJobLocker:[B

    monitor-enter v1

    .line 156
    :try_start_0
    const-string v0, "themeservice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add pending job "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mPendingJobs:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mJobLocker:[B

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 159
    iget-boolean v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mThreadFinished:Z

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mThreadFinished:Z

    .line 161
    new-instance v0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;-><init>(Lmiui/content/res/ThemeRuntimeManager;Lmiui/content/res/ThemeRuntimeManager$1;)V

    invoke-virtual {v0}, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->start()V

    .line 163
    :cond_0
    monitor-exit v1

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
