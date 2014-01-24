.class Lcom/miui/internal/v5/app/ActionBarImpl$1;
.super Ljava/lang/Object;
.source "ActionBarImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/v5/app/ActionBarImpl;->createSearchActionModeView()Lcom/miui/internal/v5/widget/SearchActionModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/v5/app/ActionBarImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/v5/app/ActionBarImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/miui/internal/v5/app/ActionBarImpl$1;->this$0:Lcom/miui/internal/v5/app/ActionBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl$1;->this$0:Lcom/miui/internal/v5/app/ActionBarImpl;

    #getter for: Lcom/miui/internal/v5/app/ActionBarImpl;->mCurrentActionMode:Lmiui/v5/view/DefaultActionMode;
    invoke-static {v0}, Lcom/miui/internal/v5/app/ActionBarImpl;->access$000(Lcom/miui/internal/v5/app/ActionBarImpl;)Lmiui/v5/view/DefaultActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl$1;->this$0:Lcom/miui/internal/v5/app/ActionBarImpl;

    #getter for: Lcom/miui/internal/v5/app/ActionBarImpl;->mCurrentActionMode:Lmiui/v5/view/DefaultActionMode;
    invoke-static {v0}, Lcom/miui/internal/v5/app/ActionBarImpl;->access$000(Lcom/miui/internal/v5/app/ActionBarImpl;)Lmiui/v5/view/DefaultActionMode;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/v5/view/DefaultActionMode;->finish()V

    .line 150
    :cond_0
    return-void
.end method
