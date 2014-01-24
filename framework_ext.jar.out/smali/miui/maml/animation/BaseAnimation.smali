.class public abstract Lmiui/maml/animation/BaseAnimation;
.super Ljava/lang/Object;
.source "BaseAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/animation/BaseAnimation$AnimationItem;
    }
.end annotation


# static fields
.field private static final INFINITE_TIME:J = 0xe8d4a51000L

.field private static final LOG_TAG:Ljava/lang/String; = "BaseAnimation"

.field public static final PLAY_TO_END:I = -0x1

.field private static final VAR_CURRENT_FRAME:Ljava/lang/String; = "current_frame"


# instance fields
.field private mAnimEndTime:J

.field private mAnimStartTime:J

.field private mCurrentFrame:Lmiui/maml/util/IndexedNumberVariable;

.field private mDelay:J

.field private mEndTime:J

.field private mHasName:Z

.field private mIsDelay:Z

.field private mIsFirstFrame:Z

.field private mIsFirstReset:Z

.field private mIsLastFrame:Z

.field private mIsLoop:Z

.field private mIsPaused:Z

.field private mIsReverse:Z

.field private mIsTimeInfinite:Z

.field protected mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/animation/BaseAnimation$AnimationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mPauseTime:J

.field private mPlayTimeRange:J

.field private mRealTimeRange:J

.field private mResetTime:J

.field protected mRoot:Lmiui/maml/ScreenElementRoot;

.field private mStartTime:J

