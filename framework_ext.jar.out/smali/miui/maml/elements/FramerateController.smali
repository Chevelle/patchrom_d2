.class public Lmiui/maml/elements/FramerateController;
.super Lmiui/maml/elements/ScreenElement;
.source "FramerateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/FramerateController$ControlPoint;
    }
.end annotation


# static fields
.field public static final INNER_TAG:Ljava/lang/String; = "ControlPoint"

.field public static final TAG_NAME:Ljava/lang/String; = "FramerateController"


# instance fields
.field private mControlPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/FramerateController$ControlPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mDelay:J

.field private mLastUpdateTime:J

.field private mLock:Ljava/lang/Object;

.field private mLoop:Z

.field private mNextUpdateInterval:J

.field private mStartTime:J

.field private mStopped:Z

.field private mTimeRange:J


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 8
    .parameter "ele"
    .parameter "root"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 20
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    .line 24
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lmiui/maml/elements/FramerateController;->mLock:Ljava/lang/Object;

    .line 41
    const-string v4, "loop"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lmiui/maml/elements/FramerateController;->mLoop:Z

    .line 43
    const-string v4, "delay"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, strDelay:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 46
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lmiui/maml/elements/FramerateController;->mDelay:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_0
    :goto_0
    const-string v4, "ControlPoint"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 53
    .local v2, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 54
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 55
    .local v0, e:Lorg/w3c/dom/Element;
    iget-object v4, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    new-instance v5, Lmiui/maml/elements/FramerateController$ControlPoint;

    invoke-direct {v5, v0}, Lmiui/maml/elements/FramerateController$ControlPoint;-><init>(Lorg/w3c/dom/Element;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 47
    .end local v0           #e:Lorg/w3c/dom/Element;
    .end local v1           #i:I
    .end local v2           #nodeList:Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "FramerateController"

    const-string v5, "invalid delay attribute"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #i:I
    .restart local v2       #nodeList:Lorg/w3c/dom/NodeList;
    :cond_1
    iget-object v4, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    iget-object v5, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/FramerateController$ControlPoint;

    iget-wide v4, v4, Lmiui/maml/elements/FramerateController$ControlPoint;->mTime:J

    iput-wide v4, p0, Lmiui/maml/elements/FramerateController;->mTimeRange:J

    .line 59
    iget-boolean v4, p0, Lmiui/maml/elements/FramerateController;->mLoop:Z

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lmiui/maml/elements/FramerateController;->mTimeRange:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    iput-boolean v4, p0, Lmiui/maml/elements/FramerateController;->mLoop:Z

    .line 60
    return-void

    .line 59
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private restart(J)V
    .locals 4
    .parameter "startTime"

    .prologue
    .line 67
    iget-object v1, p0, Lmiui/maml/elements/FramerateController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 68
    :try_start_0
    iget-wide v2, p0, Lmiui/maml/elements/FramerateController;->mDelay:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lmiui/maml/elements/FramerateController;->mStartTime:J

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/FramerateController;->mStopped:Z

    .line 70
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    .line 71
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    .line 72
    invoke-virtual {p0}, Lmiui/maml/elements/FramerateController;->requestUpdate()V

    .line 73
    monitor-exit v1

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 64
    return-void
.end method

.method protected playAnim(JJJZZ)V
    .locals 2
    .parameter "time"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "isLoop"
    .parameter "isDelay"

    .prologue
    .line 84
    invoke-super/range {p0 .. p8}, Lmiui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    .line 85
    sub-long v0, p1, p3

    invoke-direct {p0, v0, v1}, Lmiui/maml/elements/FramerateController;->restart(J)V

    .line 86
    return-void
.end method

.method public reset(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/FramerateController;->restart(J)V

    .line 80
    return-void
.end method

.method public updateFramerate(J)J
    .locals 13
    .parameter "currentTime"

    .prologue
    .line 90
    invoke-virtual {p0}, Lmiui/maml/elements/FramerateController;->updateVisibility()V

    .line 91
    invoke-virtual {p0}, Lmiui/maml/elements/FramerateController;->isVisible()Z

    move-result v8

    if-nez v8, :cond_0

    .line 92
    const-wide v8, 0x7fffffffffffffffL

    .line 128
    :goto_0
    return-wide v8

    .line 95
    :cond_0
    iget-object v10, p0, Lmiui/maml/elements/FramerateController;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 96
    :try_start_0
    iget-boolean v8, p0, Lmiui/maml/elements/FramerateController;->mStopped:Z

    if-eqz v8, :cond_1

    .line 97
    const-wide v8, 0x7fffffffffffffffL

    monitor-exit v10

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v8

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 100
    :cond_1
    :try_start_1
    iget-wide v8, p0, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    const-wide/16 v11, 0x0

    cmp-long v8, v8, v11

    if-lez v8, :cond_2

    .line 101
    iget-wide v8, p0, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    sub-long v1, p1, v8

    .line 102
    .local v1, elapsedTime:J
    const-wide/16 v8, 0x0

    cmp-long v8, v1, v8

    if-ltz v8, :cond_2

    iget-wide v8, p0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    cmp-long v8, v1, v8

    if-gez v8, :cond_2

    .line 103
    iget-wide v8, p0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    sub-long/2addr v8, v1

    iput-wide v8, p0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    .line 104
    iput-wide p1, p0, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    .line 105
    iget-wide v8, p0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    monitor-exit v10

    goto :goto_0

    .line 109
    .end local v1           #elapsedTime:J
    :cond_2
    iget-wide v8, p0, Lmiui/maml/elements/FramerateController;->mStartTime:J

    sub-long v1, p1, v8

    .line 110
    .restart local v1       #elapsedTime:J
    const-wide/16 v8, 0x0

    cmp-long v8, v1, v8

    if-gez v8, :cond_3

    .line 111
    const-wide/16 v1, 0x0

    .line 112
    :cond_3
    iget-boolean v8, p0, Lmiui/maml/elements/FramerateController;->mLoop:Z

    if-eqz v8, :cond_5

    iget-wide v8, p0, Lmiui/maml/elements/FramerateController;->mTimeRange:J

    rem-long v6, v1, v8

    .line 113
    .local v6, time:J
    :goto_1
    const-wide/16 v4, 0x0

    .line 114
    .local v4, nextUpdateTime:J
    iget-object v8, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, i:I
    :goto_2
    if-ltz v3, :cond_8

    .line 115
    iget-object v8, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/FramerateController$ControlPoint;

    .line 116
    .local v0, cp:Lmiui/maml/elements/FramerateController$ControlPoint;
    iget-wide v8, v0, Lmiui/maml/elements/FramerateController$ControlPoint;->mTime:J

    cmp-long v8, v6, v8

    if-ltz v8, :cond_7

    .line 117
    iget v8, v0, Lmiui/maml/elements/FramerateController$ControlPoint;->mFramerate:I

    int-to-float v8, v8

    invoke-virtual {p0, v8}, Lmiui/maml/elements/FramerateController;->requestFramerate(F)V

    .line 118
    iget-boolean v8, p0, Lmiui/maml/elements/FramerateController;->mLoop:Z

    if-nez v8, :cond_4

    iget-object v8, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v3, v8, :cond_4

    .line 119
    const/4 v8, 0x1

    iput-boolean v8, p0, Lmiui/maml/elements/FramerateController;->mStopped:Z

    .line 121
    :cond_4
    iput-wide p1, p0, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    .line 122
    iget-boolean v8, p0, Lmiui/maml/elements/FramerateController;->mStopped:Z

    if-eqz v8, :cond_6

    const-wide v8, 0x7fffffffffffffffL

    :goto_3
    iput-wide v8, p0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    .line 123
    iget-wide v8, p0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    monitor-exit v10

    goto/16 :goto_0

    .end local v0           #cp:Lmiui/maml/elements/FramerateController$ControlPoint;
    .end local v3           #i:I
    .end local v4           #nextUpdateTime:J
    .end local v6           #time:J
    :cond_5
    move-wide v6, v1

    .line 112
    goto :goto_1

    .line 122
    .restart local v0       #cp:Lmiui/maml/elements/FramerateController$ControlPoint;
    .restart local v3       #i:I
    .restart local v4       #nextUpdateTime:J
    .restart local v6       #time:J
    :cond_6
    sub-long v8, v4, v6

    goto :goto_3

    .line 125
    :cond_7
    iget-wide v4, v0, Lmiui/maml/elements/FramerateController$ControlPoint;->mTime:J

    .line 114
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 127
    .end local v0           #cp:Lmiui/maml/elements/FramerateController$ControlPoint;
    :cond_8
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    const-wide v8, 0x7fffffffffffffffL

    goto/16 :goto_0
.end method
