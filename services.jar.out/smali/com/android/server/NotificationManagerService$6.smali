.class Lcom/android/server/NotificationManagerService$6;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NotificationManagerService;->isNotificationSpam(Landroid/app/Notification;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;

.field final synthetic val$notifId:I


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1804
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    iput p2, p0, Lcom/android/server/NotificationManagerService$6;->val$notifId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1807
    invoke-static {}, Lcom/android/server/NotificationManagerService;->access$3100()Landroid/net/Uri;

    move-result-object v1

    iget v2, p0, Lcom/android/server/NotificationManagerService$6;->val$notifId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1808
    .local v0, updateUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1810
    return-void
.end method
