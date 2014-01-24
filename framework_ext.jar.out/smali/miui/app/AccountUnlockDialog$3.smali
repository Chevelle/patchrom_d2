.class Lmiui/app/AccountUnlockDialog$3;
.super Ljava/lang/Object;
.source "AccountUnlockDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/AccountUnlockDialog;-><init>(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/String;Lmiui/security/MiuiLockPatternUtils;Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/AccountUnlockDialog;


# direct methods
.method constructor <init>(Lmiui/app/AccountUnlockDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lmiui/app/AccountUnlockDialog$3;->this$0:Lmiui/app/AccountUnlockDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 136
    iget-object v0, p0, Lmiui/app/AccountUnlockDialog$3;->this$0:Lmiui/app/AccountUnlockDialog;

    #calls: Lmiui/app/AccountUnlockDialog;->asyncCheckPassword()V
    invoke-static {v0}, Lmiui/app/AccountUnlockDialog;->access$500(Lmiui/app/AccountUnlockDialog;)V

    .line 137
    return-void
.end method
