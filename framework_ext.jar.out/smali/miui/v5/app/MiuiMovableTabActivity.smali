.class public Lmiui/v5/app/MiuiMovableTabActivity;
.super Lmiui/v5/app/MiuiTabActivity;
.source "MiuiMovableTabActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mFixedDisplayView:Landroid/view/View;

.field protected mFloatingDisplayView:Landroid/view/View;

.field protected mFloatingViewTopHiddenSize:I

.field private final mInertiaListener:Lmiui/v5/widget/VerticalMotionFrameLayout$InertiaListener;

.field private mMotionContainer:Lmiui/v5/widget/VerticalMotionFrameLayout;

.field private final mMotionStrategyFactory:Lmiui/v5/util/Factory$CachedFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/v5/util/Factory$CachedFactory",
            "<",
            "Lmiui/v5/widget/MotionDetectStrategy;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTabMaxY:I

.field private mTabMinY:I

.field protected mTabOverTranslation:I

.field private final mTranslateListener:Lmiui/v5/widget/AbsTranslationController$OnTranslateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lmiui/v5/app/MiuiMovableTabActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/v5/app/MiuiMovableTabActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lmiui/v5/app/MiuiTabActivity;-><init>()V

    .line 72
    new-instance v0, Lmiui/v5/app/MiuiMovableTabActivity$2;

    invoke-direct {v0, p0}, Lmiui/v5/app/MiuiMovableTabActivity$2;-><init>(Lmiui/v5/app/MiuiMovableTabActivity;)V

    iput-object v0, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mInertiaListener:Lmiui/v5/widget/VerticalMotionFrameLayout$InertiaListener;

    .line 88
    new-instance v0, Lmiui/v5/app/MiuiMovableTabActivity$1;

    invoke-direct {v0, p0}, Lmiui/v5/app/MiuiMovableTabActivity$1;-><init>(Lmiui/v5/app/MiuiMovableTabActivity;)V

    invoke-static {v0}, Lmiui/v5/util/Factory$CachedFactory;->newFactory(Lmiui/v5/util/Factory;)Lmiui/v5/util/Factory$CachedFactory;

    move-result-object v0

    iput-object v0, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mMotionStrategyFactory:Lmiui/v5/util/Factory$CachedFactory;

    .line 122
    new-instance v0, Lmiui/v5/app/MiuiMovableTabActivity$3;

    invoke-direct {v0, p0}, Lmiui/v5/app/MiuiMovableTabActivity$3;-><init>(Lmiui/v5/app/MiuiMovableTabActivity;)V

    iput-object v0, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mTranslateListener:Lmiui/v5/widget/AbsTranslationController$OnTranslateListener;

    return-void
.end method


# virtual methods
.method protected computTabMaxY(I)I
    .locals 2
    .parameter "floatingViewHeight"

    .prologue
    .line 239
    iget-object v0, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mTabController:Lmiui/v5/widget/TabController;

    invoke-virtual {v0}, Lmiui/v5/widget/TabController;->getTabContainer()Lmiui/v5/widget/TabContainerLayout;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/v5/widget/TabContainerLayout;->getBackgroundHeight()I

    move-result v0

    sub-int v0, p1, v0

    iget v1, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mTabOverTranslation:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected createMotionDetectStrategy(I)Lmiui/v5/widget/MotionDetectStrategy;
    .locals 2
    .parameter "position"

    .prologue
    .line 108
    iget-object v1, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mTabController:Lmiui/v5/widget/TabController;

    invoke-virtual {v1, p1}, Lmiui/v5/widget/TabController;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .line 109
    .local v0, fragment:Landroid/app/Fragment;
    instance-of v1, v0, Lmiui/v5/widget/MotionDetectStrategy$Creator;

    if-eqz v1, :cond_0

    .line 110
    check-cast v0, Lmiui/v5/widget/MotionDetectStrategy$Creator;

    .end local v0           #fragment:Landroid/app/Fragment;
    invoke-interface {v0}, Lmiui/v5/widget/MotionDetectStrategy$Creator;->createMotionDetectStrategy()Lmiui/v5/widget/MotionDetectStrategy;

    move-result-object v1

    .line 113
    :goto_0
    return-object v1

    .restart local v0       #fragment:Landroid/app/Fragment;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 42
    const v0, 0x6030033

    return v0
