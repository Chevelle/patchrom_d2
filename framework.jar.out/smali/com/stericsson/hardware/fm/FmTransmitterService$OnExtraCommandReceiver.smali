.class final Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;
.super Ljava/lang/Object;
.source "FmTransmitterService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericsson/hardware/fm/FmTransmitterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnExtraCommandReceiver"
.end annotation


# instance fields
.field final mKey:Ljava/lang/Object;

.field final mListener:Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

.field final synthetic this$0:Lcom/stericsson/hardware/fm/FmTransmitterService;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmTransmitterService;Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V
    .locals 1
    .parameter
    .parameter "listener"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;->this$0:Lcom/stericsson/hardware/fm/FmTransmitterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput-object p2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    .line 301
    invoke-interface {p2}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;->mKey:Ljava/lang/Object;

    .line 302
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 321
    const-string v0, "FmTransmitterService"

    const-string v1, "FM receiver listener died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;->this$0:Lcom/stericsson/hardware/fm/FmTransmitterService;

    #getter for: Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->access$600(Lcom/stericsson/hardware/fm/FmTransmitterService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;->this$0:Lcom/stericsson/hardware/fm/FmTransmitterService;

    #getter for: Lcom/stericsson/hardware/fm/FmTransmitterService;->mOnExtraCommandReceivers:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/stericsson/hardware/fm/FmTransmitterService;->access$600(Lcom/stericsson/hardware/fm/FmTransmitterService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    invoke-interface {v0}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 329
    :cond_0
    return-void

    .line 325
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public callOnExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3
    .parameter "response"
    .parameter "extras"

    .prologue
    .line 310
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :try_start_1
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    invoke-interface {v1, p1, p2}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener;->onExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 312
    monitor-exit p0

    .line 317
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 312
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "FmTransmitterService"

    const-string v2, "callOnExtraCommand: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getListener()Lcom/stericsson/hardware/fm/IOnExtraCommandListener;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterService$OnExtraCommandReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    return-object v0
.end method
