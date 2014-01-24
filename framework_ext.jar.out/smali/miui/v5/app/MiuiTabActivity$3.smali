.class Lmiui/v5/app/MiuiTabActivity$3;
.super Ljava/lang/Object;
.source "MiuiTabActivity.java"

# interfaces
.implements Lmiui/v5/util/Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/app/MiuiTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiui/v5/util/Factory",
        "<",
        "Lmiui/v5/app/LayoutObserver;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/v5/app/MiuiTabActivity;


# direct methods
.method constructor <init>(Lmiui/v5/app/MiuiTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lmiui/v5/app/MiuiTabActivity$3;->this$0:Lmiui/v5/app/MiuiTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 274
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/v5/app/MiuiTabActivity$3;->create(Ljava/lang/Integer;)Lmiui/v5/app/LayoutObserver;

    move-result-object v0

    return-object v0
.end method

.method public create(Ljava/lang/Integer;)Lmiui/v5/app/LayoutObserver;
    .locals 3
    .parameter "from"

    .prologue
    .line 278
    iget-object v1, p0, Lmiui/v5/app/MiuiTabActivity$3;->this$0:Lmiui/v5/app/MiuiTabActivity;

    iget-object v1, v1, Lmiui/v5/app/MiuiTabActivity;->mTabController:Lmiui/v5/widget/TabController;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/v5/widget/TabController;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .line 279
    .local v0, f:Landroid/app/Fragment;
    instance-of v1, v0, Lmiui/v5/app/MiuiViewPagerItem;

    if-eqz v1, :cond_0

    .line 280
    check-cast v0, Lmiui/v5/app/MiuiViewPagerItem;

    .end local v0           #f:Landroid/app/Fragment;
    invoke-interface {v0}, Lmiui/v5/app/MiuiViewPagerItem;->createLayoutObserver()Lmiui/v5/app/LayoutObserver;

    move-result-object v1

    .line 283
    :goto_0
    return-object v1

    .restart local v0       #f:Landroid/app/Fragment;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
