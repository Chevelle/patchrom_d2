.class public Lmiui/maml/animation/PositionAnimation;
.super Lmiui/maml/animation/BaseAnimation;
.source "PositionAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Position"

.field public static final TAG_NAME:Ljava/lang/String; = "PositionAnimation"


# instance fields
.field protected mCurrentX:D

.field protected mCurrentY:D

.field protected mDelayX:D

.field protected mDelayY:D


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/ScreenElementRoot;)V
    .locals 3
    .parameter "node"
    .parameter "tagName"
    .parameter "root"

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/ScreenElementRoot;)V

    .line 28
    invoke-virtual {p0, v1}, Lmiui/maml/animation/PositionAnimation;->getItem(I)Lmiui/maml/animation/BaseAnimation$AnimationItem;

    move-result-object v0

    .line 29
    .local v0, ai:Lmiui/maml/animation/BaseAnimation$AnimationItem;
    invoke-virtual {v0, v1}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v1

    iput-wide v1, p0, Lmiui/maml/animation/PositionAnimation;->mDelayX:D

    .line 30
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v1

    iput-wide v1, p0, Lmiui/maml/animation/PositionAnimation;->mDelayY:D

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .parameter "node"
    .parameter "root"

    .prologue
    .line 21
    const-string v0, "Position"

    invoke-direct {p0, p1, v0, p2}, Lmiui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/ScreenElementRoot;)V

    .line 22
    return-void
.end method


# virtual methods
.method public final getX()D
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lmiui/maml/animation/PositionAnimation;->mCurrentX:D

    return-wide v0
.end method

.method public final getY()D
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lmiui/maml/animation/PositionAnimation;->mCurrentY:D

    return-wide v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Lmiui/maml/animation/BaseAnimation;->init()V

    .line 51
    iget-wide v0, p0, Lmiui/maml/animation/PositionAnimation;->mDelayX:D

    iput-wide v0, p0, Lmiui/maml/animation/PositionAnimation;->mCurrentX:D

    .line 52
    iget-wide v0, p0, Lmiui/maml/animation/PositionAnimation;->mDelayY:D

    iput-wide v0, p0, Lmiui/maml/animation/PositionAnimation;->mCurrentY:D

    .line 53
    return-void
.end method

.method protected onCreateItem()Lmiui/maml/animation/BaseAnimation$AnimationItem;
    .locals 4

    .prologue
    .line 43
    new-instance v0, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "x"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "y"

    aput-object v3, v1, v2

    iget-object v2, p0, Lmiui/maml/animation/PositionAnimation;->mRoot:Lmiui/maml/ScreenElementRoot;

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

    .line 58
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 66
    :goto_0
    return-void

    .line 62
    :cond_0
    if-nez p1, :cond_1

    move-wide v0, v2

    .line 63
    .local v0, x1:D
    :goto_1
    if-nez p1, :cond_2

    .line 64
    .local v2, y1:D
    :goto_2
    invoke-virtual {p2, v4}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v4

    sub-double/2addr v4, v0

    float-to-double v6, p3

    mul-double/2addr v4, v6

    add-double/2addr v4, v0

    iput-wide v4, p0, Lmiui/maml/animation/PositionAnimation;->mCurrentX:D

    .line 65
    invoke-virtual {p2, v8}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v4

    sub-double/2addr v4, v2

    float-to-double v6, p3

    mul-double/2addr v4, v6

    add-double/2addr v4, v2

    iput-wide v4, p0, Lmiui/maml/animation/PositionAnimation;->mCurrentY:D

    goto :goto_0

    .line 62
    .end local v0           #x1:D
    .end local v2           #y1:D
    :cond_1
    invoke-virtual {p1, v4}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    goto :goto_1

    .line 63
    .restart local v0       #x1:D
    :cond_2
    invoke-virtual {p1, v8}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    goto :goto_2
.end method
