.class Lmiui/maml/elements/ScreenElement$ProxyListener;
.super Ljava/lang/Object;
.source "ScreenElement.java"

# interfaces
.implements Lmiui/maml/RendererController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/ScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyListener"
.end annotation


# instance fields
.field private mRendererController:Lmiui/maml/RendererController;

.field private mScreenElement:Lmiui/maml/elements/ScreenElement;

.field final synthetic this$0:Lmiui/maml/elements/ScreenElement;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lmiui/maml/elements/ScreenElement;Lmiui/maml/RendererController;)V
    .locals 0
    .parameter
    .parameter "e"
    .parameter "c"

    .prologue
    .line 99
    iput-object p1, p0, Lmiui/maml/elements/ScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/ScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Lmiui/maml/elements/ScreenElement$ProxyListener;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    .line 101
    iput-object p3, p0, Lmiui/maml/elements/ScreenElement$ProxyListener;->mRendererController:Lmiui/maml/RendererController;

    .line 102
    return-void
.end method


# virtual methods
.method public doRender()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/ScreenElement;

    iget-object v0, v0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getSelfRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/RendererController;->doRender()V

    .line 132
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement$ProxyListener;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->doneRender()V

    .line 133
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 114
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public tick(J)V
    .locals 1
    .parameter "currentTime"

    .prologue
    .line 126
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement$ProxyListener;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    .line 127
    return-void
.end method
