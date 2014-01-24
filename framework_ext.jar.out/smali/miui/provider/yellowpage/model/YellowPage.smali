.class public Lmiui/provider/yellowpage/model/YellowPage;
.super Ljava/lang/Object;
.source "YellowPage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "YellowPage"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mAlias:Ljava/lang/String;

.field private mBrief:Ljava/lang/String;

.field private mCatId:Ljava/lang/String;

.field private mContent:Ljava/lang/String;

.field private mGallery:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHotCatId:Ljava/lang/String;

.field private mHotSort:I

.field private mIsHot:Z

.field private mIsMasterPage:Z

.field private mIsPreset:Z

.field private mLocId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPhones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/provider/yellowpage/model/YellowPagePhone;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoUrl:Ljava/lang/String;

.field private mPinyin:Ljava/lang/String;

.field private mProviderId:I

.field private mSocials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/provider/yellowpage/model/Social;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceId:Ljava/lang/String;

.field private mSourceUrl:Ljava/lang/String;

.field private mThumbnailUrl:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mYid:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "yid"
    .parameter "name"
    .parameter "pinyin"
    .parameter "brief"
    .parameter "alias"
    .parameter "address"
    .parameter
    .parameter
    .parameter "thumbnailUrl"
    .parameter "photoUrl"
    .parameter
    .parameter "providerId"
    .parameter "url"
    .parameter "sourceUrl"
    .parameter "sourceId"
    .parameter "isMasterPage"
    .parameter "isPreset"
    .parameter "isHot"
    .parameter "hotCatId"
    .parameter "hortSort"
    .parameter "catId"
    .parameter "locId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lmiui/provider/yellowpage/model/YellowPagePhone;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lmiui/provider/yellowpage/model/Social;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p8, phones:Ljava/util/List;,"Ljava/util/List<Lmiui/provider/yellowpage/model/YellowPagePhone;>;"
    .local p9, socials:Ljava/util/List;,"Ljava/util/List<Lmiui/provider/yellowpage/model/Social;>;"
    .local p12, gallery:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Lmiui/provider/yellowpage/model/YellowPage;->mYid:J

    .line 51
    iput-object p3, p0, Lmiui/provider/yellowpage/model/YellowPage;->mName:Ljava/lang/String;

    .line 52
    iput-object p6, p0, Lmiui/provider/yellowpage/model/YellowPage;->mAlias:Ljava/lang/String;

    .line 53
    iput-object p7, p0, Lmiui/provider/yellowpage/model/YellowPage;->mAddress:Ljava/lang/String;

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/provider/yellowpage/model/YellowPage;->mPhones:Ljava/util/List;

    .line 55
    if-eqz p8, :cond_0

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 56
    iget-object v1, p0, Lmiui/provider/yellowpage/model/YellowPage;->mPhones:Ljava/util/List;

    invoke-interface {v1, p8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    :cond_0
    iput-object p9, p0, Lmiui/provider/yellowpage/model/YellowPage;->mSocials:Ljava/util/List;

    .line 59
    iput-object p10, p0, Lmiui/provider/yellowpage/model/YellowPage;->mThumbnailUrl:Ljava/lang/String;

    .line 60
    iput-object p11, p0, Lmiui/provider/yellowpage/model/YellowPage;->mPhotoUrl:Ljava/lang/String;

    .line 61
    iput-object p12, p0, Lmiui/provider/yellowpage/model/YellowPage;->mGallery:Ljava/util/List;

    .line 62
    iput p13, p0, Lmiui/provider/yellowpage/model/YellowPage;->mProviderId:I

    .line 63
    move/from16 v0, p17

    iput-boolean v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mIsMasterPage:Z

    .line 64
    move/from16 v0, p18

    iput-boolean v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mIsPreset:Z

    .line 65
    move/from16 v0, p19

    iput-boolean v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mIsHot:Z

    .line 66
    move-object/from16 v0, p14

    iput-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mUrl:Ljava/lang/String;

    .line 67
    iput-object p5, p0, Lmiui/provider/yellowpage/model/YellowPage;->mBrief:Ljava/lang/String;

    .line 68
    move-object/from16 v0, p15

    iput-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mSourceUrl:Ljava/lang/String;

    .line 69
    move-object/from16 v0, p16

    iput-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mSourceId:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lmiui/provider/yellowpage/model/YellowPage;->mPinyin:Ljava/lang/String;

    .line 71
    move-object/from16 v0, p20

    iput-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mHotCatId:Ljava/lang/String;

    .line 72
    move/from16 v0, p21

    iput v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mHotSort:I

    .line 73
    move-object/from16 v0, p22

    iput-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mCatId:Ljava/lang/String;

    .line 74
    move-object/from16 v0, p23

    iput-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mLocId:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lmiui/provider/yellowpage/model/YellowPage;
    .locals 53
    .parameter "json"

    .prologue
    .line 238
    :try_start_0
    new-instance v44, Lorg/json/JSONObject;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 239
    .local v44, jsonObj:Lorg/json/JSONObject;
    const-string v4, "sid"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 240
    .local v5, yid:J
    const-string v4, "sName_py"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 241
    .local v15, pinyin:Ljava/lang/String;
    const-string v4, "sName"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 242
    .local v7, name:Ljava/lang/String;
    const-string v4, "aliasName"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 243
    .local v24, alias:Ljava/lang/String;
    const-string v4, "address"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 244
    .local v25, address:Ljava/lang/String;
    const-string v4, "site"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 245
    .local v32, url:Ljava/lang/String;
    const-string v4, "sourceUrl"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 246
    .local v33, sourceUrl:Ljava/lang/String;
    const-string v4, "sourceId"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 247
    .local v34, sourceId:Ljava/lang/String;
    const-string v4, "shInfo"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 248
    .local v23, brief:Ljava/lang/String;
    const-string v4, "provider"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 249
    .local v12, pid:I
    const-string v4, "hotCatId"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 250
    .local v38, hotCatId:Ljava/lang/String;
    const-string v4, "hotSort"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v39

    .line 251
    .local v39, hotSort:I
    const-string v4, "catId"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 252
    .local v40, catId:Ljava/lang/String;
    const-string v4, "locId"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 254
    .local v41, locId:Ljava/lang/String;
    const-string v4, "sType"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v11, 0x2

    if-ne v4, v11, :cond_1

    const/16 v35, 0x1

    .line 255
    .local v35, isMasterPage:Z
    :goto_0
    const-string v4, "hot"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v11, 0x1

    if-ne v4, v11, :cond_2

    const/16 v37, 0x1

    .line 256
    .local v37, isHotPage:Z
    :goto_1
    const-string v4, "buildIn"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v11, 0x1

    if-ne v4, v11, :cond_3

    const/16 v36, 0x1

    .line 257
    .local v36, isPreset:Z
    :goto_2
    const-string v4, "needTips"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v11, 0x1

    if-ne v4, v11, :cond_4

    const/16 v17, 0x1

    .line 260
    .local v17, suspect:Z
    :goto_3
    const-string v4, "phone"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v45

    .line 261
    .local v45, phoneArray:Lorg/json/JSONArray;
    const/16 v26, 0x0

    .line 262
    .local v26, phoneList:Ljava/util/List;,"Ljava/util/List<Lmiui/provider/yellowpage/model/YellowPagePhone;>;"
    if-eqz v45, :cond_6

    .line 263
    const/16 v43, 0x0

    .local v43, i:I
    :goto_4
    invoke-virtual/range {v45 .. v45}, Lorg/json/JSONArray;->length()I

    move-result v4

    move/from16 v0, v43

    if-ge v0, v4, :cond_6

    .line 264
    move-object/from16 v0, v45

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v46

    .line 265
    .local v46, phoneJson:Lorg/json/JSONObject;
    const-string v4, "phone"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 266
    .local v9, number:Ljava/lang/String;
    const-string v4, "norPhone"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 267
    .local v10, normalizedNumber:Ljava/lang/String;
    const-string v4, "contactName"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 268
    .local v8, tag:Ljava/lang/String;
    const-string v4, "contactName_py"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 269
    .local v16, tagPinyin:Ljava/lang/String;
    const-string v4, "hide"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5

    const/4 v14, 0x1

    .line 270
    .local v14, visible:Z
    :goto_5
    if-nez v26, :cond_0

    .line 271
    new-instance v26, Ljava/util/ArrayList;

    .end local v26           #phoneList:Ljava/util/List;,"Ljava/util/List<Lmiui/provider/yellowpage/model/YellowPagePhone;>;"
    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .restart local v26       #phoneList:Ljava/util/List;,"Ljava/util/List<Lmiui/provider/yellowpage/model/YellowPagePhone;>;"
    :cond_0
    new-instance v4, Lmiui/provider/yellowpage/model/YellowPagePhone;

    const/4 v11, 0x1

    const/4 v13, 0x0

    invoke-direct/range {v4 .. v17}, Lmiui/provider/yellowpage/model/YellowPagePhone;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    add-int/lit8 v43, v43, 0x1

    goto :goto_4

    .line 254
    .end local v8           #tag:Ljava/lang/String;
    .end local v9           #number:Ljava/lang/String;
    .end local v10           #normalizedNumber:Ljava/lang/String;
    .end local v14           #visible:Z
    .end local v16           #tagPinyin:Ljava/lang/String;
    .end local v17           #suspect:Z
    .end local v26           #phoneList:Ljava/util/List;,"Ljava/util/List<Lmiui/provider/yellowpage/model/YellowPagePhone;>;"
    .end local v35           #isMasterPage:Z
    .end local v36           #isPreset:Z
    .end local v37           #isHotPage:Z
    .end local v43           #i:I
    .end local v45           #phoneArray:Lorg/json/JSONArray;
    .end local v46           #phoneJson:Lorg/json/JSONObject;
    :cond_1
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 255
    .restart local v35       #isMasterPage:Z
    :cond_2
    const/16 v37, 0x0

    goto :goto_1

    .line 256
    .restart local v37       #isHotPage:Z
    :cond_3
    const/16 v36, 0x0

    goto :goto_2

    .line 257
    .restart local v36       #isPreset:Z
    :cond_4
    const/16 v17, 0x0

    goto :goto_3

    .line 269
    .restart local v8       #tag:Ljava/lang/String;
    .restart local v9       #number:Ljava/lang/String;
    .restart local v10       #normalizedNumber:Ljava/lang/String;
    .restart local v16       #tagPinyin:Ljava/lang/String;
    .restart local v17       #suspect:Z
    .restart local v26       #phoneList:Ljava/util/List;,"Ljava/util/List<Lmiui/provider/yellowpage/model/YellowPagePhone;>;"
    .restart local v43       #i:I
    .restart local v45       #phoneArray:Lorg/json/JSONArray;
    .restart local v46       #phoneJson:Lorg/json/JSONObject;
    :cond_5
    const/4 v14, 0x0

    goto :goto_5

    .line 280
    .end local v8           #tag:Ljava/lang/String;
    .end local v9           #number:Ljava/lang/String;
    .end local v10           #normalizedNumber:Ljava/lang/String;
    .end local v16           #tagPinyin:Ljava/lang/String;
    .end local v43           #i:I
    .end local v46           #phoneJson:Lorg/json/JSONObject;
    :cond_6
    const-string v4, "snsInfo"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v49

    .line 281
    .local v49, socialArray:Lorg/json/JSONArray;
    const/16 v27, 0x0

    .line 282
    .local v27, socialList:Ljava/util/List;,"Ljava/util/List<Lmiui/provider/yellowpage/model/Social;>;"
    if-eqz v49, :cond_7

    invoke-virtual/range {v49 .. v49}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_7

    .line 283
    new-instance v27, Ljava/util/ArrayList;

    .end local v27           #socialList:Ljava/util/List;,"Ljava/util/List<Lmiui/provider/yellowpage/model/Social;>;"
    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .restart local v27       #socialList:Ljava/util/List;,"Ljava/util/List<Lmiui/provider/yellowpage/model/Social;>;"
    const/16 v43, 0x0

    .restart local v43       #i:I
    :goto_6
    invoke-virtual/range {v49 .. v49}, Lorg/json/JSONArray;->length()I

    move-result v4

    move/from16 v0, v43

    if-ge v0, v4, :cond_7

    .line 285
    move-object/from16 v0, v49

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v50

    .line 286
    .local v50, socialJson:Lorg/json/JSONObject;
    const-string v4, "url"

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 287
    .local v52, ypUrl:Ljava/lang/String;
    const-string v4, "name"

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 288
    .local v51, ypName:Ljava/lang/String;
    const-string v4, "provider"

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v47

    .line 289
    .local v47, providerId:I
    new-instance v48, Lmiui/provider/yellowpage/model/Social;

    move-object/from16 v0, v48

    move-object/from16 v1, v52

    move-object/from16 v2, v51

    move/from16 v3, v47

    invoke-direct {v0, v1, v2, v3}, Lmiui/provider/yellowpage/model/Social;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 290
    .local v48, social:Lmiui/provider/yellowpage/model/Social;
    move-object/from16 v0, v27

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    add-int/lit8 v43, v43, 0x1

    goto :goto_6

    .line 294
    .end local v43           #i:I
    .end local v47           #providerId:I
    .end local v48           #social:Lmiui/provider/yellowpage/model/Social;
    .end local v50           #socialJson:Lorg/json/JSONObject;
    .end local v51           #ypName:Ljava/lang/String;
    .end local v52           #ypUrl:Ljava/lang/String;
    :cond_7
    const-string v4, "photo"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 295
    .local v29, photoUrl:Ljava/lang/String;
    const-string v4, "thumbnail"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 297
    .local v28, thumbnailUrl:Ljava/lang/String;
    new-instance v18, Lmiui/provider/yellowpage/model/YellowPage;

    const/16 v30, 0x0

    move-wide/from16 v19, v5

    move-object/from16 v21, v7

    move-object/from16 v22, v15

    move/from16 v31, v12

    invoke-direct/range {v18 .. v41}, Lmiui/provider/yellowpage/model/YellowPage;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 300
    .local v18, yellowPage:Lmiui/provider/yellowpage/model/YellowPage;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmiui/provider/yellowpage/model/YellowPage;->setContent(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v5           #yid:J
    .end local v7           #name:Ljava/lang/String;
    .end local v12           #pid:I
    .end local v15           #pinyin:Ljava/lang/String;
    .end local v17           #suspect:Z
    .end local v18           #yellowPage:Lmiui/provider/yellowpage/model/YellowPage;
    .end local v23           #brief:Ljava/lang/String;
    .end local v24           #alias:Ljava/lang/String;
    .end local v25           #address:Ljava/lang/String;
    .end local v26           #phoneList:Ljava/util/List;,"Ljava/util/List<Lmiui/provider/yellowpage/model/YellowPagePhone;>;"
    .end local v27           #socialList:Ljava/util/List;,"Ljava/util/List<Lmiui/provider/yellowpage/model/Social;>;"
    .end local v28           #thumbnailUrl:Ljava/lang/String;
    .end local v29           #photoUrl:Ljava/lang/String;
    .end local v32           #url:Ljava/lang/String;
    .end local v33           #sourceUrl:Ljava/lang/String;
    .end local v34           #sourceId:Ljava/lang/String;
    .end local v35           #isMasterPage:Z
    .end local v36           #isPreset:Z
    .end local v37           #isHotPage:Z
    .end local v38           #hotCatId:Ljava/lang/String;
    .end local v39           #hotSort:I
    .end local v40           #catId:Ljava/lang/String;
    .end local v41           #locId:Ljava/lang/String;
    .end local v44           #jsonObj:Lorg/json/JSONObject;
    .end local v45           #phoneArray:Lorg/json/JSONArray;
    .end local v49           #socialArray:Lorg/json/JSONArray;
    :goto_7
    return-object v18

    .line 302
    :catch_0
    move-exception v42

    .line 303
    .local v42, e:Lorg/json/JSONException;
    invoke-virtual/range {v42 .. v42}, Lorg/json/JSONException;->printStackTrace()V

    .line 305
    const/16 v18, 0x0

    goto :goto_7
.end method

.method private setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 309
    iput-object p1, p0, Lmiui/provider/yellowpage/model/YellowPage;->mContent:Ljava/lang/String;

    .line 310
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getBrief()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mBrief:Ljava/lang/String;

    return-object v0
.end method

.method public getCatId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mCatId:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getGallery()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mGallery:Ljava/util/List;

    return-object v0
.end method

.method public getHotCatId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mHotCatId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mHotCatId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHotSort()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mHotSort:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mYid:J

    return-wide v0
.end method

.method public getLocId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mLocId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneInfo(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/yellowpage/model/YellowPagePhone;
    .locals 5
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v3, 0x0

    .line 221
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 233
    :goto_0
    return-object v2

    .line 224
    :cond_0
    invoke-static {p1, p2}, Lmiui/provider/yellowpage/YellowPageUtils;->getNormalizedNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, normalizedNumber:Ljava/lang/String;
    iget-object v4, p0, Lmiui/provider/yellowpage/model/YellowPage;->mPhones:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 227
    iget-object v4, p0, Lmiui/provider/yellowpage/model/YellowPage;->mPhones:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/provider/yellowpage/model/YellowPagePhone;

    .line 228
    .local v2, phone:Lmiui/provider/yellowpage/model/YellowPagePhone;
    invoke-virtual {v2}, Lmiui/provider/yellowpage/model/YellowPagePhone;->getNormalizedNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #phone:Lmiui/provider/yellowpage/model/YellowPagePhone;
    :cond_2
    move-object v2, v3

    .line 233
    goto :goto_0
.end method

.method public getPhones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/provider/yellowpage/model/YellowPagePhone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mPhones:Ljava/util/List;

    return-object v0
.end method

.method public getPhoto()[B
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhotoName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mPhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mPinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "context"

    .prologue
    .line 157
    iget v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mProviderId:I

    invoke-static {p1, v0}, Lmiui/provider/yellowpage/YellowPageUtils;->getProvider(Landroid/content/Context;I)Lmiui/provider/yellowpage/model/Provider;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/provider/yellowpage/model/Provider;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getProviderId()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mProviderId:I

    return v0
.end method

.method public getProviderName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 146
    iget v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mProviderId:I

    invoke-static {p1, v0}, Lmiui/provider/yellowpage/YellowPageUtils;->getProvider(Landroid/content/Context;I)Lmiui/provider/yellowpage/model/Provider;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/provider/yellowpage/model/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocials()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/provider/yellowpage/model/Social;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mSocials:Ljava/util/List;

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mSourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()[B
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbnailName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mThumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isHot()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mIsHot:Z

    return v0
.end method

.method public isMasterPage()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mIsMasterPage:Z

    return v0
.end method

.method public isPreset()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mIsPreset:Z

    return v0
.end method

.method public isProviderMiui()Z
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lmiui/provider/yellowpage/model/YellowPage;->mProviderId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
