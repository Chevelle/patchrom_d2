.class public Lcom/immersion/Device;
.super Ljava/lang/Object;
.source "Device.java"


# instance fields
.field protected deviceHandle:I

.field protected deviceIndex:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 992
    return-void
.end method

.method public static getCapabilityBool(II)Z
    .locals 1
    .parameter "deviceIndex"
    .parameter "devCapType"

    .prologue
    .line 273
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/immersion/ImmVibe;->getDeviceCapabilityBool(II)Z

    move-result v0

    return v0
.end method

.method public static getCapabilityInt32(II)I
    .locals 1
    .parameter "deviceIndex"
    .parameter "devCapType"

    .prologue
    .line 335
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/immersion/ImmVibe;->getDeviceCapabilityInt32(II)I

    move-result v0

    return v0
.end method

.method public static getCapabilityString(II)Ljava/lang/String;
    .locals 1
    .parameter "deviceIndex"
    .parameter "devCapType"

    .prologue
    .line 394
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/immersion/ImmVibe;->getDeviceCapabilityString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCount()I
    .locals 1

    .prologue
    .line 172
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/immersion/ImmVibe;->getDeviceCount()I

    move-result v0

    return v0
.end method

.method public static getState(I)I
    .locals 1
    .parameter "deviceIndex"

    .prologue
    .line 206
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/immersion/ImmVibe;->getDeviceState(I)I

    move-result v0

    return v0
.end method

.method public static newDevice()Lcom/immersion/Device;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {}, Lcom/immersion/Device;->newDeviceInstance()Lcom/immersion/Device;

    move-result-object v0

    .line 61
    .local v0, device:Lcom/immersion/Device;
    if-eqz v0, :cond_0

    .line 63
    const/4 v1, -0x1

    iput v1, v0, Lcom/immersion/Device;->deviceIndex:I

    .line 64
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    invoke-static {}, Lcom/immersion/Device;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/immersion/ImmVibe;->openCompositeDevice(I)I

    move-result v1

    iput v1, v0, Lcom/immersion/Device;->deviceHandle:I

    .line 70
    return-object v0

    .line 68
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VIBE_E_FAIL"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static newDevice(I)Lcom/immersion/Device;
    .locals 3
    .parameter "deviceIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {}, Lcom/immersion/Device;->newDeviceInstance()Lcom/immersion/Device;

    move-result-object v0

    .line 106
    .local v0, device:Lcom/immersion/Device;
    if-eqz v0, :cond_0

    .line 108
    iput p0, v0, Lcom/immersion/Device;->deviceIndex:I

    .line 109
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/immersion/ImmVibe;->openDevice(I)I

    move-result v1

    iput v1, v0, Lcom/immersion/Device;->deviceHandle:I

    .line 115
    return-object v0

    .line 113
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VIBE_E_FAIL"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static newDeviceInstance()Lcom/immersion/Device;
    .locals 2

    .prologue
    .line 1027
    const/4 v0, 0x0

    .line 1029
    .local v0, device:Lcom/immersion/Device;
    const-string v1, "com.immersion.android.Device"

    invoke-static {v1}, Lcom/immersion/Device;->newDeviceInstanceForName(Ljava/lang/String;)Lcom/immersion/Device;

    move-result-object v0

    .line 1031
    if-nez v0, :cond_0

    .line 1033
    const-string v1, "com.immersion.J2ME.Device"

    invoke-static {v1}, Lcom/immersion/Device;->newDeviceInstanceForName(Ljava/lang/String;)Lcom/immersion/Device;

    move-result-object v0

    .line 1035
    if-nez v0, :cond_0

    .line 1037
    new-instance v0, Lcom/immersion/Device;

    .end local v0           #device:Lcom/immersion/Device;
    invoke-direct {v0}, Lcom/immersion/Device;-><init>()V

    .line 1040
    .restart local v0       #device:Lcom/immersion/Device;
    :cond_0
    return-object v0
.end method

.method private static newDeviceInstanceForName(Ljava/lang/String;)Lcom/immersion/Device;
    .locals 4
    .parameter "deviceClassName"

    .prologue
    .line 1007
    const/4 v1, 0x0

    .line 1011
    .local v1, device:Lcom/immersion/Device;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1013
    .local v2, t:Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/immersion/Device;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1019
    .end local v2           #t:Ljava/lang/Class;
    :goto_0
    return-object v1

    .line 1015
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 138
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-virtual {v0, v1}, Lcom/immersion/ImmVibe;->closeDevice(I)V

    .line 139
    iput v2, p0, Lcom/immersion/Device;->deviceHandle:I

    .line 140
    iput v2, p0, Lcom/immersion/Device;->deviceIndex:I

    .line 141
    return-void
