.class Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;
.super Lcom/stericsson/hardware/fm/IOnErrorListener$Stub;
.source "FmReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericsson/hardware/fm/FmReceiverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnErrorListenerTransport"
.end annotation


# static fields
.field private static final TYPE_ON_ERROR:I = 0x1


# instance fields
.field private mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnErrorListener;

.field private final mListenerHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmReceiver$OnErrorListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/IOnErrorListener$Stub;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnErrorListener;

    .line 197
    new-instance v0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport$1;

    invoke-direct {v0, p0}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport$1;-><init>(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;)V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 203
    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 212
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 217
    :goto_0
    return-void

    .line 214
    :pswitch_0
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnErrorListener;

    invoke-interface {v0}, Lcom/stericsson/hardware/fm/FmReceiver$OnErrorListener;->onError()V

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$200(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    .prologue
    .line 206
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 207
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 208
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnErrorListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 209
    return-void
.end method
