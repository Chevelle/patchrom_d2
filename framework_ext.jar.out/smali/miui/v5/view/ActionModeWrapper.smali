.class public Lmiui/v5/view/ActionModeWrapper;
.super Landroid/widget/FrameLayout;
.source "ActionModeWrapper.java"

# interfaces
.implements Lmiui/v5/view/MiuiActionMode$ActionModeListener;


# instance fields
.field private mActionMode:Lmiui/v5/view/MiuiActionMode;

.field private mActionModeListener:Lmiui/v5/view/MiuiActionMode$ActionModeListener;

.field private mBottomBarTopLineBottomMargin:I

.field private mBottomBarTopLineDrawable:Landroid/graphics/drawable/Drawable;

.field private mBottomBarTopLineVisible:Z

.field private mBottomContainer:Landroid/view/ViewGroup;

.field private mTopContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/v5/view/ActionModeWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/v5/view/ActionModeWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const v0, 0x6010050

    invoke-static {p1, v0}, Lmiui/util/UiUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/v5/view/ActionModeWrapper;->mBottomBarTopLineDrawable:Landroid/graphics/drawable/Drawable;

    .line 42
    return-void
.end method

.method private createEditableActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Lmiui/v5/view/MiuiActionMode;
    .locals 4
    .parameter "originalView"
    .parameter "callback"

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 139
    invoke-direct {p0}, Lmiui/v5/view/ActionModeWrapper;->ensureViews()V

    .line 140
    new-instance v0, Lmiui/v5/view/EditableActionMode;

    iget-object v1, p0, Lmiui/v5/view/ActionModeWrapper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/v5/view/ActionModeWrapper;->mTopContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lmiui/v5/view/ActionModeWrapper;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2, v3}, Lmiui/v5/view/EditableActionMode;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 143
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ensureViews()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lmiui/v5/view/ActionModeWrapper;->mTopContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 132
    const v0, 0x60b005d

    invoke-virtual {p0, v0}, Lmiui/v5/view/ActionModeWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lmiui/v5/view/ActionModeWrapper;->mTopContainer:Landroid/view/ViewGroup;

    .line 133
    const v0, 0x60b005a

    invoke-virtual {p0, v0}, Lmiui/v5/view/ActionModeWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lmiui/v5/view/ActionModeWrapper;->mBottomContainer:Landroid/view/ViewGroup;

    .line 135
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 46
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lmiui/v5/view/ActionModeWrapper;->mActionMode:Lmiui/v5/view/MiuiActionMode;

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lmiui/v5/view/ActionModeWrapper;->mActionMode:Lmiui/v5/view/MiuiActionMode;

    invoke-virtual {v1}, Lmiui/v5/view/MiuiActionMode;->tryToFinish()Z

    .line 53
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    .line 150
    .local v2, retval:Z
    iget-object v3, p0, Lmiui/v5/view/ActionModeWrapper;->mBottomContainer:Landroid/view/ViewGroup;

    if-ne p2, v3, :cond_0

    .line 151
    iget-boolean v3, p0, Lmiui/v5/view/ActionModeWrapper;->mBottomBarTopLineVisible:Z

    if-eqz v3, :cond_0

    .line 152
    iget-object v3, p0, Lmiui/v5/view/ActionModeWrapper;->mBottomBarTopLineDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 153
    iget-object v3, p0, Lmiui/v5/view/ActionModeWrapper;->mBottomBarTopLineDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 154
    .local v0, lineHeight:I
    invoke-virtual {p0}, Lmiui/v5/view/ActionModeWrapper;->getBottom()I

    move-result v3

    iget v4, p0, Lmiui/v5/view/ActionModeWrapper;->mBottomBarTopLineBottomMargin:I

    sub-int/2addr v3, v4

    sub-int v1, v3, v0

    .line 155
    .local v1, lineTop:I
    iget-object v3, p0, Lmiui/v5/view/ActionModeWrapper;->mBottomBarTopLineDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lmiui/v5/view/ActionModeWrapper;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lmiui/v5/view/ActionModeWrapper;->getRight()I

    move-result v5

    add-int v6, v1, v0

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 157
    iget-object v3, p0, Lmiui/v5/view/ActionModeWrapper;->mBottomBarTopLineDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 162
    .end local v0           #lineHeight:I
    .end local v1           #lineTop:I
    :cond_0
    return v2
.end method

.method public finishActionMode()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lmiui/v5/view/ActionModeWrapper;->mActionMode:Lmiui/v5/view/MiuiActionMode;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lmiui/v5/view/ActionModeWrapper;->mActionMode:Lmiui/v5/view/MiuiActionMode;

    invoke-virtual {v0}, Lmiui/v5/view/MiuiActionMode;->finish()V

    .line 87
    :cond_0
    return-void
