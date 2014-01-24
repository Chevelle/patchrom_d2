.class Lmiui/maml/data/BroadcastBinder$Variable;
.super Lmiui/maml/data/VariableBinder$Variable;
.source "BroadcastBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/BroadcastBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Variable"
.end annotation


# instance fields
.field public mDefNumberValue:D

.field public mDefStringValue:Ljava/lang/String;

.field public mExtraName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V
    .locals 0
    .parameter "name"
    .parameter "type"
    .parameter "var"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/data/VariableBinder$Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V
    .locals 0
    .parameter "node"
    .parameter "var"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected onLoad(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "node"

    .prologue
    .line 56
    const-string v1, "extra"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    .line 57
    const-string v1, "default"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/data/BroadcastBinder$Variable;->mDefStringValue:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lmiui/maml/data/BroadcastBinder$Variable;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    :try_start_0
    iget-object v1, p0, Lmiui/maml/data/BroadcastBinder$Variable;->mDefStringValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lmiui/maml/data/BroadcastBinder$Variable;->mDefNumberValue:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/maml/data/BroadcastBinder$Variable;->mDefStringValue:Ljava/lang/String;

    .line 63
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lmiui/maml/data/BroadcastBinder$Variable;->mDefNumberValue:D

    goto :goto_0
.end method
