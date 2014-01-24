.class Lmiui/maml/data/DateTimeVariableUpdater$1;
.super Ljava/lang/Object;
.source "DateTimeVariableUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/DateTimeVariableUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/data/DateTimeVariableUpdater;


# direct methods
.method constructor <init>(Lmiui/maml/data/DateTimeVariableUpdater;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lmiui/maml/data/DateTimeVariableUpdater$1;->this$0:Lmiui/maml/data/DateTimeVariableUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater$1;->this$0:Lmiui/maml/data/DateTimeVariableUpdater;

    #calls: Lmiui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V
    invoke-static {v0}, Lmiui/maml/data/DateTimeVariableUpdater;->access$000(Lmiui/maml/data/DateTimeVariableUpdater;)V

    .line 64
    return-void
.end method
