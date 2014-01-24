.class final Landroid/webkit/WebInputInsertionFloatPanel$1;
.super Ljava/lang/Object;
.source "WebInputInsertionFloatPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebInputInsertionFloatPanel;->getInstance(Landroid/content/Context;Landroid/webkit/WebViewClassic;)Landroid/webkit/WebInputInsertionFloatPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$instance:Landroid/webkit/WebInputInsertionFloatPanel;

.field final synthetic val$wvclassic:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebInputInsertionFloatPanel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Landroid/webkit/WebInputInsertionFloatPanel$1;->val$wvclassic:Landroid/webkit/WebViewClassic;

    iput-object p2, p0, Landroid/webkit/WebInputInsertionFloatPanel$1;->val$instance:Landroid/webkit/WebInputInsertionFloatPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/webkit/WebInputInsertionFloatPanel$1;->val$wvclassic:Landroid/webkit/WebViewClassic;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->setSelectFromInsertionPanel(Z)V

    .line 50
    iget-object v0, p0, Landroid/webkit/WebInputInsertionFloatPanel$1;->val$wvclassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->startSelectingText()V

    .line 51
    iget-object v0, p0, Landroid/webkit/WebInputInsertionFloatPanel$1;->val$wvclassic:Landroid/webkit/WebViewClassic;

    iget-object v1, p0, Landroid/webkit/WebInputInsertionFloatPanel$1;->val$instance:Landroid/webkit/WebInputInsertionFloatPanel;

    #getter for: Landroid/webkit/WebInputInsertionFloatPanel;->cursorRect:Landroid/graphics/Rect;
    invoke-static {v1}, Landroid/webkit/WebInputInsertionFloatPanel;->access$000(Landroid/webkit/WebInputInsertionFloatPanel;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebInputInsertionFloatPanel$1;->val$instance:Landroid/webkit/WebInputInsertionFloatPanel;

    #getter for: Landroid/webkit/WebInputInsertionFloatPanel;->cursorRect:Landroid/graphics/Rect;
    invoke-static {v2}, Landroid/webkit/WebInputInsertionFloatPanel;->access$000(Landroid/webkit/WebInputInsertionFloatPanel;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewClassic;->selectText(II)Z

    .line 52
    iget-object v0, p0, Landroid/webkit/WebInputInsertionFloatPanel$1;->val$instance:Landroid/webkit/WebInputInsertionFloatPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebInputInsertionFloatPanel;->setVisibility(I)V

    .line 53
    return-void
.end method
