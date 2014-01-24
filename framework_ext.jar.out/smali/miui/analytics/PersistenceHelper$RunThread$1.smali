.class Lmiui/analytics/PersistenceHelper$RunThread$1;
.super Landroid/os/Handler;
.source "PersistenceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/analytics/PersistenceHelper$RunThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/analytics/PersistenceHelper$RunThread;


# direct methods
.method constructor <init>(Lmiui/analytics/PersistenceHelper$RunThread;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lmiui/analytics/PersistenceHelper$RunThread$1;->this$1:Lmiui/analytics/PersistenceHelper$RunThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iget-object v0, p0, Lmiui/analytics/PersistenceHelper$RunThread$1;->this$1:Lmiui/analytics/PersistenceHelper$RunThread;

    iget-object v0, v0, Lmiui/analytics/PersistenceHelper$RunThread;->this$0:Lmiui/analytics/PersistenceHelper;

    #calls: Lmiui/analytics/PersistenceHelper;->writeOpenImp()V
    invoke-static {v0}, Lmiui/analytics/PersistenceHelper;->access$200(Lmiui/analytics/PersistenceHelper;)V

    goto :goto_0

    .line 73
    :pswitch_1
    iget-object v0, p0, Lmiui/analytics/PersistenceHelper$RunThread$1;->this$1:Lmiui/analytics/PersistenceHelper$RunThread;

    iget-object v1, v0, Lmiui/analytics/PersistenceHelper$RunThread;->this$0:Lmiui/analytics/PersistenceHelper;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmiui/analytics/Event;

    #calls: Lmiui/analytics/PersistenceHelper;->writeEventImp(Lmiui/analytics/Event;)V
    invoke-static {v1, v0}, Lmiui/analytics/PersistenceHelper;->access$300(Lmiui/analytics/PersistenceHelper;Lmiui/analytics/Event;)V

    goto :goto_0

    .line 77
    :pswitch_2
    iget-object v0, p0, Lmiui/analytics/PersistenceHelper$RunThread$1;->this$1:Lmiui/analytics/PersistenceHelper$RunThread;

    iget-object v0, v0, Lmiui/analytics/PersistenceHelper$RunThread;->this$0:Lmiui/analytics/PersistenceHelper;

    #calls: Lmiui/analytics/PersistenceHelper;->closeImp()V
    invoke-static {v0}, Lmiui/analytics/PersistenceHelper;->access$400(Lmiui/analytics/PersistenceHelper;)V

    .line 78
    iget-object v0, p0, Lmiui/analytics/PersistenceHelper$RunThread$1;->this$1:Lmiui/analytics/PersistenceHelper$RunThread;

    iget-object v0, v0, Lmiui/analytics/PersistenceHelper$RunThread;->this$0:Lmiui/analytics/PersistenceHelper;

    #getter for: Lmiui/analytics/PersistenceHelper;->mWorkHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/analytics/PersistenceHelper;->access$100(Lmiui/analytics/PersistenceHelper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 79
    iget-object v0, p0, Lmiui/analytics/PersistenceHelper$RunThread$1;->this$1:Lmiui/analytics/PersistenceHelper$RunThread;

    iget-object v0, v0, Lmiui/analytics/PersistenceHelper$RunThread;->this$0:Lmiui/analytics/PersistenceHelper;

    const/4 v1, 0x0

    #setter for: Lmiui/analytics/PersistenceHelper;->mWorkHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lmiui/analytics/PersistenceHelper;->access$102(Lmiui/analytics/PersistenceHelper;Landroid/os/Handler;)Landroid/os/Handler;

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
