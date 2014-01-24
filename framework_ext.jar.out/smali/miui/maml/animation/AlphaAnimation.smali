.class public Lmiui/maml/animation/AlphaAnimation;
.super Lmiui/maml/animation/BaseAnimation;
.source "AlphaAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Alpha"

.field public static final TAG_NAME:Ljava/lang/String; = "AlphaAnimation"


# instance fields
.field private mCurrentAlpha:I

.field private mDelayValue:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/ScreenElementRoot;)V
    .locals 4
    .parameter "node"
    .parameter "tagName"
    .parameter "root"

    .prologue
    const/4 v3, 0x0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/ScreenElementRoot;)V

    .line 15
    const/16 v2, 0xff

    iput v2, p0, Lmiui/maml/animation/AlphaAnimation;->mCurrentAlpha:I

    .line 26
    const-string v2, "delayValue"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, delayValue:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 29
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lmiui/maml/animation/AlphaAnimation;->mDelayValue:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-virtual {p0, v3}, Lmiui/maml/animation/AlphaAnimation;->getItem(I)Lmiui/maml/animation/BaseAnimation$AnimationItem;

    move-result-object v0

    .line 35
    .local v0, ai:Lmiui/maml/animation/BaseAnimation$AnimationItem;
    invoke-virtual {v0, v3}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lmiui/maml/animation/AlphaAnimation;->mDelayValue:I

    goto :goto_0

    .line 30
    .end local v0           #ai:Lmiui/maml/animation/BaseAnimation$AnimationItem;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .parameter "node"
    .parameter "root"

    .prologue
    .line 20
    const-string v0, "Alpha"

    invoke-direct {p0, p1, v0, p2}, Lmiui/maml/animation/AlphaAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/ScreenElementRoot;)V

    .line 21
    return-void
.end method


# virtual methods
.method public final getAlpha()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lmiui/maml/animation/AlphaAnimation;->mCurrentAlpha:I

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lmiui/maml/animation/BaseAnimation;->init()V

    .line 53
    iget v0, p0, Lmiui/maml/animation/AlphaAnimation;->mDelayValue:I

    iput v0, p0, Lmiui/maml/animation/AlphaAnimation;->mCurrentAlpha:I

    .line 54
    return-void
.end method

.method protected onCreateItem()Lmiui/maml/animation/BaseAnimation$AnimationItem;
    .locals 4

    .prologue
    .line 45
    new-instance v0, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "a"

    aput-object v3, v1, v2

    iget-object v2, p0, Lmiui/maml/animation/AlphaAnimation;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v0, v1, v2}, Lmiui/maml/animation/BaseAnimation$AnimationItem;-><init>([Ljava/lang/String;Lmiui/maml/ScreenElementRoot;)V

    return-object v0
.end method

.method protected onTick(Lmiui/maml/animation/BaseAnimation$AnimationItem;Lmiui/maml/animation/BaseAnimation$AnimationItem;F)V
    .locals 6
    .parameter "item1"
    .parameter "item2"
    .parameter "ratio"

    .prologue
    const/4 v2, 0x0

    .line 59
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    if-nez p1, :cond_1

    const-wide v0, 0x406fe00000000000L

    .line 64
    .local v0, a1:D
    :goto_1
    invoke-virtual {p2, v2}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    sub-double/2addr v2, v0

    float-to-double v4, p3

    mul-double/2addr v2, v4

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lmiui/maml/animation/AlphaAnimation;->mCurrentAlpha:I

    goto :goto_0

    .line 63
    .end local v0           #a1:D
    :cond_1
    invoke-virtual {p1, v2}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    goto :goto_1
.end method