.end method

.method protected getTabMaxY()I
    .locals 2

    .prologue
    .line 233
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 234
    .local v0, outSize:Landroid/graphics/Point;
    invoke-virtual {p0}, Lmiui/v5/app/MiuiMovableTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 235
    iget v1, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x3

    return v1
.end method

.method protected getTabMinY()I
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Lmiui/v5/app/MiuiMovableTabActivity;->isTopPlaceholderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lmiui/v5/app/MiuiMovableTabActivity;->getTopPlaceholderHeight()I

    move-result v0

    goto :goto_0
.end method

.method public isTabAtTop()Z
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mMotionContainer:Lmiui/v5/widget/VerticalMotionFrameLayout;

    invoke-virtual {v0}, Lmiui/v5/widget/VerticalMotionFrameLayout;->getTranslationY()F

    move-result v0

    iget v1, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mTabMinY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mTabOverTranslation:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, -0x1

    .line 47
    invoke-super {p0, p1}, Lmiui/v5/app/MiuiTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    iget-object v1, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mContainer:Landroid/view/ViewGroup;

    const v3, 0x60b005e

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/v5/widget/VerticalMotionFrameLayout;

    iput-object v1, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mMotionContainer:Lmiui/v5/widget/VerticalMotionFrameLayout;

    .line 53
    invoke-static {p0}, Lmiui/v5/widget/MiuiViewConfiguration;->get(Landroid/content/Context;)Lmiui/v5/widget/MiuiViewConfiguration;

    move-result-object v7

    .line 54
    .local v7, config:Lmiui/v5/widget/MiuiViewConfiguration;
    invoke-virtual {v7}, Lmiui/v5/widget/MiuiViewConfiguration;->getScaledFloatingViewOverDistance()I

    move-result v1

    iput v1, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mTabOverTranslation:I

    .line 55
    invoke-virtual {v7}, Lmiui/v5/widget/MiuiViewConfiguration;->getScaledFloatingViewHiddenSize()I

    move-result v1

    iput v1, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mFloatingViewTopHiddenSize:I

    .line 56
    invoke-virtual {p0}, Lmiui/v5/app/MiuiMovableTabActivity;->getTabMinY()I

    move-result v1

    iput v1, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mTabMinY:I

    .line 57
    invoke-virtual {p0}, Lmiui/v5/app/MiuiMovableTabActivity;->getTabMaxY()I

    move-result v1

    iput v1, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mTabMaxY:I

    .line 59
    iget-object v1, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mTabController:Lmiui/v5/widget/TabController;

    iget v3, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mTabMinY:I

    iget-object v4, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mMotionStrategyFactory:Lmiui/v5/util/Factory$CachedFactory;

    invoke-static {v1, v3, v4}, Lmiui/v5/widget/VerticalMotionStrategies;->makeMotionStrategyTabController(Lmiui/v5/widget/TabController;ILmiui/v5/util/Factory;)Lmiui/v5/widget/MotionDetectStrategy;

    move-result-object v2

    .line 61
    .local v2, strategy:Lmiui/v5/widget/MotionDetectStrategy;
    new-instance v0, Lmiui/v5/widget/VerticalTranslationController;

    iget v3, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mTabMinY:I

    iget v4, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mTabMaxY:I

    iget v5, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mTabMinY:I

    iget v1, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mTabMaxY:I

    iget v6, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mTabOverTranslation:I

    add-int/2addr v6, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lmiui/v5/widget/VerticalTranslationController;-><init>(Landroid/content/Context;Lmiui/v5/widget/MotionDetectStrategy;IIII)V

    .line 64
    .local v0, vtc:Lmiui/v5/widget/VerticalTranslationController;
    iget-object v1, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mTranslateListener:Lmiui/v5/widget/AbsTranslationController$OnTranslateListener;

    invoke-virtual {v0, v1}, Lmiui/v5/widget/VerticalTranslationController;->setTranslateListener(Lmiui/v5/widget/AbsTranslationController$OnTranslateListener;)V

    .line 65
    iget-object v1, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mMotionContainer:Lmiui/v5/widget/VerticalMotionFrameLayout;

    invoke-virtual {v1, v0}, Lmiui/v5/widget/VerticalMotionFrameLayout;->setMotionStrategy(Lmiui/v5/widget/MotionDetectListener;)V

    .line 66
    iget-object v1, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mMotionContainer:Lmiui/v5/widget/VerticalMotionFrameLayout;

    iget-object v3, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mInertiaListener:Lmiui/v5/widget/VerticalMotionFrameLayout$InertiaListener;

    invoke-virtual {v1, v3}, Lmiui/v5/widget/VerticalMotionFrameLayout;->setInertiaListener(Lmiui/v5/widget/VerticalMotionFrameLayout$InertiaListener;)V

    .line 68
    iget-object v1, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mMotionContainer:Lmiui/v5/widget/VerticalMotionFrameLayout;

    iget v3, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mTabMinY:I

    invoke-static {v1, v8, v8, v8, v3}, Lmiui/v5/widget/Views;->setPadding(Landroid/view/View;IIII)V

    .line 69
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmiui/v5/app/MiuiMovableTabActivity;->setMotionContainerPosition(Z)V

    .line 70
    return-void
