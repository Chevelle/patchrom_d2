.class public interface abstract Lmiui/v5/app/MiuiActionBar;
.super Ljava/lang/Object;
.source "MiuiActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;
    }
.end annotation


# virtual methods
.method public abstract addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/ActionBar$Tab;",
            "I",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation
.end method

.method public abstract addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/ActionBar$Tab;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation
.end method

.method public abstract addOnFragmentViewPagerChangeListener(Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;)V
.end method

.method public abstract addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
.end method

.method public abstract addTab(Landroid/app/ActionBar$Tab;)V
.end method

.method public abstract addTab(Landroid/app/ActionBar$Tab;I)V
.end method

.method public abstract addTab(Landroid/app/ActionBar$Tab;IZ)V
.end method

.method public abstract addTab(Landroid/app/ActionBar$Tab;Z)V
.end method

.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getDisplayOptions()I
.end method

.method public abstract getFragmentAt(I)Landroid/app/Fragment;
.end method

.method public abstract getFragmentTabCount()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getNavigationItemCount()I
.end method

.method public abstract getNavigationMode()I
.end method

.method public abstract getSelectedNavigationIndex()I
.end method

.method public abstract getSelectedTab()Landroid/app/ActionBar$Tab;
.end method

.method public abstract getSubtitle()Ljava/lang/CharSequence;
.end method

.method public abstract getTabAt(I)Landroid/app/ActionBar$Tab;
.end method

.method public abstract getTabCount()I
.end method

.method public abstract getTertiaryTitle()Ljava/lang/CharSequence;
.end method

.method public abstract getThemedContext()Landroid/content/Context;
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract getViewPagerOffscreenPageLimit()I
.end method

.method public abstract hide()V
.end method

.method public abstract isFragmentViewPagerMode()Z
.end method

.method public abstract isShowing()Z
.end method

.method public abstract newTab()Landroid/app/ActionBar$Tab;
.end method

.method public abstract removeAllFragmentTab()V
.end method

.method public abstract removeAllTabs()V
.end method

.method public abstract removeFragmentTab(Landroid/app/ActionBar$Tab;)V
.end method

.method public abstract removeFragmentTab(Landroid/app/Fragment;)V
.end method

.method public abstract removeFragmentTab(Ljava/lang/String;)V
.end method

.method public abstract removeFragmentTabAt(I)V
.end method

.method public abstract removeOnFragmentViewPagerChangeListener(Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;)V
.end method

.method public abstract removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
.end method

.method public abstract removeTab(Landroid/app/ActionBar$Tab;)V
.end method

.method public abstract removeTabAt(I)V
.end method

.method public abstract selectTab(Landroid/app/ActionBar$Tab;)V
.end method

.method public abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setCustomView(I)V
.end method

.method public abstract setCustomView(Landroid/view/View;)V
.end method

.method public abstract setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
.end method

.method public abstract setDisplayHomeAsUpEnabled(Z)V
.end method

.method public abstract setDisplayOptions(I)V
.end method

.method public abstract setDisplayOptions(II)V
.end method

.method public abstract setDisplayShowCustomEnabled(Z)V
.end method

.method public abstract setDisplayShowHomeEnabled(Z)V
.end method

.method public abstract setDisplayShowTitleEnabled(Z)V
.end method

.method public abstract setDisplayUseLogoEnabled(Z)V
.end method

.method public abstract setFragmentActionMenuAt(IZ)V
.end method

.method public abstract setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;)V
.end method

.method public abstract setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;Z)V
.end method

.method public abstract setHomeButtonEnabled(Z)V
.end method

.method public abstract setIcon(I)V
.end method

.method public abstract setIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
.end method

.method public abstract setLogo(I)V
.end method

.method public abstract setLogo(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setNavigationMode(I)V
.end method

.method public abstract setSelectedNavigationItem(I)V
.end method

.method public abstract setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setSubtitle(I)V
.end method

.method public abstract setSubtitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setTertiaryTitle(I)V
.end method

.method public abstract setTertiaryTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setTitle(I)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setViewPagerOffscreenPageLimit(I)V
.end method

.method public abstract show()V
.end method

.method public abstract showActionBarShadow(Z)V
.end method

.method public abstract showSplitActionBar(ZZ)V
.end method
