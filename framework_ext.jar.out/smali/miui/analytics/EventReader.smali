.class public Lmiui/analytics/EventReader;
.super Ljava/lang/Object;
.source "EventReader.java"


# instance fields
.field private mPersistenceHelper:Lmiui/analytics/PersistenceHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lmiui/analytics/PersistenceHelper;

    invoke-direct {v0}, Lmiui/analytics/PersistenceHelper;-><init>()V

    iput-object v0, p0, Lmiui/analytics/EventReader;->mPersistenceHelper:Lmiui/analytics/PersistenceHelper;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lmiui/analytics/EventReader;->mPersistenceHelper:Lmiui/analytics/PersistenceHelper;

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lmiui/analytics/EventReader;->mPersistenceHelper:Lmiui/analytics/PersistenceHelper;

    invoke-virtual {v0}, Lmiui/analytics/PersistenceHelper;->close()V

    .line 21
    :cond_0
    return-void
.end method

.method public open(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "databaseName"

    .prologue
    .line 14
    iget-object v0, p0, Lmiui/analytics/EventReader;->mPersistenceHelper:Lmiui/analytics/PersistenceHelper;

    invoke-virtual {v0, p1, p2}, Lmiui/analytics/PersistenceHelper;->readOpen(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public readEvents(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .parameter "selection"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lmiui/analytics/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, itemsReg:Ljava/util/Map;,"Ljava/util/Map<Ljava/util/regex/Pattern;Ljava/lang/String;>;"
    iget-object v0, p0, Lmiui/analytics/EventReader;->mPersistenceHelper:Lmiui/analytics/PersistenceHelper;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lmiui/analytics/EventReader;->mPersistenceHelper:Lmiui/analytics/PersistenceHelper;

    invoke-virtual {v0, p1, p2}, Lmiui/analytics/PersistenceHelper;->readEvents(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 28
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
