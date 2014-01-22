.class final Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
.super Ljava/lang/Object;
.source "FmReceiverService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericsson/hardware/fm/FmReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnRDSDataReceiver"
.end annotation


# instance fields
.field final mKey:Ljava/lang/Object;

.field final mListener:Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;

.field final synthetic this$0:Lcom/stericsson/hardware/fm/FmReceiverService;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;)V
    .locals 1
    .parameter
    .parameter "listener"

    .prologue
    .line 327
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->this$0:Lcom/stericsson/hardware/fm/FmReceiverService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p2, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;

    .line 329
    invoke-interface {p2}, Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->mKey:Ljava/lang/Object;

    .line 330
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 349
    const-string v0, "FmReceiverService"

    const-string v1, "FM receiver listener died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->this$0:Lcom/stericsson/hardware/fm/FmReceiverService;

    #getter for: Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/stericsson/hardware/fm/FmReceiverService;->access$600(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->this$0:Lcom/stericsson/hardware/fm/FmReceiverService;

    #getter for: Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/stericsson/hardware/fm/FmReceiverService;->access$600(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;

    invoke-interface {v0}, Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 357
    :cond_0
    return-void

    .line 353
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public callOnRDSDataFound(Landroid/os/Bundle;I)Z
    .locals 3
    .parameter "bundle"
    .parameter "frequency"

    .prologue
    .line 338
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :try_start_1
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;

    invoke-interface {v1, p1, p2}, Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;->onRDSDataFound(Landroid/os/Bundle;I)V

    .line 340
    monitor-exit p0

    .line 345
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 340
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmReceiverService"

    const-string v2, "callOnRDSDataFound: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getListener()Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;

    return-object v0
.end method
