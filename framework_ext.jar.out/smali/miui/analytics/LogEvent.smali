.class public Lmiui/analytics/LogEvent;
.super Lmiui/analytics/Event;
.source "LogEvent.java"


# instance fields
.field private mErrorClass:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lmiui/analytics/Event;-><init>()V

    .line 11
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmiui/analytics/LogEvent;->mType:Ljava/lang/Integer;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lmiui/analytics/LogEvent;->mMessage:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lmiui/analytics/LogEvent;->mErrorClass:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "message"
    .parameter "errorClass"

    .prologue
    .line 16
    invoke-direct {p0}, Lmiui/analytics/Event;-><init>()V

    .line 17
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmiui/analytics/LogEvent;->mType:Ljava/lang/Integer;

    .line 18
    iput-object p1, p0, Lmiui/analytics/LogEvent;->mEventId:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lmiui/analytics/LogEvent;->mMessage:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lmiui/analytics/LogEvent;->mErrorClass:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private buildParam()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/analytics/LogEvent;->mMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    iget-object v1, p0, Lmiui/analytics/LogEvent;->mErrorClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private parseParam(Ljava/lang/String;)V
    .locals 3
    .parameter "param"

    .prologue
    const/4 v2, 0x1

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    const-string v1, "\\$"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, strs:[Ljava/lang/String;
    array-length v1, v0

    if-le v1, v2, :cond_0

    .line 59
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lmiui/analytics/LogEvent;->mMessage:Ljava/lang/String;

    .line 60
    aget-object v1, v0, v2

    iput-object v1, p0, Lmiui/analytics/LogEvent;->mErrorClass:Ljava/lang/String;

    .line 63
    .end local v0           #strs:[Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatch()V
    .locals 3

    .prologue
    .line 67
    sget-object v2, Lmiui/analytics/LogEvent;->sDispatcher:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 68
    sget-object v2, Lmiui/analytics/LogEvent;->sDispatcher:Ljava/util/List;

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

    .line 69
    .local v0, disp:Lmiui/analytics/Dispatchable;
    invoke-interface {v0, p0}, Lmiui/analytics/Dispatchable;->dispatchLog(Lmiui/analytics/LogEvent;)V

    goto :goto_0

    .line 72
    .end local v0           #disp:Lmiui/analytics/Dispatchable;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public getErrorClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lmiui/analytics/LogEvent;->mErrorClass:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lmiui/analytics/LogEvent;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lmiui/analytics/Event;->restore(Landroid/database/Cursor;)V

    .line 42
    if-eqz p1, :cond_0

    .line 43
    const-string v0, "param"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/analytics/LogEvent;->parseParam(Ljava/lang/String;)V

    .line 45
    :cond_0
    return-void
.end method

.method public writeEvent(Lmiui/analytics/Storable;)V
    .locals 6
    .parameter "store"

    .prologue
    .line 33
    if-eqz p1, :cond_0

    .line 34
    iget-object v1, p0, Lmiui/analytics/LogEvent;->mType:Ljava/lang/Integer;

    iget-object v2, p0, Lmiui/analytics/LogEvent;->mEventId:Ljava/lang/String;

    invoke-direct {p0}, Lmiui/analytics/LogEvent;->buildParam()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lmiui/analytics/LogEvent;->mTrackTime:J

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

    .line 36
    :cond_0
    return-void
.end method
