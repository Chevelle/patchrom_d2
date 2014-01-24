.class public Lcom/immersion/IVTBuffer;
.super Ljava/lang/Object;
.source "IVTBuffer.java"


# instance fields
.field private ivt:[B


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "bufferSize"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/immersion/ImmVibe;->initializeIVTBuffer(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    .line 79
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .parameter "ivt"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    .line 53
    return-void
.end method

.method public static deleteHapticTrack(Ljava/lang/String;)V
    .locals 1
    .parameter "pathName"

    .prologue
    .line 662
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/immersion/ImmVibe;->deleteIVTFile(Ljava/lang/String;)V

    .line 663
    return-void
.end method

.method public static getBuiltInEffects()Lcom/immersion/IVTBuffer;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/immersion/IVTBuffer;

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/immersion/ImmVibe;->getBuiltInEffects()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/immersion/IVTBuffer;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public getBuffer()[B
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    return-object v0
.end method

.method public getEffectCount()I
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    invoke-virtual {v0, v1}, Lcom/immersion/ImmVibe;->getIVTEffectCount([B)I

    move-result v0

    return v0
.end method

.method public getEffectDuration(I)I
    .locals 2
    .parameter "effectIndex"

    .prologue
    .line 142
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    invoke-virtual {v0, v1, p1}, Lcom/immersion/ImmVibe;->getIVTEffectDuration([BI)I

    move-result v0

    return v0
.end method

.method public getEffectIndexFromName(Ljava/lang/String;)I
    .locals 2
    .parameter "effectName"

    .prologue
    .line 172
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    invoke-virtual {v0, v1, p1}, Lcom/immersion/ImmVibe;->getIVTEffectIndexFromName([BLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEffectName(I)Ljava/lang/String;
    .locals 2
    .parameter "effectIndex"

    .prologue
    .line 207
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    invoke-virtual {v0, v1, p1}, Lcom/immersion/ImmVibe;->getIVTEffectName([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEffectType(I)I
    .locals 2
    .parameter "effectIndex"

    .prologue
    .line 247
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    invoke-virtual {v0, v1, p1}, Lcom/immersion/ImmVibe;->getIVTEffectType([BI)I

    move-result v0

    return v0
.end method

.method public getMagSweepEffectDefinitionAtIndex(I)Lcom/immersion/MagSweepEffectDefinition;
    .locals 20
    .parameter "effectIndex"

    .prologue
    .line 285
    const/4 v1, 0x1

    new-array v4, v1, [I

    .line 286
    .local v4, duration:[I
    const/4 v1, 0x1

    new-array v5, v1, [I

    .line 287
    .local v5, magnitude:[I
    const/4 v1, 0x1

    new-array v6, v1, [I

    .line 288
    .local v6, style:[I
    const/4 v1, 0x1

    new-array v7, v1, [I

    .line 289
    .local v7, attackTime:[I
    const/4 v1, 0x1

    new-array v8, v1, [I

    .line 290
    .local v8, attackLevel:[I
    const/4 v1, 0x1

    new-array v9, v1, [I

    .line 291
    .local v9, fadeTime:[I
    const/4 v1, 0x1

    new-array v10, v1, [I

    .line 293
    .local v10, fadeLevel:[I
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/immersion/IVTBuffer;->ivt:[B

    move/from16 v3, p1

    invoke-virtual/range {v1 .. v10}, Lcom/immersion/ImmVibe;->getIVTMagSweepEffectDefinition([BI[I[I[I[I[I[I[I)V

    .line 303
    new-instance v11, Lcom/immersion/MagSweepEffectDefinition;

    const/4 v1, 0x0

    aget v12, v4, v1

    const/4 v1, 0x0

    aget v13, v5, v1

    const/4 v1, 0x0

    aget v14, v6, v1

    const/4 v1, 0x0

    aget v15, v7, v1

    const/4 v1, 0x0

    aget v16, v8, v1

    const/4 v1, 0x0

    aget v17, v9, v1

    const/4 v1, 0x0

    aget v18, v10, v1

    const/16 v19, 0x0

    invoke-direct/range {v11 .. v19}, Lcom/immersion/MagSweepEffectDefinition;-><init>(IIIIIIII)V

    return-object v11
.end method

.method public getPeriodicEffectDefinitionAtIndex(I)Lcom/immersion/PeriodicEffectDefinition;
    .locals 22
    .parameter "effectIndex"

    .prologue
    .line 348
    const/4 v1, 0x1

    new-array v4, v1, [I

    .line 349
    .local v4, duration:[I
    const/4 v1, 0x1

    new-array v5, v1, [I

    .line 350
    .local v5, magnitude:[I
    const/4 v1, 0x1

    new-array v6, v1, [I

    .line 351
    .local v6, period:[I
    const/4 v1, 0x1

    new-array v7, v1, [I

    .line 352
    .local v7, style:[I
    const/4 v1, 0x1

    new-array v8, v1, [I

    .line 353
    .local v8, attackTime:[I
    const/4 v1, 0x1

    new-array v9, v1, [I

    .line 354
    .local v9, attackLevel:[I
    const/4 v1, 0x1

    new-array v10, v1, [I

    .line 355
    .local v10, fadeTime:[I
    const/4 v1, 0x1

    new-array v11, v1, [I

    .line 357
    .local v11, fadeLevel:[I
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/immersion/IVTBuffer;->ivt:[B

    move/from16 v3, p1

    invoke-virtual/range {v1 .. v11}, Lcom/immersion/ImmVibe;->getIVTPeriodicEffectDefinition([BI[I[I[I[I[I[I[I[I)V

    .line 368
    new-instance v12, Lcom/immersion/PeriodicEffectDefinition;

    const/4 v1, 0x0

    aget v13, v4, v1

    const/4 v1, 0x0

    aget v14, v5, v1

    const/4 v1, 0x0

    aget v15, v6, v1

    const/4 v1, 0x0

    aget v16, v7, v1

    const/4 v1, 0x0

    aget v17, v8, v1

    const/4 v1, 0x0

    aget v18, v9, v1

    const/4 v1, 0x0

    aget v19, v10, v1

    const/4 v1, 0x0

    aget v20, v11, v1

    const/16 v21, 0x0

    invoke-direct/range {v12 .. v21}, Lcom/immersion/PeriodicEffectDefinition;-><init>(IIIIIIIII)V

    return-object v12
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 416
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    invoke-virtual {v0, v1}, Lcom/immersion/ImmVibe;->getIVTSize([B)I

    move-result v0

    return v0
.end method

.method public insertElement(ILcom/immersion/IVTElement;)V
    .locals 4
    .parameter "timelineIndex"
    .parameter "element"

    .prologue
    .line 472
    invoke-virtual {p2}, Lcom/immersion/IVTElement;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 474
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    invoke-virtual {p2}, Lcom/immersion/IVTElement;->getBuffer()[I

    move-result-object v2

    check-cast p2, Lcom/immersion/IVTWaveformElement;

    .end local p2
    invoke-virtual {p2}, Lcom/immersion/IVTWaveformElement;->getDefinition()Lcom/immersion/WaveformEffectDefinition;

    move-result-object v3

    invoke-virtual {v3}, Lcom/immersion/WaveformEffectDefinition;->getData()[B

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/immersion/ImmVibe;->insertIVTElement([BI[I[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    .line 480
    :goto_0
    return-void

    .line 478
    .restart local p2
    :cond_0
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    invoke-virtual {p2}, Lcom/immersion/IVTElement;->getBuffer()[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/immersion/ImmVibe;->insertIVTElement([BI[I[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    goto :goto_0
.end method

.method public readElement(II)Lcom/immersion/IVTElement;
    .locals 4
    .parameter "timelineIndex"
    .parameter "elementIndex"

    .prologue
    .line 592
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    iget-object v2, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    invoke-virtual {v1, v2, p1, p2}, Lcom/immersion/ImmVibe;->readIVTElement([BII)[I

    move-result-object v1

    invoke-static {v1}, Lcom/immersion/IVTElement;->newIVTElement([I)Lcom/immersion/IVTElement;

    move-result-object v0

    .line 594
    .local v0, retVal:Lcom/immersion/IVTElement;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/immersion/IVTElement;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    move-object v1, v0

    .line 596
    check-cast v1, Lcom/immersion/IVTWaveformElement;

    invoke-virtual {v1}, Lcom/immersion/IVTWaveformElement;->getDefinition()Lcom/immersion/WaveformEffectDefinition;

    move-result-object v1

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v2

    iget-object v3, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    invoke-virtual {v2, v3, p1, p2}, Lcom/immersion/ImmVibe;->readIVTElementData([BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/immersion/WaveformEffectDefinition;->setData([B)V

    .line 599
    :cond_0
    return-object v0
.end method

.method public removeElement(II)V
    .locals 2
    .parameter "timelineIndex"
    .parameter "elementIndex"

    .prologue
    .line 538
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    invoke-virtual {v0, v1, p1, p2}, Lcom/immersion/ImmVibe;->removeIVTElement([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    .line 539
    return-void
.end method

.method public saveHapticTrack(Ljava/lang/String;)V
    .locals 2
    .parameter "pathName"

    .prologue
    .line 636
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    invoke-virtual {v0, v1, p1}, Lcom/immersion/ImmVibe;->saveIVTFile([BLjava/lang/String;)V

    .line 637
    return-void
.end method
