.class Lmiui/v5/app/MiuiActivity$2;
.super Ljava/lang/Object;
.source "MiuiActivity.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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
    .line 461
    iput-object p1, p0, Lmiui/v5/app/MiuiActivity$2;->this$0:Lmiui/v5/app/MiuiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "oldLeft"
    .parameter "oldTop"
    .parameter "oldRight"
    .parameter "oldBottom"

    .prologue
    .line 466
    iget-object v0, p0, Lmiui/v5/app/MiuiActivity$2;->this$0:Lmiui/v5/app/MiuiActivity;

    invoke-virtual {v0}, Lmiui/v5/app/MiuiActivity;->updateContentBorder()V

    .line 467
    return-void
.end method
