.class public Lmiui/widget/CheckedTextView;
.super Landroid/widget/CheckedTextView;
.source "CheckedTextView.java"


# static fields
.field private static final CHECKED_STATE_SET:[I = null

.field public static final CHECK_MARK_PADDING:I = 0xa


# instance fields
.field private mBasePadding:I

.field private mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

.field private mCheckMarkWidth:I

.field private mChecked:Z

.field private mNeedRequestlayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lmiui/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method private setBasePadding(Z)V
    .locals 1
    .parameter "isLayoutRtl"

    .prologue
    .line 156
    if-eqz p1, :cond_0

    .line 157
    iget v0, p0, Lmiui/widget/CheckedTextView;->mPaddingRight:I

    iput v0, p0, Lmiui/widget/CheckedTextView;->mBasePadding:I

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    iget v0, p0, Lmiui/widget/CheckedTextView;->mPaddingLeft:I

    iput v0, p0, Lmiui/widget/CheckedTextView;->mBasePadding:I

    goto :goto_0
.end method

.method private updatePadding()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->resetPaddingToInitialValues()V

    .line 140
    iget-object v3, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget v3, p0, Lmiui/widget/CheckedTextView;->mCheckMarkWidth:I

    iget v4, p0, Lmiui/widget/CheckedTextView;->mBasePadding:I

    add-int/2addr v3, v4

    add-int/lit8 v0, v3, 0xa

    .line 142
    .local v0, newPadding:I
    :goto_0
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 143
    iget-boolean v3, p0, Lmiui/widget/CheckedTextView;->mNeedRequestlayout:Z

    iget v4, p0, Lmiui/widget/CheckedTextView;->mPaddingLeft:I

    if-eq v4, v0, :cond_2

    :goto_1
    or-int/2addr v1, v3

    iput-boolean v1, p0, Lmiui/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 144
    iput v0, p0, Lmiui/widget/CheckedTextView;->mPaddingRight:I

    .line 149
    :goto_2
    iget-boolean v1, p0, Lmiui/widget/CheckedTextView;->mNeedRequestlayout:Z

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->requestLayout()V

    .line 151
    iput-boolean v2, p0, Lmiui/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 153
    :cond_0
    return-void

    .line 140
    .end local v0           #newPadding:I
    :cond_1
    iget v0, p0, Lmiui/widget/CheckedTextView;->mBasePadding:I

    goto :goto_0

    .restart local v0       #newPadding:I
    :cond_2
    move v1, v2

    .line 143
    goto :goto_1

    .line 146
    :cond_3
    iget-boolean v3, p0, Lmiui/widget/CheckedTextView;->mNeedRequestlayout:Z

    iget v4, p0, Lmiui/widget/CheckedTextView;->mPaddingLeft:I

    if-eq v4, v0, :cond_4

    :goto_3
    or-int/2addr v1, v3

    iput-boolean v1, p0, Lmiui/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 147
    iput v0, p0, Lmiui/widget/CheckedTextView;->mPaddingLeft:I

    goto :goto_2

    :cond_4
    move v1, v2

    .line 146
    goto :goto_3
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 174
    invoke-super {p0}, Landroid/widget/CheckedTextView;->drawableStateChanged()V

    .line 176
    iget-object v1, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    .line 180
    .local v0, myDrawableState:[I
    iget-object v1, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 182
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->invalidate()V

    .line 184
    .end local v0           #myDrawableState:[I
    :cond_0
    return-void
.end method

.method public getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected internalSetPadding(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckedTextView;->internalSetPadding(IIII)V

    .line 129
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->isLayoutRtl()Z

    move-result v0

    invoke-direct {p0, v0}, Lmiui/widget/CheckedTextView;->setBasePadding(Z)V

    .line 130
    return-void
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 58
    iget-boolean v0, p0, Lmiui/widget/CheckedTextView;->mChecked:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Landroid/widget/CheckedTextView;->jumpDrawablesToCurrentState()V

    .line 194
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 195
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 165
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/CheckedTextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 166
    .local v0, drawableState:[I
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    sget-object v1, Lmiui/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lmiui/widget/CheckedTextView;->mergeDrawableStates([I[I)[I

    .line 169
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 201
    iget-object v3, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 202
    iget v1, p0, Lmiui/widget/CheckedTextView;->mBasePadding:I

    .line 203
    .local v1, x:I
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingTop()I

    move-result v2

    .line 205
    .local v2, y:I
    iget-object v3, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 206
    .local v0, height:I
    iget-object v3, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v3, :cond_1

    .line 207
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 219
    :goto_0
    iget-object v3, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lmiui/widget/CheckedTextView;->mCheckMarkWidth:I

    add-int/2addr v4, v1

    add-int v5, v2, v0

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 220
    iget-object v3, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 222
    .end local v0           #height:I
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_0
    return-void

    .line 209
    .restart local v0       #height:I
    .restart local v1       #x:I
    .restart local v2       #y:I
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getGravity()I

    move-result v3

    and-int/lit8 v3, v3, 0x70

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 214
    :sswitch_0
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v2, v3, 0x2

    goto :goto_0

    .line 211
    :sswitch_1
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getHeight()I

    move-result v3

    sub-int v2, v3, v0

    .line 212
    goto :goto_0

    .line 209
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 227
    const-class v0, Lmiui/widget/CheckedTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 228
    iget-boolean v0, p0, Lmiui/widget/CheckedTextView;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 229
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 234
    const-class v0, Lmiui/widget/CheckedTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 235
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 236
    iget-boolean v0, p0, Lmiui/widget/CheckedTextView;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 237
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .parameter "layoutDirection"

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onRtlPropertiesChanged(I)V

    .line 135
    invoke-direct {p0}, Lmiui/widget/CheckedTextView;->updatePadding()V

    .line 136
    return-void
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "d"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 89
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lmiui/widget/CheckedTextView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmiui/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 93
    if-eqz p1, :cond_3

    .line 94
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 95
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 96
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 97
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkWidth:I

    .line 98
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 99
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/widget/CheckedTextView;->setMinHeight(I)V

    .line 104
    :goto_2
    iput-object p1, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 105
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->resolvePadding()V

    .line 106
    return-void

    :cond_1
    move v0, v2

    .line 92
    goto :goto_0

    :cond_2
    move v1, v2

    .line 96
    goto :goto_1

    .line 101
    :cond_3
    iput v2, p0, Lmiui/widget/CheckedTextView;->mCheckMarkWidth:I

    goto :goto_2
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 68
    iget-boolean v0, p0, Lmiui/widget/CheckedTextView;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 69
    iput-boolean p1, p0, Lmiui/widget/CheckedTextView;->mChecked:Z

    .line 70
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->refreshDrawableState()V

    .line 71
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->notifyAccessibilityStateChanged()V

    .line 73
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lmiui/widget/CheckedTextView;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lmiui/widget/CheckedTextView;->setChecked(Z)V

    .line 53
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
