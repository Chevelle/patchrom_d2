.class Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"

# interfaces
.implements Lmiui/maml/elements/ITicker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BounceAnimationController"
.end annotation


# static fields
.field private static final BOUNCE_THRESHOLD:I = 0x3


# instance fields
.field private mBounceAccelation:I

.field private mBounceAccelationExp:Lmiui/maml/data/Expression;

.field private mBounceInitSpeed:I

.field private mBounceInitSpeedExp:Lmiui/maml/data/Expression;

.field private mBounceProgress:Lmiui/maml/util/IndexedNumberVariable;

.field private mBounceStartPointIndex:I

.field private mBounceStartTime:J

.field private mEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

.field private mPreDistance:J

.field private mStartX:F

.field private mStartY:F

.field private mTraveledDistance:D

.field final synthetic this$0:Lmiui/maml/elements/AdvancedSlider;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/AdvancedSlider;)V
    .locals 2
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceStartTime:J

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/AdvancedSlider;Lmiui/maml/elements/AdvancedSlider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;-><init>(Lmiui/maml/elements/AdvancedSlider;)V

    return-void
.end method

.method private getPoint(FFFFJ)Lmiui/maml/util/Utils$Point;
    .locals 17
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "distance"

    .prologue
    .line 255
    new-instance v6, Lmiui/maml/util/Utils$Point;

    move/from16 v0, p1

    float-to-double v12, v0

    move/from16 v0, p2

    float-to-double v14, v0

    invoke-direct {v6, v12, v13, v14, v15}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    .line 256
    .local v6, pt1:Lmiui/maml/util/Utils$Point;
    new-instance v7, Lmiui/maml/util/Utils$Point;

    move/from16 v0, p3

    float-to-double v12, v0

    move/from16 v0, p4

    float-to-double v14, v0

    invoke-direct {v7, v12, v13, v14, v15}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    .line 257
    .local v7, pt2:Lmiui/maml/util/Utils$Point;
    const/4 v12, 0x1

    invoke-static {v6, v7, v12}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v10

    .line 258
    .local v10, total:D
    move-wide/from16 v0, p5

    long-to-double v12, v0

    cmpl-double v12, v12, v10

    if-ltz v12, :cond_0

    .line 259
    const/4 v12, 0x0

    .line 263
    :goto_0
    return-object v12

    .line 260
    :cond_0
    move-wide/from16 v0, p5

    long-to-double v12, v0

    sub-double v12, v10, v12

    div-double v8, v12, v10

    .line 261
    .local v8, ratio:D
    iget-wide v12, v7, Lmiui/maml/util/Utils$Point;->x:D

    iget-wide v14, v6, Lmiui/maml/util/Utils$Point;->x:D

    sub-double/2addr v12, v14

    mul-double v2, v12, v8

    .line 262
    .local v2, dx:D
    iget-wide v12, v7, Lmiui/maml/util/Utils$Point;->y:D

    iget-wide v14, v6, Lmiui/maml/util/Utils$Point;->y:D

    sub-double/2addr v12, v14

    mul-double v4, v12, v8

    .line 263
    .local v4, dy:D
    new-instance v12, Lmiui/maml/util/Utils$Point;

    iget-wide v13, v6, Lmiui/maml/util/Utils$Point;->x:D

    add-double/2addr v13, v2

    iget-wide v15, v6, Lmiui/maml/util/Utils$Point;->y:D

    add-double/2addr v15, v4

    invoke-direct/range {v12 .. v16}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    goto :goto_0
.end method

