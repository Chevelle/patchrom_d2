.class public Lmiui/analytics/ObjectBuilder;
.super Ljava/lang/Object;
.source "ObjectBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/analytics/ObjectBuilder$BuilderData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mBuilderInf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/analytics/ObjectBuilder",
            "<TT;>.BuilderData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    .local p0, this:Lmiui/analytics/ObjectBuilder;,"Lmiui/analytics/ObjectBuilder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/analytics/ObjectBuilder;->mBuilderInf:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public buildObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, this:Lmiui/analytics/ObjectBuilder;,"Lmiui/analytics/ObjectBuilder<TT;>;"
    const/4 v3, 0x0

    .line 19
    .local v3, ret:Ljava/lang/Object;,"TT;"
    iget-object v4, p0, Lmiui/analytics/ObjectBuilder;->mBuilderInf:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3           #ret:Ljava/lang/Object;,"TT;"
    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/analytics/ObjectBuilder$BuilderData;

    .line 20
    .local v0, data:Lmiui/analytics/ObjectBuilder$BuilderData;,"Lmiui/analytics/ObjectBuilder<TT;>.BuilderData;"
    iget-object v4, v0, Lmiui/analytics/ObjectBuilder$BuilderData;->mTag:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 22
    :try_start_0
    iget-object v4, v0, Lmiui/analytics/ObjectBuilder$BuilderData;->mType:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .restart local v3       #ret:Ljava/lang/Object;,"TT;"
    goto :goto_0

    .line 23
    .end local v3           #ret:Ljava/lang/Object;,"TT;"
    :catch_0
    move-exception v1

    .line 24
    .local v1, e:Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 25
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 26
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 31
    .end local v0           #data:Lmiui/analytics/ObjectBuilder$BuilderData;,"Lmiui/analytics/ObjectBuilder<TT;>.BuilderData;"
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :cond_1
    return-object v3
.end method

.method public registerClass(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, this:Lmiui/analytics/ObjectBuilder;,"Lmiui/analytics/ObjectBuilder<TT;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<+TT;>;"
    iget-object v2, p0, Lmiui/analytics/ObjectBuilder;->mBuilderInf:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/analytics/ObjectBuilder$BuilderData;

    .line 36
    .local v0, data:Lmiui/analytics/ObjectBuilder$BuilderData;,"Lmiui/analytics/ObjectBuilder<TT;>.BuilderData;"
    iget-object v2, v0, Lmiui/analytics/ObjectBuilder$BuilderData;->mTag:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    const/4 v2, 0x0

    .line 41
    .end local v0           #data:Lmiui/analytics/ObjectBuilder$BuilderData;,"Lmiui/analytics/ObjectBuilder<TT;>.BuilderData;"
    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Lmiui/analytics/ObjectBuilder;->mBuilderInf:Ljava/util/ArrayList;

    new-instance v3, Lmiui/analytics/ObjectBuilder$BuilderData;

    invoke-direct {v3, p0, p1, p2}, Lmiui/analytics/ObjectBuilder$BuilderData;-><init>(Lmiui/analytics/ObjectBuilder;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method
