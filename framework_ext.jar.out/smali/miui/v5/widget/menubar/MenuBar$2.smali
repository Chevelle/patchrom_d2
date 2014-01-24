.class Lmiui/v5/widget/menubar/MenuBar$2;
.super Ljava/lang/Object;
.source "MenuBar.java"

# interfaces
.implements Lmiui/v5/widget/menubar/MenuBarPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/widget/menubar/MenuBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/v5/widget/menubar/MenuBar;


# direct methods
.method constructor <init>(Lmiui/v5/widget/menubar/MenuBar;)V
    .locals 0
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lmiui/v5/widget/menubar/MenuBar$2;->this$0:Lmiui/v5/widget/menubar/MenuBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lmiui/v5/widget/menubar/MenuBar;Z)V
    .locals 2
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    .line 547
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar$2;->this$0:Lmiui/v5/widget/menubar/MenuBar;

    invoke-static {v0}, Lmiui/v5/widget/menubar/MenuBar;->access$310(Lmiui/v5/widget/menubar/MenuBar;)I

    .line 548
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar$2;->this$0:Lmiui/v5/widget/menubar/MenuBar;

    #getter for: Lmiui/v5/widget/menubar/MenuBar;->mCloseMenuBarViewCount:I
    invoke-static {v0}, Lmiui/v5/widget/menubar/MenuBar;->access$300(Lmiui/v5/widget/menubar/MenuBar;)I

    move-result v0

    if-nez v0, :cond_0

    .line 549
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar$2;->this$0:Lmiui/v5/widget/menubar/MenuBar;

    const/4 v1, 0x0

    #setter for: Lmiui/v5/widget/menubar/MenuBar;->mMenuBarState:I
    invoke-static {v0, v1}, Lmiui/v5/widget/menubar/MenuBar;->access$202(Lmiui/v5/widget/menubar/MenuBar;I)I

    .line 550
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar$2;->this$0:Lmiui/v5/widget/menubar/MenuBar;

    invoke-virtual {v0}, Lmiui/v5/widget/menubar/MenuBar;->dispatchMenuClose()V

    .line 552
    :cond_0
    return-void
.end method

.method public onOpenMenu(Lmiui/v5/widget/menubar/MenuBar;Z)V
    .locals 2
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    .line 538
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar$2;->this$0:Lmiui/v5/widget/menubar/MenuBar;

    invoke-static {v0}, Lmiui/v5/widget/menubar/MenuBar;->access$110(Lmiui/v5/widget/menubar/MenuBar;)I

    .line 539
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar$2;->this$0:Lmiui/v5/widget/menubar/MenuBar;

    #getter for: Lmiui/v5/widget/menubar/MenuBar;->mOpenMenuBarViewCount:I
    invoke-static {v0}, Lmiui/v5/widget/menubar/MenuBar;->access$100(Lmiui/v5/widget/menubar/MenuBar;)I

    move-result v0

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar$2;->this$0:Lmiui/v5/widget/menubar/MenuBar;

    const/4 v1, 0x2

    #setter for: Lmiui/v5/widget/menubar/MenuBar;->mMenuBarState:I
    invoke-static {v0, v1}, Lmiui/v5/widget/menubar/MenuBar;->access$202(Lmiui/v5/widget/menubar/MenuBar;I)I

    .line 541
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar$2;->this$0:Lmiui/v5/widget/menubar/MenuBar;

    invoke-virtual {v0}, Lmiui/v5/widget/menubar/MenuBar;->dispatchMenuOpen()V

    .line 543
    :cond_0
    return-void
.end method

.method public onOpenSubMenu(Lmiui/v5/widget/menubar/MenuBar;)Z
    .locals 1
    .parameter "subMenu"

    .prologue
    .line 533
    const/4 v0, 0x0

    return v0
.end method