.end method

.method public createStreamingEffect()Lcom/immersion/EffectHandle;
    .locals 3

    .prologue
    .line 961
    iget v0, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    iget v2, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-virtual {v1, v2}, Lcom/immersion/ImmVibe;->createStreamingEffect(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/immersion/Device;->newEffectHandle(II)Lcom/immersion/EffectHandle;

    move-result-object v0

    return-object v0
.end method

.method public getCapabilityBool(I)Z
    .locals 2
    .parameter "devCapType"

    .prologue
    .line 300
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->deviceIndex:I

    invoke-virtual {v0, v1, p1}, Lcom/immersion/ImmVibe;->getDeviceCapabilityBool(II)Z

    move-result v0

    return v0
.end method

.method public getCapabilityInt32(I)I
    .locals 2
    .parameter "devCapType"

    .prologue
    .line 360
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->deviceIndex:I

    invoke-virtual {v0, v1, p1}, Lcom/immersion/ImmVibe;->getDeviceCapabilityInt32(II)I

    move-result v0

    return v0
.end method

.method public getCapabilityString(I)Ljava/lang/String;
    .locals 2
    .parameter "devCapType"

    .prologue
    .line 418
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->deviceIndex:I

    invoke-virtual {v0, v1, p1}, Lcom/immersion/ImmVibe;->getDeviceCapabilityString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyBool(I)Z
    .locals 2
    .parameter "devPropType"

    .prologue
    .line 447
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-virtual {v0, v1, p1}, Lcom/immersion/ImmVibe;->getDevicePropertyBool(II)Z

    move-result v0

    return v0
.end method

.method public getPropertyInt32(I)I
    .locals 2
    .parameter "devPropType"

    .prologue
    .line 507
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-virtual {v0, v1, p1}, Lcom/immersion/ImmVibe;->getDevicePropertyInt32(II)I

    move-result v0

    return v0
.end method

.method public getPropertyString(I)Ljava/lang/String;
    .locals 2
    .parameter "devPropType"

    .prologue
    .line 576
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-virtual {v0, v1, p1}, Lcom/immersion/ImmVibe;->getDevicePropertyString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 236
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->deviceIndex:I

    invoke-virtual {v0, v1}, Lcom/immersion/ImmVibe;->getDeviceState(I)I

    move-result v0

    return v0
.end method

.method protected newEffectHandle(II)Lcom/immersion/EffectHandle;
    .locals 1
    .parameter "deviceHandle"
    .parameter "effectHandle"

    .prologue
    .line 999
    new-instance v0, Lcom/immersion/EffectHandle;

    invoke-direct {v0, p1, p2}, Lcom/immersion/EffectHandle;-><init>(II)V

    return-object v0
.end method

.method public playIVTEffect(Lcom/immersion/IVTBuffer;I)Lcom/immersion/EffectHandle;
    .locals 4
    .parameter "ivt"
    .parameter "effectIndex"

    .prologue
    .line 664
    iget v0, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    iget v2, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-virtual {p1}, Lcom/immersion/IVTBuffer;->getBuffer()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/immersion/ImmVibe;->playIVTEffect(I[BI)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/immersion/Device;->newEffectHandle(II)Lcom/immersion/EffectHandle;

    move-result-object v0

    return-object v0
.end method

.method public playIVTEffectRepeat(Lcom/immersion/IVTBuffer;IB)Lcom/immersion/EffectHandle;
    .locals 4
    .parameter "ivt"
    .parameter "effectIndex"
    .parameter "repeat"

    .prologue
    .line 791
    iget v0, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    iget v2, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-virtual {p1}, Lcom/immersion/IVTBuffer;->getBuffer()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2, p3}, Lcom/immersion/ImmVibe;->playIVTEffectRepeat(I[BIB)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/immersion/Device;->newEffectHandle(II)Lcom/immersion/EffectHandle;

    move-result-object v0

    return-object v0
.end method

.method public playIVTInterpolatedEffect(Lcom/immersion/IVTBuffer;II)Lcom/immersion/EffectHandle;
    .locals 4
    .parameter "ivt"
    .parameter "effectIndex"
    .parameter "interpolant"

    .prologue
    .line 718
    iget v0, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    iget v2, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-virtual {p1}, Lcom/immersion/IVTBuffer;->getBuffer()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2, p3}, Lcom/immersion/ImmVibe;->playIVTInterpolatedEffect(I[BII)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/immersion/Device;->newEffectHandle(II)Lcom/immersion/EffectHandle;

    move-result-object v0

    return-object v0
.end method

.method public playMagSweepEffect(Lcom/immersion/MagSweepEffectDefinition;)Lcom/immersion/EffectHandle;
    .locals 10
    .parameter "definition"

    .prologue
    .line 824
    iget v9, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getDuration()I

    move-result v2

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getMagnitude()I

    move-result v3

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getStyle()I

    move-result v4

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getAttackTime()I

    move-result v5

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getAttackLevel()I

    move-result v6

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getFadeTime()I

    move-result v7

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getFadeLevel()I

    move-result v8

    invoke-virtual/range {v0 .. v8}, Lcom/immersion/ImmVibe;->playMagSweepEffect(IIIIIIII)I

    move-result v0

    invoke-virtual {p0, v9, v0}, Lcom/immersion/Device;->newEffectHandle(II)Lcom/immersion/EffectHandle;

    move-result-object v0

    return-object v0
.end method

.method public playPeriodicEffect(Lcom/immersion/PeriodicEffectDefinition;)Lcom/immersion/EffectHandle;
    .locals 11
    .parameter "definition"

    .prologue
    .line 864
    iget v10, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getDuration()I

    move-result v2

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getMagnitude()I

    move-result v3

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getPeriod()I

    move-result v4

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getStyleAndWaveType()I

    move-result v5

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getAttackTime()I

    move-result v6

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getAttackLevel()I

    move-result v7

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getFadeTime()I

    move-result v8

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getFadeLevel()I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Lcom/immersion/ImmVibe;->playPeriodicEffect(IIIIIIIII)I

    move-result v0

    invoke-virtual {p0, v10, v0}, Lcom/immersion/Device;->newEffectHandle(II)Lcom/immersion/EffectHandle;

    move-result-object v0

    return-object v0
.end method

.method public playWaveformEffect(Lcom/immersion/WaveformEffectDefinition;)Lcom/immersion/EffectHandle;
    .locals 8
    .parameter "definition"

    .prologue
    .line 922
    iget v7, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-virtual {p1}, Lcom/immersion/WaveformEffectDefinition;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/immersion/WaveformEffectDefinition;->getDataSize()I

    move-result v3

    invoke-virtual {p1}, Lcom/immersion/WaveformEffectDefinition;->getSampleRate()I

    move-result v4

    invoke-virtual {p1}, Lcom/immersion/WaveformEffectDefinition;->getBitDepth()I

    move-result v5

    invoke-virtual {p1}, Lcom/immersion/WaveformEffectDefinition;->getMagnitude()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/immersion/ImmVibe;->playWaveformEffect(I[BIIII)I

    move-result v0

    invoke-virtual {p0, v7, v0}, Lcom/immersion/Device;->newEffectHandle(II)Lcom/immersion/EffectHandle;

    move-result-object v0

    return-object v0
.end method

.method public setPropertyBool(IZ)V
    .locals 2
    .parameter "devPropType"
    .parameter "devPropValue"

    .prologue
    .line 476
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/immersion/ImmVibe;->setDevicePropertyBool(IIZ)V

    .line 477
    return-void
.end method

.method public setPropertyInt32(II)V
    .locals 2
    .parameter "devPropType"
    .parameter "devPropValue"

    .prologue
    .line 547
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/immersion/ImmVibe;->setDevicePropertyInt32(III)V

    .line 548
    return-void
.end method

.method public setPropertyString(ILjava/lang/String;)V
    .locals 2
    .parameter "devPropType"
    .parameter "devPropValue"

    .prologue
    .line 615
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/immersion/ImmVibe;->setDevicePropertyString(IILjava/lang/String;)V

    .line 616
    return-void
.end method

.method public stopAllPlayingEffects()V
    .locals 2

    .prologue
    .line 984
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-virtual {v0, v1}, Lcom/immersion/ImmVibe;->stopAllPlayingEffects(I)V

    .line 985
    return-void
.end method
