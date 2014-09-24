.class Landroid/media/MediaFocusControl$RcClientDeathHandler;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RcClientDeathHandler"
.end annotation


# instance fields
.field private final mCb:Landroid/os/IBinder;

.field private final mMediaIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Landroid/media/MediaFocusControl;


# direct methods
.method constructor <init>(Landroid/media/MediaFocusControl;Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    .locals 0
    .parameter
    .parameter "cb"
    .parameter "pi"

    .prologue
    .line 1090
    iput-object p1, p0, Landroid/media/MediaFocusControl$RcClientDeathHandler;->this$0:Landroid/media/MediaFocusControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1091
    iput-object p2, p0, Landroid/media/MediaFocusControl$RcClientDeathHandler;->mCb:Landroid/os/IBinder;

    .line 1092
    iput-object p3, p0, Landroid/media/MediaFocusControl$RcClientDeathHandler;->mMediaIntent:Landroid/app/PendingIntent;

    .line 1093
    return-void
.end method

.method static synthetic access$3100(Landroid/media/MediaFocusControl$RcClientDeathHandler;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1086
    iget-object v0, p0, Landroid/media/MediaFocusControl$RcClientDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1096
    const-string v0, "MediaFocusControl"

    const-string v1, "  RemoteControlClient died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-object v0, p0, Landroid/media/MediaFocusControl$RcClientDeathHandler;->this$0:Landroid/media/MediaFocusControl;

    iget-object v1, p0, Landroid/media/MediaFocusControl$RcClientDeathHandler;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v2}, Landroid/media/MediaFocusControl;->registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I

    .line 1101
    iget-object v0, p0, Landroid/media/MediaFocusControl$RcClientDeathHandler;->this$0:Landroid/media/MediaFocusControl;

    #calls: Landroid/media/MediaFocusControl;->postReevaluateRemote()V
    invoke-static {v0}, Landroid/media/MediaFocusControl;->access$2900(Landroid/media/MediaFocusControl;)V

    .line 1102
    return-void
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1105
    iget-object v0, p0, Landroid/media/MediaFocusControl$RcClientDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method
