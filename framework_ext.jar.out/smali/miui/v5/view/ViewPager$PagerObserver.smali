.class Lmiui/v5/view/ViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/v5/view/ViewPager;


# direct methods
.method private constructor <init>(Lmiui/v5/view/ViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 2622
    iput-object p1, p0, Lmiui/v5/view/ViewPager$PagerObserver;->this$0:Lmiui/v5/view/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/v5/view/ViewPager;Lmiui/v5/view/ViewPager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2622
    invoke-direct {p0, p1}, Lmiui/v5/view/ViewPager$PagerObserver;-><init>(Lmiui/v5/view/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2625
    iget-object v0, p0, Lmiui/v5/view/ViewPager$PagerObserver;->this$0:Lmiui/v5/view/ViewPager;

    invoke-virtual {v0}, Lmiui/v5/view/ViewPager;->dataSetChanged()V

    .line 2626
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 2629
    iget-object v0, p0, Lmiui/v5/view/ViewPager$PagerObserver;->this$0:Lmiui/v5/view/ViewPager;

    invoke-virtual {v0}, Lmiui/v5/view/ViewPager;->dataSetChanged()V

    .line 2630
    return-void
.end method
