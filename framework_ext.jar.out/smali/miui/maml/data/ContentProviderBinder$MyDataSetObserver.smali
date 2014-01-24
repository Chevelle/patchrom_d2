.class Lmiui/maml/data/ContentProviderBinder$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/data/ContentProviderBinder;


# direct methods
.method private constructor <init>(Lmiui/maml/data/ContentProviderBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lmiui/maml/data/ContentProviderBinder$MyDataSetObserver;->this$0:Lmiui/maml/data/ContentProviderBinder;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/data/ContentProviderBinder;Lmiui/maml/data/ContentProviderBinder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 559
    invoke-direct {p0, p1}, Lmiui/maml/data/ContentProviderBinder$MyDataSetObserver;-><init>(Lmiui/maml/data/ContentProviderBinder;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$MyDataSetObserver;->this$0:Lmiui/maml/data/ContentProviderBinder;

    iget-boolean v0, v0, Lmiui/maml/data/ContentProviderBinder;->mFinished:Z

    if-eqz v0, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$MyDataSetObserver;->this$0:Lmiui/maml/data/ContentProviderBinder;

    #calls: Lmiui/maml/data/ContentProviderBinder;->updateVariables()V
    invoke-static {v0}, Lmiui/maml/data/ContentProviderBinder;->access$400(Lmiui/maml/data/ContentProviderBinder;)V

    .line 567
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$MyDataSetObserver;->this$0:Lmiui/maml/data/ContentProviderBinder;

    #getter for: Lmiui/maml/data/ContentProviderBinder;->mQueryCompletedListener:Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;
    invoke-static {v0}, Lmiui/maml/data/ContentProviderBinder;->access$500(Lmiui/maml/data/ContentProviderBinder;)Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$MyDataSetObserver;->this$0:Lmiui/maml/data/ContentProviderBinder;

    #getter for: Lmiui/maml/data/ContentProviderBinder;->mQueryCompletedListener:Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;
    invoke-static {v0}, Lmiui/maml/data/ContentProviderBinder;->access$500(Lmiui/maml/data/ContentProviderBinder;)Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder$MyDataSetObserver;->this$0:Lmiui/maml/data/ContentProviderBinder;

    iget-object v1, v1, Lmiui/maml/data/ContentProviderBinder;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;->onQueryCompleted(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$MyDataSetObserver;->this$0:Lmiui/maml/data/ContentProviderBinder;

    iget-boolean v0, v0, Lmiui/maml/data/ContentProviderBinder;->mFinished:Z

    if-eqz v0, :cond_1

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$MyDataSetObserver;->this$0:Lmiui/maml/data/ContentProviderBinder;

    #calls: Lmiui/maml/data/ContentProviderBinder;->updateVariables()V
    invoke-static {v0}, Lmiui/maml/data/ContentProviderBinder;->access$400(Lmiui/maml/data/ContentProviderBinder;)V

    .line 579
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$MyDataSetObserver;->this$0:Lmiui/maml/data/ContentProviderBinder;

    #getter for: Lmiui/maml/data/ContentProviderBinder;->mQueryCompletedListener:Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;
    invoke-static {v0}, Lmiui/maml/data/ContentProviderBinder;->access$500(Lmiui/maml/data/ContentProviderBinder;)Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$MyDataSetObserver;->this$0:Lmiui/maml/data/ContentProviderBinder;

    #getter for: Lmiui/maml/data/ContentProviderBinder;->mQueryCompletedListener:Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;
    invoke-static {v0}, Lmiui/maml/data/ContentProviderBinder;->access$500(Lmiui/maml/data/ContentProviderBinder;)Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder$MyDataSetObserver;->this$0:Lmiui/maml/data/ContentProviderBinder;

    iget-object v1, v1, Lmiui/maml/data/ContentProviderBinder;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;->onQueryCompleted(Ljava/lang/String;)V

    goto :goto_0
.end method
