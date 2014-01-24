.class final Lmiui/v5/android/support/view/ViewPager$1;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/android/support/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lmiui/v5/android/support/view/ViewPager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    check-cast p1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    .end local p1
    check-cast p2, Lmiui/v5/android/support/view/ViewPager$ItemInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lmiui/v5/android/support/view/ViewPager$1;->compare(Lmiui/v5/android/support/view/ViewPager$ItemInfo;Lmiui/v5/android/support/view/ViewPager$ItemInfo;)I

    move-result v0

    return v0
.end method

.method public compare(Lmiui/v5/android/support/view/ViewPager$ItemInfo;Lmiui/v5/android/support/view/ViewPager$ItemInfo;)I
    .locals 2
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 65
    iget v0, p1, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    iget v1, p2, Lmiui/v5/android/support/view/ViewPager$ItemInfo;->position:I

    sub-int/2addr v0, v1

    return v0
.end method
