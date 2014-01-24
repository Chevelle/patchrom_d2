.class Lmiui/widget/PictureClock$1;
.super Landroid/content/BroadcastReceiver;
.source "PictureClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/PictureClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/PictureClock;


# direct methods
.method constructor <init>(Lmiui/widget/PictureClock;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lmiui/widget/PictureClock$1;->this$0:Lmiui/widget/PictureClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 59
    iget-object v0, p0, Lmiui/widget/PictureClock$1;->this$0:Lmiui/widget/PictureClock;

    #getter for: Lmiui/widget/PictureClock;->mLive:Z
    invoke-static {v0}, Lmiui/widget/PictureClock;->access$000(Lmiui/widget/PictureClock;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lmiui/widget/PictureClock$1;->this$0:Lmiui/widget/PictureClock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    #setter for: Lmiui/widget/PictureClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v0, v1}, Lmiui/widget/PictureClock;->access$102(Lmiui/widget/PictureClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 64
    :cond_0
    iget-object v0, p0, Lmiui/widget/PictureClock$1;->this$0:Lmiui/widget/PictureClock;

    #getter for: Lmiui/widget/PictureClock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/widget/PictureClock;->access$300(Lmiui/widget/PictureClock;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmiui/widget/PictureClock$1$1;

    invoke-direct {v1, p0}, Lmiui/widget/PictureClock$1$1;-><init>(Lmiui/widget/PictureClock$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method
