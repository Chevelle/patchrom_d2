.class public Lmiui/v5/widget/VerticalTranslationController;
.super Lmiui/v5/widget/AbsTranslationController;
.source "VerticalTranslationController.java"


# static fields
.field private static final LOG_D:F


# instance fields
.field private final mMaxY:I

.field private final mMaxYBounce:I

.field private final mMinAnchorVelocity:I

.field private final mMinY:I

.field private final mMinYBounce:I

.field private mStartY:I

.field private final mTranslateSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 129
    const-wide/high16 v0, 0x3ff8

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lmiui/v5/widget/VerticalTranslationController;->LOG_D:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/v5/widget/MotionDetectStrategy;IIII)V
    .locals 7
    .parameter "context"
    .parameter "mml"
    .parameter "minY"
    .parameter "maxY"
    .parameter "minYBounce"
    .parameter "maxYBounce"

    .prologue
    const/4 v6, 0x0

    .line 25
    invoke-direct {p0, p1, p2}, Lmiui/v5/widget/AbsTranslationController;-><init>(Landroid/content/Context;Lmiui/v5/widget/MotionDetectStrategy;)V

    .line 21
    iput v6, p0, Lmiui/v5/widget/VerticalTranslationController;->mStartY:I

    .line 27
    if-gt p5, p3, :cond_0

    if-ge p3, p4, :cond_0

    if-gt p4, p6, :cond_0

    .line 28
    iput p3, p0, Lmiui/v5/widget/VerticalTranslationController;->mMinY:I

    .line 29
    iput p5, p0, Lmiui/v5/widget/VerticalTranslationController;->mMinYBounce:I

    .line 30
    iput p4, p0, Lmiui/v5/widget/VerticalTranslationController;->mMaxY:I

    .line 31
    iput p6, p0, Lmiui/v5/widget/VerticalTranslationController;->mMaxYBounce:I

    .line 38
    invoke-static {p1}, Lmiui/v5/widget/MiuiViewConfiguration;->get(Landroid/content/Context;)Lmiui/v5/widget/MiuiViewConfiguration;

    move-result-object v0

    .line 39
    .local v0, config:Lmiui/v5/widget/MiuiViewConfiguration;
    invoke-virtual {v0}, Lmiui/v5/widget/MiuiViewConfiguration;->getScaledTranslateSlop()I

    move-result v1

    iput v1, p0, Lmiui/v5/widget/VerticalTranslationController;->mTranslateSlop:I

    .line 40
    invoke-virtual {v0}, Lmiui/v5/widget/MiuiViewConfiguration;->getScaledMinAnchorVelocity()I

    move-result v1

    iput v1, p0, Lmiui/v5/widget/VerticalTranslationController;->mMinAnchorVelocity:I

    .line 41
    return-void

    .line 33
    .end local v0           #config:Lmiui/v5/widget/MiuiViewConfiguration;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "minYBounce <= minY < maxY <= maxYBounce is necessary!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%d %d %d %d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private computDistance(III)I
    .locals 4
    .parameter "velocity"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 122
    if-eqz p1, :cond_0

    if-ne p2, p3, :cond_1

    .line 123
    :cond_0
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    :cond_1
    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget v2, Lmiui/v5/widget/VerticalTranslationController;->LOG_D:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method


# virtual methods
.method protected computVelocity(Landroid/view/VelocityTracker;)I
    .locals 3
    .parameter "tracker"

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 98
    const/16 v1, 0x3e8

    iget v2, p0, Lmiui/v5/widget/VerticalTranslationController;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 99
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    float-to-int v0, v1

    .line 104
    .local v0, velocity:I
    :goto_0
    return v0

    .line 101
    .end local v0           #velocity:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #velocity:I
    goto :goto_0
.end method

