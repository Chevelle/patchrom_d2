.class public Lmiui/maml/animation/BaseAnimation$AnimationItem;
.super Ljava/lang/Object;
.source "BaseAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/animation/BaseAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationItem"
.end annotation


# instance fields
.field public mAcceleation:D

.field private mAttrs:[Ljava/lang/String;

.field private mAttrsValue:[D

.field public mDeltaTimeExp:Lmiui/maml/data/Expression;

.field public mExps:[Lmiui/maml/data/Expression;

.field public mHasAcceleation:Z

.field public mHasSpeed:Z

.field public mHasTime:Z

.field public mInitAcceleation:D

.field public mInitSpeed:D

.field public mInitTime:J

.field private mNeedEvaluate:Z

.field private mRoot:Lmiui/maml/ScreenElementRoot;

.field public mSpeed:D

.field public mTime:J


# direct methods
.method public constructor <init>([Ljava/lang/String;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .parameter "attrs"
    .parameter "root"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    .line 44
    iput-object p1, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 46
    return-void
.end method

.method private reevaluate()V
    .locals 9

    .prologue
    .line 94
    iget-object v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/maml/data/Expression;

    if-nez v6, :cond_1

    .line 101
    :cond_0
    return-void

    .line 97
    :cond_1
    const/4 v2, 0x0

    .line 98
    .local v2, i:I
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/maml/data/Expression;

    .local v0, arr$:[Lmiui/maml/data/Expression;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v3, v2

    .end local v2           #i:I
    .local v3, i:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 99
    .local v1, e:Lmiui/maml/data/Expression;
    iget-object v8, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    if-nez v1, :cond_2

    const-wide/16 v6, 0x0

    :goto_1
    aput-wide v6, v8, v3

    .line 98
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_0

    .line 99
    .end local v3           #i:I
    .restart local v2       #i:I
    :cond_2
    iget-object v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v6}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v6

    iget-object v6, v6, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v1, v6}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v6

    goto :goto_1
.end method


# virtual methods
.method public get(I)D
    .locals 3
    .parameter "i"

    .prologue
    .line 49
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 50
    :cond_0
    const-string v0, "BaseAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to get number in AnimationItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-wide/16 v0, 0x0

    .line 57
    :goto_0
    return-wide v0

    .line 53
    :cond_1
    iget-boolean v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    if-eqz v0, :cond_2

    .line 54
    invoke-direct {p0}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->reevaluate()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    .line 57
    :cond_2
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    aget-wide v0, v0, p1

    goto :goto_0
.end method

.method public getDistance(Lmiui/maml/animation/BaseAnimation$AnimationItem;)D
    .locals 10
    .parameter "dest"

    .prologue
    .line 104
    if-eqz p1, :cond_0

    iget-object v4, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    array-length v4, v4

    iget-object v5, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    array-length v5, v5

    if-eq v4, v5, :cond_1

    .line 105
    :cond_0
    const-wide/16 v4, 0x0

    .line 112
    :goto_0
    return-wide v4

    .line 107
    :cond_1
    const-wide/16 v1, 0x0

    .line 108
    .local v1, dist:D
    iget-object v4, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    array-length v0, v4

    .line 109
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 110
    invoke-virtual {p1, v3}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v4

    invoke-virtual {p0, v3}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-virtual {p1, v3}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v6

    invoke-virtual {p0, v3}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v1, v4

    .line 109
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 112
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    goto :goto_0
.end method

.method public load(Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation$AnimationItem;
    .locals 8
    .parameter "node"

    .prologue
    .line 62
    :try_start_0
    const-string v6, "time"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .line 63
    const/4 v6, 0x1

    iput-boolean v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mHasTime:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 67
    :goto_0
    :try_start_1
    const-string v6, "acc"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAcceleation:D

    .line 68
    const/4 v6, 0x1

    iput-boolean v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mHasAcceleation:Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    :goto_1
    :try_start_2
    const-string v6, "speed"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    .line 73
    const/4 v6, 0x1

    iput-boolean v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mHasSpeed:Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 76
    :goto_2
    const-string v6, "dtime"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v6

    iput-object v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mDeltaTimeExp:Lmiui/maml/data/Expression;

    .line 78
    iget-object v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 79
    iget-object v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    array-length v6, v6

    new-array v6, v6, [Lmiui/maml/data/Expression;

    iput-object v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/maml/data/Expression;

    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, i:I
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_3
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 82
    .local v5, s:Ljava/lang/String;
    iget-object v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/maml/data/Expression;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v7

    aput-object v7, v6, v2

    .line 81
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_3

    .line 84
    .end local v5           #s:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    array-length v6, v6

    new-array v6, v6, [D

    iput-object v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    .line 87
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    iget-wide v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    iput-wide v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mInitTime:J

    .line 88
    iget-wide v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    iput-wide v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mInitSpeed:D

    .line 89
    iget-wide v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAcceleation:D

    iput-wide v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mInitAcceleation:D

    .line 90
    return-object p0

    .line 74
    :catch_0
    move-exception v6

    goto :goto_2

    .line 69
    :catch_1
    move-exception v6

    goto :goto_1

    .line 64
    :catch_2
    move-exception v6

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    .line 117
    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mInitTime:J

    iput-wide v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .line 118
    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mInitSpeed:D

    iput-wide v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    .line 119
    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mInitAcceleation:D

    iput-wide v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAcceleation:D

    .line 120
    return-void
.end method
