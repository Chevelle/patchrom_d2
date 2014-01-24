.class final Landroid/webkit/WebInputSelectionFloatPanel$2;
.super Ljava/lang/Object;
.source "WebInputSelectionFloatPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebInputSelectionFloatPanel;->getInstance(Landroid/content/Context;Landroid/webkit/WebViewClassic;)Landroid/webkit/WebInputSelectionFloatPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$instance:Landroid/webkit/WebInputSelectionFloatPanel;

.field final synthetic val$wvclassic:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebInputSelectionFloatPanel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Landroid/webkit/WebInputSelectionFloatPanel$2;->val$wvclassic:Landroid/webkit/WebViewClassic;

    iput-object p2, p0, Landroid/webkit/WebInputSelectionFloatPanel$2;->val$instance:Landroid/webkit/WebInputSelectionFloatPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/webkit/WebInputSelectionFloatPanel$2;->val$wvclassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->cutSelection()V

    .line 63
    iget-object v0, p0, Landroid/webkit/WebInputSelectionFloatPanel$2;->val$wvclassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 64
    iget-object v0, p0, Landroid/webkit/WebInputSelectionFloatPanel$2;->val$instance:Landroid/webkit/WebInputSelectionFloatPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebInputSelectionFloatPanel;->setVisibility(I)V

    .line 65
    return-void
.end method
