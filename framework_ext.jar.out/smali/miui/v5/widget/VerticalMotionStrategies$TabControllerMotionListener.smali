.class Lmiui/v5/widget/VerticalMotionStrategies$TabControllerMotionListener;
.super Ljava/lang/Object;
.source "VerticalMotionStrategies.java"

# interfaces
.implements Lmiui/v5/widget/MotionDetectStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/widget/VerticalMotionStrategies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabControllerMotionListener"
.end annotation


# instance fields
.field private final mMinY:I

.field private final mPagerStrategyFactory:Lmiui/v5/util/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/v5/util/Factory",
            "<",
            "Lmiui/v5/widget/MotionDetectStrategy;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabController:Lmiui/v5/widget/TabController;


# direct methods
.method public constructor <init>(Lmiui/v5/widget/TabController;ILmiui/v5/util/Factory;)V
    .locals 0
    .parameter "controller"
    .parameter "minY"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/v5/widget/TabController;",
            "I",
            "Lmiui/v5/util/Factory",
            "<",
            "Lmiui/v5/widget/MotionDetectStrategy;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p3, pagerStrategyFactory:Lmiui/v5/util/Factory;,"Lmiui/v5/util/Factory<Lmiui/v5/widget/MotionDetectStrategy;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lmiui/v5/widget/VerticalMotionStrategies$TabControllerMotionListener;->mTabController:Lmiui/v5/widget/TabController;

    .line 37
    iput p2, p0, Lmiui/v5/widget/VerticalMotionStrategies$TabControllerMotionListener;->mMinY:I

    .line 38
    iput-object p3, p0, Lmiui/v5/widget/VerticalMotionStrategies$TabControllerMotionListener;->mPagerStrategyFactory:Lmiui/v5/util/Factory;

    .line 39
    return-void
.end method


# virtual methods
.method public isMovable(Landroid/view/View;IIII)Z
    .locals 8
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "startX"
    .parameter "startY"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 44
    iget-object v3, p0, Lmiui/v5/widget/VerticalMotionStrategies$TabControllerMotionListener;->mTabController:Lmiui/v5/widget/TabController;

    invoke-virtual {v3}, Lmiui/v5/widget/TabController;->getViewPagerState()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 67
    :cond_0
    :goto_0
    return v1

    .line 49
    :cond_1
    iget-object v3, p0, Lmiui/v5/widget/VerticalMotionStrategies$TabControllerMotionListener;->mTabController:Lmiui/v5/widget/TabController;

    invoke-virtual {v3}, Lmiui/v5/widget/TabController;->getTabContainer()Lmiui/v5/widget/TabContainerLayout;

    move-result-object v7

    .line 50
    .local v7, tabs:Landroid/view/View;
    invoke-static {v7, p4, p5}, Lmiui/v5/widget/Views;->isContainPoint(Landroid/view/View;II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 55
    if-ge p3, p5, :cond_2

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    iget v4, p0, Lmiui/v5/widget/VerticalMotionStrategies$TabControllerMotionListener;->mMinY:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 59
    :cond_2
    iget-object v2, p0, Lmiui/v5/widget/VerticalMotionStrategies$TabControllerMotionListener;->mPagerStrategyFactory:Lmiui/v5/util/Factory;

    if-eqz v2, :cond_0

    .line 60
    iget-object v2, p0, Lmiui/v5/widget/VerticalMotionStrategies$TabControllerMotionListener;->mTabController:Lmiui/v5/widget/TabController;

    invoke-virtual {v2}, Lmiui/v5/widget/TabController;->getViewPager()Lmiui/v5/android/support/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/v5/android/support/view/ViewPager;->getCurrentItem()I

    move-result v6

    .line 61
    .local v6, index:I
    iget-object v2, p0, Lmiui/v5/widget/VerticalMotionStrategies$TabControllerMotionListener;->mPagerStrategyFactory:Lmiui/v5/util/Factory;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lmiui/v5/util/Factory;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/v5/widget/MotionDetectStrategy;

    .line 62
    .local v0, strategy:Lmiui/v5/widget/MotionDetectStrategy;
    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 63
    invoke-interface/range {v0 .. v5}, Lmiui/v5/widget/MotionDetectStrategy;->isMovable(Landroid/view/View;IIII)Z

    move-result v1

    goto :goto_0
.end method
