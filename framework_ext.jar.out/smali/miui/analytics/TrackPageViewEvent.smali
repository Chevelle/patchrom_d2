.class public Lmiui/analytics/TrackPageViewEvent;
.super Lmiui/analytics/Event;
.source "TrackPageViewEvent.java"


# static fields
.field private static final PAGEVIEW_EVENT:Ljava/lang/String; = "_pageview_event_"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lmiui/analytics/Event;-><init>()V

    .line 7
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmiui/analytics/TrackPageViewEvent;->mType:Ljava/lang/Integer;

    .line 8
    const-string v0, "_pageview_event_"

    iput-object v0, p0, Lmiui/analytics/TrackPageViewEvent;->mEventId:Ljava/lang/String;

    .line 9
    return-void
.end method


# virtual methods
.method public dispatch()V
    .locals 3

    .prologue
    .line 20
    sget-object v2, Lmiui/analytics/TrackPageViewEvent;->sDispatcher:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 21
    sget-object v2, Lmiui/analytics/TrackPageViewEvent;->sDispatcher:Ljava/util/List;

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

    .line 22
    .local v0, disp:Lmiui/analytics/Dispatchable;
    invoke-interface {v0, p0}, Lmiui/analytics/Dispatchable;->dispatchPageView(Lmiui/analytics/TrackPageViewEvent;)V

    goto :goto_0

    .line 25
    .end local v0           #disp:Lmiui/analytics/Dispatchable;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public writeEvent(Lmiui/analytics/Storable;)V
    .locals 6
    .parameter "store"

    .prologue
    .line 13
    if-eqz p1, :cond_0

    .line 14
    iget-object v1, p0, Lmiui/analytics/TrackPageViewEvent;->mType:Ljava/lang/Integer;

    iget-object v2, p0, Lmiui/analytics/TrackPageViewEvent;->mEventId:Ljava/lang/String;

    const-string v3, ""

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lmiui/analytics/TrackPageViewEvent;->mTrackTime:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lmiui/analytics/Storable;->writeData(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_0
    return-void
.end method
