.class Lcom/miui/internal/v5/app/ViewPagerController$ActionMenuChangeAnimatorObject;
.super Ljava/lang/Object;
.source "ViewPagerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/v5/app/ViewPagerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionMenuChangeAnimatorObject"
.end annotation


# instance fields
.field private mPosition:I

.field private mShowActionMenu:Z

.field final synthetic this$0:Lcom/miui/internal/v5/app/ViewPagerController;


# direct methods
.method constructor <init>(Lcom/miui/internal/v5/app/ViewPagerController;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/miui/internal/v5/app/ViewPagerController$ActionMenuChangeAnimatorObject;->this$0:Lcom/miui/internal/v5/app/ViewPagerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method reset(IZ)V
    .locals 0
    .parameter "position"
    .parameter "showActionMenu"

    .prologue
    .line 199
    iput p1, p0, Lcom/miui/internal/v5/app/ViewPagerController$ActionMenuChangeAnimatorObject;->mPosition:I

    .line 200
    iput-boolean p2, p0, Lcom/miui/internal/v5/app/ViewPagerController$ActionMenuChangeAnimatorObject;->mShowActionMenu:Z

    .line 201
    return-void
.end method

.method public setValue(F)V
    .locals 6
    .parameter "value"

    .prologue
    .line 204
    iget-object v2, p0, Lcom/miui/internal/v5/app/ViewPagerController$ActionMenuChangeAnimatorObject;->this$0:Lcom/miui/internal/v5/app/ViewPagerController;

    #getter for: Lcom/miui/internal/v5/app/ViewPagerController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/miui/internal/v5/app/ViewPagerController;->access$200(Lcom/miui/internal/v5/app/ViewPagerController;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 205
    iget-object v2, p0, Lcom/miui/internal/v5/app/ViewPagerController$ActionMenuChangeAnimatorObject;->this$0:Lcom/miui/internal/v5/app/ViewPagerController;

    #getter for: Lcom/miui/internal/v5/app/ViewPagerController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/miui/internal/v5/app/ViewPagerController;->access$200(Lcom/miui/internal/v5/app/ViewPagerController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;

    .line 206
    .local v1, listener:Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;
    instance-of v2, v1, Lcom/miui/internal/v5/widget/ActionBarContainer;

    if-eqz v2, :cond_0

    .line 207
    iget v3, p0, Lcom/miui/internal/v5/app/ViewPagerController$ActionMenuChangeAnimatorObject;->mPosition:I

    const/high16 v2, 0x3f80

    sub-float v4, v2, p1

    iget-boolean v5, p0, Lcom/miui/internal/v5/app/ViewPagerController$ActionMenuChangeAnimatorObject;->mShowActionMenu:Z

    iget-boolean v2, p0, Lcom/miui/internal/v5/app/ViewPagerController$ActionMenuChangeAnimatorObject;->mShowActionMenu:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v1, v3, v4, v5, v2}, Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;->onPageScrolled(IFZZ)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 211
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;
    :cond_2
    return-void
.end method
