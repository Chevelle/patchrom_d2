.class public Lmiui/provider/ExtraGuardVirusInfoEntity;
.super Ljava/lang/Object;
.source "ExtraGuardVirusInfoEntity.java"


# instance fields
.field private mAdvice:I

.field private mDescription:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mType:I

.field private mVirusName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mType:I

    .line 16
    iput-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mDescription:Ljava/lang/String;

    .line 17
    iput v1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mAdvice:I

    .line 18
    iput-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mVirusName:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mPackageName:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getAdvice()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mAdvice:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mType:I

    return v0
.end method

.method public getVirusName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mVirusName:Ljava/lang/String;

    return-object v0
.end method

.method public setAdvice(I)V
    .locals 0
    .parameter "_advice"

    .prologue
    .line 43
    iput p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mAdvice:I

    .line 44
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "_description"

    .prologue
    .line 35
    iput-object p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mDescription:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "_packageName"

    .prologue
    .line 60
    iput-object p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mPackageName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "_type"

    .prologue
    .line 27
    iput p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mType:I

    .line 28
    return-void
.end method

.method public setVirusName(Ljava/lang/String;)V
    .locals 0
    .parameter "_virusName"

    .prologue
    .line 51
    iput-object p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mVirusName:Ljava/lang/String;

    .line 52
    return-void
.end method
