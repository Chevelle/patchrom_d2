.class Lcom/miui/internal/v5/app/ViewPagerScrollEffect;
.super Ljava/lang/Object;
.source "ViewPagerController.java"

# interfaces
.implements Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;


# instance fields
.field mBaseItem:I

.field mBaseItemUpdated:Z

.field mIncomingPosition:I

.field mListView:Landroid/view/ViewGroup;

.field mPagerAdapter:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;

.field mScrollBasePosition:I

.field mState:I

.field mViewPager:Lmiui/v5/view/ViewPager;

.field sList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field sRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lmiui/v5/view/ViewPager;Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;)V
    .locals 2
    .parameter "viewPager"
    .parameter "pagerAdapter"

    .prologue
    const/4 v1, -0x1

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->sRect:Landroid/graphics/Rect;

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    .line 448
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mState:I

    .line 451
    iput v1, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mBaseItem:I

    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mBaseItemUpdated:Z

    .line 456
    iput v1, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mScrollBasePosition:I

    .line 459
    iput v1, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mIncomingPosition:I

    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    .line 469
    iput-object p1, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mViewPager:Lmiui/v5/view/ViewPager;

    .line 470
    iput-object p2, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mPagerAdapter:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;

    .line 471
    return-void
.end method


# virtual methods
.method clearTranslation(Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 572
    iget-object v2, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v2}, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->fillList(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    .line 573
    iget-object v2, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 574
    iget-object v2, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 575
    .local v1, v:Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 578
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method clearTranslation(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V
    .locals 5
    .parameter
    .parameter "viewGroup"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v4, 0x0

    .line 561
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 562
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 563
    .local v0, child:Landroid/view/View;
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 564
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    .line 565
    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 561
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 569
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method computOffset(IIIF)I
    .locals 7
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "percent"

    .prologue
    .line 599
    const v0, 0x3dcccccd

    .line 601
    .local v0, FINE_PARAM:F
    if-ge p1, p3, :cond_0

    mul-int v4, p1, p2

    div-int v2, v4, p3

    .line 602
    .local v2, indent:I
    :goto_0
    mul-float v1, p4, p4

    .line 603
    .local v1, coeff:F
    int-to-float v4, v2

    const v5, 0x3dcccccd

    const v6, 0x3f666666

    div-float v6, v1, v6

    sub-float/2addr v5, v6

    int-to-float v6, p2

    mul-float/2addr v5, v6

    add-float v3, v4, v5

    .line 604
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
    move v2, p2

    .line 601
    goto :goto_0

    .line 604
    .restart local v1       #coeff:F
    .restart local v2       #indent:I
    .restart local v3       #offset:F
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method fillList(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "view"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 543
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0, p2, p1}, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->clearTranslation(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V

    .line 544
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 546
    iget-object v3, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->sRect:Landroid/graphics/Rect;

    invoke-static {p1, v3}, Lmiui/v5/widget/Views;->getContentRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 547
    iget-object v3, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->sRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 558
    :cond_0
    return-void

    .line 551
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 552
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 553
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 554
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_3

    .line 555
    :cond_2
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 535
    if-nez p1, :cond_0

    .line 536
    iget-object v0, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mViewPager:Lmiui/v5/view/ViewPager;

    invoke-virtual {v0}, Lmiui/v5/view/ViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mBaseItem:I

    .line 537
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mBaseItemUpdated:Z

    .line 539
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 9
    .parameter "position"
    .parameter "ratio"
    .parameter "fromHasActionMenu"
    .parameter "toHasActionMenu"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 476
    cmpl-float v1, p2, v3

    if-nez v1, :cond_0

    .line 477
    iput p1, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mBaseItem:I

    .line 478
    iput-boolean v5, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mBaseItemUpdated:Z

    .line 480
    iget-object v1, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->clearTranslation(Landroid/view/ViewGroup;)V

    .line 485
    :cond_0
    iget v1, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mScrollBasePosition:I

    if-eq v1, p1, :cond_2

    .line 486
    iget v1, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mBaseItem:I

    if-ge v1, p1, :cond_6

    .line 487
    iput p1, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mBaseItem:I

    .line 491
    :cond_1
    :goto_0
    iput p1, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mScrollBasePosition:I

    .line 492
    iput-boolean v5, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mBaseItemUpdated:Z

    .line 494
    iget-object v1, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 495
    iget-object v1, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->clearTranslation(Landroid/view/ViewGroup;)V

    .line 499
    :cond_2
    cmpl-float v1, p2, v3

    if-lez v1, :cond_5

    .line 500
    move v4, p2

    .line 501
    .local v4, currentRatio:F
    iget-boolean v1, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mBaseItemUpdated:Z

    if-eqz v1, :cond_3

    .line 502
    iput-boolean v0, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mBaseItemUpdated:Z

    .line 503
    iget v1, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mBaseItem:I

    if-ne v1, p1, :cond_7

    .line 504
    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mIncomingPosition:I

    .line 508
    :goto_1
    iget-object v1, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mPagerAdapter:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;

    iget v2, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mIncomingPosition:I

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->getFragment(IZ)Landroid/app/Fragment;

    move-result-object v6

    .line 509
    .local v6, incoming:Landroid/app/Fragment;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    .line 510
    if-eqz v6, :cond_3

    .line 511
    invoke-virtual {v6}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 512
    .local v7, list:Landroid/view/View;
    instance-of v1, v7, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 513
    check-cast v7, Landroid/view/ViewGroup;

    .end local v7           #list:Landroid/view/View;
    iput-object v7, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    .line 518
    .end local v6           #incoming:Landroid/app/Fragment;
    :cond_3
    iget v1, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mIncomingPosition:I

    if-ne v1, p1, :cond_4

    .line 519
    const/high16 v1, 0x3f80

    sub-float v4, v1, p2

    .line 522
    :cond_4
    iget-object v1, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    .line 523
    iget-object v1, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    iget v8, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mIncomingPosition:I

    if-eq v8, p1, :cond_8

    :goto_2
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->translateView(Landroid/view/ViewGroup;IIFZ)V

    .line 527
    .end local v4           #currentRatio:F
    :cond_5
    return-void

    .line 488
    :cond_6
    iget v1, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mBaseItem:I

    add-int/lit8 v2, p1, 0x1

    if-le v1, v2, :cond_1

    .line 489
    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mBaseItem:I

    goto :goto_0

    .line 506
    .restart local v4       #currentRatio:F
    :cond_7
    iput p1, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->mIncomingPosition:I

    goto :goto_1

    :cond_8
    move v5, v0

    .line 523
    goto :goto_2
.end method

.method public onPageSelected(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 531
    return-void
.end method

.method translateView(Landroid/view/ViewGroup;IIFZ)V
    .locals 8
    .parameter "view"
    .parameter "width"
    .parameter "height"
    .parameter "percent"
    .parameter "isRight"

    .prologue
    .line 581
    iget-object v6, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v6}, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->fillList(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    .line 582
    iget-object v6, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 583
    iget-object v6, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v4

    .line 584
    .local v4, offset:I
    const v3, 0x7fffffff

    .line 585
    .local v3, lastTop:I
    const/4 v2, 0x0

    .line 586
    .local v2, lastDelta:I
    iget-object v6, p0, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 587
    .local v5, v:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-eq v3, v6, :cond_0

    .line 588
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    .line 589
    sub-int v6, v3, v4

    invoke-virtual {p0, v6, p2, p3, p4}, Lcom/miui/internal/v5/app/ViewPagerScrollEffect;->computOffset(IIIF)I

    move-result v0

    .line 590
    .local v0, distance:I
    if-eqz p5, :cond_1

    move v2, v0

    .line 593
    .end local v0           #distance:I
    :cond_0
    :goto_1
    int-to-float v6, v2

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 590
    .restart local v0       #distance:I
    :cond_1
    neg-int v2, v0

    goto :goto_1

    .line 596
    .end local v0           #distance:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #lastDelta:I
    .end local v3           #lastTop:I
    .end local v4           #offset:I
    .end local v5           #v:Landroid/view/View;
    :cond_2
    return-void
.end method
