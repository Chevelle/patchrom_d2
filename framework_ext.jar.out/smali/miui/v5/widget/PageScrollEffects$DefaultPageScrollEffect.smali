.class Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;
.super Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect;
.source "PageScrollEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/widget/PageScrollEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultPageScrollEffect"
.end annotation


# static fields
.field static final ALL_PRED:Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect$AllPred;

.field static final ANY_PRED:Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect$AnyPred;

.field static sListPool:Lmiui/util/SimplePool$PoolInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SimplePool$PoolInstance",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field static sRectPool:Lmiui/util/SimplePool$PoolInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SimplePool$PoolInstance",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAnimation:Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 370
    new-instance v0, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect$1;

    invoke-direct {v0}, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect$1;-><init>()V

    invoke-static {v0, v1}, Lmiui/util/SimplePool;->newInsance(Lmiui/util/SimplePool$Manager;I)Lmiui/util/SimplePool$PoolInstance;

    move-result-object v0

    sput-object v0, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;->sListPool:Lmiui/util/SimplePool$PoolInstance;

    .line 385
    new-instance v0, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect$2;

    invoke-direct {v0}, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect$2;-><init>()V

    invoke-static {v0, v1}, Lmiui/util/SimplePool;->newInsance(Lmiui/util/SimplePool$Manager;I)Lmiui/util/SimplePool$PoolInstance;

    move-result-object v0

    sput-object v0, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;->sRectPool:Lmiui/util/SimplePool$PoolInstance;

    .line 399
    new-instance v0, Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect$AllPred;

    invoke-direct {v0}, Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect$AllPred;-><init>()V

    sput-object v0, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;->ALL_PRED:Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect$AllPred;

    .line 400
    new-instance v0, Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect$AnyPred;

    invoke-direct {v0}, Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect$AnyPred;-><init>()V

    sput-object v0, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;->ANY_PRED:Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect$AnyPred;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect;-><init>(Landroid/view/ViewGroup;)V

    .line 346
    new-instance v0, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;

    invoke-direct {v0, p1}, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;->mAnimation:Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;

    .line 347
    return-void
.end method

