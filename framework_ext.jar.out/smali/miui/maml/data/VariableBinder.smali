.class public abstract Lmiui/maml/data/VariableBinder;
.super Ljava/lang/Object;
.source "VariableBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/VariableBinder$Variable;
    }
.end annotation


# instance fields
.field protected mFinished:Z

.field protected mPaused:Z

.field protected mRoot:Lmiui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 0
    .parameter "root"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lmiui/maml/data/VariableBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 47
    return-void
.end method


# virtual methods
.method public final accept(Lmiui/maml/data/VariableBinderVisitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 50
    invoke-virtual {p1, p0}, Lmiui/maml/data/VariableBinderVisitor;->visit(Lmiui/maml/data/VariableBinder;)V

    .line 51
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/VariableBinder;->mFinished:Z

    .line 28
    return-void
.end method

.method protected getContext()Lmiui/maml/ScreenContext;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lmiui/maml/data/VariableBinder;->mFinished:Z

    .line 20
    iput-boolean v0, p0, Lmiui/maml/data/VariableBinder;->mPaused:Z

    .line 21
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/VariableBinder;->mPaused:Z

    .line 32
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/data/VariableBinder;->mPaused:Z

    .line 36
    return-void
.end method

.method public tick()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method
