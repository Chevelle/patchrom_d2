.class Lmiui/maml/ActionCommand$NotificationReceiver$1;
.super Ljava/lang/Object;
.source "ActionCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/ActionCommand$NotificationReceiver;->asyncUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/ActionCommand$NotificationReceiver;


# direct methods
.method constructor <init>(Lmiui/maml/ActionCommand$NotificationReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lmiui/maml/ActionCommand$NotificationReceiver$1;->this$0:Lmiui/maml/ActionCommand$NotificationReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lmiui/maml/ActionCommand$NotificationReceiver$1;->this$0:Lmiui/maml/ActionCommand$NotificationReceiver;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand$NotificationReceiver;->update()V

    .line 96
    return-void
.end method
