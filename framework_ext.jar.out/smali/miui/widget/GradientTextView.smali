.class public Lmiui/widget/GradientTextView;
.super Landroid/widget/TextView;
.source "GradientTextView.java"


# instance fields
.field private mEndColor:I

.field private mStartColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/GradientTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/GradientTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    if-eqz p2, :cond_0

    .line 31
    sget-object v1, Lmiui/R$styleable;->GradientTextView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 32
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lmiui/widget/GradientTextView;->mStartColor:I

    .line 33
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lmiui/widget/GradientTextView;->mEndColor:I

    .line 34
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    .end local v0           #a:Landroid/content/res/TypedArray;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Lmiui/widget/GradientTextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 42
    return-void
.end method

.method private updateShader()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-virtual {p0}, Lmiui/widget/GradientTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lmiui/widget/GradientTextView;->getWidth()I

    move-result v2

    int-to-float v3, v2

    const/4 v2, 0x2

    new-array v5, v2, [I

    const/4 v2, 0x0

    iget v4, p0, Lmiui/widget/GradientTextView;->mStartColor:I

    aput v4, v5, v2

    const/4 v2, 0x1

    iget v4, p0, Lmiui/widget/GradientTextView;->mEndColor:I

    aput v4, v5, v2

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v0}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 59
    invoke-virtual {p0}, Lmiui/widget/GradientTextView;->invalidate()V

    .line 60
    return-void
.end method


# virtual methods
.method public onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 53
    invoke-direct {p0}, Lmiui/widget/GradientTextView;->updateShader()V

    .line 54
    return-void
.end method

.method public setGradientColor(II)V
    .locals 0
    .parameter "start"
    .parameter "end"

    .prologue
    .line 45
    iput p1, p0, Lmiui/widget/GradientTextView;->mStartColor:I

    .line 46
    iput p2, p0, Lmiui/widget/GradientTextView;->mEndColor:I

    .line 47
    invoke-direct {p0}, Lmiui/widget/GradientTextView;->updateShader()V

    .line 48
    return-void
.end method
