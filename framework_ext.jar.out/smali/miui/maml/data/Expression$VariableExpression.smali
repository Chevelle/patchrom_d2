.class abstract Lmiui/maml/data/Expression$VariableExpression;
.super Lmiui/maml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "VariableExpression"
.end annotation


# instance fields
.field protected mVar:Lmiui/maml/util/Variable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "exp"

    .prologue
    .line 142
    invoke-direct {p0}, Lmiui/maml/data/Expression;-><init>()V

    .line 143
    new-instance v0, Lmiui/maml/util/Variable;

    invoke-direct {v0, p1}, Lmiui/maml/util/Variable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/data/Expression$VariableExpression;->mVar:Lmiui/maml/util/Variable;

    .line 147
    return-void
.end method
