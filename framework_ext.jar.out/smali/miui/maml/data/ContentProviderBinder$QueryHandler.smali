.class final Lmiui/maml/data/ContentProviderBinder$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/data/ContentProviderBinder;


# direct methods
.method public constructor <init>(Lmiui/maml/data/ContentProviderBinder;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 398
    iput-object p1, p0, Lmiui/maml/data/ContentProviderBinder$QueryHandler;->this$0:Lmiui/maml/data/ContentProviderBinder;

    .line 399
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 400
    return-void
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .parameter "looper"

    .prologue
    .line 395
    new-instance v0, Lmiui/maml/data/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;

    invoke-direct {v0, p0, p1}, Lmiui/maml/data/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;-><init>(Lmiui/maml/data/ContentProviderBinder$QueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 404
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$QueryHandler;->this$0:Lmiui/maml/data/ContentProviderBinder;

    #calls: Lmiui/maml/data/ContentProviderBinder;->onQueryComplete(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lmiui/maml/data/ContentProviderBinder;->access$200(Lmiui/maml/data/ContentProviderBinder;Landroid/database/Cursor;)V

    .line 405
    return-void
.end method
