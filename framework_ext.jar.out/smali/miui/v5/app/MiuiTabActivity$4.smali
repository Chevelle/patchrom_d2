.class Lmiui/v5/app/MiuiTabActivity$4;
.super Ljava/lang/Object;
.source "MiuiTabActivity.java"

# interfaces
.implements Lmiui/v5/widget/TabController$PagerAdapterChangedListener;


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
    .line 162
    iput-object p1, p0, Lmiui/v5/app/MiuiTabActivity$4;->this$0:Lmiui/v5/app/MiuiTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdapterChanged(Lmiui/v5/android/support/view/ViewPager;Z)V
    .locals 1
    .parameter "pager"
    .parameter "selectedChanged"

    .prologue
    .line 166
    iget-object v0, p0, Lmiui/v5/app/MiuiTabActivity$4;->this$0:Lmiui/v5/app/MiuiTabActivity;

    invoke-virtual {v0, p2}, Lmiui/v5/app/MiuiTabActivity;->onViewPagerAdapterChanged(Z)V

    .line 167
    return-void
.end method
