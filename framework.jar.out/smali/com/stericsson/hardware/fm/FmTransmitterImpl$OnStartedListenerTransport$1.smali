.class Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport$1;
.super Landroid/os/Handler;
.source "FmTransmitterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;-><init>(Lcom/stericsson/hardware/fm/FmTransmitter$OnStartedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport$1;->this$0:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport$1;->this$0:Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;

    #calls: Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;->_handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;->access$100(Lcom/stericsson/hardware/fm/FmTransmitterImpl$OnStartedListenerTransport;Landroid/os/Message;)V

    .line 144
    return-void
.end method