.method private static computOffset(IIIF)I
    .locals 7
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "percent"

    .prologue
    .line 459
    const v0, 0x3dcccccd

    .line 461
    .local v0, FINE_PARAM:F
    if-ge p0, p2, :cond_0

    mul-int v4, p0, p1

    div-int v2, v4, p2

    .line 462
    .local v2, indent:I
    :goto_0
    mul-float v1, p3, p3

    .line 463
    .local v1, coeff:F
    int-to-float v4, v2

    const v5, 0x3dcccccd

    const v6, 0x3f666666

    div-float v6, v1, v6

    sub-float/2addr v5, v6

    int-to-float v6, p1

    mul-float/2addr v5, v6

    add-float v3, v4, v5

    .line 464
    .local v3, offset:F
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    float-to-int v4, v3

    :goto_1
    return v4

    .end local v1           #coeff:F
    .end local v2           #indent:I
    .end local v3           #offset:F
    :cond_0
    move v2, p1

    .line 461
    goto :goto_0

    .line 464
    .restart local v1       #coeff:F
    .restart local v2       #indent:I
    .restart local v3       #offset:F
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method static translateView(Landroid/view/ViewGroup;IIFZ)V
    .locals 12
    .parameter "view"
    .parameter "width"
    .parameter "height"
    .parameter "percent"
    .parameter "isRight"

    .prologue
    .line 410
    const/4 v8, 0x0

    .line 411
    .local v8, rect:Landroid/graphics/Rect;
    const/4 v6, 0x0

    .line 413
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    :try_start_0
    sget-object v10, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;->sRectPool:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v10}, Lmiui/util/SimplePool$PoolInstance;->acquire()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Landroid/graphics/Rect;

    move-object v8, v0

    .line 414
    invoke-static {p0, v8}, Lmiui/v5/widget/Views;->getContentRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 415
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_2

    .line 448
    if-eqz v6, :cond_0

    .line 449
    sget-object v10, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;->sListPool:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v10, v6}, Lmiui/util/SimplePool$PoolInstance;->release(Ljava/lang/Object;)V

    .line 452
    :cond_0
    if-eqz v8, :cond_1

    .line 453
    sget-object v10, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;->sRectPool:Lmiui/util/SimplePool$PoolInstance;

    :goto_0
    invoke-virtual {v10, v8}, Lmiui/util/SimplePool$PoolInstance;->release(Ljava/lang/Object;)V

    .line 456
    :cond_1
    return-void

    .line 419
    :cond_2
    :try_start_1
    sget-object v10, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;->sListPool:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v10}, Lmiui/util/SimplePool$PoolInstance;->acquire()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/util/List;

    move-object v6, v0

    .line 420
    invoke-static {p0}, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;->getEffectType(Landroid/view/View;)I

    move-result v2

    .line 421
    .local v2, effectType:I
    const/4 v10, 0x3

    if-ne v2, v10, :cond_5

    .line 422
    sget-object v10, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;->ALL_PRED:Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect$AllPred;

    invoke-static {p0, v10, v6}, Lmiui/v5/widget/Views;->collectChildren(Landroid/view/ViewGroup;Lcom/android/internal/util/Predicate;Ljava/util/List;)V

    .line 427
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-eqz v10, :cond_8

    .line 448
    if-eqz v6, :cond_4

    .line 449
    sget-object v10, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;->sListPool:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v10, v6}, Lmiui/util/SimplePool$PoolInstance;->release(Ljava/lang/Object;)V

    .line 452
    :cond_4
    if-eqz v8, :cond_1

    .line 453
    sget-object v10, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;->sRectPool:Lmiui/util/SimplePool$PoolInstance;

    goto :goto_0

    .line 423
    :cond_5
    const/4 v10, 0x2

    if-ne v2, v10, :cond_3

    .line 424
    :try_start_2
    sget-object v10, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;->ANY_PRED:Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect$AnyPred;

    invoke-static {p0, v10, v6}, Lmiui/v5/widget/Views;->collectChildren(Landroid/view/ViewGroup;Lcom/android/internal/util/Predicate;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 448
    .end local v2           #effectType:I
    :catchall_0
    move-exception v10

    if-eqz v6, :cond_6

    .line 449
    sget-object v11, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;->sListPool:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v11, v6}, Lmiui/util/SimplePool$PoolInstance;->release(Ljava/lang/Object;)V

    .line 452
    :cond_6
    if-eqz v8, :cond_7

    .line 453
    sget-object v11, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;->sRectPool:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v11, v8}, Lmiui/util/SimplePool$PoolInstance;->release(Ljava/lang/Object;)V

    .line 448
    :cond_7
    throw v10

    .line 431
    .restart local v2       #effectType:I
    :cond_8
    :try_start_3
    sget-object v10, Lmiui/v5/widget/Views;->TOP_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v6, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 432
    const/4 v10, 0x0

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v7

    .line 433
    .local v7, offset:I
    const v5, 0x7fffffff

    .line 434
    .local v5, lastTop:I
    const/4 v4, 0x0

    .line 435
    .local v4, lastDelta:I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_9
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 436
    .local v9, v:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-eq v5, v10, :cond_a

    .line 437
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v5

    .line 438
    sub-int v10, v5, v7

    invoke-static {v10, p1, p2, p3}, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;->computOffset(IIIF)I

    move-result v1

    .line 439
    .local v1, distance:I
    if-eqz p4, :cond_b

    move v4, v1

    .line 442
    .end local v1           #distance:I
    :cond_a
    :goto_3
    int-to-float v10, v4

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 443
    instance-of v10, v9, Landroid/view/ViewGroup;

    if-eqz v10, :cond_9

    .line 444
    check-cast v9, Landroid/view/ViewGroup;

    .end local v9           #v:Landroid/view/View;
    move/from16 v0, p4

    invoke-static {v9, p1, p2, p3, v0}, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;->translateView(Landroid/view/ViewGroup;IIFZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 439
    .restart local v1       #distance:I
    .restart local v9       #v:Landroid/view/View;
    :cond_b
    neg-int v4, v1

    goto :goto_3

    .line 448
    .end local v1           #distance:I
    .end local v9           #v:Landroid/view/View;
    :cond_c
    if-eqz v6, :cond_d

    .line 449
    sget-object v10, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;->sListPool:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v10, v6}, Lmiui/util/SimplePool$PoolInstance;->release(Ljava/lang/Object;)V

    .line 452
    :cond_d
    if-eqz v8, :cond_1

    .line 453
    sget-object v10, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;->sRectPool:Lmiui/util/SimplePool$PoolInstance;

    goto/16 :goto_0
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;->mAnimation:Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;

    invoke-virtual {v0}, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;->cancel()V

    .line 363
    return-void
.end method

.method public scroll(FZ)V
    .locals 2
    .parameter "percent"
    .parameter "isLeft"

    .prologue
    .line 351
    iget-object v0, p0, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;->mRoot:Landroid/view/ViewGroup;

    .line 352
    .local v0, r:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v1, p0, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;->mAnimation:Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;

    invoke-virtual {v1, p2}, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;->setNavigator(Z)V

    .line 357
    iget-object v1, p0, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;->mAnimation:Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;

    invoke-virtual {v1, p1}, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;->scrollTo(F)V

    goto :goto_0
.end method

.method public setStateListener(Lmiui/v5/widget/PageScrollEffect$OnStateChangeListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 367
    iget-object v0, p0, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;->mAnimation:Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;

    invoke-virtual {v0, p1}, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;->setOnStateChangeListener(Lmiui/v5/widget/PageScrollEffect$OnStateChangeListener;)V

    .line 368
    return-void
.end method
