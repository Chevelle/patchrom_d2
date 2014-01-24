.class public Lmiui/preference/RadioButtonPreference;
.super Landroid/preference/CheckBoxPreference;
.source "RadioButtonPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const v0, 0x603003b

    invoke-virtual {p0, v0}, Lmiui/preference/RadioButtonPreference;->setLayoutResource(I)V

    .line 17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/preference/RadioButtonPreference;->setWidgetLayoutResource(I)V

    .line 18
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 27
    invoke-virtual {p0}, Lmiui/preference/RadioButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x60a0036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 29
    .local v1, paddingRight:I
    move v0, v1

    .line 30
    .local v0, paddingLeft:I
    invoke-virtual {p0}, Lmiui/preference/RadioButtonPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 31
    invoke-virtual {p0}, Lmiui/preference/RadioButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x60a0033

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 37
    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 38
    .local v2, titleView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lmiui/preference/RadioButtonPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x10100a0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAdditionalState(I)V

    .line 39
    return-void

    .line 38
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
