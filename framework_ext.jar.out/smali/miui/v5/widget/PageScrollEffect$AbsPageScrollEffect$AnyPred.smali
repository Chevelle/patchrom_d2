.class public Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect$AnyPred;
.super Ljava/lang/Object;
.source "PageScrollEffect.java"

# interfaces
.implements Lcom/android/internal/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AnyPred"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Predicate",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;)Z
    .locals 1
    .parameter "t"

    .prologue
    .line 140
    invoke-static {p1}, Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect;->existsEffect(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    check-cast p1, Landroid/view/View;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect$AnyPred;->apply(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
