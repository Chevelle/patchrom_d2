.class Lcom/android/server/wm/AppWindowToken;
.super Lcom/android/server/wm/WindowToken;
.source "AppWindowToken.java"


# instance fields
.field final allAppWindows:Lcom/android/server/wm/WindowList;

.field allDrawn:Z

.field appFullscreen:Z

.field final appToken:Landroid/view/IApplicationToken;

.field clientHidden:Z

.field deferClearAllDrawn:Z

.field firstWindowDrawn:Z

.field groupId:I

.field hiddenRequested:Z

.field inPendingTransaction:Z

.field inputDispatchingTimeoutNanos:J

.field lastTransactionSequence:J

.field layoutConfigChanges:Z

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field final mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

.field final mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field numDrawnWindows:I

.field numInterestingWindows:I

.field removed:Z

.field reportedDrawn:Z

.field reportedVisible:Z

.field requestedOrientation:I

.field showWhenLocked:Z

.field startingData:Lcom/android/server/wm/StartingData;

.field startingDisplayed:Z

.field startingMoved:Z

.field startingView:Landroid/view/View;

.field startingWindow:Lcom/android/server/wm/WindowState;

.field willBeHidden:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;)V
    .locals 4
    .parameter "_service"
    .parameter "_token"

    .prologue
    const/4 v3, -0x1

    .line 109
    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZ)V

    .line 48
    new-instance v0, Lcom/android/server/wm/WindowList;

    invoke-direct {v0}, Lcom/android/server/wm/WindowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 53
    iput v3, p0, Lcom/android/server/wm/AppWindowToken;->groupId:I

    .line 55
    iput v3, p0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    .line 66
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/android/server/wm/AppWindowToken;->lastTransactionSequence:J

    .line 111
    iput-object p0, p0, Lcom/android/server/wm/AppWindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 112
    iput-object p2, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    .line 113
    new-instance v0, Lcom/android/server/input/InputApplicationHandle;

    invoke-direct {v0, p0}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 114
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 115
    new-instance v0, Lcom/android/server/wm/AppWindowAnimator;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppWindowAnimator;-><init>(Lcom/android/server/wm/AppWindowToken;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 116
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 248
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "app=true"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 253
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "allAppWindows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 255
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "groupId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->groupId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 256
    const-string v0, " appFullscreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 257
    const-string v0, " requestedOrientation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 258
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hiddenRequested="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 259
    const-string v0, " clientHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 260
    const-string v0, " willBeHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 261
    const-string v0, " reportedDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 262
    const-string v0, " reportedVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 263
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->paused:Z

    if-eqz v0, :cond_2

    .line 264
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "paused="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->paused:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 266
    :cond_2
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eqz v0, :cond_4

    .line 268
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "numInterestingWindows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 270
    const-string v0, " numDrawnWindows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 271
    const-string v0, " inPendingTransaction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 272
    const-string v0, " allDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 273
    const-string v0, " (animator="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 274
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    if-eqz v0, :cond_5

    .line 277
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "inPendingTransaction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 278
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 280
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-eqz v0, :cond_7

    .line 281
    :cond_6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "startingData="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 282
    const-string v0, " removed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 283
    const-string v0, " firstWindowDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 285
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-eqz v0, :cond_9

    .line 287
    :cond_8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "startingWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 288
    const-string v0, " startingView="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 289
    const-string v0, " startingDisplayed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 290
    const-string v0, " startingMoved"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 292
    :cond_9
    return-void
.end method

.method findMainWindow()Lcom/android/server/wm/WindowState;
    .locals 4

    .prologue
    .line 219
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 220
    .local v0, j:I
    :cond_0
    if-lez v0, :cond_2

    .line 221
    add-int/lit8 v0, v0, -0x1

    .line 222
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 223
    .local v1, win:Lcom/android/server/wm/WindowState;
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 228
    .end local v1           #win:Lcom/android/server/wm/WindowState;
    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isVisible()Z
    .locals 4

    .prologue
    .line 232
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 233
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 234
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 235
    .local v2, win:Lcom/android/server/wm/WindowState;
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v3, :cond_1

    iget v3, v2, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 240
    const/4 v3, 0x1

    .line 243
    .end local v2           #win:Lcom/android/server/wm/WindowState;
    :goto_1
    return v3

    .line 233
    .restart local v2       #win:Lcom/android/server/wm/WindowState;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    .end local v2           #win:Lcom/android/server/wm/WindowState;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method sendAppVisibilityToClients()V
    .locals 5

    .prologue
    .line 119
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 120
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 121
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 122
    .local v2, win:Lcom/android/server/wm/WindowState;
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v2, v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-eqz v3, :cond_0

    .line 120
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_0
    :try_start_0
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_2
    invoke-interface {v4, v3}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 130
    :catch_0
    move-exception v3

    goto :goto_1

    .line 129
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 133
    .end local v2           #win:Lcom/android/server/wm/WindowState;
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 296
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "AppWindowToken{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    .line 303
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    return-object v1
.end method

.method updateReportedVisibilityLocked()V
    .locals 15

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 136
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v12, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    const/4 v7, 0x0

    .line 141
    .local v7, numInteresting:I
    const/4 v8, 0x0

    .line 142
    .local v8, numVisible:I
    const/4 v6, 0x0

    .line 143
    .local v6, numDrawn:I
    const/4 v4, 0x1

    .line 147
    .local v4, nowGone:Z
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 148
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_6

    .line 149
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v12, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 150
    .local v9, win:Lcom/android/server/wm/WindowState;
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eq v9, v12, :cond_2

    iget-boolean v12, v9, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v12, :cond_2

    iget v12, v9, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v12, :cond_2

    iget-object v12, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v13, 0x3

    if-eq v12, v13, :cond_2

    iget-boolean v12, v9, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v12, :cond_3

    .line 148
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 171
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 172
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 173
    add-int/lit8 v6, v6, 0x1

    .line 174
    iget-object v12, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v12

    if-nez v12, :cond_4

    .line 175
    add-int/lit8 v8, v8, 0x1

    .line 177
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 178
    :cond_5
    iget-object v12, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 179
    const/4 v4, 0x0

    goto :goto_2

    .line 183
    .end local v9           #win:Lcom/android/server/wm/WindowState;
    :cond_6
    if-lez v7, :cond_b

    if-lt v6, v7, :cond_b

    move v3, v10

    .line 184
    .local v3, nowDrawn:Z
    :goto_3
    if-lez v7, :cond_c

    if-lt v8, v7, :cond_c

    move v5, v10

    .line 185
    .local v5, nowVisible:Z
    :goto_4
    if-nez v4, :cond_8

    .line 187
    if-nez v3, :cond_7

    .line 188
    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    .line 190
    :cond_7
    if-nez v5, :cond_8

    .line 191
    iget-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    .line 196
    :cond_8
    iget-boolean v12, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    if-eq v3, v12, :cond_a

    .line 197
    if-eqz v3, :cond_9

    .line 198
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v13, 0x9

    invoke-virtual {v12, v13, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 200
    .local v2, m:Landroid/os/Message;
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v12, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 202
    .end local v2           #m:Landroid/os/Message;
    :cond_9
    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    .line 204
    :cond_a
    iget-boolean v12, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    if-eq v5, v12, :cond_0

    .line 208
    iput-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    .line 209
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v12, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v14, 0x8

    if-eqz v5, :cond_d

    move v12, v10

    :goto_5
    if-eqz v4, :cond_e

    :goto_6
    invoke-virtual {v13, v14, v12, v10, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 214
    .restart local v2       #m:Landroid/os/Message;
    iget-object v10, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v10, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v2           #m:Landroid/os/Message;
    .end local v3           #nowDrawn:Z
    .end local v5           #nowVisible:Z
    :cond_b
    move v3, v11

    .line 183
    goto :goto_3

    .restart local v3       #nowDrawn:Z
    :cond_c
    move v5, v11

    .line 184
    goto :goto_4

    .restart local v5       #nowVisible:Z
    :cond_d
    move v12, v11

    .line 209
    goto :goto_5

    :cond_e
    move v10, v11

    goto :goto_6
.end method
