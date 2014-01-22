.class public abstract Landroid/service/pie/PieManager$PieActivationListener;
.super Ljava/lang/Object;
.source "PieManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/pie/PieManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PieActivationListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/pie/PieManager$PieActivationListener$Delegator;
    }
.end annotation


# instance fields
.field private mCallback:Landroid/service/pie/IPieHostCallback;

.field private mDelegator:Landroid/service/pie/PieManager$PieActivationListener$Delegator;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/pie/PieManager$PieActivationListener;->mHandler:Landroid/os/Handler;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .parameter "looper"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/pie/PieManager$PieActivationListener;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Landroid/service/pie/PieManager$PieActivationListener$Delegator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/pie/PieManager$PieActivationListener$Delegator;-><init>(Landroid/service/pie/PieManager$PieActivationListener;Landroid/service/pie/PieManager$1;)V

    iput-object v0, p0, Landroid/service/pie/PieManager$PieActivationListener;->mDelegator:Landroid/service/pie/PieManager$PieActivationListener$Delegator;

    .line 67
    return-void
.end method

.method static synthetic access$000(Landroid/service/pie/PieManager$PieActivationListener;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/service/pie/PieManager$PieActivationListener;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/service/pie/PieManager$PieActivationListener;)Landroid/service/pie/PieManager$PieActivationListener$Delegator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/service/pie/PieManager$PieActivationListener;->mDelegator:Landroid/service/pie/PieManager$PieActivationListener$Delegator;

    return-object v0
.end method


# virtual methods
.method public gainTouchFocus(Landroid/os/IBinder;)Z
    .locals 4
    .parameter "applicationWindowToken"

    .prologue
    .line 92
    :try_start_0
    iget-object v1, p0, Landroid/service/pie/PieManager$PieActivationListener;->mCallback:Landroid/service/pie/IPieHostCallback;

    invoke-interface {v1, p1}, Landroid/service/pie/IPieHostCallback;->gainTouchFocus(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 97
    :goto_0
    return v1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PieManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gainTouchFocus failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract onPieActivation(IILcom/android/internal/util/pie/PiePosition;I)V
.end method

.method public restoreListenerState()V
    .locals 4

    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Landroid/service/pie/PieManager$PieActivationListener;->mCallback:Landroid/service/pie/IPieHostCallback;

    invoke-interface {v1}, Landroid/service/pie/IPieHostCallback;->restoreListenerState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PieManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreListenerState failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setHostCallback(Landroid/service/pie/IPieHostCallback;)V
    .locals 0
    .parameter "hostCallback"

    .prologue
    .line 70
    iput-object p1, p0, Landroid/service/pie/PieManager$PieActivationListener;->mCallback:Landroid/service/pie/IPieHostCallback;

    .line 71
    return-void
.end method
