.class public Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;
.super Lcom/android/internal/widget/AutoScrollHelper;
.source "AutoScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AbsListViewAutoScroller"
.end annotation


# instance fields
.field private final mTarget:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 875
    invoke-direct {p0, p1}, Lcom/android/internal/widget/AutoScrollHelper;-><init>(Landroid/view/View;)V

    .line 877
    iput-object p1, p0, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->mTarget:Landroid/widget/AbsListView;

    .line 878
    return-void
.end method


# virtual methods
.method public canTargetScrollHorizontally(I)Z
    .locals 1
    .parameter "direction"

    .prologue
    .line 888
    const/4 v0, 0x0

    return v0
.end method

.method public canTargetScrollVertically(I)Z
    .locals 10
    .parameter "direction"

    .prologue
    const/4 v7, 0x0

    .line 893
    iget-object v6, p0, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->mTarget:Landroid/widget/AbsListView;

    .line 894
    .local v6, target:Landroid/widget/AbsListView;
    invoke-virtual {v6}, Landroid/widget/AbsListView;->getCount()I

    move-result v3

    .line 895
    .local v3, itemCount:I
    invoke-virtual {v6}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 896
    .local v0, childCount:I
    invoke-virtual {v6}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    .line 897
    .local v1, firstPosition:I
    add-int v4, v1, v0

    .line 899
    .local v4, lastPosition:I
    if-lez p1, :cond_1

    .line 901
    if-lt v4, v3, :cond_2

    .line 902
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v6, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 903
    .local v5, lastView:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    if-gt v8, v9, :cond_2

    .line 921
    .end local v5           #lastView:Landroid/view/View;
    :cond_0
    :goto_0
    return v7

    .line 907
    :cond_1
    if-gez p1, :cond_0

    .line 909
    if-gtz v1, :cond_2

    .line 910
    invoke-virtual {v6, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 911
    .local v2, firstView:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    if-gez v8, :cond_0

    .line 921
    .end local v2           #firstView:Landroid/view/View;
    :cond_2
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public scrollTargetBy(II)V
    .locals 1
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->mTarget:Landroid/widget/AbsListView;

    invoke-virtual {v0, p2}, Landroid/widget/AbsListView;->scrollListBy(I)V

    .line 883
    return-void
.end method
