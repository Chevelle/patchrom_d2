.class public Lmiui/v5/widget/VerticalMotionStrategies;
.super Ljava/lang/Object;
.source "VerticalMotionStrategies.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/widget/VerticalMotionStrategies$ScrollViewMotionListener;,
        Lmiui/v5/widget/VerticalMotionStrategies$ListMotionListener;,
        Lmiui/v5/widget/VerticalMotionStrategies$TabControllerMotionListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method public static canListScroll(Landroid/widget/AdapterView;IIII)Z
    .locals 1
    .parameter
    .parameter "x"
    .parameter "y"
    .parameter "startX"
    .parameter "startY"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;IIII)Z"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, alv:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-ne p2, p4, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0

    :cond_0
    if-le p2, p4, :cond_1

    invoke-static {p0}, Lmiui/v5/widget/VerticalMotionStrategies;->canListScrollDown(Landroid/widget/AdapterView;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lmiui/v5/widget/VerticalMotionStrategies;->canListScrollUp(Landroid/widget/AdapterView;)Z

    move-result v0

    goto :goto_0
.end method

.method private static canListScrollDown(Landroid/widget/AdapterView;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, alv:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    .line 116
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v5

    if-lez v5, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v4

    .line 121
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v3

    .line 122
    .local v3, paddingTop:I
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v1

    .line 123
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 124
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, c:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-lt v5, v3, :cond_0

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 130
    .end local v0           #c:Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static canListScrollUp(Landroid/widget/AdapterView;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, alv:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    .line 134
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v4

    .line 138
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v6

    sub-int v0, v5, v6

    .line 139
    .local v0, bottom:I
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v2

    .line 140
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 141
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 142
    .local v1, c:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v5, v0, :cond_0

    .line 140
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 147
    .end local v1           #c:Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static canScrollViewScroll(Landroid/widget/ScrollView;IIII)Z
    .locals 1
    .parameter "sv"
    .parameter "x"
    .parameter "y"
    .parameter "startX"
    .parameter "startY"

    .prologue
    .line 163
    if-le p2, p4, :cond_0

    invoke-static {p0}, Lmiui/v5/widget/VerticalMotionStrategies;->canScrollViewScrollDown(Landroid/widget/ScrollView;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lmiui/v5/widget/VerticalMotionStrategies;->canScrollViewScrollUp(Landroid/widget/ScrollView;)Z

    move-result v0

    goto :goto_0
.end method

.method private static canScrollViewScrollDown(Landroid/widget/ScrollView;)Z
    .locals 3
    .parameter "sv"

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 168
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static canScrollViewScrollUp(Landroid/widget/ScrollView;)Z
    .locals 5
    .parameter "sv"

    .prologue
    const/4 v2, 0x0

    .line 176
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 177
    .local v1, child:Landroid/view/View;
    if-nez v1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v2

    .line 181
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v4

    sub-int v0, v3, v4

    .line 182
    .local v0, bottom:I
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static makeMotionStrategyForList(Landroid/widget/AdapterView;)Lmiui/v5/widget/MotionDetectStrategy;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)",
            "Lmiui/v5/widget/MotionDetectStrategy;"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, list:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-eqz p0, :cond_0

    new-instance v0, Lmiui/v5/widget/VerticalMotionStrategies$ListMotionListener;

    invoke-direct {v0, p0}, Lmiui/v5/widget/VerticalMotionStrategies$ListMotionListener;-><init>(Landroid/widget/AdapterView;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeMotionStrategyForScrollView(Landroid/widget/ScrollView;)Lmiui/v5/widget/MotionDetectStrategy;
    .locals 1
    .parameter "sv"

    .prologue
    .line 26
    if-eqz p0, :cond_0

    new-instance v0, Lmiui/v5/widget/VerticalMotionStrategies$ScrollViewMotionListener;

    invoke-direct {v0, p0}, Lmiui/v5/widget/VerticalMotionStrategies$ScrollViewMotionListener;-><init>(Landroid/widget/ScrollView;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeMotionStrategyTabController(Lmiui/v5/widget/TabController;ILmiui/v5/util/Factory;)Lmiui/v5/widget/MotionDetectStrategy;
    .locals 1
    .parameter "tabController"
    .parameter "minY"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Lmiui/v5/widget/TabController;",
            "I",
            "Lmiui/v5/util/Factory",
            "<",
            "Lmiui/v5/widget/MotionDetectStrategy;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lmiui/v5/widget/MotionDetectStrategy;"
        }
    .end annotation

    .prologue
    .line 16
    .local p2, pagerStrategyFactory:Lmiui/v5/util/Factory;,"Lmiui/v5/util/Factory<Lmiui/v5/widget/MotionDetectStrategy;Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    new-instance v0, Lmiui/v5/widget/VerticalMotionStrategies$TabControllerMotionListener;

    invoke-direct {v0, p0, p1, p2}, Lmiui/v5/widget/VerticalMotionStrategies$TabControllerMotionListener;-><init>(Lmiui/v5/widget/TabController;ILmiui/v5/util/Factory;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static scrollByInertia(Landroid/widget/AbsListView;I)V
    .locals 4
    .parameter "lv"
    .parameter "velocity"

    .prologue
    .line 186
    int-to-double v0, p1

    const-wide v2, 0x3fc999999999999aL

    mul-double/2addr v0, v2

    double-to-int v0, v0

    neg-int v0, v0

    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 187
    return-void
.end method
