.class final Landroid/webkit/WebInputInsertionFloatPanel$3;
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
    .line 78
    iput-object p1, p0, Landroid/webkit/WebInputInsertionFloatPanel$3;->val$wvclassic:Landroid/webkit/WebViewClassic;

    iput-object p2, p0, Landroid/webkit/WebInputInsertionFloatPanel$3;->val$instance:Landroid/webkit/WebInputInsertionFloatPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 81
    iget-object v0, p0, Landroid/webkit/WebInputInsertionFloatPanel$3;->val$wvclassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->pasteFromClipboard()V

    .line 82
    iget-object v0, p0, Landroid/webkit/WebInputInsertionFloatPanel$3;->val$wvclassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 83
    iget-object v0, p0, Landroid/webkit/WebInputInsertionFloatPanel$3;->val$instance:Landroid/webkit/WebInputInsertionFloatPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebInputInsertionFloatPanel;->setVisibility(I)V

    .line 84
    return-void
.end method
