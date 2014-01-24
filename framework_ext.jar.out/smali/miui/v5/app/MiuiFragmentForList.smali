.class public Lmiui/v5/app/MiuiFragmentForList;
.super Landroid/app/ListFragment;
.source "MiuiFragmentForList.java"

# interfaces
.implements Lmiui/v5/app/MiuiViewPagerItem;


# instance fields
.field private mIsBottomPlaceholderEnabled:Z

.field private mIsMenuBarEnabled:Z

.field private mList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method private peekListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 93
    iget-object v1, p0, Lmiui/v5/app/MiuiFragmentForList;->mList:Landroid/widget/ListView;

    if-nez v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lmiui/v5/app/MiuiFragmentForList;->getView()Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 96
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lmiui/v5/app/MiuiFragmentForList;->mList:Landroid/widget/ListView;

    .line 100
    .end local v0           #v:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lmiui/v5/app/MiuiFragmentForList;->mList:Landroid/widget/ListView;

    return-object v1
.end method


# virtual methods
.method public createLayoutObserver()Lmiui/v5/app/LayoutObserver;
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Lmiui/v5/app/MiuiFragmentForList;->peekListView()Landroid/widget/ListView;

    move-result-object v0

    .line 88
    .local v0, lv:Landroid/widget/ListView;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lmiui/v5/app/LayoutObservers;->makeLayoutObserverForListView(Landroid/widget/AdapterView;)Lmiui/v5/app/LayoutObserver;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createMotionDetectStrategy()Lmiui/v5/widget/MotionDetectStrategy;
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Lmiui/v5/app/MiuiFragmentForList;->peekListView()Landroid/widget/ListView;

    move-result-object v0

    .line 82
    .local v0, lv:Landroid/widget/ListView;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lmiui/v5/widget/VerticalMotionStrategies;->makeMotionStrategyForList(Landroid/widget/AdapterView;)Lmiui/v5/widget/MotionDetectStrategy;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createPageScrollEffect()Lmiui/v5/widget/PageScrollEffect;
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Lmiui/v5/app/MiuiFragmentForList;->peekListView()Landroid/widget/ListView;

    move-result-object v0

    .line 76
    .local v0, lv:Landroid/widget/ListView;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lmiui/v5/widget/PageScrollEffects;->makePageScrollEffect(Landroid/view/ViewGroup;)Lmiui/v5/widget/PageScrollEffect;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBottomPlaceHolderHeight()I
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lmiui/v5/app/MiuiFragmentForList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/v5/app/MiuiActivity;

    .line 70
    .local v0, activity:Lmiui/v5/app/MiuiActivity;
    invoke-virtual {v0}, Lmiui/v5/app/MiuiActivity;->getBottomPlaceholderHeight()I

    move-result v1

    return v1
.end method

.method public isBottomPlaceholderEnabled()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lmiui/v5/app/MiuiFragmentForList;->mIsBottomPlaceholderEnabled:Z

    return v0
.end method

.method public isMenuBarEnabled()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lmiui/v5/app/MiuiFragmentForList;->mIsMenuBarEnabled:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 28
    iget-boolean v0, p0, Lmiui/v5/app/MiuiFragmentForList;->mIsBottomPlaceholderEnabled:Z

    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/v5/app/MiuiFragmentForList;->setBottomPlaceHolderEnabledInternal(Z)V

    .line 31
    :cond_0
    return-void
.end method

.method public onCreateMenuBar(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public onInertiaMotion(II)V
    .locals 1
    .parameter "velocityY"
    .parameter "anchor"

    .prologue
    .line 157
    iget-object v0, p0, Lmiui/v5/app/MiuiFragmentForList;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lmiui/v5/app/MiuiFragmentForList;->mList:Landroid/widget/ListView;

    invoke-static {v0, p1}, Lmiui/v5/widget/VerticalMotionStrategies;->scrollByInertia(Landroid/widget/AbsListView;I)V

    .line 160
    :cond_0
    return-void
.end method

.method public onMenuBarClose(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 111
    return-void
.end method

.method public onMenuBarItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuBarModeChange(Landroid/view/Menu;I)V
    .locals 0
    .parameter "menu"
    .parameter "mode"

    .prologue
    .line 121
    return-void
.end method

.method public onMenuBarOpen(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 106
    return-void
.end method

.method public onPrepareMenuBar(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "icicle"

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 46
    invoke-direct {p0}, Lmiui/v5/app/MiuiFragmentForList;->peekListView()Landroid/widget/ListView;

    move-result-object v0

    .line 47
    .local v0, lv:Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lmiui/v5/app/MiuiFragmentForList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lmiui/v5/app/MiuiActivity;

    invoke-virtual {v1, v0}, Lmiui/v5/app/MiuiActivity;->addLayoutObserver(Landroid/view/View;)V

    .line 50
    :cond_0
    return-void
.end method

.method public setBottomPlaceHolderEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 58
    iget-boolean v0, p0, Lmiui/v5/app/MiuiFragmentForList;->mIsBottomPlaceholderEnabled:Z

    if-ne v0, p1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 61
    :cond_0
    iput-boolean p1, p0, Lmiui/v5/app/MiuiFragmentForList;->mIsBottomPlaceholderEnabled:Z

    .line 63
    invoke-virtual {p0, p1}, Lmiui/v5/app/MiuiFragmentForList;->setBottomPlaceHolderEnabledInternal(Z)V

    goto :goto_0
.end method

.method protected setBottomPlaceHolderEnabledInternal(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 134
    invoke-virtual {p0}, Lmiui/v5/app/MiuiFragmentForList;->getView()Landroid/view/View;

    move-result-object v5

    .line 135
    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 136
    invoke-virtual {p0}, Lmiui/v5/app/MiuiFragmentForList;->getBottomPlaceHolderHeight()I

    move-result v4

    .line 138
    .local v4, placeHolderHeight:I
    if-lez v4, :cond_0

    .line 139
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 140
    .local v1, paddingLeft:I
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 141
    .local v2, paddingRight:I
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 142
    .local v3, paddingTop:I
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 144
    .local v0, paddingBottom:I
    if-eqz p1, :cond_1

    .line 145
    add-int/2addr v0, v4

    .line 150
    :goto_0
    invoke-virtual {v5, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 153
    .end local v0           #paddingBottom:I
    .end local v1           #paddingLeft:I
    .end local v2           #paddingRight:I
    .end local v3           #paddingTop:I
    .end local v4           #placeHolderHeight:I
    :cond_0
    return-void

    .line 147
    .restart local v0       #paddingBottom:I
    .restart local v1       #paddingLeft:I
    .restart local v2       #paddingRight:I
    .restart local v3       #paddingTop:I
    .restart local v4       #placeHolderHeight:I
    :cond_1
    sub-int/2addr v0, v4

    goto :goto_0
.end method

.method public setMenuBarEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 40
    iput-boolean p1, p0, Lmiui/v5/app/MiuiFragmentForList;->mIsMenuBarEnabled:Z

    .line 41
    return-void
.end method
