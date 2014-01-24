.class public Lmiui/provider/yellowpage/model/YellowPagePhone;
.super Ljava/lang/Object;
.source "YellowPagePhone.java"


# static fields
.field public static final INVALIDE_YID:I = -0x1

.field public static final TYPE_ANTISPAM:I = 0x2

.field public static final TYPE_MARKED:I = 0x3

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_YELLOW_PAGE:I = 0x1


# instance fields
.field private mIsSuspectPhone:Z

.field private mMarkCount:I

.field private mNormalizedNumber:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mProviderId:I

.field private mTag:Ljava/lang/String;

.field private mTagPinyin:Ljava/lang/String;

.field private mType:I

.field private mVisible:Z

.field private mYpId:J

.field private mYpName:Ljava/lang/String;

.field private mYpNamePinyin:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;)V
    .locals 14
    .parameter "ypId"
    .parameter "ypName"
    .parameter "tag"
    .parameter "number"
    .parameter "normalizedNumber"
    .parameter "type"
    .parameter "providerId"
    .parameter "markedCount"
    .parameter "visible"
    .parameter "ypNamePinyin"
    .parameter "tagPinyin"

    .prologue
    .line 56
    const/4 v13, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v13}, Lmiui/provider/yellowpage/model/YellowPagePhone;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;Z)V

    .line 58
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "ypId"
    .parameter "ypName"
    .parameter "tag"
    .parameter "number"
    .parameter "normalizedNumber"
    .parameter "type"
    .parameter "providerId"
    .parameter "markedCount"
    .parameter "visible"
    .parameter "ypNamePinyin"
    .parameter "tagPinyin"
    .parameter "suspect"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p3, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mYpName:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mTag:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mNumber:Ljava/lang/String;

    .line 41
    iput p7, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mType:I

    .line 42
    iput-boolean p10, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mVisible:Z

    .line 43
    iput p9, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mMarkCount:I

    .line 44
    iput-wide p1, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mYpId:J

    .line 45
    iput p8, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mProviderId:I

    .line 46
    iput-object p11, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mYpNamePinyin:Ljava/lang/String;

    .line 47
    iput-object p12, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mTagPinyin:Ljava/lang/String;

    .line 48
    iput-object p6, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mNormalizedNumber:Ljava/lang/String;

    .line 49
    iput-boolean p13, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mIsSuspectPhone:Z

    .line 50
    return-void
.end method


# virtual methods
.method public getMarkedCount()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mMarkCount:I

    return v0
.end method

.method public getNormalizedNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mNormalizedNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mType:I

    return v0
.end method

.method public getProviderId()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mProviderId:I

    return v0
.end method

.method public getProviderName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 119
    iget v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mProviderId:I

    invoke-static {p1, v0}, Lmiui/provider/yellowpage/YellowPageUtils;->getProvider(Landroid/content/Context;I)Lmiui/provider/yellowpage/model/Provider;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/provider/yellowpage/model/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTagPinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mTagPinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getYellowPageId()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mYpId:J

    return-wide v0
.end method

.method public getYellowPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mYpName:Ljava/lang/String;

    return-object v0
.end method

.method public getYellowPagePinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mYpNamePinyin:Ljava/lang/String;

    return-object v0
.end method

.method public isAntispam()Z
    .locals 2

    .prologue
    .line 64
    iget v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProviderMiui()Z
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mProviderId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuspect()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mIsSuspectPhone:Z

    return v0
.end method

.method public isUnknown()Z
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserMarked()Z
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mVisible:Z

    return v0
.end method

.method public isYellowPage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 75
    iget v1, p0, Lmiui/provider/yellowpage/model/YellowPagePhone;->mType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
