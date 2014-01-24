.class final Lmiui/app/AccountUnlockDialog$ViewHolder;
.super Ljava/lang/Object;
.source "AccountUnlockDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/AccountUnlockDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewHolder"
.end annotation


# instance fields
.field public mAccountIcon:Landroid/widget/ImageView;

.field public mAccountId:Landroid/widget/TextView;

.field final synthetic this$0:Lmiui/app/AccountUnlockDialog;


# direct methods
.method private constructor <init>(Lmiui/app/AccountUnlockDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lmiui/app/AccountUnlockDialog$ViewHolder;->this$0:Lmiui/app/AccountUnlockDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/app/AccountUnlockDialog;Lmiui/app/AccountUnlockDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lmiui/app/AccountUnlockDialog$ViewHolder;-><init>(Lmiui/app/AccountUnlockDialog;)V

    return-void
.end method
