.class Lmiui/v5/app/MiuiTabActivity$2;
.super Ljava/lang/Object;
.source "MiuiTabActivity.java"

# interfaces
.implements Lmiui/v5/widget/PageChangeAdapter$OnPageScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/app/MiuiTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/v5/app/MiuiTabActivity;


# direct methods
.method constructor <init>(Lmiui/v5/app/MiuiTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lmiui/v5/app/MiuiTabActivity$2;->this$0:Lmiui/v5/app/MiuiTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReset(Lmiui/v5/android/support/view/ViewPager;II)V
    .locals 1
    .parameter "pager"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 128
    iget-object v0, p0, Lmiui/v5/app/MiuiTabActivity$2;->this$0:Lmiui/v5/app/MiuiTabActivity;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/v5/app/MiuiTabActivity;->onViewPagerReset(Lmiui/v5/android/support/view/ViewPager;II)V

    .line 129
    return-void
.end method

.method public onScroll(Lmiui/v5/android/support/view/ViewPager;IIF)V
    .locals 1
    .parameter "pager"
    .parameter "from"
    .parameter "to"
    .parameter "percent"

    .prologue
    .line 123
    iget-object v0, p0, Lmiui/v5/app/MiuiTabActivity$2;->this$0:Lmiui/v5/app/MiuiTabActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiui/v5/app/MiuiTabActivity;->onViewPagerScroll(Lmiui/v5/android/support/view/ViewPager;IIF)V

    .line 124
    return-void
.end method
