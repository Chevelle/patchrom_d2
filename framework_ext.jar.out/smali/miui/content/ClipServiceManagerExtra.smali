.class public Lmiui/content/ClipServiceManagerExtra;
.super Ljava/lang/Object;
.source "ClipServiceManagerExtra.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "miui.clipserviceext"

.field public static final TAG:Ljava/lang/String; = "ClipServiceManagerExtra"

.field private static sInstance:Lmiui/content/ClipServiceManagerExtra;


# instance fields
.field private mService:Lmiui/content/IClipServiceExtra;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lmiui/content/ClipServiceManagerExtra;

    invoke-direct {v0}, Lmiui/content/ClipServiceManagerExtra;-><init>()V

    sput-object v0, Lmiui/content/ClipServiceManagerExtra;->sInstance:Lmiui/content/ClipServiceManagerExtra;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iget-object v0, p0, Lmiui/content/ClipServiceManagerExtra;->mService:Lmiui/content/IClipServiceExtra;

    if-nez v0, :cond_0

    .line 20
    const-class v1, Lmiui/content/ClipServiceManagerExtra;

    monitor-enter v1

    .line 21
    :try_start_0
    const-string v0, "miui.clipserviceext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/IClipServiceExtra$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/content/IClipServiceExtra;

    move-result-object v0

    iput-object v0, p0, Lmiui/content/ClipServiceManagerExtra;->mService:Lmiui/content/IClipServiceExtra;

    .line 22
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_0
    iget-object v0, p0, Lmiui/content/ClipServiceManagerExtra;->mService:Lmiui/content/IClipServiceExtra;

    if-nez v0, :cond_1

    .line 25
    const-string v0, "ClipServiceManagerExtra"

    const-string v1, "Failed to fetch ClipService extra"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_1
    return-void

    .line 22
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getInstance()Lmiui/content/ClipServiceManagerExtra;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lmiui/content/ClipServiceManagerExtra;->sInstance:Lmiui/content/ClipServiceManagerExtra;

    return-object v0
.end method


# virtual methods
.method public addData(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "selected"

    .prologue
    .line 35
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lmiui/content/ClipServiceManagerExtra;->mService:Lmiui/content/IClipServiceExtra;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lmiui/content/ClipServiceManagerExtra;->mService:Lmiui/content/IClipServiceExtra;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiui/content/IClipServiceExtra;->addData(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getData(I)Ljava/util/List;
    .locals 1
    .parameter "i"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    :try_start_0
    iget-object v0, p0, Lmiui/content/ClipServiceManagerExtra;->mService:Lmiui/content/IClipServiceExtra;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lmiui/content/ClipServiceManagerExtra;->mService:Lmiui/content/IClipServiceExtra;

    invoke-interface {v0, p1}, Lmiui/content/IClipServiceExtra;->getData(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
