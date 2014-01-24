.class Lmiui/v5/app/MiuiActivity$1;
.super Ljava/lang/Object;
.source "MiuiActivity.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/app/MiuiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/v5/app/MiuiActivity;


# direct methods
.method constructor <init>(Lmiui/v5/app/MiuiActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lmiui/v5/app/MiuiActivity$1;->this$0:Lmiui/v5/app/MiuiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 394
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity$1;->this$0:Lmiui/v5/app/MiuiActivity;

    invoke-virtual {v0}, Lmiui/v5/app/MiuiActivity;->updateBottomPlaceholder()V

    .line 395
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 389
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity$1;->this$0:Lmiui/v5/app/MiuiActivity;

    invoke-virtual {v0}, Lmiui/v5/app/MiuiActivity;->updateBottomPlaceholder()V

    .line 390
    return-void
.end method
