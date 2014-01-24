.class public Lmiui/v5/widget/Views$ComposedPageChangeListener;
.super Ljava/lang/Object;
.source "Views.java"

# interfaces
.implements Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/widget/Views;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComposedPageChangeListener"
.end annotation


# instance fields
.field final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lmiui/v5/widget/Views$ComposedPageChangeListener;->mListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 105
    iget-object v0, p0, Lmiui/v5/widget/Views$ComposedPageChangeListener;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 118
    iget-object v2, p0, Lmiui/v5/widget/Views$ComposedPageChangeListener;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    .line 119
    .local v1, l:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;
    invoke-interface {v1, p1}, Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0

    .line 121
    .end local v1           #l:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 126
    iget-object v2, p0, Lmiui/v5/widget/Views$ComposedPageChangeListener;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    .line 127
    .local v1, l:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;
    invoke-interface {v1, p1, p2, p3}, Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_0

    .line 129
    .end local v1           #l:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 133
    iget-object v2, p0, Lmiui/v5/widget/Views$ComposedPageChangeListener;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    .line 134
    .local v1, l:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;
    invoke-interface {v1, p1}, Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_0

    .line 136
    .end local v1           #l:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;
    :cond_0
    return-void
.end method

.method public remove(Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 109
    iget-object v0, p0, Lmiui/v5/widget/Views$ComposedPageChangeListener;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lmiui/v5/widget/Views$ComposedPageChangeListener;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    return-void
.end method