.method private startBounceAnimation(Lmiui/maml/elements/AdvancedSlider$EndPoint;)V
    .locals 12
    .parameter "ep"

    .prologue
    .line 143
    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceInitSpeedExp:Lmiui/maml/data/Expression;

    if-eqz v7, :cond_0

    .line 144
    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v8, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceInitSpeedExp:Lmiui/maml/data/Expression;

    invoke-virtual {v7, v8}, Lmiui/maml/elements/AdvancedSlider;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v7

    double-to-int v7, v7

    iput v7, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceInitSpeed:I

    .line 145
    :cond_0
    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceAccelationExp:Lmiui/maml/data/Expression;

    if-eqz v7, :cond_1

    .line 146
    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v8, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceAccelationExp:Lmiui/maml/data/Expression;

    invoke-virtual {v7, v8}, Lmiui/maml/elements/AdvancedSlider;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v7

    double-to-int v7, v7

    iput v7, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceAccelation:I

    .line 147
    :cond_1
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceStartTime:J

    .line 148
    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .line 149
    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    #getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v7}, Lmiui/maml/elements/AdvancedSlider;->access$200(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getOffsetX()F

    move-result v7

    iget-object v8, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    #getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v8}, Lmiui/maml/elements/AdvancedSlider;->access$200(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v8

    invoke-virtual {v8}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAbsoluteLeft()F

    move-result v8

    add-float/2addr v7, v8

    iput v7, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mStartX:F

    .line 150
    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    #getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v7}, Lmiui/maml/elements/AdvancedSlider;->access$200(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getOffsetY()F

    move-result v7

    iget-object v8, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    #getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v8}, Lmiui/maml/elements/AdvancedSlider;->access$200(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v8

    invoke-virtual {v8}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAbsoluteTop()F

    move-result v8

    add-float/2addr v7, v8

    iput v7, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mStartY:F

    .line 151
    const/4 v7, -0x1

    iput v7, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceStartPointIndex:I

    .line 152
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mTraveledDistance:D

    .line 153
    new-instance v1, Lmiui/maml/util/Utils$Point;

    iget v7, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mStartX:F

    float-to-double v7, v7

    iget v9, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mStartY:F

    float-to-double v9, v9

    invoke-direct {v1, v7, v8, v9, v10}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    .line 154
    .local v1, p0:Lmiui/maml/util/Utils$Point;
    if-eqz p1, :cond_4

    #getter for: Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {p1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->access$300(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 155
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    #getter for: Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {p1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->access$300(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 156
    #getter for: Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {p1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->access$300(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v7

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/elements/AdvancedSlider$Position;

    .line 157
    .local v5, pt1:Lmiui/maml/elements/AdvancedSlider$Position;
    #getter for: Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {p1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->access$300(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/elements/AdvancedSlider$Position;

    .line 158
    .local v6, pt2:Lmiui/maml/elements/AdvancedSlider$Position;
    new-instance v2, Lmiui/maml/util/Utils$Point;

    invoke-virtual {v5}, Lmiui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v5}, Lmiui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v9

    float-to-double v9, v9

    invoke-direct {v2, v7, v8, v9, v10}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    .line 159
    .local v2, p1:Lmiui/maml/util/Utils$Point;
    new-instance v3, Lmiui/maml/util/Utils$Point;

    invoke-virtual {v6}, Lmiui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v6}, Lmiui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v9

    float-to-double v9, v9

    invoke-direct {v3, v7, v8, v9, v10}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    .line 160
    .local v3, p2:Lmiui/maml/util/Utils$Point;
    const/4 v7, 0x0

    invoke-static {v2, v3, v1, v7}, Lmiui/maml/util/Utils;->pointProjectionOnSegment(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)Lmiui/maml/util/Utils$Point;

    move-result-object v4

    .line 161
    .local v4, pt:Lmiui/maml/util/Utils$Point;
    if-eqz v4, :cond_3

    .line 162
    add-int/lit8 v7, v0, -0x1

    iput v7, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceStartPointIndex:I

    .line 163
    iget-wide v7, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mTraveledDistance:D

    const/4 v9, 0x1

    invoke-static {v2, v4, v9}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v9

    add-double/2addr v7, v9

    iput-wide v7, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mTraveledDistance:D

    .line 172
    .end local v0           #i:I
    .end local v2           #p1:Lmiui/maml/util/Utils$Point;
    .end local v3           #p2:Lmiui/maml/util/Utils$Point;
    .end local v4           #pt:Lmiui/maml/util/Utils$Point;
    .end local v5           #pt1:Lmiui/maml/elements/AdvancedSlider$Position;
    .end local v6           #pt2:Lmiui/maml/elements/AdvancedSlider$Position;
    :cond_2
    :goto_1
    iget-wide v7, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mTraveledDistance:D

    const-wide/high16 v9, 0x4008

    cmpg-double v7, v7, v9

    if-gez v7, :cond_5

    .line 173
    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    #calls: Lmiui/maml/elements/AdvancedSlider;->cancelMoving()V
    invoke-static {v7}, Lmiui/maml/elements/AdvancedSlider;->access$100(Lmiui/maml/elements/AdvancedSlider;)V

    .line 174
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceStartTime:J

    .line 182
    :goto_2
    return-void

    .line 166
    .restart local v0       #i:I
    .restart local v2       #p1:Lmiui/maml/util/Utils$Point;
    .restart local v3       #p2:Lmiui/maml/util/Utils$Point;
    .restart local v4       #pt:Lmiui/maml/util/Utils$Point;
    .restart local v5       #pt1:Lmiui/maml/elements/AdvancedSlider$Position;
    .restart local v6       #pt2:Lmiui/maml/elements/AdvancedSlider$Position;
    :cond_3
    iget-wide v7, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mTraveledDistance:D

    const/4 v9, 0x1

    invoke-static {v2, v3, v9}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v9

    add-double/2addr v7, v9

    iput-wide v7, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mTraveledDistance:D

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    .end local v0           #i:I
    .end local v2           #p1:Lmiui/maml/util/Utils$Point;
    .end local v3           #p2:Lmiui/maml/util/Utils$Point;
    .end local v4           #pt:Lmiui/maml/util/Utils$Point;
    .end local v5           #pt1:Lmiui/maml/elements/AdvancedSlider$Position;
    .end local v6           #pt2:Lmiui/maml/elements/AdvancedSlider$Position;
    :cond_4
    new-instance v7, Lmiui/maml/util/Utils$Point;

    iget-object v8, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    #getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v8}, Lmiui/maml/elements/AdvancedSlider;->access$200(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v8

    invoke-virtual {v8}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAbsoluteLeft()F

    move-result v8

    float-to-double v8, v8

    iget-object v10, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    #getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v10}, Lmiui/maml/elements/AdvancedSlider;->access$200(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v10

    invoke-virtual {v10}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAbsoluteTop()F

    move-result v10

    float-to-double v10, v10

    invoke-direct {v7, v8, v9, v10, v11}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    const/4 v8, 0x1

    invoke-static {v7, v1, v8}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v7

    iput-wide v7, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mTraveledDistance:D

    goto :goto_1

    .line 178
    :cond_5
    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceProgress:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz v7, :cond_6

    .line 179
    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceProgress:Lmiui/maml/util/IndexedNumberVariable;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 181
    :cond_6
    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v7}, Lmiui/maml/elements/AdvancedSlider;->requestUpdate()V

    goto :goto_2
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    .line 129
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceStartTime:J

    .line 130
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceProgress:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceProgress:Lmiui/maml/util/IndexedNumberVariable;

    const-wide/high16 v1, 0x3ff0

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 132
    :cond_0
    return-void
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 4
    .parameter "node"

    .prologue
    .line 121
    const-string v0, "bounceInitSpeed"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceInitSpeedExp:Lmiui/maml/data/Expression;

    .line 122
    const-string v0, "bounceAcceleration"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceAccelationExp:Lmiui/maml/data/Expression;

    .line 123
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-boolean v0, v0, Lmiui/maml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v1, v1, Lmiui/maml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    const-string v2, "bounce_progress"

    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v3}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceProgress:Lmiui/maml/util/IndexedNumberVariable;

    .line 126
    :cond_0
    return-void
