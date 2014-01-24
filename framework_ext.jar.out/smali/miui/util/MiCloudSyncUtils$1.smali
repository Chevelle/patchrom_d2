.class final Lmiui/util/MiCloudSyncUtils$1;
.super Ljava/lang/Object;
.source "MiCloudSyncUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/MiCloudSyncUtils;->checkSimAvailability(Landroid/app/Activity;ILjava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$simNotReadyCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lmiui/util/MiCloudSyncUtils$1;->val$simNotReadyCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 162
    iget-object v0, p0, Lmiui/util/MiCloudSyncUtils$1;->val$simNotReadyCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lmiui/util/MiCloudSyncUtils$1;->val$simNotReadyCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 165
    :cond_0
    return-void
.end method