.end method

.method public initBottomBarTopLine(I)V
    .locals 0
    .parameter "bottomMargin"

    .prologue
    .line 102
    iput p1, p0, Lmiui/v5/view/ActionModeWrapper;->mBottomBarTopLineBottomMargin:I

    .line 103
    return-void
.end method

.method public isActionModeActive()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lmiui/v5/view/ActionModeWrapper;->mActionMode:Lmiui/v5/view/MiuiActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionModeFinished(Lmiui/v5/view/MiuiActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/v5/view/ActionModeWrapper;->mActionMode:Lmiui/v5/view/MiuiActionMode;

    .line 108
    iget-object v0, p0, Lmiui/v5/view/ActionModeWrapper;->mActionModeListener:Lmiui/v5/view/MiuiActionMode$ActionModeListener;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lmiui/v5/view/ActionModeWrapper;->mActionModeListener:Lmiui/v5/view/MiuiActionMode$ActionModeListener;

    invoke-interface {v0, p1}, Lmiui/v5/view/MiuiActionMode$ActionModeListener;->onActionModeFinished(Lmiui/v5/view/MiuiActionMode;)V

    .line 111
    :cond_0
    return-void
.end method

.method public onActionModeStarted(Lmiui/v5/view/MiuiActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 115
    iput-object p1, p0, Lmiui/v5/view/ActionModeWrapper;->mActionMode:Lmiui/v5/view/MiuiActionMode;

    .line 116
    iget-object v0, p0, Lmiui/v5/view/ActionModeWrapper;->mActionModeListener:Lmiui/v5/view/MiuiActionMode$ActionModeListener;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lmiui/v5/view/ActionModeWrapper;->mActionModeListener:Lmiui/v5/view/MiuiActionMode$ActionModeListener;

    invoke-interface {v0, p1}, Lmiui/v5/view/MiuiActionMode$ActionModeListener;->onActionModeStarted(Lmiui/v5/view/MiuiActionMode;)V

    .line 119
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 124
    invoke-direct {p0}, Lmiui/v5/view/ActionModeWrapper;->ensureViews()V

    .line 125
    return-void
.end method

.method public setActionModeListener(Lmiui/v5/view/MiuiActionMode$ActionModeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 94
    iput-object p1, p0, Lmiui/v5/view/ActionModeWrapper;->mActionModeListener:Lmiui/v5/view/MiuiActionMode$ActionModeListener;

    .line 95
    return-void
.end method

.method public setBottomBarTopLineVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 98
    iput-boolean p1, p0, Lmiui/v5/view/ActionModeWrapper;->mBottomBarTopLineVisible:Z

    .line 99
    return-void
.end method

.method public startActionMode(Lmiui/v5/view/MiuiActionMode;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "mode"
    .parameter "callback"

    .prologue
    .line 73
    iget-object v0, p0, Lmiui/v5/view/ActionModeWrapper;->mActionMode:Lmiui/v5/view/MiuiActionMode;

    if-eqz v0, :cond_0

    .line 74
    const/4 p1, 0x0

    .line 80
    .end local p1
    :goto_0
    return-object p1

    .line 77
    .restart local p1
    :cond_0
    invoke-virtual {p1, p0}, Lmiui/v5/view/MiuiActionMode;->setActionModeListener(Lmiui/v5/view/MiuiActionMode$ActionModeListener;)V

    .line 78
    invoke-virtual {p1, p2}, Lmiui/v5/view/MiuiActionMode;->start(Landroid/view/ActionMode$Callback;)V

    .line 79
    iput-object p1, p0, Lmiui/v5/view/ActionModeWrapper;->mActionMode:Lmiui/v5/view/MiuiActionMode;

    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .parameter "originalView"
    .parameter "callback"

    .prologue
    .line 58
    iget-object v1, p0, Lmiui/v5/view/ActionModeWrapper;->mActionMode:Lmiui/v5/view/MiuiActionMode;

    if-eqz v1, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    .line 62
    :cond_0
    invoke-direct {p0, p1, p2}, Lmiui/v5/view/ActionModeWrapper;->createEditableActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Lmiui/v5/view/MiuiActionMode;

    move-result-object v0

    .line 63
    .local v0, mode:Lmiui/v5/view/MiuiActionMode;
    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {v0, p0}, Lmiui/v5/view/MiuiActionMode;->setActionModeListener(Lmiui/v5/view/MiuiActionMode$ActionModeListener;)V

    .line 65
    invoke-virtual {v0, p2}, Lmiui/v5/view/MiuiActionMode;->start(Landroid/view/ActionMode$Callback;)V

    goto :goto_0

    .line 69
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0
.end method
