.class Landroid/widget/MiuiCursorController$FloatPanelViewController$1;
.super Ljava/lang/Object;
.source "MiuiCursorController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/MiuiCursorController$FloatPanelViewController;-><init>(Landroid/widget/MiuiCursorController;Landroid/widget/MiuiCursorController;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/MiuiCursorController$FloatPanelViewController;

.field final synthetic val$this$0:Landroid/widget/MiuiCursorController;


# direct methods
.method constructor <init>(Landroid/widget/MiuiCursorController$FloatPanelViewController;Landroid/widget/MiuiCursorController;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController$1;->this$1:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    iput-object p2, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController$1;->val$this$0:Landroid/widget/MiuiCursorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController$1;->this$1:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    #calls: Landroid/widget/MiuiCursorController$FloatPanelViewController;->updatePosition()V
    invoke-static {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->access$000(Landroid/widget/MiuiCursorController$FloatPanelViewController;)V

    .line 245
    const/4 v0, 0x1

    return v0
.end method
