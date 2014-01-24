.class public Lcom/immersion/WaveformEffectDefinition;
.super Ljava/lang/Object;
.source "WaveformEffectDefinition.java"


# instance fields
.field private actuatorIndex:I

.field private bitDepth:I

.field private data:[B

.field private dataSize:I

.field private magnitude:I

.field private sampleRate:I


# direct methods
.method public constructor <init>([BIIIII)V
    .locals 0
    .parameter "data"
    .parameter "dataSize"
    .parameter "sampleRate"
    .parameter "bitDepth"
    .parameter "magnitude"
    .parameter "actuatorIndex"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p0, p1}, Lcom/immersion/WaveformEffectDefinition;->setData([B)V

    .line 81
    invoke-virtual {p0, p2}, Lcom/immersion/WaveformEffectDefinition;->setDataSize(I)V

    .line 82
    invoke-virtual {p0, p3}, Lcom/immersion/WaveformEffectDefinition;->setSampleRate(I)V

    .line 83
    invoke-virtual {p0, p4}, Lcom/immersion/WaveformEffectDefinition;->setBitDepth(I)V

    .line 84
    invoke-virtual {p0, p5}, Lcom/immersion/WaveformEffectDefinition;->setMagnitude(I)V

    .line 85
    invoke-virtual {p0, p6}, Lcom/immersion/WaveformEffectDefinition;->setActuatorIndex(I)V

    .line 86
    return-void
.end method


# virtual methods
.method public getActuatorIndex()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/immersion/WaveformEffectDefinition;->actuatorIndex:I

    return v0
.end method

.method public getBitDepth()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/immersion/WaveformEffectDefinition;->bitDepth:I

    return v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/immersion/WaveformEffectDefinition;->data:[B

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/immersion/WaveformEffectDefinition;->dataSize:I

    return v0
.end method

.method public getMagnitude()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/immersion/WaveformEffectDefinition;->magnitude:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/immersion/WaveformEffectDefinition;->sampleRate:I

    return v0
.end method

.method public setActuatorIndex(I)V
    .locals 0
    .parameter "actuatorIndex"

    .prologue
    .line 250
    iput p1, p0, Lcom/immersion/WaveformEffectDefinition;->actuatorIndex:I

    .line 251
    return-void
.end method

.method public setBitDepth(I)V
    .locals 0
    .parameter "bitDepth"

    .prologue
    .line 174
    iput p1, p0, Lcom/immersion/WaveformEffectDefinition;->bitDepth:I

    .line 175
    return-void
.end method

.method public setData([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/immersion/WaveformEffectDefinition;->data:[B

    .line 100
    return-void
.end method

.method public setDataSize(I)V
    .locals 0
    .parameter "dataSize"

    .prologue
    .line 126
    iput p1, p0, Lcom/immersion/WaveformEffectDefinition;->dataSize:I

    .line 127
    return-void
.end method

.method public setMagnitude(I)V
    .locals 0
    .parameter "magnitude"

    .prologue
    .line 207
    iput p1, p0, Lcom/immersion/WaveformEffectDefinition;->magnitude:I

    .line 208
    return-void
.end method

.method public setSampleRate(I)V
    .locals 0
    .parameter "sampleRate"

    .prologue
    .line 150
    iput p1, p0, Lcom/immersion/WaveformEffectDefinition;->sampleRate:I

    .line 151
    return-void
.end method
