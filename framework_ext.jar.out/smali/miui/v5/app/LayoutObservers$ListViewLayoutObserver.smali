.class Lmiui/v5/app/LayoutObservers$ListViewLayoutObserver;
.super Ljava/lang/Object;
.source "LayoutObservers.java"

# interfaces
.implements Lmiui/v5/app/LayoutObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/app/LayoutObservers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListViewLayoutObserver"
.end annotation


# instance fields
.field private final mListView:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, lv:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lmiui/v5/app/LayoutObservers$ListViewLayoutObserver;->mListView:Landroid/widget/AdapterView;

    .line 15
    return-void
.end method


# virtual methods
.method public isContentFilled()Z
    .locals 5

    .prologue
    .line 19
    iget-object v3, p0, Lmiui/v5/app/LayoutObservers$ListViewLayoutObserver;->mListView:Landroid/widget/AdapterView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    .line 20
    .local v0, childCount:I
    iget-object v3, p0, Lmiui/v5/app/LayoutObservers$ListViewLayoutObserver;->mListView:Landroid/widget/AdapterView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    .line 22
    .local v2, itemCount:I
    const/4 v1, 0x0

    .line 23
    .local v1, filled:Z
    if-lez v0, :cond_0

    .line 24
    if-le v2, v0, :cond_1

    .line 25
    const/4 v1, 0x1

    .line 32
    :cond_0
    :goto_0
    return v1

    .line 26
    :cond_1
    if-ne v2, v0, :cond_0

    .line 27
    iget-object v3, p0, Lmiui/v5/app/LayoutObservers$ListViewLayoutObserver;->mListView:Landroid/widget/AdapterView;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v4, p0, Lmiui/v5/app/LayoutObservers$ListViewLayoutObserver;->mListView:Landroid/widget/AdapterView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_2

    const/4 v1, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
