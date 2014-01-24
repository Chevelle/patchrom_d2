.class public Lmiui/maml/MiAdvancedView;
.super Landroid/view/View;
.source "MiAdvancedView.java"

# interfaces
.implements Lmiui/maml/RendererController$IRenderable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MiAdvancedView"

.field private static final VARIABLE_VIEW_HEIGHT:Ljava/lang/String; = "view_height"

.field private static final VARIABLE_VIEW_WIDTH:Ljava/lang/String; = "view_width"


# instance fields
.field private mLoggedHardwareRender:Z

.field private mNeedDisallowInterceptTouchEvent:Z

.field private mPaused:Z

.field private mPivotX:I

.field private mPivotY:I

.field protected mRoot:Lmiui/maml/ScreenElementRoot;

.field private mScale:F

.field private mThread:Lmiui/maml/RenderThread;

.field private mUseExternalRenderThread:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .parameter "context"
    .parameter "root"

    .prologue
    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    iput-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mPaused:Z

    .line 39
    invoke-virtual {p0, v0}, Lmiui/maml/MiAdvancedView;->setFocusable(Z)V

    .line 40
    invoke-virtual {p0, v0}, Lmiui/maml/MiAdvancedView;->setFocusableInTouchMode(Z)V

    .line 41
    iput-object p2, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V
    .locals 1
    .parameter "context"
    .parameter "root"
    .parameter "t"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lmiui/maml/MiAdvancedView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;)V

    .line 47
    if-eqz p3, :cond_0

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mUseExternalRenderThread:Z

    .line 49
    iput-object p3, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    .line 50
    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->init()V

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/MiAdvancedView;->cleanUp(Z)V

    .line 63
    return-void
.end method

.method public cleanUp(Z)V
    .locals 2
    .parameter "keepResource"

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->setKeepResource(Z)V

    .line 68
    invoke-virtual {p0, v1}, Lmiui/maml/MiAdvancedView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 69
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_0

    .line 70
    iget-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mUseExternalRenderThread:Z

    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->setStop()V

    .line 72
    iput-object v1, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->detachFromRenderThread(Lmiui/maml/RenderThread;)V

    .line 75
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfFinish()V

    goto :goto_0
.end method

.method public doRender()V
    .locals 0

    .prologue
    .line 187
    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->postInvalidate()V

    .line 188
    return-void
.end method

.method public final getRoot()Lmiui/maml/ScreenElementRoot;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getHeight()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getWidth()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p0}, Lmiui/maml/ScreenElementRoot;->setRenderControllerRenderable(Lmiui/maml/RendererController$IRenderable;)V

    .line 57
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfInit()V

    .line 58
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->attachToRenderThread(Lmiui/maml/RenderThread;)V

    .line 59
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 142
    iget-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mUseExternalRenderThread:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lmiui/maml/RenderThread;

    invoke-direct {v0}, Lmiui/maml/RenderThread;-><init>()V

    iput-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    .line 144
    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->init()V

    .line 145
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    iget-boolean v1, p0, Lmiui/maml/MiAdvancedView;->mPaused:Z

    invoke-virtual {v0, v1}, Lmiui/maml/RenderThread;->setPaused(Z)V

    .line 146
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->start()V

    .line 148
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 153
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 120
    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v1}, Lmiui/maml/RenderThread;->isStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-boolean v1, p0, Lmiui/maml/MiAdvancedView;->mLoggedHardwareRender:Z

    if-nez v1, :cond_2

    .line 124
    const-string v1, "MiAdvancedView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canvas hardware render: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/maml/MiAdvancedView;->mLoggedHardwareRender:Z

    .line 128
    :cond_2
    iget v1, p0, Lmiui/maml/MiAdvancedView;->mScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 130
    .local v0, sa:I
    iget v1, p0, Lmiui/maml/MiAdvancedView;->mScale:F

    iget v2, p0, Lmiui/maml/MiAdvancedView;->mScale:F

    iget v3, p0, Lmiui/maml/MiAdvancedView;->mPivotX:I

    int-to-float v3, v3

    iget v4, p0, Lmiui/maml/MiAdvancedView;->mPivotY:I

    int-to-float v4, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 131
    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1, p1}, Lmiui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    .line 132
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 134
    .end local v0           #sa:I
    :cond_3
    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1, p1}, Lmiui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 167
    const-string v0, "view_width"

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    sub-int v2, p4, p2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v4

    float-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V

    .line 169
    const-string v0, "view_height"

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    sub-int v2, p5, p3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v4

    float-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V

    .line 171
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    .line 172
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 156
    iput-boolean v1, p0, Lmiui/maml/MiAdvancedView;->mPaused:Z

    .line 157
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_0

    .line 158
    iget-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mUseExternalRenderThread:Z

    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0, v1}, Lmiui/maml/RenderThread;->setPaused(Z)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfPause()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 175
    iput-boolean v1, p0, Lmiui/maml/MiAdvancedView;->mPaused:Z

    .line 176
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_0

    .line 177
    iget-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mUseExternalRenderThread:Z

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0, v1}, Lmiui/maml/RenderThread;->setPaused(Z)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfResume()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 106
    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->needDisallowInterceptTouchEvent()Z

    move-result v0

    .line 108
    .local v0, b:Z
    iget-boolean v1, p0, Lmiui/maml/MiAdvancedView;->mNeedDisallowInterceptTouchEvent:Z

    if-eq v1, v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 110
    iput-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mNeedDisallowInterceptTouchEvent:Z

    .line 113
    :cond_0
    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->postMessage(Landroid/view/MotionEvent;)V

    .line 114
    const/4 v1, 0x1

    .line 116
    .end local v0           #b:Z
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setScale(FII)V
    .locals 0
    .parameter "scale"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 193
    iput p1, p0, Lmiui/maml/MiAdvancedView;->mScale:F

    .line 194
    iput p2, p0, Lmiui/maml/MiAdvancedView;->mPivotX:I

    .line 195
    iput p3, p0, Lmiui/maml/MiAdvancedView;->mPivotY:I

    .line 196
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    if-nez p1, :cond_1

    .line 98
    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->onResume()V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 100
    :cond_2
    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->onPause()V

    goto :goto_0
.end method
