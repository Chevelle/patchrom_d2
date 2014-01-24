.class public interface abstract Lmiui/v5/widget/PageScrollEffect;
.super Ljava/lang/Object;
.source "PageScrollEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect;,
        Lmiui/v5/widget/PageScrollEffect$Creator;,
        Lmiui/v5/widget/PageScrollEffect$OnStateChangeListener;
    }
.end annotation


# virtual methods
.method public abstract attach(Landroid/view/ViewGroup;[I)Z
.end method

.method public abstract detach(Landroid/view/ViewGroup;)Z
.end method

.method public abstract reset()V
.end method

.method public abstract scroll(FZ)V
.end method

.method public abstract setStateListener(Lmiui/v5/widget/PageScrollEffect$OnStateChangeListener;)V
.end method
