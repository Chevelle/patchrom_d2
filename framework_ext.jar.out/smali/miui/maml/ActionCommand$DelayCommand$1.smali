.class Lmiui/maml/ActionCommand$DelayCommand$1;
.super Ljava/lang/Object;
.source "ActionCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/ActionCommand$DelayCommand;->doPerform()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/ActionCommand$DelayCommand;


# direct methods
.method constructor <init>(Lmiui/maml/ActionCommand$DelayCommand;)V
    .locals 0
    .parameter

    .prologue
    .line 1106
    iput-object p1, p0, Lmiui/maml/ActionCommand$DelayCommand$1;->this$0:Lmiui/maml/ActionCommand$DelayCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Lmiui/maml/ActionCommand$DelayCommand$1;->this$0:Lmiui/maml/ActionCommand$DelayCommand;

    #getter for: Lmiui/maml/ActionCommand$DelayCommand;->mCommand:Lmiui/maml/ActionCommand;
    invoke-static {v0}, Lmiui/maml/ActionCommand$DelayCommand;->access$400(Lmiui/maml/ActionCommand$DelayCommand;)Lmiui/maml/ActionCommand;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->perform()V

    .line 1110
    return-void
.end method
