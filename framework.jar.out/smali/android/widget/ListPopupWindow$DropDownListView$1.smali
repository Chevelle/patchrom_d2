.class final Landroid/widget/ListPopupWindow$DropDownListView$1;
.super Landroid/util/IntProperty;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListPopupWindow$DropDownListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1396
    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/drawable/Drawable;)Ljava/lang/Integer;
    .locals 1
    .parameter "object"

    .prologue
    .line 1404
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1396
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow$DropDownListView$1;->get(Landroid/graphics/drawable/Drawable;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .parameter "object"
    .parameter "value"

    .prologue
    .line 1399
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1400
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1396
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1
    invoke-virtual {p0, p1, p2}, Landroid/widget/ListPopupWindow$DropDownListView$1;->setValue(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method
