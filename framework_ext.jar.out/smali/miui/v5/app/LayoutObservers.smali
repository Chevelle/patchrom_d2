.class public Lmiui/v5/app/LayoutObservers;
.super Ljava/lang/Object;
.source "LayoutObservers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/app/LayoutObservers$ListViewLayoutObserver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static makeLayoutObserverForListView(Landroid/widget/AdapterView;)Lmiui/v5/app/LayoutObserver;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)",
            "Lmiui/v5/app/LayoutObserver;"
        }
    .end annotation

    .prologue
    .line 8
    .local p0, lv:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Lmiui/v5/app/LayoutObservers$ListViewLayoutObserver;

    invoke-direct {v0, p0}, Lmiui/v5/app/LayoutObservers$ListViewLayoutObserver;-><init>(Landroid/widget/AdapterView;)V

    return-object v0
.end method
