.class Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;
.super Landroid/widget/FrameLayout;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClingWindowView"
.end annotation


# static fields
.field private static final BGCOLOR:I = -0x80000000

.field private static final OFFSET_DP:I = 0x30


# instance fields
.field private mClingLayout:Landroid/view/ViewGroup;

.field private final mColor:Landroid/graphics/drawable/ColorDrawable;

.field private mColorAnim:Landroid/animation/ValueAnimator;

.field private final mConfirm:Ljava/lang/Runnable;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdateLayoutRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "confirm"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    .line 219
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 196
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    .line 200
    new-instance v0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView$1;-><init>(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    .line 209
    new-instance v0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView$2;-><init>(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 220
    iput-object p3, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->mConfirm:Ljava/lang/Runnable;

    .line 221
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->setClickable(Z)V

    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 223
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->mConfirm:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 12

    .prologue
    const/high16 v11, -0x8000

    const/high16 v10, 0x4240

    const/high16 v9, 0x3f80

    const/high16 v8, -0x3dc0

    const/4 v7, 0x0

    .line 227
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 229
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 230
    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    #getter for: Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v4}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->access$400(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 231
    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 234
    .local v1, density:F
    iget-object v4, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    #getter for: Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mStatusBarHidden:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->access$500(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 235
    iget-object v4, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    #calls: Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->getUiContext()Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->access$600(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x109004b

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    .line 242
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v5, 0x10202b2

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 243
    .local v3, ok:Landroid/widget/Button;
    new-instance v4, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView$3;-><init>(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v4, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 252
    iget-object v4, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v5, 0x1020046

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, bubble:Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    .line 254
    iget-object v4, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    #getter for: Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mStatusBarHidden:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->access$500(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)Z

    move-result v4

    if-eqz v4, :cond_1

    mul-float v4, v8, v1

    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 255
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 262
    invoke-virtual {v3, v7}, Landroid/widget/Button;->setAlpha(F)V

    .line 263
    iget-object v4, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    #getter for: Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mStatusBarHidden:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->access$500(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-float v4, v8, v1

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTranslationY(F)V

    .line 264
    invoke-virtual {v3}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 271
    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    .line 272
    iget-object v4, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView$4;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView$4;-><init>(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 279
    iget-object v4, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 280
    iget-object v4, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 285
    .end local v0           #bubble:Landroid/view/View;
    :goto_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 286
    return-void

    .line 238
    .end local v3           #ok:Landroid/widget/Button;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    #calls: Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->getUiContext()Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->access$600(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x109004c

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    goto/16 :goto_0

    .line 254
    .restart local v0       #bubble:Landroid/view/View;
    .restart local v3       #ok:Landroid/widget/Button;
    :cond_1
    mul-float v4, v10, v1

    goto/16 :goto_1

    .line 263
    :cond_2
    mul-float v4, v10, v1

    goto/16 :goto_2

    .line 282
    .end local v0           #bubble:Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4, v11}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_3
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 291
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "motion"

    .prologue
    .line 295
    const-string v0, "ImmersiveModeConfirmation"

    const-string v1, "ClingWindowView.onTouchEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v0, 0x1

    return v0
.end method
