.class public Lmiui/maml/data/FunctionsLoader;
.super Ljava/lang/Object;
.source "FunctionsLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load()V
    .locals 0

    .prologue
    .line 8
    invoke-static {}, Lmiui/maml/data/BaseFunctions;->load()V

    .line 9
    invoke-static {}, Lmiui/maml/data/StringFunctions;->load()V

    .line 10
    return-void
.end method
