.class public Lmiui/util/DropBoxLog$MiCloudDropBoxLog;
.super Ljava/lang/Object;
.source "DropBoxLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DropBoxLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiCloudDropBoxLog"
.end annotation


# static fields
.field private static final CLOUD_DROP_BOX_LOG_TAG:Ljava/lang/String; = "micloud"

.field private static sMicloudDropBoxStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 36
    invoke-static {}, Lmiui/util/DropBoxLog$MiCloudDropBoxLog;->getCacheStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "D"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lmiui/util/DropBoxLog;->appendLog(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .parameter "context"
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 40
    invoke-static {}, Lmiui/util/DropBoxLog$MiCloudDropBoxLog;->getCacheStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "D"

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lmiui/util/DropBoxLog;->appendLog(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 60
    invoke-static {}, Lmiui/util/DropBoxLog$MiCloudDropBoxLog;->getCacheStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "E"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lmiui/util/DropBoxLog;->appendLog(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .parameter "context"
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 64
    invoke-static {}, Lmiui/util/DropBoxLog$MiCloudDropBoxLog;->getCacheStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "E"

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lmiui/util/DropBoxLog;->appendLog(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method

.method private static declared-synchronized getCacheStringBuilder()Ljava/lang/StringBuilder;
    .locals 2

    .prologue
    .line 21
    const-class v1, Lmiui/util/DropBoxLog$MiCloudDropBoxLog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lmiui/util/DropBoxLog$MiCloudDropBoxLog;->sMicloudDropBoxStringBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lmiui/util/DropBoxLog$MiCloudDropBoxLog;->sMicloudDropBoxStringBuilder:Ljava/lang/StringBuilder;

    .line 24
    :cond_0
    sget-object v0, Lmiui/util/DropBoxLog$MiCloudDropBoxLog;->sMicloudDropBoxStringBuilder:Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 44
    invoke-static {}, Lmiui/util/DropBoxLog$MiCloudDropBoxLog;->getCacheStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "I"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lmiui/util/DropBoxLog;->appendLog(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    return-void
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .parameter "context"
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 48
    invoke-static {}, Lmiui/util/DropBoxLog$MiCloudDropBoxLog;->getCacheStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "I"

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lmiui/util/DropBoxLog;->appendLog(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    return-void
.end method

.method public static v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 28
    invoke-static {}, Lmiui/util/DropBoxLog$MiCloudDropBoxLog;->getCacheStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "V"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lmiui/util/DropBoxLog;->appendLog(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    return-void
.end method

.method public static v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .parameter "context"
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 32
    invoke-static {}, Lmiui/util/DropBoxLog$MiCloudDropBoxLog;->getCacheStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "V"

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lmiui/util/DropBoxLog;->appendLog(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    return-void
.end method

.method public static w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 52
    invoke-static {}, Lmiui/util/DropBoxLog$MiCloudDropBoxLog;->getCacheStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "W"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lmiui/util/DropBoxLog;->appendLog(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    return-void
.end method

.method public static w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .parameter "context"
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 56
    invoke-static {}, Lmiui/util/DropBoxLog$MiCloudDropBoxLog;->getCacheStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "W"

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lmiui/util/DropBoxLog;->appendLog(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method

.method public static writeLog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "appTag"

    .prologue
    .line 75
    invoke-static {}, Lmiui/util/DropBoxLog$MiCloudDropBoxLog;->getCacheStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "micloud_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lmiui/util/DropBoxLog;->writeLog(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 77
    return-void
.end method
