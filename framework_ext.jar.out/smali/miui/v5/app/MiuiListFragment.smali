.class public Lmiui/v5/app/MiuiListFragment;
.super Lmiui/v5/app/MiuiFragment;
.source "MiuiListFragment.java"


# instance fields
.field protected mList:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lmiui/v5/app/MiuiFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public createLayoutObserver()Lmiui/v5/app/LayoutObserver;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lmiui/v5/app/MiuiListFragment;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/MiuiListFragment;->mList:Landroid/widget/AbsListView;

    invoke-static {v0}, Lmiui/v5/app/LayoutObservers;->makeLayoutObserverForListView(Landroid/widget/AdapterView;)Lmiui/v5/app/LayoutObserver;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createMotionDetectStrategy()Lmiui/v5/widget/MotionDetectStrategy;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lmiui/v5/app/MiuiListFragment;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/MiuiListFragment;->mList:Landroid/widget/AbsListView;

    invoke-static {v0}, Lmiui/v5/widget/VerticalMotionStrategies;->makeMotionStrategyForList(Landroid/widget/AdapterView;)Lmiui/v5/widget/MotionDetectStrategy;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createPageScrollEffect()Lmiui/v5/widget/PageScrollEffect;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lmiui/v5/app/MiuiListFragment;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/MiuiListFragment;->mList:Landroid/widget/AbsListView;

    invoke-static {v0}, Lmiui/v5/widget/PageScrollEffects;->makePageScrollEffect(Landroid/view/ViewGroup;)Lmiui/v5/widget/PageScrollEffect;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInertiaMotion(II)V
    .locals 1
    .parameter "velocityY"
    .parameter "anchor"

    .prologue
    .line 44
    iget-object v0, p0, Lmiui/v5/app/MiuiListFragment;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lmiui/v5/app/MiuiListFragment;->mList:Landroid/widget/AbsListView;

    invoke-static {v0, p1}, Lmiui/v5/widget/VerticalMotionStrategies;->scrollByInertia(Landroid/widget/AbsListView;I)V

    .line 47
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "icicle"

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lmiui/v5/app/MiuiFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 21
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    iput-object v0, p0, Lmiui/v5/app/MiuiListFragment;->mList:Landroid/widget/AbsListView;

    .line 22
    iget-object v0, p0, Lmiui/v5/app/MiuiListFragment;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lmiui/v5/app/MiuiListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/v5/app/MiuiActivity;

    iget-object v1, p0, Lmiui/v5/app/MiuiListFragment;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Lmiui/v5/app/MiuiActivity;->addLayoutObserver(Landroid/view/View;)V

    .line 25
    :cond_0
    return-void
.end method
