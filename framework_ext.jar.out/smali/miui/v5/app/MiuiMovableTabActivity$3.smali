.class Lmiui/v5/app/MiuiMovableTabActivity$3;
.super Ljava/lang/Object;
.source "MiuiMovableTabActivity.java"

# interfaces
.implements Lmiui/v5/widget/AbsTranslationController$OnTranslateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/app/MiuiMovableTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/v5/app/MiuiMovableTabActivity;


# direct methods
.method constructor <init>(Lmiui/v5/app/MiuiMovableTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lmiui/v5/app/MiuiMovableTabActivity$3;->this$0:Lmiui/v5/app/MiuiMovableTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTranslate(Landroid/view/View;F)V
    .locals 1
    .parameter "v"
    .parameter "translate"

    .prologue
    .line 131
    iget-object v0, p0, Lmiui/v5/app/MiuiMovableTabActivity$3;->this$0:Lmiui/v5/app/MiuiMovableTabActivity;

    invoke-virtual {v0, p2}, Lmiui/v5/app/MiuiMovableTabActivity;->onTabTranslate(F)V

    .line 132
    return-void
.end method

.method public onTranslateStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 126
    iget-object v0, p0, Lmiui/v5/app/MiuiMovableTabActivity$3;->this$0:Lmiui/v5/app/MiuiMovableTabActivity;

    invoke-virtual {v0, p1}, Lmiui/v5/app/MiuiMovableTabActivity;->onTabTranslateStateChanged(I)V

    .line 127
    return-void
.end method
