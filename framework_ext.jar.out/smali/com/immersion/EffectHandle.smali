.class public Lcom/immersion/EffectHandle;
.super Ljava/lang/Object;
.source "EffectHandle.java"


# instance fields
.field protected deviceHandle:I

.field protected effectHandle:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0
    .parameter "deviceHandle"
    .parameter "effectHandle"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/immersion/EffectHandle;->deviceHandle:I

    .line 31
    iput p2, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    .line 32
    return-void
.end method


# virtual methods
.method public appendWaveformEffect(Lcom/immersion/WaveformEffectDefinition;)V
    .locals 8
    .parameter "definition"

    .prologue
    .line 188
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->deviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    invoke-virtual {p1}, Lcom/immersion/WaveformEffectDefinition;->getData()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/immersion/WaveformEffectDefinition;->getDataSize()I

    move-result v4

    invoke-virtual {p1}, Lcom/immersion/WaveformEffectDefinition;->getSampleRate()I

    move-result v5

    invoke-virtual {p1}, Lcom/immersion/WaveformEffectDefinition;->getBitDepth()I

    move-result v6

    invoke-virtual {p1}, Lcom/immersion/WaveformEffectDefinition;->getMagnitude()I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/immersion/ImmVibe;->appendWaveformEffect(II[BIIII)I

    move-result v0

    iput v0, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    .line 195
    return-void
.end method

.method public destroyStreamingEffect()V
    .locals 3

    .prologue
    .line 508
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->deviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    invoke-virtual {v0, v1, v2}, Lcom/immersion/ImmVibe;->destroyStreamingEffect(II)V

    .line 509
    return-void
.end method

.method public getState()I
    .locals 3

    .prologue
    .line 261
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->deviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    invoke-virtual {v0, v1, v2}, Lcom/immersion/ImmVibe;->getEffectState(II)I

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/immersion/EffectHandle;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 286
    invoke-virtual {p0}, Lcom/immersion/EffectHandle;->getState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public modifyPlayingInterpolatedEffectInterpolant(I)V
    .locals 3
    .parameter "interpolant"

    .prologue
    .line 232
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->deviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/immersion/ImmVibe;->modifyPlayingInterpolatedEffectInterpolant(III)V

    .line 234
    return-void
.end method

.method public modifyPlayingMagSweepEffect(Lcom/immersion/MagSweepEffectDefinition;)V
    .locals 10
    .parameter "definition"

    .prologue
    .line 66
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->deviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getDuration()I

    move-result v3

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getMagnitude()I

    move-result v4

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getStyle()I

    move-result v5

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getAttackTime()I

    move-result v6

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getAttackLevel()I

    move-result v7

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getFadeTime()I

    move-result v8

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getFadeLevel()I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Lcom/immersion/ImmVibe;->modifyPlayingMagSweepEffect(IIIIIIIII)V

    .line 75
    return-void
.end method

.method public modifyPlayingPeriodicEffect(Lcom/immersion/PeriodicEffectDefinition;)V
    .locals 11
    .parameter "definition"

    .prologue
    .line 109
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->deviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getDuration()I

    move-result v3

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getMagnitude()I

    move-result v4

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getPeriod()I

    move-result v5

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getStyleAndWaveType()I

    move-result v6

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getAttackTime()I

    move-result v7

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getAttackLevel()I

    move-result v8

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getFadeTime()I

    move-result v9

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getFadeLevel()I

    move-result v10

    invoke-virtual/range {v0 .. v10}, Lcom/immersion/ImmVibe;->modifyPlayingPeriodicEffect(IIIIIIIIII)V

    .line 119
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 340
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->deviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    invoke-virtual {v0, v1, v2}, Lcom/immersion/ImmVibe;->pausePlayingEffect(II)V

    .line 341
    return-void
.end method

.method public playStreamingSample([BI)V
    .locals 3
    .parameter "streamingSample"
    .parameter "size"

    .prologue
    .line 432
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->deviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/immersion/ImmVibe;->playStreamingSample(II[BI)V

    .line 433
    return-void
.end method

.method public playStreamingSampleWithOffset([BII)V
    .locals 6
    .parameter "streamingSample"
    .parameter "size"
    .parameter "offsetTime"

    .prologue
    .line 481
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->deviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/immersion/ImmVibe;->playStreamingSampleWithOffset(II[BII)V

    .line 482
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 367
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->deviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    invoke-virtual {v0, v1, v2}, Lcom/immersion/ImmVibe;->resumePausedEffect(II)V

    .line 368
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 389
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->deviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    invoke-virtual {v0, v1, v2}, Lcom/immersion/ImmVibe;->stopPlayingEffect(II)V

    .line 390
    return-void
.end method
