.class public Lmiui/util/FileAccessable$Factory;
.super Ljava/lang/Object;
.source "FileAccessable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/FileAccessable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# static fields
.field private static sZipFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/zip/ZipFile;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/FileAccessable$Factory;->sZipFiles:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCache()V
    .locals 2

    .prologue
    .line 55
    sget-object v1, Lmiui/util/FileAccessable$Factory;->sZipFiles:Ljava/util/HashMap;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-object v0, Lmiui/util/FileAccessable$Factory;->sZipFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 57
    monitor-exit v1

    .line 58
    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lmiui/util/FileAccessable;
    .locals 5
    .parameter "root"
    .parameter "subpath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    new-instance v2, Lmiui/util/FileAccessable$DeskFile;

    invoke-direct {v2, p0, p1}, Lmiui/util/FileAccessable$DeskFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_0
    return-object v2

    .line 42
    :cond_0
    sget-object v3, Lmiui/util/FileAccessable$Factory;->sZipFiles:Ljava/util/HashMap;

    monitor-enter v3

    .line 43
    :try_start_0
    sget-object v2, Lmiui/util/FileAccessable$Factory;->sZipFiles:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 44
    .local v1, zipFileRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/util/zip/ZipFile;>;"
    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 45
    .local v0, zipFile:Ljava/util/zip/ZipFile;
    :goto_1
    if-nez v0, :cond_1

    .line 46
    new-instance v0, Ljava/util/zip/ZipFile;

    .end local v0           #zipFile:Ljava/util/zip/ZipFile;
    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 47
    .restart local v0       #zipFile:Ljava/util/zip/ZipFile;
    sget-object v2, Lmiui/util/FileAccessable$Factory;->sZipFiles:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    new-instance v2, Lmiui/util/FileAccessable$ZipInnerFile;

    invoke-direct {v2, v0, p1}, Lmiui/util/FileAccessable$ZipInnerFile;-><init>(Ljava/util/zip/ZipFile;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    .end local v0           #zipFile:Ljava/util/zip/ZipFile;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipFile;

    move-object v0, v2

    goto :goto_1

    .line 49
    .end local v1           #zipFileRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/util/zip/ZipFile;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
