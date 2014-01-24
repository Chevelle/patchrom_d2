.class Lmiui/v5/widget/TabController$TabListenerProxy;
.super Ljava/lang/Object;
.source "TabController.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/widget/TabController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabListenerProxy"
.end annotation


# instance fields
.field private final mTabListener:Landroid/app/ActionBar$TabListener;

.field final synthetic this$0:Lmiui/v5/widget/TabController;


# direct methods
.method public constructor <init>(Lmiui/v5/widget/TabController;Landroid/app/ActionBar$TabListener;)V
    .locals 0
    .parameter
    .parameter "l"

    .prologue
    .line 274
    iput-object p1, p0, Lmiui/v5/widget/TabController$TabListenerProxy;->this$0:Lmiui/v5/widget/TabController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p2, p0, Lmiui/v5/widget/TabController$TabListenerProxy;->mTabListener:Landroid/app/ActionBar$TabListener;

    .line 276
    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 280
    iget-object v0, p0, Lmiui/v5/widget/TabController$TabListenerProxy;->this$0:Lmiui/v5/widget/TabController;

    iget-object v0, v0, Lmiui/v5/widget/TabController;->mInternalTabListener:Landroid/app/ActionBar$TabListener;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lmiui/v5/widget/TabController$TabListenerProxy;->this$0:Lmiui/v5/widget/TabController;

    iget-object v0, v0, Lmiui/v5/widget/TabController;->mInternalTabListener:Landroid/app/ActionBar$TabListener;

    invoke-interface {v0, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 284
    :cond_0
    iget-object v0, p0, Lmiui/v5/widget/TabController$TabListenerProxy;->mTabListener:Landroid/app/ActionBar$TabListener;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lmiui/v5/widget/TabController$TabListenerProxy;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-interface {v0, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 287
    :cond_1
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 291
    iget-object v0, p0, Lmiui/v5/widget/TabController$TabListenerProxy;->this$0:Lmiui/v5/widget/TabController;

    invoke-virtual {v0, p1}, Lmiui/v5/widget/TabController;->onTabSelected(Landroid/app/ActionBar$Tab;)V

    .line 293
    iget-object v0, p0, Lmiui/v5/widget/TabController$TabListenerProxy;->this$0:Lmiui/v5/widget/TabController;

    iget-object v0, v0, Lmiui/v5/widget/TabController;->mInternalTabListener:Landroid/app/ActionBar$TabListener;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lmiui/v5/widget/TabController$TabListenerProxy;->this$0:Lmiui/v5/widget/TabController;

    iget-object v0, v0, Lmiui/v5/widget/TabController;->mInternalTabListener:Landroid/app/ActionBar$TabListener;

    invoke-interface {v0, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 297
    :cond_0
    iget-object v0, p0, Lmiui/v5/widget/TabController$TabListenerProxy;->mTabListener:Landroid/app/ActionBar$TabListener;

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lmiui/v5/widget/TabController$TabListenerProxy;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-interface {v0, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 300
    :cond_1
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 304
    iget-object v0, p0, Lmiui/v5/widget/TabController$TabListenerProxy;->this$0:Lmiui/v5/widget/TabController;

    iget-object v0, v0, Lmiui/v5/widget/TabController;->mInternalTabListener:Landroid/app/ActionBar$TabListener;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lmiui/v5/widget/TabController$TabListenerProxy;->this$0:Lmiui/v5/widget/TabController;

    iget-object v0, v0, Lmiui/v5/widget/TabController;->mInternalTabListener:Landroid/app/ActionBar$TabListener;

    invoke-interface {v0, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 308
    :cond_0
    iget-object v0, p0, Lmiui/v5/widget/TabController$TabListenerProxy;->mTabListener:Landroid/app/ActionBar$TabListener;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lmiui/v5/widget/TabController$TabListenerProxy;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-interface {v0, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 311
    :cond_1
    return-void
.end method
