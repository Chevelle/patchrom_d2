.class Lcom/android/server/WallpaperManagerService$KeyguardWallpaperData;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyguardWallpaperData"
.end annotation


# instance fields
.field private callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field height:I

.field imageWallpaperPending:Z

.field name:Ljava/lang/String;

.field userId:I

.field wallpaperFile:Ljava/io/File;

.field width:I


# direct methods
.method constructor <init>(I)V
    .locals 3
    .parameter "userId"

    .prologue
    const/4 v1, -0x1

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$KeyguardWallpaperData;->name:Ljava/lang/String;

    .line 253
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$KeyguardWallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    .line 256
    iput v1, p0, Lcom/android/server/WallpaperManagerService$KeyguardWallpaperData;->width:I

    .line 257
    iput v1, p0, Lcom/android/server/WallpaperManagerService$KeyguardWallpaperData;->height:I

    .line 260
    iput p1, p0, Lcom/android/server/WallpaperManagerService$KeyguardWallpaperData;->userId:I

    .line 261
    new-instance v0, Ljava/io/File;

    #calls: Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "keyguard_wallpaper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$KeyguardWallpaperData;->wallpaperFile:Ljava/io/File;

    .line 262
    return-void
.end method

.method static synthetic access$600(Lcom/android/server/WallpaperManagerService$KeyguardWallpaperData;)Landroid/os/RemoteCallbackList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$KeyguardWallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method
