.class final Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect$2;
.super Lmiui/util/SimplePool$Manager;
.source "PageScrollEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/SimplePool$Manager",
        "<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0}, Lmiui/util/SimplePool$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 390
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 386
    invoke-virtual {p0}, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect$2;->createInstance()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public onAcquire(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "element"

    .prologue
    .line 395
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 396
    return-void
.end method

.method public bridge synthetic onAcquire(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 386
    check-cast p1, Landroid/graphics/Rect;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect$2;->onAcquire(Landroid/graphics/Rect;)V

    return-void
.end method
