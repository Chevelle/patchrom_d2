.class public Lmiui/v5/widget/Views;
.super Ljava/lang/Object;
.source "Views.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/widget/Views$Stub;,
        Lmiui/v5/widget/Views$ComposedPageChangeListener;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;

.field public static final TOP_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lmiui/v5/widget/Views;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/v5/widget/Views;->TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Lmiui/v5/widget/Views$1;

    invoke-direct {v0}, Lmiui/v5/widget/Views$1;-><init>()V

    sput-object v0, Lmiui/v5/widget/Views;->TOP_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    return-void
.end method

.method public static collectChildren(Landroid/view/ViewGroup;Lcom/android/internal/util/Predicate;Ljava/util/List;)V
    .locals 4
    .parameter "view"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, pred:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 46
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 47
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, child:Landroid/view/View;
    invoke-interface {p1, v0}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public static detach(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 275
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 276
    .local v0, parent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 277
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 279
    :cond_0
    return-void
.end method

.method public static ensureBottomHeight(Landroid/widget/ListView;I)V
    .locals 6
    .parameter "lv"
    .parameter "height"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 202
    const-class v4, Lmiui/v5/widget/Views$Stub;

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/v5/widget/Views$Stub;

    .line 203
    .local v2, stub:Lmiui/v5/widget/Views$Stub;
    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 207
    :cond_0
    if-lez p1, :cond_3

    .line 208
    if-nez v2, :cond_1

    .line 209
    new-instance v2, Lmiui/v5/widget/Views$Stub;

    .end local v2           #stub:Lmiui/v5/widget/Views$Stub;
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lmiui/v5/widget/Views$Stub;-><init>(Landroid/content/Context;)V

    .line 210
    .restart local v2       #stub:Lmiui/v5/widget/Views$Stub;
    const-class v4, Lmiui/v5/widget/Views$Stub;

    invoke-virtual {v2, v4}, Lmiui/v5/widget/Views$Stub;->setTag(Ljava/lang/Object;)V

    .line 212
    :cond_1
    invoke-virtual {v2, p1}, Lmiui/v5/widget/Views$Stub;->setHeight(I)V

    .line 214
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 215
    .local v0, la:Landroid/widget/ListAdapter;
    instance-of v4, v0, Landroid/widget/HeaderViewListAdapter;

    if-nez v4, :cond_4

    const/4 v1, 0x1

    .line 216
    .local v1, resetAdapter:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 217
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 220
    :cond_2
    invoke-virtual {p0, v2, v5, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 222
    if-eqz v1, :cond_3

    .line 223
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 226
    .end local v0           #la:Landroid/widget/ListAdapter;
    .end local v1           #resetAdapter:Z
    :cond_3
    return-void

    .restart local v0       #la:Landroid/widget/ListAdapter;
    :cond_4
    move v1, v3

    .line 215
    goto :goto_0
.end method

.method public static getBackgroundHeight(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 146
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 149
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getBackgroundWidth(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 154
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 157
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getContentRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "v"
    .parameter "out"

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 61
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 62
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 63
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 64
    return-void
.end method

.method public static inflate(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "layoutId"
    .parameter "parent"
    .parameter "attachToRoot"

    .prologue
    .line 270
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 271
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static isBottomFullVisible(Landroid/widget/ListView;)Z
    .locals 3
    .parameter "lv"

    .prologue
    .line 234
    const-class v1, Lmiui/v5/widget/Views$Stub;

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 235
    .local v0, bottom:Landroid/view/View;
    if-nez v0, :cond_0

    .line 236
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can not find bottom view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isContainPoint(Landroid/view/View;II)Z
    .locals 1
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    if-le p2, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIntersectWithRect(Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 3
    .parameter "view"
    .parameter "rect"

    .prologue
    const/4 v0, 0x0

    .line 73
    if-nez p1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static measureHeightWidhBackground(Landroid/view/View;)I
    .locals 3
    .parameter "view"

    .prologue
    .line 181
    invoke-static {p0}, Lmiui/v5/widget/Views;->getBackgroundHeight(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 182
    .local v0, height:I
    invoke-static {p0, v0}, Lmiui/v5/widget/Views;->setHeight(Landroid/view/View;I)V

    .line 183
    return v0
.end method

.method public static setHeight(Landroid/view/View;I)V
    .locals 2
    .parameter "view"
    .parameter "height"

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 165
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, p1, :cond_0

    .line 170
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 171
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public static setPadding(Landroid/view/View;IIII)V
    .locals 0
    .parameter "v"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 190
    if-ltz p1, :cond_0

    .end local p1
    :goto_0
    if-ltz p2, :cond_1

    .end local p2
    :goto_1
    if-ltz p3, :cond_2

    .end local p3
    :goto_2
    if-ltz p4, :cond_3

    .end local p4
    :goto_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 194
    return-void

    .line 190
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    goto :goto_0

    .end local p1
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    goto :goto_1

    .end local p2
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    goto :goto_2

    .end local p3
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p4

    goto :goto_3
.end method
