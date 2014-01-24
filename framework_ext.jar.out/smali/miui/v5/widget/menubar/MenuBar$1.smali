.class Lmiui/v5/widget/menubar/MenuBar$1;
.super Ljava/lang/Object;
.source "MenuBar.java"

# interfaces
.implements Lmiui/v5/widget/menubar/MenuBar$MenuBarScrollHandler;


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
    .line 518
    iput-object p1, p0, Lmiui/v5/widget/menubar/MenuBar$1;->this$0:Lmiui/v5/widget/menubar/MenuBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(FZZ)V
    .locals 1
    .parameter "percent"
    .parameter "fromHasMenuBar"
    .parameter "toHasMenuBar"

    .prologue
    .line 521
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar$1;->this$0:Lmiui/v5/widget/menubar/MenuBar;

    #calls: Lmiui/v5/widget/menubar/MenuBar;->dispatchMenuBarScroll(FZZ)V
    invoke-static {v0, p1, p2, p3}, Lmiui/v5/widget/menubar/MenuBar;->access$000(Lmiui/v5/widget/menubar/MenuBar;FZZ)V

    .line 522
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 525
    return-void
.end method
