.class Landroid/widget/MiuiCursorController$FloatPanelViewController$2;
.super Ljava/lang/Object;
.source "MiuiCursorController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/MiuiCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/MiuiCursorController$FloatPanelViewController;


# direct methods
.method constructor <init>(Landroid/widget/MiuiCursorController$FloatPanelViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController$2;->this$1:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Landroid/widget/MiuiCursorController$FloatPanelViewController$2;->this$1:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    #calls: Landroid/widget/MiuiCursorController$FloatPanelViewController;->updatePosition()V
    invoke-static {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->access$000(Landroid/widget/MiuiCursorController$FloatPanelViewController;)V

    .line 284
    return-void
.end method
