.class Lmiui/v5/widget/PageScrollEffects$Ticker;
.super Ljava/lang/Object;
.source "PageScrollEffects.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/widget/PageScrollEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Ticker"
.end annotation


# instance fields
.field private final mDuration:J

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lmiui/v5/widget/PageScrollEffects$TickerListener;

.field private mTimeStart:J


# direct methods
.method constructor <init>(JLmiui/v5/widget/PageScrollEffects$TickerListener;)V
    .locals 2
    .parameter "dur"
    .parameter "l"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/v5/widget/PageScrollEffects$Ticker;->mHandler:Landroid/os/Handler;

    .line 120
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/v5/widget/PageScrollEffects$Ticker;->mTimeStart:J

    .line 123
    iput-wide p1, p0, Lmiui/v5/widget/PageScrollEffects$Ticker;->mDuration:J

    .line 124
    iput-object p3, p0, Lmiui/v5/widget/PageScrollEffects$Ticker;->mListener:Lmiui/v5/widget/PageScrollEffects$TickerListener;

    .line 125
    return-void
.end method

.method private getPercent(J)F
    .locals 6
    .parameter "current"

    .prologue
    .line 172
    iget-wide v2, p0, Lmiui/v5/widget/PageScrollEffects$Ticker;->mTimeStart:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 173
    const/4 v2, 0x0

    .line 177
    :goto_0
    return v2

    .line 176
    :cond_0
    iget-wide v2, p0, Lmiui/v5/widget/PageScrollEffects$Ticker;->mTimeStart:J

    sub-long v0, p1, v2

    .line 177
    .local v0, e:J
    iget-wide v2, p0, Lmiui/v5/widget/PageScrollEffects$Ticker;->mDuration:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    long-to-float v2, v0

    iget-wide v3, p0, Lmiui/v5/widget/PageScrollEffects$Ticker;->mDuration:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f80

    goto :goto_0
.end method

.method private stop(Z)V
    .locals 5
    .parameter "abort"

    .prologue
    .line 149
    iget-wide v1, p0, Lmiui/v5/widget/PageScrollEffects$Ticker;->mTimeStart:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 160
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lmiui/v5/widget/PageScrollEffects$Ticker;->getPercent(J)F

    move-result v0

    .line 154
    .local v0, percent:F
    iget-object v1, p0, Lmiui/v5/widget/PageScrollEffects$Ticker;->mListener:Lmiui/v5/widget/PageScrollEffects$TickerListener;

    invoke-interface {v1, v0}, Lmiui/v5/widget/PageScrollEffects$TickerListener;->onUpdate(F)V

    .line 155
    if-eqz p1, :cond_1

    .line 156
    iget-object v1, p0, Lmiui/v5/widget/PageScrollEffects$Ticker;->mListener:Lmiui/v5/widget/PageScrollEffects$TickerListener;

    invoke-interface {v1, v0}, Lmiui/v5/widget/PageScrollEffects$TickerListener;->onAbort(F)V

    .line 158
    :cond_1
    iget-object v1, p0, Lmiui/v5/widget/PageScrollEffects$Ticker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 159
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lmiui/v5/widget/PageScrollEffects$Ticker;->mTimeStart:J

    goto :goto_0
.end method

.method private tick()J
    .locals 11

    .prologue
    const-wide/16 v5, 0x0

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 164
    .local v0, current:J
    invoke-direct {p0, v0, v1}, Lmiui/v5/widget/PageScrollEffects$Ticker;->getPercent(J)F

    move-result v4

    .line 165
    .local v4, percent:F
    iget-object v7, p0, Lmiui/v5/widget/PageScrollEffects$Ticker;->mListener:Lmiui/v5/widget/PageScrollEffects$TickerListener;

    invoke-interface {v7, v4}, Lmiui/v5/widget/PageScrollEffects$TickerListener;->onUpdate(F)V

    .line 167
    iget-wide v7, p0, Lmiui/v5/widget/PageScrollEffects$Ticker;->mDuration:J

    iget-wide v9, p0, Lmiui/v5/widget/PageScrollEffects$Ticker;->mTimeStart:J

    sub-long v9, v0, v9

    sub-long v2, v7, v9

    .line 168
    .local v2, next:J
    cmp-long v7, v2, v5

    if-lez v7, :cond_0

    const-wide/16 v5, 0x5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_0
    return-wide v5
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/v5/widget/PageScrollEffects$Ticker;->stop(Z)V

    .line 146
    return-void
.end method

.method public isStarted()Z
    .locals 4

    .prologue
    .line 138
    iget-wide v0, p0, Lmiui/v5/widget/PageScrollEffects$Ticker;->mTimeStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 182
    invoke-direct {p0}, Lmiui/v5/widget/PageScrollEffects$Ticker;->tick()J

    move-result-wide v0

    .line 183
    .local v0, next:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 184
    iget-object v2, p0, Lmiui/v5/widget/PageScrollEffects$Ticker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 189
    :goto_0
    return-void

    .line 186
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lmiui/v5/widget/PageScrollEffects$Ticker;->stop(Z)V

    .line 187
    iget-object v2, p0, Lmiui/v5/widget/PageScrollEffects$Ticker;->mListener:Lmiui/v5/widget/PageScrollEffects$TickerListener;

    invoke-interface {v2}, Lmiui/v5/widget/PageScrollEffects$TickerListener;->onComplete()V

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lmiui/v5/widget/PageScrollEffects$Ticker;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/v5/widget/PageScrollEffects$Ticker;->mTimeStart:J

    .line 132
    iget-object v0, p0, Lmiui/v5/widget/PageScrollEffects$Ticker;->mListener:Lmiui/v5/widget/PageScrollEffects$TickerListener;

    invoke-interface {v0}, Lmiui/v5/widget/PageScrollEffects$TickerListener;->onStart()V

    .line 133
    iget-object v0, p0, Lmiui/v5/widget/PageScrollEffects$Ticker;->mListener:Lmiui/v5/widget/PageScrollEffects$TickerListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmiui/v5/widget/PageScrollEffects$TickerListener;->onUpdate(F)V

    .line 134
    iget-object v0, p0, Lmiui/v5/widget/PageScrollEffects$Ticker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
