.class public Lmiui/v5/util/Factory$CachedFactory;
.super Ljava/lang/Object;
.source "Factory.java"

# interfaces
.implements Lmiui/v5/util/Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/util/Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CachedFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmiui/v5/util/Factory",
        "<TT;TF;>;"
    }
.end annotation


# instance fields
.field private final mCached:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TF;TT;>;"
        }
    .end annotation
.end field

.field private final mFactory:Lmiui/v5/util/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/v5/util/Factory",
            "<TT;TF;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/v5/util/Factory;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/v5/util/Factory",
            "<TT;TF;>;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, this:Lmiui/v5/util/Factory$CachedFactory;,"Lmiui/v5/util/Factory$CachedFactory<TT;TF;>;"
    .local p1, factory:Lmiui/v5/util/Factory;,"Lmiui/v5/util/Factory<TT;TF;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lmiui/v5/util/Factory$CachedFactory;->mCached:Ljava/util/Map;

    .line 16
    iput-object p1, p0, Lmiui/v5/util/Factory$CachedFactory;->mFactory:Lmiui/v5/util/Factory;

    .line 17
    return-void
.end method

.method public static newFactory(Lmiui/v5/util/Factory;)Lmiui/v5/util/Factory$CachedFactory;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            ">(",
            "Lmiui/v5/util/Factory",
            "<TT;TF;>;)",
            "Lmiui/v5/util/Factory$CachedFactory",
            "<TT;TF;>;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, factory:Lmiui/v5/util/Factory;,"Lmiui/v5/util/Factory<TT;TF;>;"
    if-nez p0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lmiui/v5/util/Factory$CachedFactory;

    invoke-direct {v0, p0}, Lmiui/v5/util/Factory$CachedFactory;-><init>(Lmiui/v5/util/Factory;)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 20
    .local p0, this:Lmiui/v5/util/Factory$CachedFactory;,"Lmiui/v5/util/Factory$CachedFactory<TT;TF;>;"
    iget-object v0, p0, Lmiui/v5/util/Factory$CachedFactory;->mCached:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 21
    return-void
.end method

.method public create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TT;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, this:Lmiui/v5/util/Factory$CachedFactory;,"Lmiui/v5/util/Factory$CachedFactory<TT;TF;>;"
    .local p1, from:Ljava/lang/Object;,"TF;"
    iget-object v1, p0, Lmiui/v5/util/Factory$CachedFactory;->mCached:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    .local v0, t:Ljava/lang/Object;,"TT;"
    if-nez v0, :cond_0

    .line 27
    iget-object v1, p0, Lmiui/v5/util/Factory$CachedFactory;->mFactory:Lmiui/v5/util/Factory;

    invoke-interface {v1, p1}, Lmiui/v5/util/Factory;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    iget-object v1, p0, Lmiui/v5/util/Factory$CachedFactory;->mCached:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_0
    return-object v0
.end method
