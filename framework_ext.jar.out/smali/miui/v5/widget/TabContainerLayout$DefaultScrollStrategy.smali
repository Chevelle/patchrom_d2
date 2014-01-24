.class Lmiui/v5/widget/TabContainerLayout$DefaultScrollStrategy;
.super Ljava/lang/Object;
.source "TabContainerLayout.java"

# interfaces
.implements Lmiui/v5/widget/TabContainerLayout$ScrollStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/widget/TabContainerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultScrollStrategy"
.end annotation


# instance fields
.field private final mBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/v5/widget/TabContainerLayout$DefaultScrollStrategy;->mBounds:Landroid/graphics/Rect;

    .line 522
    return-void
.end method


# virtual methods
.method public getScrollX(Landroid/view/View;Landroid/view/ViewGroup;)I
    .locals 6
    .parameter "tabView"
    .parameter "parent"

    .prologue
    .line 526
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 527
    .local v2, tabLeft:I
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    .line 528
    .local v3, tabRight:I
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout$DefaultScrollStrategy;->mBounds:Landroid/graphics/Rect;

    .line 529
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 532
    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-ge v2, v4, :cond_0

    .line 533
    move v1, v2

    .line 540
    .local v1, scrollX:I
    :goto_0
    return v1

    .line 534
    .end local v1           #scrollX:I
    :cond_0
    iget v4, v0, Landroid/graphics/Rect;->right:I

    if-le v3, v4, :cond_1

    .line 535
    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iget v5, v0, Landroid/graphics/Rect;->right:I

    sub-int v1, v4, v5

    .restart local v1       #scrollX:I
    goto :goto_0

    .line 537
    .end local v1           #scrollX:I
    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .restart local v1       #scrollX:I
    goto :goto_0
.end method
