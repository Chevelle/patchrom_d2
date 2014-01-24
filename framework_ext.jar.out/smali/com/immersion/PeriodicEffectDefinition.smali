.class public Lcom/immersion/PeriodicEffectDefinition;
.super Ljava/lang/Object;
.source "PeriodicEffectDefinition.java"


# instance fields
.field private actuatorIndex:I

.field private attackLevel:I

.field private attackTime:I

.field private duration:I

.field private fadeLevel:I

.field private fadeTime:I

.field private magnitude:I

.field private period:I

.field private styleAndWaveType:I


# direct methods
.method public constructor <init>(IIIIIIIII)V
    .locals 0
    .parameter "duration"
    .parameter "magnitude"
    .parameter "period"
    .parameter "styleAndWaveType"
    .parameter "attackTime"
    .parameter "attackLevel"
    .parameter "fadeTime"
    .parameter "fadeLevel"
    .parameter "actuatorIndex"

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-virtual {p0, p1}, Lcom/immersion/PeriodicEffectDefinition;->setDuration(I)V

    .line 140
    invoke-virtual {p0, p2}, Lcom/immersion/PeriodicEffectDefinition;->setMagnitude(I)V

    .line 141
    invoke-virtual {p0, p3}, Lcom/immersion/PeriodicEffectDefinition;->setPeriod(I)V

    .line 142
    invoke-virtual {p0, p4}, Lcom/immersion/PeriodicEffectDefinition;->setStyleAndWaveType(I)V

    .line 143
    invoke-virtual {p0, p5}, Lcom/immersion/PeriodicEffectDefinition;->setAttackTime(I)V

    .line 144
    invoke-virtual {p0, p6}, Lcom/immersion/PeriodicEffectDefinition;->setAttackLevel(I)V

    .line 145
    invoke-virtual {p0, p7}, Lcom/immersion/PeriodicEffectDefinition;->setFadeTime(I)V

    .line 146
    invoke-virtual {p0, p8}, Lcom/immersion/PeriodicEffectDefinition;->setFadeLevel(I)V

    .line 147
    invoke-virtual {p0, p9}, Lcom/immersion/PeriodicEffectDefinition;->setActuatorIndex(I)V

    .line 148
    return-void
.end method


# virtual methods
.method public getActuatorIndex()I
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Lcom/immersion/PeriodicEffectDefinition;->actuatorIndex:I

    return v0
.end method

.method public getAttackLevel()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/immersion/PeriodicEffectDefinition;->attackLevel:I

    return v0
.end method

.method public getAttackTime()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/immersion/PeriodicEffectDefinition;->attackTime:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/immersion/PeriodicEffectDefinition;->duration:I

    return v0
.end method

.method public getFadeLevel()I
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/immersion/PeriodicEffectDefinition;->fadeLevel:I

    return v0
.end method

.method public getFadeTime()I
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lcom/immersion/PeriodicEffectDefinition;->fadeTime:I

    return v0
.end method

.method public getMagnitude()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/immersion/PeriodicEffectDefinition;->magnitude:I

    return v0
.end method

.method public getPeriod()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/immersion/PeriodicEffectDefinition;->period:I

    return v0
.end method

.method public getStyleAndWaveType()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/immersion/PeriodicEffectDefinition;->styleAndWaveType:I

    return v0
.end method

.method public setActuatorIndex(I)V
    .locals 0
    .parameter "actuatorIndex"

    .prologue
    .line 470
    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->actuatorIndex:I

    .line 471
    return-void
.end method

.method public setAttackLevel(I)V
    .locals 0
    .parameter "attackLevel"

    .prologue
    .line 370
    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->attackLevel:I

    .line 371
    return-void
.end method

.method public setAttackTime(I)V
    .locals 0
    .parameter "attackTime"

    .prologue
    .line 339
    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->attackTime:I

    .line 340
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 165
    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->duration:I

    .line 166
    return-void
.end method

.method public setFadeLevel(I)V
    .locals 0
    .parameter "fadeLevel"

    .prologue
    .line 432
    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->fadeLevel:I

    .line 433
    return-void
.end method

.method public setFadeTime(I)V
    .locals 0
    .parameter "fadeTime"

    .prologue
    .line 401
    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->fadeTime:I

    .line 402
    return-void
.end method

.method public setMagnitude(I)V
    .locals 0
    .parameter "magnitude"

    .prologue
    .line 199
    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->magnitude:I

    .line 200
    return-void
.end method

.method public setPeriod(I)V
    .locals 0
    .parameter "period"

    .prologue
    .line 242
    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->period:I

    .line 243
    return-void
.end method

.method public setStyleAndWaveType(I)V
    .locals 0
    .parameter "styleAndWaveType"

    .prologue
    .line 297
    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->styleAndWaveType:I

    .line 298
    return-void
.end method
