.class public Lcom/immersion/MagSweepEffectDefinition;
.super Ljava/lang/Object;
.source "MagSweepEffectDefinition.java"


# instance fields
.field private actuatorIndex:I

.field private attackLevel:I

.field private attackTime:I

.field private duration:I

.field private fadeLevel:I

.field private fadeTime:I

.field private magnitude:I

.field private style:I


# direct methods
.method public constructor <init>(IIIIIIII)V
    .locals 0
    .parameter "duration"
    .parameter "magnitude"
    .parameter "style"
    .parameter "attackTime"
    .parameter "attackLevel"
    .parameter "fadeTime"
    .parameter "fadeLevel"
    .parameter "actuatorIndex"

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-virtual {p0, p1}, Lcom/immersion/MagSweepEffectDefinition;->setDuration(I)V

    .line 108
    invoke-virtual {p0, p2}, Lcom/immersion/MagSweepEffectDefinition;->setMagnitude(I)V

    .line 109
    invoke-virtual {p0, p3}, Lcom/immersion/MagSweepEffectDefinition;->setStyle(I)V

    .line 110
    invoke-virtual {p0, p4}, Lcom/immersion/MagSweepEffectDefinition;->setAttackTime(I)V

    .line 111
    invoke-virtual {p0, p5}, Lcom/immersion/MagSweepEffectDefinition;->setAttackLevel(I)V

    .line 112
    invoke-virtual {p0, p6}, Lcom/immersion/MagSweepEffectDefinition;->setFadeTime(I)V

    .line 113
    invoke-virtual {p0, p7}, Lcom/immersion/MagSweepEffectDefinition;->setFadeLevel(I)V

    .line 114
    invoke-virtual {p0, p8}, Lcom/immersion/MagSweepEffectDefinition;->setActuatorIndex(I)V

    .line 115
    return-void
.end method


# virtual methods
.method public getActuatorIndex()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/immersion/MagSweepEffectDefinition;->actuatorIndex:I

    return v0
.end method

.method public getAttackLevel()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/immersion/MagSweepEffectDefinition;->attackLevel:I

    return v0
.end method

.method public getAttackTime()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/immersion/MagSweepEffectDefinition;->attackTime:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/immersion/MagSweepEffectDefinition;->duration:I

    return v0
.end method

.method public getFadeLevel()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/immersion/MagSweepEffectDefinition;->fadeLevel:I

    return v0
.end method

.method public getFadeTime()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/immersion/MagSweepEffectDefinition;->fadeTime:I

    return v0
.end method

.method public getMagnitude()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/immersion/MagSweepEffectDefinition;->magnitude:I

    return v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/immersion/MagSweepEffectDefinition;->style:I

    return v0
.end method

.method public setActuatorIndex(I)V
    .locals 0
    .parameter "actuatorIndex"

    .prologue
    .line 362
    iput p1, p0, Lcom/immersion/MagSweepEffectDefinition;->actuatorIndex:I

    .line 363
    return-void
.end method

.method public setAttackLevel(I)V
    .locals 0
    .parameter "attackLevel"

    .prologue
    .line 262
    iput p1, p0, Lcom/immersion/MagSweepEffectDefinition;->attackLevel:I

    .line 263
    return-void
.end method

.method public setAttackTime(I)V
    .locals 0
    .parameter "attackTime"

    .prologue
    .line 231
    iput p1, p0, Lcom/immersion/MagSweepEffectDefinition;->attackTime:I

    .line 232
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 132
    iput p1, p0, Lcom/immersion/MagSweepEffectDefinition;->duration:I

    .line 133
    return-void
.end method

.method public setFadeLevel(I)V
    .locals 0
    .parameter "fadeLevel"

    .prologue
    .line 324
    iput p1, p0, Lcom/immersion/MagSweepEffectDefinition;->fadeLevel:I

    .line 325
    return-void
.end method

.method public setFadeTime(I)V
    .locals 0
    .parameter "fadeTime"

    .prologue
    .line 293
    iput p1, p0, Lcom/immersion/MagSweepEffectDefinition;->fadeTime:I

    .line 294
    return-void
.end method

.method public setMagnitude(I)V
    .locals 0
    .parameter "magnitude"

    .prologue
    .line 166
    iput p1, p0, Lcom/immersion/MagSweepEffectDefinition;->magnitude:I

    .line 167
    return-void
.end method

.method public setStyle(I)V
    .locals 0
    .parameter "style"

    .prologue
    .line 198
    iput p1, p0, Lcom/immersion/MagSweepEffectDefinition;->style:I

    .line 199
    return-void
.end method
