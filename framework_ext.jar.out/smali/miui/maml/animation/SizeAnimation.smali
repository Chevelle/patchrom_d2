.class public Lmiui/maml/animation/SizeAnimation;
.super Lmiui/maml/animation/BaseAnimation;
.source "SizeAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Size"

.field public static final TAG_NAME:Ljava/lang/String; = "SizeAnimation"


# instance fields
.field private mCurrentH:D

.field private mCurrentW:D

.field private mDelayH:D

.field private mDelayW:D

.field private mMaxH:D

.field private mMaxW:D


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 8
    .parameter "node"
    .parameter "root"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 25
    const-string v2, "Size"

    invoke-direct {p0, p1, v2, p2}, Lmiui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/ScreenElementRoot;)V

    .line 27
    iget-object v2, p0, Lmiui/maml/animation/SizeAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    .line 28
    .local v0, ai:Lmiui/maml/animation/BaseAnimation$AnimationItem;
    invoke-virtual {v0, v6}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    iget-wide v4, p0, Lmiui/maml/animation/SizeAnimation;->mMaxW:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 29
    invoke-virtual {v0, v6}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/animation/SizeAnimation;->mMaxW:D

    .line 30
    :cond_1
    invoke-virtual {v0, v7}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    iget-wide v4, p0, Lmiui/maml/animation/SizeAnimation;->mMaxH:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 31
    invoke-virtual {v0, v7}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/animation/SizeAnimation;->mMaxH:D

    goto :goto_0

    .line 35
    .end local v0           #ai:Lmiui/maml/animation/BaseAnimation$AnimationItem;
    :cond_2
    invoke-virtual {p0, v6}, Lmiui/maml/animation/SizeAnimation;->getItem(I)Lmiui/maml/animation/BaseAnimation$AnimationItem;

    move-result-object v0

    .line 36
    .restart local v0       #ai:Lmiui/maml/animation/BaseAnimation$AnimationItem;
    invoke-virtual {v0, v6}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/animation/SizeAnimation;->mDelayW:D

    .line 37
    invoke-virtual {v0, v7}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/animation/SizeAnimation;->mDelayH:D

    .line 38
    return-void
.end method


# virtual methods
.method public final getHeight()D
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lmiui/maml/animation/SizeAnimation;->mCurrentH:D

    return-wide v0
.end method

.method public final getMaxHeight()D
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lmiui/maml/animation/SizeAnimation;->mMaxH:D

    return-wide v0
.end method

.method public final getMaxWidth()D
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lmiui/maml/animation/SizeAnimation;->mMaxW:D

    return-wide v0
.end method

.method public final getWidth()D
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lmiui/maml/animation/SizeAnimation;->mCurrentW:D

    return-wide v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Lmiui/maml/animation/BaseAnimation;->init()V

    .line 66
    iget-wide v0, p0, Lmiui/maml/animation/SizeAnimation;->mDelayW:D

    iput-wide v0, p0, Lmiui/maml/animation/SizeAnimation;->mCurrentW:D

    .line 67
    iget-wide v0, p0, Lmiui/maml/animation/SizeAnimation;->mDelayH:D

    iput-wide v0, p0, Lmiui/maml/animation/SizeAnimation;->mCurrentH:D

    .line 68
    return-void
.end method

.method protected onCreateItem()Lmiui/maml/animation/BaseAnimation$AnimationItem;
    .locals 4

    .prologue
    .line 58
    new-instance v0, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "w"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "h"

    aput-object v3, v1, v2

    iget-object v2, p0, Lmiui/maml/animation/SizeAnimation;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v0, v1, v2}, Lmiui/maml/animation/BaseAnimation$AnimationItem;-><init>([Ljava/lang/String;Lmiui/maml/ScreenElementRoot;)V

    return-object v0
.end method

.method protected onTick(Lmiui/maml/animation/BaseAnimation$AnimationItem;Lmiui/maml/animation/BaseAnimation$AnimationItem;F)V
    .locals 9
    .parameter "item1"
    .parameter "item2"
    .parameter "ratio"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 73
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 81
    :goto_0
    return-void

    .line 77
    :cond_0
    if-nez p1, :cond_1

    move-wide v0, v2

    .line 78
    .local v0, x1:D
    :goto_1
    if-nez p1, :cond_2

    .line 79
    .local v2, y1:D
    :goto_2
    invoke-virtual {p2, v4}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v4

    sub-double/2addr v4, v0

    float-to-double v6, p3

    mul-double/2addr v4, v6

    add-double/2addr v4, v0

    iput-wide v4, p0, Lmiui/maml/animation/SizeAnimation;->mCurrentW:D

    .line 80
    invoke-virtual {p2, v8}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v4

    sub-double/2addr v4, v2

    float-to-double v6, p3

    mul-double/2addr v4, v6

    add-double/2addr v4, v2

    iput-wide v4, p0, Lmiui/maml/animation/SizeAnimation;->mCurrentH:D

    goto :goto_0

    .line 77
    .end local v0           #x1:D
    .end local v2           #y1:D
    :cond_1
    invoke-virtual {p1, v4}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    goto :goto_1

    .line 78
    .restart local v0       #x1:D
    :cond_2
    invoke-virtual {p1, v8}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    goto :goto_2
.end method