.end method

.method protected onMotionInertiaMotion(II)V
    .locals 2
    .parameter "velocityY"
    .parameter "anchor"

    .prologue
    .line 82
    invoke-virtual {p0}, Lmiui/v5/app/MiuiMovableTabActivity;->getCurrentPagerItem()Lmiui/v5/app/MiuiViewPagerItem;

    move-result-object v0

    .line 83
    .local v0, item:Lmiui/v5/app/MiuiViewPagerItem;
    if-eqz v0, :cond_0

    iget v1, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mTabMinY:I

    if-ne p2, v1, :cond_0

    .line 84
    invoke-interface {v0, p1, p2}, Lmiui/v5/app/MiuiViewPagerItem;->onInertiaMotion(II)V

    .line 86
    :cond_0
    return-void
.end method

.method protected onTabTranslate(F)V
    .locals 6
    .parameter "t"

    .prologue
    .line 136
    iget-object v3, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mFloatingDisplayView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, topMargin:I
    iget-object v3, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mFloatingDisplayView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 139
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-gez v3, :cond_0

    .line 140
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 143
    :cond_0
    if-ltz v1, :cond_2

    .line 144
    sget-object v3, Lmiui/v5/app/MiuiMovableTabActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FloatingView must be topMargin < 0, topMargin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .end local v0           #params:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1           #topMargin:I
    :cond_1
    :goto_0
    return-void

    .line 148
    .restart local v0       #params:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v1       #topMargin:I
    :cond_2
    iget v3, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mTabMaxY:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    neg-int v4, v1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mTabOverTranslation:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 149
    .local v2, translateY:F
    iget-object v3, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mFloatingDisplayView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method protected onTabTranslateStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 154
    return-void
.end method

.method protected onViewPagerAdapterChanged(Z)V
    .locals 1
    .parameter "selectedChanged"

    .prologue
    .line 118
    invoke-super {p0, p1}, Lmiui/v5/app/MiuiTabActivity;->onViewPagerAdapterChanged(Z)V

    .line 119
    iget-object v0, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mMotionStrategyFactory:Lmiui/v5/util/Factory$CachedFactory;

    invoke-virtual {v0}, Lmiui/v5/util/Factory$CachedFactory;->clear()V

    .line 120
    return-void
