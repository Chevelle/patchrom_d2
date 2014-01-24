.class Lmiui/maml/ActionCommand$IntentCommand$1;
.super Ljava/lang/Object;
.source "ActionCommand.java"

# interfaces
.implements Lmiui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/ActionCommand$IntentCommand;->loadExtras(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/ActionCommand$IntentCommand;


# direct methods
.method constructor <init>(Lmiui/maml/ActionCommand$IntentCommand;)V
    .locals 0
    .parameter

    .prologue
    .line 917
    iput-object p1, p0, Lmiui/maml/ActionCommand$IntentCommand$1;->this$0:Lmiui/maml/ActionCommand$IntentCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 920
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand$1;->this$0:Lmiui/maml/ActionCommand$IntentCommand;

    new-instance v1, Lmiui/maml/ActionCommand$IntentCommand$Extra;

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand$1;->this$0:Lmiui/maml/ActionCommand$IntentCommand;

    invoke-direct {v1, v2, p1}, Lmiui/maml/ActionCommand$IntentCommand$Extra;-><init>(Lmiui/maml/ActionCommand$IntentCommand;Lorg/w3c/dom/Element;)V

    invoke-virtual {v0, v1}, Lmiui/maml/ActionCommand$IntentCommand;->addExtra(Lmiui/maml/ActionCommand$IntentCommand$Extra;)V

    .line 921
    return-void
.end method
