.class final Landroid/webkit/WebInputInsertionFloatPanel$2;
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
    .line 62
    iput-object p1, p0, Landroid/webkit/WebInputInsertionFloatPanel$2;->val$wvclassic:Landroid/webkit/WebViewClassic;

    iput-object p2, p0, Landroid/webkit/WebInputInsertionFloatPanel$2;->val$instance:Landroid/webkit/WebInputInsertionFloatPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/webkit/WebInputInsertionFloatPanel$2;->val$wvclassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->startSelectingText()V

    .line 66
    iget-object v0, p0, Landroid/webkit/WebInputInsertionFloatPanel$2;->val$wvclassic:Landroid/webkit/WebViewClassic;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->setSelectFromInsertionPanel(Z)V

    .line 67
    iget-object v0, p0, Landroid/webkit/WebInputInsertionFloatPanel$2;->val$wvclassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->selectAll()V

    .line 68
    iget-object v0, p0, Landroid/webkit/WebInputInsertionFloatPanel$2;->val$instance:Landroid/webkit/WebInputInsertionFloatPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebInputInsertionFloatPanel;->setVisibility(I)V

    .line 69
    return-void
.end method
