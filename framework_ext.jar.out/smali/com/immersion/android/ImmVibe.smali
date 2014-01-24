.class public Lcom/immersion/android/ImmVibe;
.super Lcom/immersion/ImmVibe;
.source "ImmVibe.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 420
    const-string v0, "ImmVibeJ"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/immersion/ImmVibe;-><init>()V

    return-void
.end method

.method private native AppendWaveformEffect(II[BIIII)I
.end method

.method private native CloseDevice2(I)V
.end method

.method private native CreateStreamingEffect(I)I
.end method

.method private native DeleteIVTFile(Ljava/lang/String;)V
.end method

.method private native DestroyStreamingEffect(II)V
.end method

.method private native GetBuiltInEffects()[B
.end method

.method private native GetDeviceCapabilityBool(II)Z
.end method

.method private native GetDeviceCapabilityInt32(II)I
.end method

.method private native GetDeviceCapabilityString(II)Ljava/lang/String;
.end method

.method private native GetDeviceCount()I
.end method

.method private native GetDeviceKernelParameter(II)I
.end method

.method private native GetDevicePropertyBool(II)Z
.end method

.method private native GetDevicePropertyInt32(II)I
.end method

.method private native GetDevicePropertyString(II)Ljava/lang/String;
.end method

.method private native GetDeviceState(I)I
.end method

.method private native GetEffectState(II)I
.end method

.method private native GetIVTEffectCount([B)I
.end method

.method private native GetIVTEffectDuration([BI)I
.end method

.method private native GetIVTEffectIndexFromName([BLjava/lang/String;)I
.end method

.method private native GetIVTEffectName([BI)Ljava/lang/String;
.end method

.method private native GetIVTEffectType([BI)I
.end method

.method private native GetIVTMagSweepEffectDefinition([BI[I[I[I[I[I[I[I)V
.end method

.method private native GetIVTPeriodicEffectDefinition([BI[I[I[I[I[I[I[I[I)V
.end method

.method private native GetIVTSize2([B)I
.end method

.method private native Initialize2()V
.end method

.method private native InitializeIVTBuffer(I)[B
.end method

.method private native InsertIVTElement2([BI[I[B)[B
.end method

.method private native ModifyPlayingInterpolatedEffectInterpolant(III)V
.end method

.method private native ModifyPlayingMagSweepEffect(IIIIIIIII)V
.end method

.method private native ModifyPlayingPeriodicEffect(IIIIIIIIII)V
.end method

.method private native OpenCompositeDevice2([II)I
.end method

.method private native OpenDevice2(I)I
.end method

.method private native PausePlayingEffect(II)V
.end method

.method private native PlayIVTEffect(I[BI)I
.end method

.method private native PlayIVTEffectRepeat(I[BIB)I
.end method

.method private native PlayIVTInterpolatedEffect(I[BII)I
.end method

.method private native PlayMagSweepEffect(IIIIIIII)I
.end method

.method private native PlayPeriodicEffect(IIIIIIIII)I
.end method

.method private native PlayStreamingSample(II[BI)V
.end method

.method private native PlayStreamingSampleWithOffset(II[BII)V
.end method

.method private native PlayWaveformEffect(I[BIIII)I
.end method

.method private native ReadIVTElement2([BII)[I
.end method

.method private native ReadIVTElementData([BII)[B
.end method

.method private native RemoveIVTElement2([BII)[B
.end method

.method private native ResumePausedEffect(II)V
.end method

.method private native SaveIVTFile([BLjava/lang/String;)V
.end method

.method private native SetDevicePropertyBool(IIZ)V
.end method

.method private native SetDevicePropertyInt32(III)V
.end method

.method private native SetDevicePropertyString(IILjava/lang/String;)V
.end method

.method private native StopAllPlayingEffects(I)V
.end method

.method private native StopPlayingEffect(II)V
.end method

.method private native Terminate2()V
.end method


# virtual methods
.method public appendWaveformEffect(II[BIIII)I
    .locals 1
    .parameter "deviceHandle"
    .parameter "effectHandle"
    .parameter "data"
    .parameter "dataSize"
    .parameter "sampleRate"
    .parameter "bitDepth"
    .parameter "magnitude"

    .prologue
    .line 196
    invoke-direct/range {p0 .. p7}, Lcom/immersion/android/ImmVibe;->AppendWaveformEffect(II[BIIII)I

    move-result v0

    return v0
.end method

.method public closeDevice(I)V
    .locals 1
    .parameter "deviceHandle"

    .prologue
    .line 141
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 143
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->CloseDevice2(I)V

    .line 145
    :cond_0
    return-void
.end method

.method public createStreamingEffect(I)I
    .locals 1
    .parameter "deviceHandle"

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->CreateStreamingEffect(I)I

    move-result v0

    return v0
.end method

.method public deleteIVTFile(Ljava/lang/String;)V
    .locals 0
    .parameter "pathName"

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->DeleteIVTFile(Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public destroyStreamingEffect(II)V
    .locals 0
    .parameter "deviceHandle"
    .parameter "effectHandle"

    .prologue
    .line 240
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->DestroyStreamingEffect(II)V

    .line 241
    return-void
.end method

.method public getBuiltInEffects()[B
    .locals 1

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/immersion/android/ImmVibe;->GetBuiltInEffects()[B

    move-result-object v0

    return-object v0
.end method

.method public getDeviceCapabilityBool(II)Z
    .locals 1
    .parameter "deviceIndex"
    .parameter "devCapType"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetDeviceCapabilityBool(II)Z

    move-result v0

    return v0
.end method

.method public getDeviceCapabilityInt32(II)I
    .locals 1
    .parameter "deviceIndex"
    .parameter "devCapType"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetDeviceCapabilityInt32(II)I

    move-result v0

    return v0
.end method

.method public getDeviceCapabilityString(II)Ljava/lang/String;
    .locals 1
    .parameter "deviceIndex"
    .parameter "devCapType"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetDeviceCapabilityString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceCount()I
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/immersion/android/ImmVibe;->GetDeviceCount()I

    move-result v0

    return v0
.end method

.method public getDeviceKernelParameter(II)I
    .locals 1
    .parameter "deviceIndex"
    .parameter "kernelParamID"

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetDeviceKernelParameter(II)I

    move-result v0

    return v0
.end method

.method public getDevicePropertyBool(II)Z
    .locals 1
    .parameter "deviceHandle"
    .parameter "devPropType"

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetDevicePropertyBool(II)Z

    move-result v0

    return v0
.end method

.method public getDevicePropertyInt32(II)I
    .locals 1
    .parameter "deviceHandle"
    .parameter "devPropType"

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetDevicePropertyInt32(II)I

    move-result v0

    return v0
.end method

.method public getDevicePropertyString(II)Ljava/lang/String;
    .locals 1
    .parameter "deviceHandle"
    .parameter "devPropType"

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetDevicePropertyString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceState(I)I
    .locals 1
    .parameter "deviceIndex"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->GetDeviceState(I)I

    move-result v0

    return v0
.end method

.method public getEffectState(II)I
    .locals 1
    .parameter "deviceHandle"
    .parameter "effectHandle"

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetEffectState(II)I

    move-result v0

    return v0
.end method

.method public getIVTEffectCount([B)I
    .locals 1
    .parameter "ivt"

    .prologue
    .line 282
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->GetIVTEffectCount([B)I

    move-result v0

    return v0
.end method

.method public getIVTEffectDuration([BI)I
    .locals 1
    .parameter "ivt"
    .parameter "effectIndex"

    .prologue
    .line 298
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetIVTEffectDuration([BI)I

    move-result v0

    return v0
.end method

.method public getIVTEffectIndexFromName([BLjava/lang/String;)I
    .locals 1
    .parameter "ivt"
    .parameter "effectName"

    .prologue
    .line 290
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetIVTEffectIndexFromName([BLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIVTEffectName([BI)Ljava/lang/String;
    .locals 1
    .parameter "ivt"
    .parameter "effectIndex"

    .prologue
    .line 286
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetIVTEffectName([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIVTEffectType([BI)I
    .locals 1
    .parameter "ivt"
    .parameter "effectIndex"

    .prologue
    .line 294
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetIVTEffectType([BI)I

    move-result v0

    return v0
.end method

.method public getIVTMagSweepEffectDefinition([BI[I[I[I[I[I[I[I)V
    .locals 0
    .parameter "ivt"
    .parameter "effectIndex"
    .parameter "duration"
    .parameter "magnitude"
    .parameter "style"
    .parameter "attackTime"
    .parameter "attackLevel"
    .parameter "fadeTime"
    .parameter "fadeLevel"

    .prologue
    .line 302
    invoke-direct/range {p0 .. p9}, Lcom/immersion/android/ImmVibe;->GetIVTMagSweepEffectDefinition([BI[I[I[I[I[I[I[I)V

    .line 303
    return-void
.end method

.method public getIVTPeriodicEffectDefinition([BI[I[I[I[I[I[I[I[I)V
    .locals 0
    .parameter "ivt"
    .parameter "effectIndex"
    .parameter "duration"
    .parameter "magnitude"
    .parameter "period"
    .parameter "styleAndWaveType"
    .parameter "attackTime"
    .parameter "attackLevel"
    .parameter "fadeTime"
    .parameter "fadeLevel"

    .prologue
    .line 306
    invoke-direct/range {p0 .. p10}, Lcom/immersion/android/ImmVibe;->GetIVTPeriodicEffectDefinition([BI[I[I[I[I[I[I[I[I)V

    .line 307
    return-void
.end method

.method public getIVTSize([B)I
    .locals 1
    .parameter "ivt"

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->GetIVTSize2([B)I

    move-result v0

    return v0
.end method

.method public getIVTSize([BI)I
    .locals 1
    .parameter "ivt"
    .parameter "bufferSize"

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->GetIVTSize2([B)I

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/immersion/android/ImmVibe;->Initialize2()V

    .line 25
    return-void
.end method

.method public initializeIVTBuffer(I)[B
    .locals 1
    .parameter "bufferSize"

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->InitializeIVTBuffer(I)[B

    move-result-object v0

    return-object v0
.end method

.method public insertIVTElement([BII[I)[B
    .locals 1
    .parameter "ivt"
    .parameter "bufferSize"
    .parameter "timelineIndex"
    .parameter "ivtElement"

    .prologue
    .line 370
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, p4, v0}, Lcom/immersion/android/ImmVibe;->InsertIVTElement2([BI[I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public insertIVTElement([BI[I[B)[B
    .locals 1
    .parameter "ivt"
    .parameter "timelineIndex"
    .parameter "ivtElement"
    .parameter "ivtElementData"

    .prologue
    .line 341
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/immersion/android/ImmVibe;->InsertIVTElement2([BI[I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public modifyPlayingInterpolatedEffectInterpolant(III)V
    .locals 0
    .parameter "deviceHandle"
    .parameter "effectHandle"
    .parameter "interpolant"

    .prologue
    .line 232
    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/android/ImmVibe;->ModifyPlayingInterpolatedEffectInterpolant(III)V

    .line 233
    return-void
.end method

.method public modifyPlayingMagSweepEffect(IIIIIIIII)V
    .locals 0
    .parameter "deviceHandle"
    .parameter "effectHandle"
    .parameter "duration"
    .parameter "magnitude"
    .parameter "style"
    .parameter "attackTime"
    .parameter "attackLevel"
    .parameter "fadeTime"
    .parameter "fadeLevel"

    .prologue
    .line 200
    invoke-direct/range {p0 .. p9}, Lcom/immersion/android/ImmVibe;->ModifyPlayingMagSweepEffect(IIIIIIIII)V

    .line 201
    return-void
.end method

.method public modifyPlayingPeriodicEffect(IIIIIIIIII)V
    .locals 0
    .parameter "deviceHandle"
    .parameter "effectHandle"
    .parameter "duration"
    .parameter "magnitude"
    .parameter "period"
    .parameter "styleAndWaveType"
    .parameter "attackTime"
    .parameter "attackLevel"
    .parameter "fadeTime"
    .parameter "fadeLevel"

    .prologue
    .line 204
    invoke-direct/range {p0 .. p10}, Lcom/immersion/android/ImmVibe;->ModifyPlayingPeriodicEffect(IIIIIIIIII)V

    .line 205
    return-void
.end method

.method public openCompositeDevice(I)I
    .locals 1
    .parameter "numDevice"

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/immersion/android/ImmVibe;->OpenCompositeDevice2([II)I

    move-result v0

    return v0
.end method

.method public openCompositeDevice([IILjava/lang/String;)I
    .locals 4
    .parameter "array"
    .parameter "numDevice"
    .parameter "licenseKey"

    .prologue
    .line 124
    const/4 v2, 0x0

    invoke-direct {p0, v2, p2}, Lcom/immersion/android/ImmVibe;->OpenCompositeDevice2([II)I

    move-result v1

    .line 125
    .local v1, ret:I
    if-eqz p3, :cond_0

    const-string v2, ""

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2, p3}, Lcom/immersion/android/ImmVibe;->setDevicePropertyString(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    return v1

    .line 131
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/immersion/android/ImmVibe;->CloseDevice2(I)V

    .line 134
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public openDevice(I)I
    .locals 1
    .parameter "deviceIndex"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->OpenDevice2(I)I

    move-result v0

    return v0
.end method

.method public openDevice(ILjava/lang/String;)I
    .locals 4
    .parameter "deviceIndex"
    .parameter "licenseKey"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->OpenDevice2(I)I

    move-result v1

    .line 81
    .local v1, ret:I
    if-eqz p2, :cond_0

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2, p2}, Lcom/immersion/android/ImmVibe;->setDevicePropertyString(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    return v1

    .line 87
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/immersion/android/ImmVibe;->CloseDevice2(I)V

    .line 90
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public pausePlayingEffect(II)V
    .locals 0
    .parameter "deviceHandle"
    .parameter "effectHandle"

    .prologue
    .line 212
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->PausePlayingEffect(II)V

    .line 213
    return-void
.end method

.method public playBuiltInEffect(II)I
    .locals 1
    .parameter "deviceHandle"
    .parameter "effectIndex"

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/immersion/android/ImmVibe;->GetBuiltInEffects()[B

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/immersion/android/ImmVibe;->PlayIVTEffect(I[BI)I

    move-result v0

    return v0
.end method

.method public playBuiltInEffectRepeat(IIB)I
    .locals 1
    .parameter "deviceHandle"
    .parameter "effectIndex"
    .parameter "repeat"

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/immersion/android/ImmVibe;->GetBuiltInEffects()[B

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/immersion/android/ImmVibe;->PlayIVTEffectRepeat(I[BIB)I

    move-result v0

    return v0
.end method

.method public playIVTEffect(I[BI)I
    .locals 1
    .parameter "deviceHandle"
    .parameter "ivt"
    .parameter "effectIndex"

    .prologue
    .line 176
    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/android/ImmVibe;->PlayIVTEffect(I[BI)I

    move-result v0

    return v0
.end method

.method public playIVTEffectRepeat(I[BIB)I
    .locals 1
    .parameter "deviceHandle"
    .parameter "ivt"
    .parameter "effectIndex"
    .parameter "repeat"

    .prologue
    .line 180
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/immersion/android/ImmVibe;->PlayIVTEffectRepeat(I[BIB)I

    move-result v0

    return v0
.end method

.method public playIVTInterpolatedEffect(I[BII)I
    .locals 1
    .parameter "deviceHandle"
    .parameter "ivt"
    .parameter "effectIndex"
    .parameter "interpolant"

    .prologue
    .line 228
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/immersion/android/ImmVibe;->PlayIVTInterpolatedEffect(I[BII)I

    move-result v0

    return v0
.end method

.method public playMagSweepEffect(IIIIIIII)I
    .locals 1
    .parameter "deviceHandle"
    .parameter "duration"
    .parameter "magnitude"
    .parameter "style"
    .parameter "attackTime"
    .parameter "attackLevel"
    .parameter "fadeTime"
    .parameter "fadeLevel"

    .prologue
    .line 184
    invoke-direct/range {p0 .. p8}, Lcom/immersion/android/ImmVibe;->PlayMagSweepEffect(IIIIIIII)I

    move-result v0

    return v0
.end method

.method public playPeriodicEffect(IIIIIIIII)I
    .locals 1
    .parameter "deviceHandle"
    .parameter "duration"
    .parameter "magnitude"
    .parameter "period"
    .parameter "styleAndWaveType"
    .parameter "attackTime"
    .parameter "attackLevel"
    .parameter "fadeTime"
    .parameter "fadeLevel"

    .prologue
    .line 188
    invoke-direct/range {p0 .. p9}, Lcom/immersion/android/ImmVibe;->PlayPeriodicEffect(IIIIIIIII)I

    move-result v0

    return v0
.end method

.method public playStreamingSample(II[BI)V
    .locals 0
    .parameter "deviceHandle"
    .parameter "effectHandle"
    .parameter "streamingSample"
    .parameter "size"

    .prologue
    .line 244
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/immersion/android/ImmVibe;->PlayStreamingSample(II[BI)V

    .line 245
    return-void
.end method

.method public playStreamingSampleWithOffset(II[BII)V
    .locals 0
    .parameter "deviceHandle"
    .parameter "effectHandle"
    .parameter "streamingSample"
    .parameter "size"
    .parameter "offsetTime"

    .prologue
    .line 248
    invoke-direct/range {p0 .. p5}, Lcom/immersion/android/ImmVibe;->PlayStreamingSampleWithOffset(II[BII)V

    .line 249
    return-void
.end method

.method public playWaveformEffect(I[BIIII)I
    .locals 1
    .parameter "deviceHandle"
    .parameter "data"
    .parameter "dataSize"
    .parameter "sampleRate"
    .parameter "bitDepth"
    .parameter "magnitude"

    .prologue
    .line 192
    invoke-direct/range {p0 .. p6}, Lcom/immersion/android/ImmVibe;->PlayWaveformEffect(I[BIIII)I

    move-result v0

    return v0
.end method

.method public readIVTElement([BII)[I
    .locals 1
    .parameter "ivt"
    .parameter "timelineIndex"
    .parameter "elementIndex"

    .prologue
    .line 395
    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/android/ImmVibe;->ReadIVTElement2([BII)[I

    move-result-object v0

    return-object v0
.end method

.method public readIVTElement([BIII)[I
    .locals 1
    .parameter "ivt"
    .parameter "bufferSize"
    .parameter "timelineIndex"
    .parameter "elementIndex"

    .prologue
    .line 412
    invoke-direct {p0, p1, p3, p4}, Lcom/immersion/android/ImmVibe;->ReadIVTElement2([BII)[I

    move-result-object v0

    return-object v0
.end method

.method public readIVTElementData([BII)[B
    .locals 1
    .parameter "ivt"
    .parameter "timelineIndex"
    .parameter "elementIndex"

    .prologue
    .line 416
    invoke-direct {p0, p1, p2, p2}, Lcom/immersion/android/ImmVibe;->ReadIVTElementData([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public removeIVTElement([BII)[B
    .locals 1
    .parameter "ivt"
    .parameter "timelineIndex"
    .parameter "elementIndex"

    .prologue
    .line 374
    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/android/ImmVibe;->RemoveIVTElement2([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public removeIVTElement([BIII)[B
    .locals 1
    .parameter "ivt"
    .parameter "bufferSize"
    .parameter "timelineIndex"
    .parameter "elementIndex"

    .prologue
    .line 391
    invoke-direct {p0, p1, p3, p4}, Lcom/immersion/android/ImmVibe;->RemoveIVTElement2([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public resumePausedEffect(II)V
    .locals 0
    .parameter "deviceHandle"
    .parameter "effectHandle"

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->ResumePausedEffect(II)V

    .line 217
    return-void
.end method

.method public saveIVTFile([BLjava/lang/String;)V
    .locals 0
    .parameter "ivt"
    .parameter "pathName"

    .prologue
    .line 310
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->SaveIVTFile([BLjava/lang/String;)V

    .line 311
    return-void
.end method

.method public setDevicePropertyBool(IIZ)V
    .locals 0
    .parameter "deviceHandle"
    .parameter "devPropType"
    .parameter "devPropValue"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/android/ImmVibe;->SetDevicePropertyBool(IIZ)V

    .line 153
    return-void
.end method

.method public setDevicePropertyInt32(III)V
    .locals 0
    .parameter "deviceHandle"
    .parameter "devPropType"
    .parameter "devPropValue"

    .prologue
    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/android/ImmVibe;->SetDevicePropertyInt32(III)V

    .line 161
    return-void
.end method

.method public setDevicePropertyString(IILjava/lang/String;)V
    .locals 0
    .parameter "deviceHandle"
    .parameter "devPropType"
    .parameter "devPropValue"

    .prologue
    .line 168
    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/android/ImmVibe;->SetDevicePropertyString(IILjava/lang/String;)V

    .line 169
    return-void
.end method

.method public stopAllPlayingEffects(I)V
    .locals 0
    .parameter "deviceHandle"

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->StopAllPlayingEffects(I)V

    .line 225
    return-void
.end method

.method public stopPlayingEffect(II)V
    .locals 0
    .parameter "deviceHandle"
    .parameter "hEffect"

    .prologue
    .line 220
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->StopPlayingEffect(II)V

    .line 221
    return-void
.end method

.method public terminate()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/immersion/android/ImmVibe;->Terminate2()V

    .line 30
    invoke-super {p0}, Lcom/immersion/ImmVibe;->terminate()V

    .line 31
    return-void
.end method
