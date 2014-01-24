.class Lcom/miui/internal/app/DisclaimerActivity$1;
.super Ljava/lang/Object;
.source "DisclaimerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/app/DisclaimerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/app/DisclaimerActivity;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/DisclaimerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/miui/internal/app/DisclaimerActivity$1;->this$0:Lcom/miui/internal/app/DisclaimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/internal/app/DisclaimerActivity$1;->this$0:Lcom/miui/internal/app/DisclaimerActivity;

    invoke-virtual {v0}, Lcom/miui/internal/app/DisclaimerActivity;->finish()V

    .line 67
    return-void
.end method
