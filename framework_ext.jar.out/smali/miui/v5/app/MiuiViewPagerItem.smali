.class public interface abstract Lmiui/v5/app/MiuiViewPagerItem;
.super Ljava/lang/Object;
.source "MiuiViewPagerItem.java"

# interfaces
.implements Lmiui/v5/widget/PageScrollEffect$Creator;
.implements Lmiui/v5/widget/MotionDetectStrategy$Creator;
.implements Lmiui/v5/app/LayoutObserver$Creator;
.implements Lmiui/v5/widget/VerticalMotionFrameLayout$InertiaListener;


# virtual methods
.method public abstract getBottomPlaceHolderHeight()I
.end method

.method public abstract isBottomPlaceholderEnabled()Z
.end method

.method public abstract isMenuBarEnabled()Z
.end method

.method public abstract onCreateMenuBar(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
.end method

.method public abstract onMenuBarClose(Landroid/view/Menu;)V
.end method

.method public abstract onMenuBarItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public abstract onMenuBarModeChange(Landroid/view/Menu;I)V
.end method

.method public abstract onMenuBarOpen(Landroid/view/Menu;)V
.end method

.method public abstract onPrepareMenuBar(Landroid/view/Menu;)Z
.end method

.method public abstract setBottomPlaceHolderEnabled(Z)V
.end method

.method public abstract setMenuBarEnabled(Z)V
.end method
