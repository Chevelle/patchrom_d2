.class Lmiui/v5/widget/Views$Stub;
.super Landroid/view/View;
.source "Views.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/widget/Views;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Stub"
.end annotation


# instance fields
.field private mHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 246
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 243
    const/4 v0, 0x0

    iput v0, p0, Lmiui/v5/widget/Views$Stub;->mHeight:I

    .line 247
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/v5/widget/Views$Stub;->setVisibility(I)V

    .line 248
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v2, 0x4000

    .line 256
    const/4 v0, 0x1

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lmiui/v5/widget/Views$Stub;->mHeight:I

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/view/View;->onMeasure(II)V

    .line 258
    return-void
.end method

.method public setHeight(I)V
    .locals 1
    .parameter "height"

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lmiui/v5/widget/Views$Stub;->mHeight:I

    .line 252
    return-void
.end method
