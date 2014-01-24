.class public Lmiui/analytics/TrackEvent;
.super Lmiui/analytics/Event;
.source "TrackEvent.java"


# instance fields
.field private mParam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValue:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Lmiui/analytics/Event;-><init>()V

    .line 14
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmiui/analytics/TrackEvent;->mType:Ljava/lang/Integer;

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/analytics/TrackEvent;->mParam:Ljava/util/Map;

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/analytics/TrackEvent;->mValue:J

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 1
    .parameter "id"
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, param:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lmiui/analytics/Event;-><init>()V

    .line 20
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmiui/analytics/TrackEvent;->mType:Ljava/lang/Integer;

    .line 21
    iput-object p1, p0, Lmiui/analytics/TrackEvent;->mEventId:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lmiui/analytics/TrackEvent;->mParam:Ljava/util/Map;

    .line 23
    iput-wide p3, p0, Lmiui/analytics/TrackEvent;->mValue:J

    .line 24
    return-void
.end method

.method private buildParam(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, param:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v5, 0x24

    .line 52
    const-string v2, ""

    .line 54
    .local v2, ret:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v3, strBuilder:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 57
    .local v1, key:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 63
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #strBuilder:Ljava/lang/StringBuilder;
    :cond_1
    return-object v2
.end method

.method private parseParam(Ljava/lang/String;)V
    .locals 5
    .parameter "param"

    .prologue
    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lmiui/analytics/TrackEvent;->mParam:Ljava/util/Map;

    .line 72
    const-string v2, "\\$"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, strs:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 74
    iget-object v2, p0, Lmiui/analytics/TrackEvent;->mParam:Ljava/util/Map;

    aget-object v3, v1, v0

    add-int/lit8 v4, v0, 0x1

    aget-object v4, v1, v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 77
    .end local v0           #i:I
    .end local v1           #strs:[Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatch()V
    .locals 3

    .prologue
    .line 81
    sget-object v2, Lmiui/analytics/TrackEvent;->sDispatcher:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 82
    sget-object v2, Lmiui/analytics/TrackEvent;->sDispatcher:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/analytics/Dispatchable;

    .line 83
    .local v0, disp:Lmiui/analytics/Dispatchable;
    invoke-interface {v0, p0}, Lmiui/analytics/Dispatchable;->dispatchEvent(Lmiui/analytics/TrackEvent;)V

    goto :goto_0

    .line 86
    .end local v0           #disp:Lmiui/analytics/Dispatchable;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public getParam()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lmiui/analytics/TrackEvent;->mParam:Ljava/util/Map;

    return-object v0
.end method

.method public getValue()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lmiui/analytics/TrackEvent;->mValue:J

    return-wide v0
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lmiui/analytics/Event;->restore(Landroid/database/Cursor;)V

    .line 45
    if-eqz p1, :cond_0

    .line 46
    const-string v0, "value"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/analytics/TrackEvent;->mValue:J

    .line 47
    const-string v0, "param"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/analytics/TrackEvent;->parseParam(Ljava/lang/String;)V

    .line 49
    :cond_0
    return-void
.end method

.method public writeEvent(Lmiui/analytics/Storable;)V
    .locals 7
    .parameter "store"

    .prologue
    .line 36
    if-eqz p1, :cond_0

    .line 37
    iget-object v1, p0, Lmiui/analytics/TrackEvent;->mType:Ljava/lang/Integer;

    iget-object v2, p0, Lmiui/analytics/TrackEvent;->mEventId:Ljava/lang/String;

    iget-object v0, p0, Lmiui/analytics/TrackEvent;->mParam:Ljava/util/Map;

    invoke-direct {p0, v0}, Lmiui/analytics/TrackEvent;->buildParam(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lmiui/analytics/TrackEvent;->mTrackTime:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lmiui/analytics/TrackEvent;->mValue:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lmiui/analytics/Storable;->writeData(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void
.end method
