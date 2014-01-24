.class Lmiui/v5/widget/PageScrollEffects$SerialTicker;
.super Ljava/lang/Object;
.source "PageScrollEffects.java"

# interfaces
.implements Lmiui/v5/widget/PageScrollEffects$TickerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/widget/PageScrollEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerialTicker"
.end annotation


# instance fields
.field private final mListener:Lmiui/v5/widget/PageScrollEffects$TickerListener;

.field private mPercentFrom:F

.field private mPercentTo:F

.field private mStarted:Z

.field private final mTicker:Lmiui/v5/widget/PageScrollEffects$Ticker;

.field private mUpdateLast:F


# direct methods
.method public constructor <init>(JLmiui/v5/widget/PageScrollEffects$TickerListener;)V
    .locals 1
    .parameter "dur"
    .parameter "l"

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const v0, 0x7f7fffff

    iput v0, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mUpdateLast:F

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mStarted:Z

    .line 204
    iput-object p3, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mListener:Lmiui/v5/widget/PageScrollEffects$TickerListener;

    .line 205
    new-instance v0, Lmiui/v5/widget/PageScrollEffects$Ticker;

    invoke-direct {v0, p1, p2, p0}, Lmiui/v5/widget/PageScrollEffects$Ticker;-><init>(JLmiui/v5/widget/PageScrollEffects$TickerListener;)V

    iput-object v0, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mTicker:Lmiui/v5/widget/PageScrollEffects$Ticker;

    .line 206
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 226
    iput v0, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mPercentFrom:F

    .line 227
    iput v0, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mPercentTo:F

    .line 228
    const v0, 0x7f7fffff

    iput v0, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mUpdateLast:F

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mStarted:Z

    .line 230
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 221
    invoke-direct {p0}, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->reset()V

    .line 222
    iget-object v0, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mTicker:Lmiui/v5/widget/PageScrollEffects$Ticker;

    invoke-virtual {v0}, Lmiui/v5/widget/PageScrollEffects$Ticker;->abort()V

    .line 223
    return-void
.end method

.method public onAbort(F)V
    .locals 2
    .parameter "percent"

    .prologue
    .line 252
    iget v0, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mPercentTo:F

    iget v1, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mPercentFrom:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mPercentFrom:F

    add-float/2addr v0, v1

    iput v0, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mPercentFrom:F

    .line 253
    return-void
.end method

.method public onComplete()V
    .locals 2

    .prologue
    .line 257
    iget v0, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mPercentTo:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mPercentTo:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 258
    :cond_0
    iget-object v0, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mListener:Lmiui/v5/widget/PageScrollEffects$TickerListener;

    invoke-interface {v0}, Lmiui/v5/widget/PageScrollEffects$TickerListener;->onComplete()V

    .line 259
    invoke-direct {p0}, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->reset()V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_1
    iget v0, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mPercentTo:F

    iput v0, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mPercentFrom:F

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 267
    iget-boolean v0, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mStarted:Z

    if-nez v0, :cond_0

    iget v0, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mPercentFrom:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mStarted:Z

    .line 269
    iget-object v0, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mListener:Lmiui/v5/widget/PageScrollEffects$TickerListener;

    invoke-interface {v0}, Lmiui/v5/widget/PageScrollEffects$TickerListener;->onStart()V

    .line 271
    :cond_0
    return-void
.end method

.method public onUpdate(F)V
    .locals 4
    .parameter "percent"

    .prologue
    const/high16 v3, 0x3f80

    .line 236
    cmpl-float v2, p1, v3

    if-nez v2, :cond_3

    iget v2, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mPercentTo:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget v2, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mPercentTo:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    .line 237
    :cond_0
    const/4 v1, 0x1

    .line 238
    .local v1, force:Z
    iget v0, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mPercentTo:F

    .line 244
    .local v0, current:F
    :goto_0
    if-nez v1, :cond_1

    iget v2, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mUpdateLast:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a83126f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 245
    :cond_1
    iget-object v2, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mListener:Lmiui/v5/widget/PageScrollEffects$TickerListener;

    invoke-interface {v2, v0}, Lmiui/v5/widget/PageScrollEffects$TickerListener;->onUpdate(F)V

    .line 246
    iput v0, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mUpdateLast:F

    .line 248
    :cond_2
    return-void

    .line 240
    .end local v0           #current:F
    .end local v1           #force:Z
    :cond_3
    const/4 v1, 0x0

    .line 241
    .restart local v1       #force:Z
    iget v2, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mPercentTo:F

    iget v3, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mPercentFrom:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    iget v3, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mPercentFrom:F

    add-float v0, v2, v3

    .restart local v0       #current:F
    goto :goto_0
.end method

.method public setPercent(F)V
    .locals 1
    .parameter "to"

    .prologue
    .line 209
    iget-object v0, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mTicker:Lmiui/v5/widget/PageScrollEffects$Ticker;

    invoke-virtual {v0}, Lmiui/v5/widget/PageScrollEffects$Ticker;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mTicker:Lmiui/v5/widget/PageScrollEffects$Ticker;

    invoke-virtual {v0}, Lmiui/v5/widget/PageScrollEffects$Ticker;->abort()V

    .line 213
    :cond_0
    iput p1, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mPercentTo:F

    .line 214
    iget-object v0, p0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->mTicker:Lmiui/v5/widget/PageScrollEffects$Ticker;

    invoke-virtual {v0}, Lmiui/v5/widget/PageScrollEffects$Ticker;->start()V

    .line 215
    return-void
.end method
