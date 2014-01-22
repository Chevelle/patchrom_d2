.class Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;
.super Lcom/stericsson/hardware/fm/IOnForcedPauseListener$Stub;
.source "FmReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericsson/hardware/fm/FmReceiverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnForcedPauseListenerTransport"
.end annotation


# static fields
.field private static final TYPE_ON_FORCEDPAUSE:I = 0x1


# instance fields
.field private mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;

.field private final mListenerHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener$Stub;-><init>()V

    .line 293
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;

    .line 295
    new-instance v0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport$1;

    invoke-direct {v0, p0}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport$1;-><init>(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;)V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 301
    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 313
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 319
    :goto_0
    return-void

    .line 315
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 316
    .local v0, b:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;

    invoke-interface {v1}, Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;->onForcedPause()V

    goto :goto_0

    .line 313
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$400(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onForcedPause()V
    .locals 3

    .prologue
    .line 304
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 305
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 306
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 308
    .local v0, b:Landroid/os/Bundle;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 309
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnForcedPauseListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 310
    return-void
.end method