.method protected getAnchorPostion(Landroid/view/View;IIIII)I
    .locals 6
    .parameter "v"
    .parameter "x"
    .parameter "y"
    .parameter "startX"
    .parameter "startY"
    .parameter "velocity"

    .prologue
    .line 51
    const v0, 0x7fffffff

    .line 52
    .local v0, anchor:I
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 55
    .local v1, currentY:I
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lmiui/v5/widget/VerticalTranslationController;->mMinAnchorVelocity:I

    if-ge v4, v5, :cond_0

    .line 56
    iget v4, p0, Lmiui/v5/widget/VerticalTranslationController;->mStartY:I

    if-ge v1, v4, :cond_2

    iget v4, p0, Lmiui/v5/widget/VerticalTranslationController;->mMaxY:I

    iget v5, p0, Lmiui/v5/widget/VerticalTranslationController;->mTranslateSlop:I

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_2

    .line 57
    iget v0, p0, Lmiui/v5/widget/VerticalTranslationController;->mMinY:I

    .line 64
    :cond_0
    :goto_0
    const v4, 0x7fffffff

    if-ne v0, v4, :cond_1

    .line 65
    iget v4, p0, Lmiui/v5/widget/VerticalTranslationController;->mStartY:I

    invoke-direct {p0, p6, v4, v1}, Lmiui/v5/widget/VerticalTranslationController;->computDistance(III)I

    move-result v4

    add-int/2addr v1, v4

    .line 66
    iget v4, p0, Lmiui/v5/widget/VerticalTranslationController;->mMinY:I

    sub-int v3, v4, v1

    .line 67
    .local v3, deltaMinY:I
    iget v4, p0, Lmiui/v5/widget/VerticalTranslationController;->mMaxY:I

    sub-int v2, v4, v1

    .line 68
    .local v2, deltaMaxY:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v4, v5, :cond_3

    iget v0, p0, Lmiui/v5/widget/VerticalTranslationController;->mMinY:I

    .line 71
    .end local v2           #deltaMaxY:I
    .end local v3           #deltaMinY:I
    :cond_1
    :goto_1
    return v0

    .line 58
    :cond_2
    iget v4, p0, Lmiui/v5/widget/VerticalTranslationController;->mStartY:I

    if-le v1, v4, :cond_0

    iget v4, p0, Lmiui/v5/widget/VerticalTranslationController;->mMinY:I

    iget v5, p0, Lmiui/v5/widget/VerticalTranslationController;->mTranslateSlop:I

    add-int/2addr v4, v5

    if-le v1, v4, :cond_0

    .line 59
    iget v0, p0, Lmiui/v5/widget/VerticalTranslationController;->mMaxY:I

    goto :goto_0

    .line 68
    .restart local v2       #deltaMaxY:I
    .restart local v3       #deltaMinY:I
    :cond_3
    iget v0, p0, Lmiui/v5/widget/VerticalTranslationController;->mMaxY:I

    goto :goto_1
.end method

.method protected getInertiaPosition(Landroid/view/View;IIIII)I
    .locals 3
    .parameter "v"
    .parameter "x"
    .parameter "y"
    .parameter "startX"
    .parameter "startY"
    .parameter "velocity"

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v0, v2

    .line 111
    .local v0, currentY:I
    iget v2, p0, Lmiui/v5/widget/VerticalTranslationController;->mStartY:I

    invoke-direct {p0, p6, v2, v0}, Lmiui/v5/widget/VerticalTranslationController;->computDistance(III)I

    move-result v2

    add-int v1, v0, v2

    .line 112
    .local v1, dst:I
    iget v2, p0, Lmiui/v5/widget/VerticalTranslationController;->mMinYBounce:I

    if-ge v1, v2, :cond_1

    .line 113
    iget v1, p0, Lmiui/v5/widget/VerticalTranslationController;->mMinYBounce:I

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 114
    :cond_1
    iget v2, p0, Lmiui/v5/widget/VerticalTranslationController;->mMaxYBounce:I

    if-le v1, v2, :cond_0

    .line 115
    iget v1, p0, Lmiui/v5/widget/VerticalTranslationController;->mMaxYBounce:I

    goto :goto_0
.end method

.method protected getValidMovePosition(Landroid/view/View;IIII)I
    .locals 4
    .parameter "v"
    .parameter "x"
    .parameter "y"
    .parameter "startX"
    .parameter "startY"

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    int-to-float v3, p3

    add-float/2addr v2, v3

    int-to-float v3, p5

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 78
    .local v1, posY:I
    iget v2, p0, Lmiui/v5/widget/VerticalTranslationController;->mMinYBounce:I

    if-ge v1, v2, :cond_0

    .line 79
    iget v0, p0, Lmiui/v5/widget/VerticalTranslationController;->mMinYBounce:I

    .line 86
    .local v0, dest:I
    :goto_0
    return v0

    .line 80
    .end local v0           #dest:I
    :cond_0
    iget v2, p0, Lmiui/v5/widget/VerticalTranslationController;->mMaxYBounce:I

    if-le v1, v2, :cond_1

    .line 81
    iget v0, p0, Lmiui/v5/widget/VerticalTranslationController;->mMaxYBounce:I

    .restart local v0       #dest:I
    goto :goto_0

    .line 83
    .end local v0           #dest:I
    :cond_1
    move v0, v1

    .restart local v0       #dest:I
    goto :goto_0
.end method

.method public onMoveStart(Landroid/view/View;II)V
    .locals 1
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3}, Lmiui/v5/widget/AbsTranslationController;->onMoveStart(Landroid/view/View;II)V

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lmiui/v5/widget/VerticalTranslationController;->mStartY:I

    .line 47
    return-void
.end method

.method protected translate(Landroid/view/View;F)V
    .locals 0
    .parameter "v"
    .parameter "t"

    .prologue
    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 92
    return-void
.end method
