.class Lmiui/maml/data/FileBinder$1;
.super Ljava/lang/Object;
.source "FileBinder.java"

# interfaces
.implements Lmiui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/data/FileBinder;->loadVariables(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/data/FileBinder;


# direct methods
.method constructor <init>(Lmiui/maml/data/FileBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lmiui/maml/data/FileBinder$1;->this$0:Lmiui/maml/data/FileBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 118
    iget-object v0, p0, Lmiui/maml/data/FileBinder$1;->this$0:Lmiui/maml/data/FileBinder;

    new-instance v1, Lmiui/maml/data/FileBinder$Variable;

    iget-object v2, p0, Lmiui/maml/data/FileBinder$1;->this$0:Lmiui/maml/data/FileBinder;

    invoke-virtual {v2}, Lmiui/maml/data/FileBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v1, p1, v2}, Lmiui/maml/data/FileBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    invoke-virtual {v0, v1}, Lmiui/maml/data/FileBinder;->addVariable(Lmiui/maml/data/FileBinder$Variable;)V

    .line 119
    return-void
.end method
