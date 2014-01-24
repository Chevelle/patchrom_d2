.class public Lmiui/v5/app/SearchMode;
.super Ljava/lang/Object;
.source "SearchMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/app/SearchMode$SearchViewLayoutListener;,
        Lmiui/v5/app/SearchMode$InputDownAnim;,
        Lmiui/v5/app/SearchMode$InputUpAnim;,
        Lmiui/v5/app/SearchMode$FinishActionModeClick;,
        Lmiui/v5/app/SearchMode$AnimatorModeCallback;,
        Lmiui/v5/app/SearchMode$SearchActionMode;,
        Lmiui/v5/app/SearchMode$Token;
    }
.end annotation


# static fields
.field public static final RESULT_CONTAINER_ID:I = 0x60b00ab


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    return-void
.end method

.method private static getAnchor(Landroid/view/ViewGroup;Landroid/view/View;)I
    .locals 4
    .parameter "root"
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 261
    if-nez p1, :cond_0

    .line 262
    const/4 v2, 0x0

    .line 268
    :goto_0
    return v2

    .line 264
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 265
    .local v0, location:[I
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 266
    aget v1, v0, v3

    .line 267
    .local v1, rootTop:I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 268
    aget v2, v0, v3

    sub-int/2addr v2, v1

    goto :goto_0
.end method

.method public static inflateSearchView(Landroid/content/Context;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "parent"
    .parameter "attachToRoot"

    .prologue
    .line 181
    const v0, 0x6030044

    invoke-static {p0, v0, p1, p2}, Lmiui/v5/widget/Views;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static setHeight(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "height"

    .prologue
    .line 385
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 386
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 387
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 388
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 390
    :cond_0
    return-void
.end method

.method static setLeft(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "left"

    .prologue
    .line 514
    invoke-virtual {p0, p1}, Landroid/view/View;->setLeft(I)V

    .line 516
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 517
    .local v0, tag:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 518
    check-cast v0, Landroid/graphics/Rect;

    .end local v0           #tag:Ljava/lang/Object;
    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 520
    :cond_0
    return-void
.end method

.method static startSearchMode(Lmiui/v5/view/ActionModeWrapper;Landroid/view/View;Landroid/view/View;Ljava/lang/CharSequence;Lmiui/v5/view/MiuiActionMode$ActionModeListener;)Lmiui/v5/app/SearchMode$Token;
    .locals 31
    .parameter "wrapper"
    .parameter "anchorView"
    .parameter "animView"
    .parameter "hint"
    .parameter "l"

    .prologue
    .line 195
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ActionModeWrapper;->isActionModeActive()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 196
    const/4 v3, 0x0

    .line 257
    :goto_0
    return-object v3

    .line 200
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ActionModeWrapper;->getContext()Landroid/content/Context;

    move-result-object v8

    const v11, 0x6030046

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v8, v11, v0, v1}, Lmiui/v5/widget/Views;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 201
    .local v4, searchView:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/v5/view/ActionModeWrapper;->addView(Landroid/view/View;)V

    .line 202
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 204
    const v8, 0x1020004

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 205
    .local v7, alphaView:Landroid/view/View;
    const v8, 0x1020009

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 206
    .local v5, editView:Landroid/widget/EditText;
    const v8, 0x102002c

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 207
    .local v6, backView:Landroid/view/View;
    const v8, 0x60b00ab

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    .line 209
    .local v9, result:Landroid/widget/FrameLayout;
    new-instance v8, Lmiui/v5/app/SearchMode$SearchViewLayoutListener;

    invoke-direct {v8}, Lmiui/v5/app/SearchMode$SearchViewLayoutListener;-><init>()V

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 211
    new-instance v3, Lmiui/v5/app/SearchMode$Token;

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v9}, Lmiui/v5/app/SearchMode$Token;-><init>(Landroid/view/View;Landroid/widget/EditText;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 214
    .local v3, token:Lmiui/v5/app/SearchMode$Token;
    const-wide/16 v25, 0x12c

    .line 215
    .local v25, dur:J
    const-wide/16 v22, 0x32

    .line 216
    .local v22, appearDelay:J
    invoke-static/range {p0 .. p1}, Lmiui/v5/app/SearchMode;->getAnchor(Landroid/view/ViewGroup;Landroid/view/View;)I

    move-result v12

    .line 217
    .local v12, anchorDist:I
    invoke-static {v6}, Lmiui/v5/widget/Views;->getBackgroundWidth(Landroid/view/View;)I

    move-result v13

    .line 218
    .local v13, backViewWidth:I
    invoke-virtual {v5}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    move-result v14

    .line 219
    .local v14, editAnimStart:I
    sub-int v15, v13, v14

    .line 222
    .local v15, editAnimWidth:I
    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v29

    .line 223
    .local v29, inputUp:Landroid/animation/ValueAnimator;
    const-wide/16 v17, 0x12c

    move-object/from16 v0, v29

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 224
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 225
    const-wide/16 v17, 0x32

    move-object/from16 v0, v29

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 226
    new-instance v10, Lmiui/v5/app/SearchMode$InputUpAnim;

    move-object v11, v3

    invoke-direct/range {v10 .. v15}, Lmiui/v5/app/SearchMode$InputUpAnim;-><init>(Lmiui/v5/app/SearchMode$Token;IIII)V

    .line 228
    .local v10, startListener:Lmiui/v5/app/SearchMode$InputUpAnim;
    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 229
    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 232
    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_1

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v28

    .line 233
    .local v28, inputDown:Landroid/animation/ValueAnimator;
    const-wide/16 v17, 0x12c

    move-object/from16 v0, v28

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 234
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 235
    new-instance v16, Lmiui/v5/app/SearchMode$InputDownAnim;

    move-object/from16 v17, v3

    move/from16 v18, v12

    move/from16 v19, v13

    move/from16 v20, v14

    move/from16 v21, v15

    invoke-direct/range {v16 .. v21}, Lmiui/v5/app/SearchMode$InputDownAnim;-><init>(Lmiui/v5/app/SearchMode$Token;IIII)V

    .line 237
    .local v16, finishListener:Lmiui/v5/app/SearchMode$InputDownAnim;
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 238
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 240
    new-instance v30, Lmiui/v5/app/SearchMode$SearchActionMode;

    move-object/from16 v0, v30

    invoke-direct {v0, v3}, Lmiui/v5/app/SearchMode$SearchActionMode;-><init>(Lmiui/v5/app/SearchMode$Token;)V

    .line 241
    .local v30, mode:Lmiui/v5/app/SearchMode$SearchActionMode;
    new-instance v8, Lmiui/v5/app/SearchMode$AnimatorModeCallback;

    move-object/from16 v0, p4

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-direct {v8, v0, v1, v2}, Lmiui/v5/app/SearchMode$AnimatorModeCallback;-><init>(Lmiui/v5/view/MiuiActionMode$ActionModeListener;Landroid/animation/Animator;Landroid/animation/Animator;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v8}, Lmiui/v5/view/ActionModeWrapper;->startActionMode(Lmiui/v5/view/MiuiActionMode;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 242
    new-instance v24, Lmiui/v5/app/SearchMode$FinishActionModeClick;

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Lmiui/v5/app/SearchMode$FinishActionModeClick;-><init>(Lmiui/v5/app/SearchMode$Token;)V

    .line 243
    .local v24, clickListener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 246
    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 247
    invoke-virtual {v5}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v11, "input_method"

    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/inputmethod/InputMethodManager;

    .line 249
    .local v27, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v8, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v8}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 251
    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lmiui/v5/app/SearchMode$Token;->setActionMode(Landroid/view/ActionMode;)V

    goto/16 :goto_0

    .line 256
    .end local v24           #clickListener:Landroid/view/View$OnClickListener;
    .end local v27           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/v5/view/ActionModeWrapper;->removeView(Landroid/view/View;)V

    .line 257
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 222
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 232
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
