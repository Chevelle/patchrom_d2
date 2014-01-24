.class Lmiui/v5/widget/PageScrollEffects$PageScrolledDispatcher;
.super Ljava/lang/Object;
.source "PageScrollEffects.java"

# interfaces
.implements Lmiui/v5/widget/PageChangeAdapter$OnPageScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/widget/PageScrollEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PageScrolledDispatcher"
.end annotation


# instance fields
.field private final mFactory:Lmiui/v5/util/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/v5/util/Factory",
            "<",
            "Lmiui/v5/widget/PageScrollEffect;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/v5/util/Factory;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/v5/util/Factory",
            "<",
            "Lmiui/v5/widget/PageScrollEffect;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, factory:Lmiui/v5/util/Factory;,"Lmiui/v5/util/Factory<Lmiui/v5/widget/PageScrollEffect;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lmiui/v5/widget/PageScrollEffects$PageScrolledDispatcher;->mFactory:Lmiui/v5/util/Factory;

    .line 42
    return-void
.end method

.method private onScrolled(Lmiui/v5/android/support/view/ViewPager;IFZ)V
    .locals 3
    .parameter "pager"
    .parameter "newPagePosition"
    .parameter "percent"
    .parameter "isRight"

    .prologue
    .line 64
    iget-object v1, p0, Lmiui/v5/widget/PageScrollEffects$PageScrolledDispatcher;->mFactory:Lmiui/v5/util/Factory;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lmiui/v5/util/Factory;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/v5/widget/PageScrollEffect;

    .line 65
    .local v0, listener:Lmiui/v5/widget/PageScrollEffect;
    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p3, p4}, Lmiui/v5/widget/PageScrollEffect;->scroll(FZ)V

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public onReset(Lmiui/v5/android/support/view/ViewPager;II)V
    .locals 3
    .parameter "pager"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 46
    iget-object v1, p0, Lmiui/v5/widget/PageScrollEffects$PageScrolledDispatcher;->mFactory:Lmiui/v5/util/Factory;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lmiui/v5/util/Factory;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/v5/widget/PageScrollEffect;

    .line 47
    .local v0, listener:Lmiui/v5/widget/PageScrollEffect;
    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0}, Lmiui/v5/widget/PageScrollEffect;->reset()V

    .line 50
    :cond_0
    return-void
.end method

.method public onScroll(Lmiui/v5/android/support/view/ViewPager;IIF)V
    .locals 1
    .parameter "pager"
    .parameter "from"
    .parameter "to"
    .parameter "percent"

    .prologue
    .line 54
    if-ge p2, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p3, p4, v0}, Lmiui/v5/widget/PageScrollEffects$PageScrolledDispatcher;->onScrolled(Lmiui/v5/android/support/view/ViewPager;IFZ)V

    .line 55
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
