.class Lmiui/v5/app/MiuiTabActivity$5;
.super Ljava/lang/Object;
.source "MiuiTabActivity.java"

# interfaces
.implements Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;


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
    .line 288
    iput-object p1, p0, Lmiui/v5/app/MiuiTabActivity$5;->this$0:Lmiui/v5/app/MiuiTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 303
    iget-object v0, p0, Lmiui/v5/app/MiuiTabActivity$5;->this$0:Lmiui/v5/app/MiuiTabActivity;

    #setter for: Lmiui/v5/app/MiuiTabActivity;->mScrollState:I
    invoke-static {v0, p1}, Lmiui/v5/app/MiuiTabActivity;->access$102(Lmiui/v5/app/MiuiTabActivity;I)I

    .line 304
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 299
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 291
    iget-object v0, p0, Lmiui/v5/app/MiuiTabActivity$5;->this$0:Lmiui/v5/app/MiuiTabActivity;

    invoke-virtual {v0}, Lmiui/v5/app/MiuiTabActivity;->updateContentBorder()V

    .line 293
    iget-object v0, p0, Lmiui/v5/app/MiuiTabActivity$5;->this$0:Lmiui/v5/app/MiuiTabActivity;

    #setter for: Lmiui/v5/app/MiuiTabActivity;->mScrollPageItem:I
    invoke-static {v0, p1}, Lmiui/v5/app/MiuiTabActivity;->access$002(Lmiui/v5/app/MiuiTabActivity;I)I

    .line 294
    iget-object v0, p0, Lmiui/v5/app/MiuiTabActivity$5;->this$0:Lmiui/v5/app/MiuiTabActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/v5/app/MiuiTabActivity;->updateMenuBar(Z)V

    .line 295
    return-void
.end method
