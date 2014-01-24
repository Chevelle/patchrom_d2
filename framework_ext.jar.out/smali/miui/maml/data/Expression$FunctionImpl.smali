.class public abstract Lmiui/maml/data/Expression$FunctionImpl;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FunctionImpl"
.end annotation


# instance fields
.field public params:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "p"

    .prologue
    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    iput p1, p0, Lmiui/maml/data/Expression$FunctionImpl;->params:I

    .line 468
    return-void
.end method


# virtual methods
.method public abstract evaluate([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)D
.end method

.method public abstract evaluateStr([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)Ljava/lang/String;
.end method
