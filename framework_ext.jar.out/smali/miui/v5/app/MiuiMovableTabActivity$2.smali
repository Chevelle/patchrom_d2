.class Lmiui/v5/app/MiuiMovableTabActivity$2;
.super Ljava/lang/Object;
.source "MiuiMovableTabActivity.java"

# interfaces
.implements Lmiui/v5/widget/VerticalMotionFrameLayout$InertiaListener;


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
    .line 72
    iput-object p1, p0, Lmiui/v5/app/MiuiMovableTabActivity$2;->this$0:Lmiui/v5/app/MiuiMovableTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInertiaMotion(II)V
    .locals 1
    .parameter "velocityY"
    .parameter "anchor"

    .prologue
    .line 76
    iget-object v0, p0, Lmiui/v5/app/MiuiMovableTabActivity$2;->this$0:Lmiui/v5/app/MiuiMovableTabActivity;

    invoke-virtual {v0, p1, p2}, Lmiui/v5/app/MiuiMovableTabActivity;->onMotionInertiaMotion(II)V

    .line 77
    return-void
.end method