.end method

.method protected final replaceView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .locals 1
    .parameter "parent"
    .parameter "oldView"
    .parameter "newView"
    .parameter "params"

    .prologue
    .line 206
    if-eqz p2, :cond_0

    .line 207
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 210
    :cond_0
    if-eqz p3, :cond_1

    .line 211
    if-eqz p4, :cond_2

    .line 212
    invoke-virtual {p1, p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    :goto_0
    iget-object v0, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mMotionContainer:Lmiui/v5/widget/VerticalMotionFrameLayout;

    invoke-virtual {v0}, Lmiui/v5/widget/VerticalMotionFrameLayout;->bringToFront()V

    .line 219
    iget-object v0, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mFixedDisplayView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mFixedDisplayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 224
    :cond_1
    return-object p3

    .line 214
    :cond_2
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected setFixedDisplayView(I)Landroid/view/View;
    .locals 3
    .parameter "resId"

    .prologue
    .line 201
    iget-object v1, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lmiui/v5/widget/Views;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 202
    .local v0, newView:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmiui/v5/app/MiuiMovableTabActivity;->setFixedDisplayView(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected setFixedDisplayView(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)Landroid/view/View;
    .locals 2
    .parameter "view"
    .parameter "params"

    .prologue
    .line 194
    iget-object v0, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mFixedDisplayView:Landroid/view/View;

    invoke-virtual {p0, v0, v1, p1, p2}, Lmiui/v5/app/MiuiMovableTabActivity;->replaceView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mFixedDisplayView:Landroid/view/View;

    .line 195
    iget-object v0, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mFixedDisplayView:Landroid/view/View;

    return-object v0
.end method

.method protected setFloatingDisplayView(I)Landroid/view/View;
    .locals 2
    .parameter "resId"

    .prologue
    .line 186
    iget-object v0, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lmiui/v5/widget/Views;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmiui/v5/app/MiuiMovableTabActivity;->setFloatingDisplayView(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected setFloatingDisplayView(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)Landroid/view/View;
    .locals 4
    .parameter "view"
    .parameter "params"

    .prologue
    .line 165
    iget v0, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mFloatingViewTopHiddenSize:I

    .line 166
    .local v0, hiddenOffset:I
    if-nez p2, :cond_0

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 168
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    move-object p2, v1

    .line 169
    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 173
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    if-nez p2, :cond_1

    .line 174
    new-instance p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p2
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {p2, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 175
    .restart local p2
    neg-int v2, v0

    iput v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 181
    :goto_0
    iget-object v2, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mFloatingDisplayView:Landroid/view/View;

    invoke-virtual {p0, v2, v3, p1, p2}, Lmiui/v5/app/MiuiMovableTabActivity;->replaceView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mFloatingDisplayView:Landroid/view/View;

    .line 182
    iget-object v2, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mFloatingDisplayView:Landroid/view/View;

    return-object v2

    .line 177
    :cond_1
    neg-int v2, v0

    iput v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 178
    sget-object v2, Lmiui/v5/app/MiuiMovableTabActivity;->TAG:Ljava/lang/String;

    const-string v3, "Adjust topMargin of floating view"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setMotionContainerPosition(Z)V
    .locals 2
    .parameter "top"

    .prologue
    .line 243
    iget-object v1, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mMotionContainer:Lmiui/v5/widget/VerticalMotionFrameLayout;

    if-eqz p1, :cond_0

    iget v0, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mTabMinY:I

    int-to-float v0, v0

    :goto_0
    invoke-virtual {v1, v0}, Lmiui/v5/widget/VerticalMotionFrameLayout;->setTranslationY(F)V

    .line 244
    return-void

    .line 243
    :cond_0
    iget v0, p0, Lmiui/v5/app/MiuiMovableTabActivity;->mTabMaxY:I

    int-to-float v0, v0

    goto :goto_0
.end method