.end method

.method public startCancelMoving(Lmiui/maml/elements/AdvancedSlider$EndPoint;)V
    .locals 1
    .parameter "ep"

    .prologue
    .line 135
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceInitSpeedExp:Lmiui/maml/data/Expression;

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    #calls: Lmiui/maml/elements/AdvancedSlider;->cancelMoving()V
    invoke-static {v0}, Lmiui/maml/elements/AdvancedSlider;->access$100(Lmiui/maml/elements/AdvancedSlider;)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-direct {p0, p1}, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->startBounceAnimation(Lmiui/maml/elements/AdvancedSlider$EndPoint;)V

    goto :goto_0
.end method

.method public tick(J)V
    .locals 28
    .parameter "currentTime"

    .prologue
    .line 187
    move-object/from16 v0, p0

    iget-wide v3, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceStartTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    move-object/from16 v0, p0

    iget-wide v3, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceStartTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 191
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceStartTime:J

    .line 192
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mPreDistance:J

    .line 242
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v3}, Lmiui/maml/elements/AdvancedSlider;->requestUpdate()V

    .line 244
    move-object/from16 v0, p0

    iget-wide v3, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mTraveledDistance:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    .line 245
    move-object/from16 v0, p0

    iget-wide v3, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mPreDistance:J

    long-to-double v3, v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mTraveledDistance:D

    div-double v20, v3, v5

    .line 248
    .local v20, progress:D
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceProgress:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz v3, :cond_0

    .line 249
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceProgress:Lmiui/maml/util/IndexedNumberVariable;

    const-wide/high16 v4, 0x3ff0

    cmpl-double v4, v20, v4

    if-lez v4, :cond_2

    const-wide/high16 v20, 0x3ff0

    .end local v20           #progress:D
    :cond_2
    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    goto :goto_0

    .line 194
    :cond_3
    move-object/from16 v0, p0

    iget-wide v3, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceStartTime:J

    sub-long v26, p1, v3

    .line 195
    .local v26, time:J
    move-object/from16 v0, p0

    iget v3, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceInitSpeed:I

    int-to-long v3, v3

    mul-long v3, v3, v26

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceAccelation:I

    int-to-long v5, v5

    mul-long v5, v5, v26

    mul-long v5, v5, v26

    const-wide/32 v10, 0x1e8480

    div-long/2addr v5, v10

    add-long v8, v3, v5

    .line 196
    .local v8, dist:J
    move-object/from16 v0, p0

    iget v3, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceInitSpeed:I

    int-to-long v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceAccelation:I

    int-to-long v5, v5

    mul-long v5, v5, v26

    const-wide/16 v10, 0x3e8

    div-long/2addr v5, v10

    add-long v24, v3, v5

    .line 197
    .local v24, speed:J
    const-wide/16 v3, 0x0

    cmp-long v3, v24, v3

    if-lez v3, :cond_4

    move-object/from16 v0, p0

    iget-wide v3, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mTraveledDistance:D

    const-wide/high16 v5, 0x4008

    cmpg-double v3, v3, v5

    if-gez v3, :cond_5

    .line 198
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    #calls: Lmiui/maml/elements/AdvancedSlider;->cancelMoving()V
    invoke-static {v3}, Lmiui/maml/elements/AdvancedSlider;->access$100(Lmiui/maml/elements/AdvancedSlider;)V

    .line 199
    const-wide/16 v3, -0x1

    move-object/from16 v0, p0

    iput-wide v3, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceStartTime:J

    .line 200
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceProgress:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz v3, :cond_0

    .line 201
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceProgress:Lmiui/maml/util/IndexedNumberVariable;

    const-wide/high16 v4, 0x3ff0

    invoke-virtual {v3, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    goto/16 :goto_0

    .line 205
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    #getter for: Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {v3}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->access$300(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_9

    .line 206
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    #getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v3}, Lmiui/maml/elements/AdvancedSlider;->access$200(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAbsoluteLeft()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    #getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v3}, Lmiui/maml/elements/AdvancedSlider;->access$200(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAbsoluteTop()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mStartX:F

    move-object/from16 v0, p0

    iget v7, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mStartY:F

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->getPoint(FFFFJ)Lmiui/maml/util/Utils$Point;

    move-result-object v22

    .line 207
    .local v22, pt:Lmiui/maml/util/Utils$Point;
    if-nez v22, :cond_8

    .line 208
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    #calls: Lmiui/maml/elements/AdvancedSlider;->cancelMoving()V
    invoke-static {v3}, Lmiui/maml/elements/AdvancedSlider;->access$100(Lmiui/maml/elements/AdvancedSlider;)V

    .line 209
    const-wide/16 v3, -0x1

    move-object/from16 v0, p0

    iput-wide v3, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceStartTime:J

    .line 239
    .end local v22           #pt:Lmiui/maml/util/Utils$Point;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iput-wide v8, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mPreDistance:J

    goto/16 :goto_1

    .line 211
    .restart local v22       #pt:Lmiui/maml/util/Utils$Point;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    move-object/from16 v0, v22

    iget-wide v4, v0, Lmiui/maml/util/Utils$Point;->x:D

    double-to-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, v22

    iget-wide v5, v0, Lmiui/maml/util/Utils$Point;->y:D

    double-to-int v5, v5

    int-to-float v5, v5

    #calls: Lmiui/maml/elements/AdvancedSlider;->moveStartPoint(FF)V
    invoke-static {v3, v4, v5}, Lmiui/maml/elements/AdvancedSlider;->access$400(Lmiui/maml/elements/AdvancedSlider;FF)V

    goto :goto_2

    .line 214
    .end local v22           #pt:Lmiui/maml/util/Utils$Point;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    #getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v3}, Lmiui/maml/elements/AdvancedSlider;->access$200(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getOffsetX()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    #getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v4}, Lmiui/maml/elements/AdvancedSlider;->access$200(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAbsoluteLeft()F

    move-result v4

    add-float v13, v3, v4

    .line 215
    .local v13, x2:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    #getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v3}, Lmiui/maml/elements/AdvancedSlider;->access$200(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getOffsetY()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    #getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v4}, Lmiui/maml/elements/AdvancedSlider;->access$200(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAbsoluteTop()F

    move-result v4

    add-float v14, v3, v4

    .line 216
    .local v14, y2:F
    move-object/from16 v0, p0

    iget-wide v3, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mPreDistance:J

    sub-long v15, v8, v3

    .line 217
    .local v15, d:J
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceStartPointIndex:I

    move/from16 v17, v0

    .local v17, i:I
    :goto_3
    if-ltz v17, :cond_7

    .line 218
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    #getter for: Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {v3}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->access$300(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lmiui/maml/elements/AdvancedSlider$Position;

    .line 219
    .local v23, pt1:Lmiui/maml/elements/AdvancedSlider$Position;
    invoke-virtual/range {v23 .. v23}, Lmiui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v11

    invoke-virtual/range {v23 .. v23}, Lmiui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v12

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v16}, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->getPoint(FFFFJ)Lmiui/maml/util/Utils$Point;

    move-result-object v22

    .line 220
    .restart local v22       #pt:Lmiui/maml/util/Utils$Point;
    if-nez v22, :cond_b

    .line 221
    if-nez v17, :cond_a

    .line 222
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    #calls: Lmiui/maml/elements/AdvancedSlider;->cancelMoving()V
    invoke-static {v3}, Lmiui/maml/elements/AdvancedSlider;->access$100(Lmiui/maml/elements/AdvancedSlider;)V

    .line 223
    const-wide/16 v3, -0x1

    move-object/from16 v0, p0

    iput-wide v3, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceStartTime:J

    goto/16 :goto_2

    .line 226
    :cond_a
    new-instance v18, Lmiui/maml/util/Utils$Point;

    invoke-virtual/range {v23 .. v23}, Lmiui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual/range {v23 .. v23}, Lmiui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v5

    float-to-double v5, v5

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v4, v5, v6}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    .line 227
    .local v18, p1:Lmiui/maml/util/Utils$Point;
    new-instance v19, Lmiui/maml/util/Utils$Point;

    float-to-double v3, v13

    float-to-double v5, v14

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4, v5, v6}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    .line 228
    .local v19, p2:Lmiui/maml/util/Utils$Point;
    long-to-double v3, v15

    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-long v15, v3

    .line 229
    invoke-virtual/range {v23 .. v23}, Lmiui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v13

    .line 230
    invoke-virtual/range {v23 .. v23}, Lmiui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v14

    .line 217
    add-int/lit8 v17, v17, -0x1

    goto :goto_3

    .line 233
    .end local v18           #p1:Lmiui/maml/util/Utils$Point;
    .end local v19           #p2:Lmiui/maml/util/Utils$Point;
    :cond_b
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->mBounceStartPointIndex:I

    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    move-object/from16 v0, v22

    iget-wide v4, v0, Lmiui/maml/util/Utils$Point;->x:D

    double-to-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, v22

    iget-wide v5, v0, Lmiui/maml/util/Utils$Point;->y:D

    double-to-int v5, v5

    int-to-float v5, v5

    #calls: Lmiui/maml/elements/AdvancedSlider;->moveStartPoint(FF)V
    invoke-static {v3, v4, v5}, Lmiui/maml/elements/AdvancedSlider;->access$400(Lmiui/maml/elements/AdvancedSlider;FF)V

    goto/16 :goto_2
.end method
