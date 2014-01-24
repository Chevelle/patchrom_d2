.class public abstract Lmiui/util/FileAccessable$AbstractFileAccessable;
.super Ljava/lang/Object;
.source "FileAccessable.java"

# interfaces
.implements Lmiui/util/FileAccessable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/FileAccessable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractFileAccessable"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDirectory()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0}, Lmiui/util/FileAccessable$AbstractFileAccessable;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    invoke-virtual {p0}, Lmiui/util/FileAccessable$AbstractFileAccessable;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public list(Lmiui/util/FileAccessable$FileAccessableFilter;)Ljava/util/List;
    .locals 5
    .parameter "filter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/FileAccessable$FileAccessableFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/util/FileAccessable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lmiui/util/FileAccessable$AbstractFileAccessable;->list()Ljava/util/List;

    move-result-object v3

    .line 83
    :cond_0
    :goto_0
    return-object v3

    .line 74
    :cond_1
    invoke-virtual {p0}, Lmiui/util/FileAccessable$AbstractFileAccessable;->list()Ljava/util/List;

    move-result-object v0

    .line 75
    .local v0, allFiles:Ljava/util/List;,"Ljava/util/List<Lmiui/util/FileAccessable;>;"
    if-nez v0, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    .line 77
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v3, returnFiles:Ljava/util/List;,"Ljava/util/List<Lmiui/util/FileAccessable;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/FileAccessable;

    .line 79
    .local v1, fileAccessable:Lmiui/util/FileAccessable;
    invoke-interface {p1, v1}, Lmiui/util/FileAccessable$FileAccessableFilter;->accept(Lmiui/util/FileAccessable;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 80
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
