.class final Lcom/android/server/NotificationManagerService$FilterCacheInfo;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FilterCacheInfo"
.end annotation


# instance fields
.field notificationId:I

.field packageName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NotificationManagerService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1776
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService$FilterCacheInfo;-><init>()V

    return-void
.end method
