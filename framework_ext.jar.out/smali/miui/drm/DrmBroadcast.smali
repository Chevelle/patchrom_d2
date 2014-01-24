.class public Lmiui/drm/DrmBroadcast;
.super Ljava/lang/Object;
.source "DrmBroadcast.java"


# static fields
.field public static final ACTION_CHECK_TIME_UP:Ljava/lang/String; = "miui.intent.action.CHECK_TIME_UP"

.field private static final FIRST_DELAY_AFTER_BOOT:J = 0x1b7740L

.field private static final INTERVAL:J = 0x6ddd00L

.field private static final REQUEST_CODE:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lmiui/drm/DrmBroadcast;->mContext:Landroid/content/Context;

    .line 23
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "miui.intent.action.CHECK_TIME_UP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 24
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lmiui/drm/DrmBroadcast;->mContext:Landroid/content/Context;

    new-instance v2, Lmiui/drm/ThemeReceiver;

    invoke-direct {v2}, Lmiui/drm/ThemeReceiver;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 25
    return-void
.end method


# virtual methods
.method public broadcast()V
    .locals 8

    .prologue
    .line 28
    iget-object v1, p0, Lmiui/drm/DrmBroadcast;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 29
    .local v0, alarm:Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    const-string v1, "miui.intent.action.CHECK_TIME_UP"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "miui.intent.action.CHECK_TIME_UP"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    iget-object v1, p0, Lmiui/drm/DrmBroadcast;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v7, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 32
    .local v6, pi:Landroid/app/PendingIntent;
    const/4 v1, 0x3

    const-wide/32 v2, 0x1b7740

    const-wide/32 v4, 0x6ddd00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 33
    return-void
.end method