.field private mTriggers:Lmiui/maml/CommandTriggers;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .parameter "node"
    .parameter "tag"
    .parameter "root"

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 162
    iput-object p3, p0, Lmiui/maml/animation/BaseAnimation;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 163
    invoke-direct {p0, p1, p2}, Lmiui/maml/animation/BaseAnimation;->load(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method private evaSpeedAndAccFromTime(Lmiui/maml/animation/BaseAnimation$AnimationItem;Lmiui/maml/animation/BaseAnimation$AnimationItem;)V
    .locals 10
    .parameter "pos"
    .parameter "pos1"

    .prologue
    .line 462
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    iget-wide v4, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    iget-wide v6, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    sub-long v2, v4, v6

    .line 469
    .local v2, range:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    .line 470
    iget-wide v4, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAcceleation:D

    iput-wide v4, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAcceleation:D

    .line 471
    iget-wide v4, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    iput-wide v4, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    goto :goto_0

    .line 473
    :cond_2
    invoke-virtual {p2, p1}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->getDistance(Lmiui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide v0

    .line 475
    .local v0, distRange:D
    iget-boolean v4, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mHasSpeed:Z

    if-eqz v4, :cond_3

    .line 477
    iget-wide v4, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    long-to-double v6, v2

    mul-double/2addr v4, v6

    const-wide v6, 0x408f400000000000L

    div-double/2addr v4, v6

    sub-double/2addr v4, v0

    long-to-double v6, v2

    div-double/2addr v4, v6

    long-to-double v6, v2

    div-double/2addr v4, v6

    const-wide v6, 0x413e848000000000L

    mul-double/2addr v4, v6

    iput-wide v4, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAcceleation:D

    .line 478
    iget-wide v4, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    iget-wide v6, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAcceleation:D

    long-to-double v8, v2

    mul-double/2addr v6, v8

    const-wide v8, 0x408f400000000000L

    div-double/2addr v6, v8

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    goto :goto_0

    .line 479
    :cond_3
    iget-boolean v4, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mHasAcceleation:Z

    if-eqz v4, :cond_4

    .line 481
    long-to-double v4, v2

    div-double v4, v0, v4

    const-wide v6, 0x408f400000000000L

    mul-double/2addr v4, v6

    iget-wide v6, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAcceleation:D

    long-to-double v8, v2

    mul-double/2addr v6, v8

    const-wide v8, 0x409f400000000000L

    div-double/2addr v6, v8

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    .line 482
    long-to-double v4, v2

    div-double v4, v0, v4

    const-wide v6, 0x408f400000000000L

    mul-double/2addr v4, v6

    iget-wide v6, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAcceleation:D

    long-to-double v8, v2

    mul-double/2addr v6, v8

    const-wide v8, 0x409f400000000000L

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    goto :goto_0

    .line 483
    :cond_4
    iget-boolean v4, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mHasSpeed:Z

    if-nez v4, :cond_5

    iget-wide v4, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    .line 485
    :cond_5
    iget-wide v4, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    long-to-double v6, v2

    mul-double/2addr v4, v6

    const-wide v6, 0x408f400000000000L

    div-double/2addr v4, v6

    sub-double v4, v0, v4

    long-to-double v6, v2

    div-double/2addr v4, v6

    long-to-double v6, v2

    div-double/2addr v4, v6

    const-wide v6, 0x413e848000000000L

    mul-double/2addr v4, v6

    iput-wide v4, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAcceleation:D

    .line 486
    iget-wide v4, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAcceleation:D

    long-to-double v6, v2

    mul-double/2addr v4, v6

    const-wide v6, 0x408f400000000000L

    div-double/2addr v4, v6

    iget-wide v6, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    add-double/2addr v4, v6

    iput-wide v4, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    goto/16 :goto_0
.end method

.method private getRatio(Lmiui/maml/animation/BaseAnimation$AnimationItem;JJJ)F
    .locals 13
    .parameter "item1"
    .parameter "time"
    .parameter "base"
    .parameter "range"

    .prologue
    .line 360
    const-wide/16 v3, 0x0

    cmp-long v3, p6, v3

    if-nez v3, :cond_1

    const/high16 v2, 0x3f80

    .line 361
    .local v2, ratio:F
    :goto_0
    if-eqz p1, :cond_0

    iget-wide v3, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAcceleation:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_0

    .line 362
    const-wide/high16 v3, 0x4000

    iget-wide v5, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    mul-double/2addr v3, v5

    iget-wide v5, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAcceleation:D

    move-wide/from16 v0, p6

    long-to-double v7, v0

    mul-double/2addr v5, v7

    const-wide v7, 0x408f400000000000L

    div-double/2addr v5, v7

    add-double/2addr v3, v5

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    .line 363
    const/4 v2, 0x0

    .line 369
    :cond_0
    :goto_1
    return v2

    .line 360
    .end local v2           #ratio:F
    :cond_1
    sub-long v3, p2, p4

    long-to-float v3, v3

    move-wide/from16 v0, p6

    long-to-float v4, v0

    div-float v2, v3, v4

    goto :goto_0

    .line 365
    .restart local v2       #ratio:F
    :cond_2
    float-to-double v3, v2

    const-wide/high16 v5, 0x4000

    iget-wide v7, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    mul-double/2addr v5, v7

    iget-wide v7, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAcceleation:D

    sub-long v9, p2, p4

    long-to-double v9, v9

    mul-double/2addr v7, v9

    const-wide v9, 0x408f400000000000L

    div-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-float v5, v5

    float-to-double v5, v5

    const-wide/high16 v7, 0x4000

    iget-wide v9, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    mul-double/2addr v7, v9

    iget-wide v9, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAcceleation:D

    move-wide/from16 v0, p6

    long-to-double v11, v0

    mul-double/2addr v9, v11

    const-wide v11, 0x408f400000000000L

    div-double/2addr v9, v11

    add-double/2addr v7, v9

    div-double/2addr v5, v7

    mul-double/2addr v3, v5

    double-to-float v2, v3

    goto :goto_1
.end method

.method private getTimeFromSpeedAndAcc(Lmiui/maml/animation/BaseAnimation$AnimationItem;Lmiui/maml/animation/BaseAnimation$AnimationItem;)J
    .locals 8
    .parameter "pos"
    .parameter "pos1"

    .prologue
    .line 432
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 433
    :cond_0
    const-wide/16 v2, 0x0

    .line 457
    :goto_0
    return-wide v2

    .line 436
    :cond_1
    invoke-virtual {p2, p1}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->getDistance(Lmiui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide v0

    .line 437
    .local v0, distRange:D
    iget-boolean v2, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mHasSpeed:Z

    if-eqz v2, :cond_5

    .line 438
    iget-boolean v2, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mHasAcceleation:Z

    if-eqz v2, :cond_3

    .line 440
    iget-wide v2, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    iget-wide v4, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000

    iget-wide v6, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAcceleation:D

    mul-double/2addr v4, v6

    mul-double/2addr v4, v0

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    .line 450
    :cond_2
    :goto_1
    iget-wide v2, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAcceleation:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_7

    .line 451
    iget-wide v2, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_6

    .line 452
    const-wide v2, 0xe8d4a51000L

    goto :goto_0

    .line 441
    :cond_3
    iget-boolean v2, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mHasSpeed:Z

    if-nez v2, :cond_4

    iget-wide v2, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2

    :cond_4
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_2

    .line 443
    iget-wide v2, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    iget-wide v4, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    iget-wide v6, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4000

    div-double/2addr v2, v4

    div-double/2addr v2, v0

    iput-wide v2, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAcceleation:D

    goto :goto_1

    .line 447
    :cond_5
    iget-wide v2, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    iget-wide v4, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000

    iget-wide v6, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAcceleation:D

    mul-double/2addr v4, v6

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    goto :goto_1

    .line 454
    :cond_6
    iget-wide v2, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    iput-wide v2, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    .line 455
    iget-wide v2, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    div-double v2, v0, v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    goto :goto_0

    .line 457
    :cond_7
    iget-wide v2, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    iget-wide v4, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    sub-double/2addr v2, v4

    iget-wide v4, p2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAcceleation:D

    div-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    goto/16 :goto_0
.end method

.method private load(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 13
    .parameter "node"
    .parameter "tag"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 167
    const-string v6, "name"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lmiui/maml/animation/BaseAnimation;->mName:Ljava/lang/String;

    .line 168
    iget-object v6, p0, Lmiui/maml/animation/BaseAnimation;->mName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lmiui/maml/animation/BaseAnimation;->mHasName:Z

    .line 170
    iget-boolean v6, p0, Lmiui/maml/animation/BaseAnimation;->mHasName:Z

    if-eqz v6, :cond_0

    .line 171
    new-instance v6, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v9, p0, Lmiui/maml/animation/BaseAnimation;->mName:Ljava/lang/String;

    const-string v10, "current_frame"

    iget-object v11, p0, Lmiui/maml/animation/BaseAnimation;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v11}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v11

    invoke-direct {v6, v9, v10, v11}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v6, p0, Lmiui/maml/animation/BaseAnimation;->mCurrentFrame:Lmiui/maml/util/IndexedNumberVariable;

    .line 173
    :cond_0
    iget-object v6, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 174
    const-string v6, "delay"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, strDelay:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 178
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, p0, Lmiui/maml/animation/BaseAnimation;->mDelay:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_1
    :goto_1
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 185
    .local v3, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 186
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 187
    .local v1, ele:Lorg/w3c/dom/Element;
    iget-object v6, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lmiui/maml/animation/BaseAnimation;->onCreateItem()Lmiui/maml/animation/BaseAnimation$AnimationItem;

    move-result-object v9

    invoke-virtual {v9, v1}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->load(Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation$AnimationItem;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1           #ele:Lorg/w3c/dom/Element;
    .end local v2           #i:I
    .end local v3           #nodeList:Lorg/w3c/dom/NodeList;
    .end local v4           #strDelay:Ljava/lang/String;
    :cond_2
    move v6, v8

    .line 168
    goto :goto_0

    .line 179
    .restart local v4       #strDelay:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v6, "BaseAnimation"

    const-string v9, "invalid delay attribute"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 190
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #i:I
    .restart local v3       #nodeList:Lorg/w3c/dom/NodeList;
    :cond_3
    iget-object v6, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_5

    .line 191
    const-string v6, "BaseAnimation"

    const-string v7, "empty items"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_4
    :goto_3
    return-void

    .line 195
    :cond_5
    iget-object v6, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    iget-object v9, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    iget-wide v9, v6, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    const-wide v11, 0xe8d4a51000L

    cmp-long v6, v9, v11

    if-ltz v6, :cond_6

    move v8, v7

    :cond_6
    iput-boolean v8, p0, Lmiui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    .line 197
    iget-object v6, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v7, :cond_7

    iget-boolean v6, p0, Lmiui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    if-eqz v6, :cond_7

    .line 198
    iget-object v6, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    iget-object v7, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    iget-wide v6, v6, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    iput-wide v6, p0, Lmiui/maml/animation/BaseAnimation;->mRealTimeRange:J

    .line 204
    :goto_4
    const-string v6, "Triggers"

    invoke-static {p1, v6}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 205
    .local v5, triggers:Lorg/w3c/dom/Element;
    if-eqz v5, :cond_4

    .line 206
    new-instance v6, Lmiui/maml/CommandTriggers;

    iget-object v7, p0, Lmiui/maml/animation/BaseAnimation;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v6, v5, v7}, Lmiui/maml/CommandTriggers;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v6, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    goto :goto_3

    .line 200
    .end local v5           #triggers:Lorg/w3c/dom/Element;
    :cond_7
    iget-object v6, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    iget-object v7, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    iget-wide v6, v6, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    iput-wide v6, p0, Lmiui/maml/animation/BaseAnimation;->mRealTimeRange:J

    goto :goto_4
.end method

.method private reevaluate()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    .line 398
    const-wide/16 v3, 0x0

    .line 399
    .local v3, timeRange:J
    iget-object v7, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 400
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 401
    iget-object v7, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    .line 402
    .local v2, pos:Lmiui/maml/animation/BaseAnimation$AnimationItem;
    iget-object v7, v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mDeltaTimeExp:Lmiui/maml/data/Expression;

    if-eqz v7, :cond_3

    .line 403
    iget-object v7, v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mDeltaTimeExp:Lmiui/maml/data/Expression;

    iget-object v9, p0, Lmiui/maml/animation/BaseAnimation;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v9}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v9

    iget-object v9, v9, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v7, v9}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v9

    double-to-long v5, v9

    .line 404
    .local v5, tmpTimeRange:J
    const-wide/16 v9, 0x0

    cmp-long v7, v5, v9

    if-gez v7, :cond_0

    .line 405
    const-wide/16 v5, 0x0

    .line 407
    :cond_0
    add-long/2addr v3, v5

    .line 408
    iput-wide v3, v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .line 417
    .end local v5           #tmpTimeRange:J
    :cond_1
    :goto_1
    if-lez v1, :cond_2

    .line 418
    iget-object v7, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v9, v1, -0x1

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    invoke-direct {p0, v2, v7}, Lmiui/maml/animation/BaseAnimation;->evaSpeedAndAccFromTime(Lmiui/maml/animation/BaseAnimation$AnimationItem;Lmiui/maml/animation/BaseAnimation$AnimationItem;)V

    .line 400
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 409
    :cond_3
    iget-boolean v7, v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mHasTime:Z

    if-eqz v7, :cond_4

    iget-wide v9, v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    cmp-long v7, v9, v3

    if-ltz v7, :cond_4

    .line 410
    iget-wide v3, v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    goto :goto_1

    .line 411
    :cond_4
    if-lez v1, :cond_1

    .line 412
    iget-object v7, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v9, v1, -0x1

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    invoke-direct {p0, v2, v7}, Lmiui/maml/animation/BaseAnimation;->getTimeFromSpeedAndAcc(Lmiui/maml/animation/BaseAnimation$AnimationItem;Lmiui/maml/animation/BaseAnimation$AnimationItem;)J

    move-result-wide v9

    add-long/2addr v3, v9

    .line 413
    iput-wide v3, v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    goto :goto_2

    .line 422
    .end local v2           #pos:Lmiui/maml/animation/BaseAnimation$AnimationItem;
    :cond_5
    const-wide v9, 0xe8d4a51000L

    cmp-long v7, v3, v9

    if-ltz v7, :cond_6

    move v7, v8

    :goto_3
    iput-boolean v7, p0, Lmiui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    .line 423
    if-le v0, v8, :cond_7

    iget-boolean v7, p0, Lmiui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    if-eqz v7, :cond_7

    .line 424
    iget-object v7, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v8, v0, -0x2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    iget-wide v7, v7, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    iput-wide v7, p0, Lmiui/maml/animation/BaseAnimation;->mRealTimeRange:J

    .line 428
    :goto_4
    return-void

    .line 422
    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    .line 426
    :cond_7
    iput-wide v3, p0, Lmiui/maml/animation/BaseAnimation;->mRealTimeRange:J

    goto :goto_4
.end method

.method private resetTime()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 373
    iget-boolean v2, p0, Lmiui/maml/animation/BaseAnimation;->mIsFirstReset:Z

    if-eqz v2, :cond_0

    .line 374
    iput-boolean v3, p0, Lmiui/maml/animation/BaseAnimation;->mIsFirstReset:Z

    .line 376
    :cond_0
    iput-boolean v3, p0, Lmiui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    .line 378
    iget-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 379
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 380
    iget-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    invoke-virtual {v2}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->reset()V

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    :cond_1
    invoke-direct {p0}, Lmiui/maml/animation/BaseAnimation;->reevaluate()V

    .line 385
    iget-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mStartTime:J

    invoke-direct {p0, v2, v3}, Lmiui/maml/animation/BaseAnimation;->transToAnimTime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mAnimStartTime:J

    .line 386
    iget-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mEndTime:J

    invoke-direct {p0, v2, v3}, Lmiui/maml/animation/BaseAnimation;->transToAnimTime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mAnimEndTime:J

    .line 387
    iget-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mAnimEndTime:J

    iget-wide v4, p0, Lmiui/maml/animation/BaseAnimation;->mAnimStartTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    .line 388
    return-void
.end method

.method private transToAnimTime(J)J
    .locals 2
    .parameter "time"

    .prologue
    .line 391
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mRealTimeRange:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 392
    :cond_0
    iget-wide p1, p0, Lmiui/maml/animation/BaseAnimation;->mRealTimeRange:J

    .line 394
    .end local p1
    :cond_1
    return-wide p1
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->finish()V

    .line 228
    :cond_0
    return-void
.end method

.method protected getItem(I)Lmiui/maml/animation/BaseAnimation$AnimationItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 211
    if-ltz p1, :cond_0

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 212
    :cond_0
    const/4 v0, 0x0

    .line 213
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->init()V

    .line 222
    :cond_0
    return-void
.end method

.method public onAction(Ljava/lang/String;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 243
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0, p1}, Lmiui/maml/CommandTriggers;->onAction(Ljava/lang/String;)V

    .line 246
    :cond_0
    return-void
.end method

.method protected abstract onCreateItem()Lmiui/maml/animation/BaseAnimation$AnimationItem;
.end method

.method protected abstract onTick(Lmiui/maml/animation/BaseAnimation$AnimationItem;Lmiui/maml/animation/BaseAnimation$AnimationItem;F)V
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->pause()V

    .line 234
    :cond_0
    return-void
.end method

.method public pauseAnim(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 346
    iget-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsPaused:Z

    if-nez v0, :cond_0

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsPaused:Z

    .line 348
    iput-wide p1, p0, Lmiui/maml/animation/BaseAnimation;->mPauseTime:J

    .line 350
    :cond_0
    return-void
.end method

.method public playAnim(JJJZZ)V
    .locals 4
    .parameter "time"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "isLoop"
    .parameter "isDelay"

    .prologue
    .line 257
    iput-wide p1, p0, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    .line 258
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_5

    .end local p3
    :cond_0
    :goto_0
    iput-wide p3, p0, Lmiui/maml/animation/BaseAnimation;->mStartTime:J

    iput-wide p3, p0, Lmiui/maml/animation/BaseAnimation;->mAnimStartTime:J

    .line 259
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-gez v0, :cond_1

    const-wide/16 v0, -0x1

    cmp-long v0, p5, v0

    if-nez v0, :cond_6

    .end local p5
    :cond_1
    :goto_1
    iput-wide p5, p0, Lmiui/maml/animation/BaseAnimation;->mEndTime:J

    iput-wide p5, p0, Lmiui/maml/animation/BaseAnimation;->mAnimEndTime:J

    .line 260
    iput-boolean p7, p0, Lmiui/maml/animation/BaseAnimation;->mIsLoop:Z

    .line 261
    iput-boolean p8, p0, Lmiui/maml/animation/BaseAnimation;->mIsDelay:Z

    .line 262
    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mStartTime:J

    iget-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mEndTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_7

    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mEndTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_7

    :cond_2
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsReverse:Z

    .line 263
    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mStartTime:J

    iget-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mEndTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsLoop:Z

    .line 267
    :cond_3
    iget-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsDelay:Z

    if-eqz v0, :cond_4

    .line 268
    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    iget-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mDelay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    .line 271
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsFirstFrame:Z

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsPaused:Z

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsFirstReset:Z

    .line 275
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    .line 276
    return-void

    .line 258
    .restart local p3
    .restart local p5
    :cond_5
    const-wide/16 p3, 0x0

    goto :goto_0

    .line 259
    .end local p3
    :cond_6
    const-wide/16 p5, 0x0

    goto :goto_1

    .line 262
    .end local p5
    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final reset(J)V
    .locals 9
    .parameter "time"

    .prologue
    const/4 v7, 0x1

    .line 249
    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Lmiui/maml/animation/BaseAnimation;->playAnim(JJJZZ)V

    .line 250
    iget-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mHasName:Z

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mCurrentFrame:Lmiui/maml/util/IndexedNumberVariable;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 253
    :cond_0
    const-string v0, "init"

    invoke-virtual {p0, v0}, Lmiui/maml/animation/BaseAnimation;->onAction(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->resume()V

    .line 240
    :cond_0
    return-void
.end method

.method public resumeAnim(J)V
    .locals 4
    .parameter "time"

    .prologue
    .line 353
    iget-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsPaused:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsPaused:Z

    .line 355
    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    iget-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mPauseTime:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    .line 357
    :cond_0
    return-void
.end method

.method public final tick(J)V
    .locals 19
    .parameter "currentTime"

    .prologue
    .line 279
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmiui/maml/animation/BaseAnimation;->mIsPaused:Z

    if-eqz v2, :cond_0

    .line 341
    :goto_0
    return-void

    .line 283
    :cond_0
    move-object/from16 v0, p0

    iget-wide v15, v0, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    sub-long v11, p1, v15

    .line 284
    .local v11, elapsedTime:J
    const-wide/16 v15, 0x0

    cmp-long v2, v11, v15

    if-gez v2, :cond_1

    .line 285
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmiui/maml/animation/BaseAnimation;->mIsFirstFrame:Z

    if-eqz v2, :cond_6

    .line 286
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmiui/maml/animation/BaseAnimation;->mIsFirstFrame:Z

    .line 287
    const-wide/16 v11, 0x0

    .line 294
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmiui/maml/animation/BaseAnimation;->mIsFirstReset:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmiui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmiui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmiui/maml/animation/BaseAnimation;->mIsLoop:Z

    if-eqz v2, :cond_3

    .line 295
    :cond_2
    invoke-direct/range {p0 .. p0}, Lmiui/maml/animation/BaseAnimation;->resetTime()V

    .line 298
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmiui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmiui/maml/animation/BaseAnimation;->mIsLoop:Z

    if-nez v2, :cond_7

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmiui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    if-eqz v2, :cond_7

    .line 300
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmiui/maml/animation/BaseAnimation;->mIsPaused:Z

    .line 301
    move-object/from16 v0, p0

    iget-wide v15, v0, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    move-wide/from16 v17, v0

    add-long v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Lmiui/maml/animation/BaseAnimation;->mPauseTime:J

    .line 302
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmiui/maml/animation/BaseAnimation;->mHasName:Z

    if-eqz v2, :cond_5

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/animation/BaseAnimation;->mCurrentFrame:Lmiui/maml/util/IndexedNumberVariable;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lmiui/maml/animation/BaseAnimation;->mEndTime:J

    long-to-double v15, v15

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 305
    :cond_5
    const-string v2, "end"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmiui/maml/animation/BaseAnimation;->onAction(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_6
    const/4 v2, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v2, v15, v1}, Lmiui/maml/animation/BaseAnimation;->onTick(Lmiui/maml/animation/BaseAnimation$AnimationItem;Lmiui/maml/animation/BaseAnimation$AnimationItem;F)V

    goto/16 :goto_0

    .line 309
    :cond_7
    move-object/from16 v0, p0

    iget-wide v15, v0, Lmiui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    cmp-long v2, v11, v15

    if-ltz v2, :cond_8

    .line 310
    move-object/from16 v0, p0

    iget-wide v15, v0, Lmiui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    const-wide/16 v17, 0x1

    add-long v15, v15, v17

    rem-long v15, v11, v15

    sub-long v15, p1, v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    .line 311
    move-object/from16 v0, p0

    iget-wide v11, v0, Lmiui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    .line 312
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmiui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    .line 315
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmiui/maml/animation/BaseAnimation;->mIsReverse:Z

    if-eqz v2, :cond_9

    .line 316
    move-object/from16 v0, p0

    iget-wide v15, v0, Lmiui/maml/animation/BaseAnimation;->mAnimStartTime:J

    sub-long v11, v15, v11

    .line 321
    :goto_1
    move-object/from16 v0, p0

    iget-wide v15, v0, Lmiui/maml/animation/BaseAnimation;->mRealTimeRange:J

    const-wide/16 v17, 0x1

    add-long v15, v15, v17

    rem-long v4, v11, v15

    .line 322
    .local v4, time:J
    const/4 v3, 0x0

    .local v3, item1:Lmiui/maml/animation/BaseAnimation$AnimationItem;
    const/4 v14, 0x0

    .line 323
    .local v14, item2:Lmiui/maml/animation/BaseAnimation$AnimationItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 324
    .local v10, N:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    if-ge v13, v10, :cond_c

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #item2:Lmiui/maml/animation/BaseAnimation$AnimationItem;
    check-cast v14, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    .line 326
    .restart local v14       #item2:Lmiui/maml/animation/BaseAnimation$AnimationItem;
    iget-wide v15, v14, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    cmp-long v2, v4, v15

    if-gez v2, :cond_b

    .line 328
    const-wide/16 v6, 0x0

    .line 329
    .local v6, base:J
    if-nez v13, :cond_a

    .line 330
    iget-wide v8, v14, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .local v8, range:J
    :goto_3
    move-object/from16 v2, p0

    .line 336
    invoke-direct/range {v2 .. v9}, Lmiui/maml/animation/BaseAnimation;->getRatio(Lmiui/maml/animation/BaseAnimation$AnimationItem;JJJ)F

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14, v2}, Lmiui/maml/animation/BaseAnimation;->onTick(Lmiui/maml/animation/BaseAnimation$AnimationItem;Lmiui/maml/animation/BaseAnimation$AnimationItem;F)V

    goto/16 :goto_0

    .line 318
    .end local v3           #item1:Lmiui/maml/animation/BaseAnimation$AnimationItem;
    .end local v4           #time:J
    .end local v6           #base:J
    .end local v8           #range:J
    .end local v10           #N:I
    .end local v13           #i:I
    .end local v14           #item2:Lmiui/maml/animation/BaseAnimation$AnimationItem;
    :cond_9
    move-object/from16 v0, p0

    iget-wide v15, v0, Lmiui/maml/animation/BaseAnimation;->mAnimStartTime:J

    add-long/2addr v11, v15

    goto :goto_1

    .line 332
    .restart local v3       #item1:Lmiui/maml/animation/BaseAnimation$AnimationItem;
    .restart local v4       #time:J
    .restart local v6       #base:J
    .restart local v10       #N:I
    .restart local v13       #i:I
    .restart local v14       #item2:Lmiui/maml/animation/BaseAnimation$AnimationItem;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v15, v13, -0x1

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #item1:Lmiui/maml/animation/BaseAnimation$AnimationItem;
    check-cast v3, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    .line 333
    .restart local v3       #item1:Lmiui/maml/animation/BaseAnimation$AnimationItem;
    iget-wide v15, v14, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    iget-wide v0, v3, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    move-wide/from16 v17, v0

    sub-long v8, v15, v17

    .line 334
    .restart local v8       #range:J
    iget-wide v6, v3, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    goto :goto_3

    .line 324
    .end local v6           #base:J
    .end local v8           #range:J
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 340
    :cond_c
    const/high16 v2, 0x3f80

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14, v2}, Lmiui/maml/animation/BaseAnimation;->onTick(Lmiui/maml/animation/BaseAnimation$AnimationItem;Lmiui/maml/animation/BaseAnimation$AnimationItem;F)V

    goto/16 :goto_0
.end method
