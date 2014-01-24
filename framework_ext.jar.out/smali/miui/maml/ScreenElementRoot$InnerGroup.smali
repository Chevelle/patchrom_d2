.class Lmiui/maml/ScreenElementRoot$InnerGroup;
.super Lmiui/maml/elements/ElementGroup;
.source "ScreenElementRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ScreenElementRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerGroup"
.end annotation


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 0
    .parameter "node"
    .parameter "root"

    .prologue
    .line 492
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 493
    return-void
.end method


# virtual methods
.method public final getRendererController()Lmiui/maml/RendererController;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot$InnerGroup;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateRendererController(Lorg/w3c/dom/Element;)Lmiui/maml/RendererController;
    .locals 1
    .parameter "ele"

    .prologue
    .line 504
    const/4 v0, 0x0

    return-object v0
.end method
